package com.android.server.media;

import android.app.ActivityManager;
import android.app.INotificationManager;
import android.app.KeyguardManager;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ParceledListSlice;
import android.content.pm.UserInfo;
import android.database.ContentObserver;
import android.media.AudioManagerInternal;
import android.media.AudioPlaybackConfiguration;
import android.media.AudioSystem;
import android.media.IAudioService;
import android.media.IRemoteVolumeController;
import android.media.MediaController2;
import android.media.Session2CommandGroup;
import android.media.Session2Token;
import android.media.session.IActiveSessionsListener;
import android.media.session.ICallback;
import android.media.session.IOnMediaKeyListener;
import android.media.session.IOnVolumeKeyLongPressListener;
import android.media.session.ISession;
import android.media.session.ISession2TokensListener;
import android.media.session.ISessionCallback;
import android.media.session.ISessionControllerCallback;
import android.media.session.ISessionManager;
import android.media.session.MediaSession;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerExecutor;
import android.os.IBinder;
import android.os.Message;
import android.os.PowerManager;
import android.os.Process;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.ServiceManager;
import android.os.UserHandle;
import android.os.UserManager;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.util.DumpUtils;
import com.android.server.LocalServices;
import com.android.server.SystemService;
import com.android.server.Watchdog;
import com.android.server.media.AudioPlayerStateMonitor;
import com.android.server.media.MediaSessionStack;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

public class MediaSessionService extends SystemService implements Watchdog.Monitor {
    static final boolean DEBUG = Log.isLoggable(TAG, 3);
    private static final boolean DEBUG_KEY_EVENT = true;
    private static final int MEDIA_KEY_LISTENER_TIMEOUT = 1000;
    private static final String TAG = "MediaSessionService";
    private static final int WAKELOCK_TIMEOUT = 5000;
    private ActivityManager mActivityManager;
    /* access modifiers changed from: private */
    public AudioManagerInternal mAudioManagerInternal;
    /* access modifiers changed from: private */
    public AudioPlayerStateMonitor mAudioPlayerStateMonitor;
    private IAudioService mAudioService;
    /* access modifiers changed from: private */
    public ContentResolver mContentResolver;
    /* access modifiers changed from: private */
    public final Context mContext;
    /* access modifiers changed from: private */
    public FullUserRecord mCurrentFullUserRecord;
    /* access modifiers changed from: private */
    @GuardedBy({"mLock"})
    public final SparseIntArray mFullUserIds = new SparseIntArray();
    /* access modifiers changed from: private */
    public MediaSessionRecord mGlobalPrioritySession;
    /* access modifiers changed from: private */
    public final MessageHandler mHandler = new MessageHandler();
    /* access modifiers changed from: private */
    public boolean mHasFeatureLeanback;
    /* access modifiers changed from: private */
    public KeyguardManager mKeyguardManager;
    /* access modifiers changed from: private */
    public final Object mLock = new Object();
    /* access modifiers changed from: private */
    public final int mLongPressTimeout;
    /* access modifiers changed from: private */
    public final PowerManager.WakeLock mMediaEventWakeLock;
    /* access modifiers changed from: private */
    public final INotificationManager mNotificationManager;
    @GuardedBy({"mLock"})
    final RemoteCallbackList<IRemoteVolumeController> mRemoteVolumeControllers = new RemoteCallbackList<>();
    /* access modifiers changed from: private */
    @GuardedBy({"mLock"})
    public final List<Session2TokensListenerRecord> mSession2TokensListenerRecords = new ArrayList();
    /* access modifiers changed from: private */
    @GuardedBy({"mLock"})
    public final SparseArray<List<Session2Token>> mSession2TokensPerUser = new SparseArray<>();
    private final SessionManagerImpl mSessionManagerImpl;
    /* access modifiers changed from: private */
    @GuardedBy({"mLock"})
    public final ArrayList<SessionsListenerRecord> mSessionsListeners = new ArrayList<>();
    private SettingsObserver mSettingsObserver;
    /* access modifiers changed from: private */
    @GuardedBy({"mLock"})
    public final SparseArray<FullUserRecord> mUserRecords = new SparseArray<>();

    public MediaSessionService(Context context) {
        super(context);
        this.mContext = context;
        this.mSessionManagerImpl = new SessionManagerImpl();
        this.mMediaEventWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(1, "handleMediaEvent");
        this.mLongPressTimeout = ViewConfiguration.getLongPressTimeout();
        this.mNotificationManager = INotificationManager.Stub.asInterface(ServiceManager.getService("notification"));
    }

    /* JADX WARNING: type inference failed for: r0v0, types: [com.android.server.media.MediaSessionService$SessionManagerImpl, android.os.IBinder] */
    public void onStart() {
        publishBinderService("media_session", this.mSessionManagerImpl);
        Watchdog.getInstance().addMonitor(this);
        this.mKeyguardManager = (KeyguardManager) this.mContext.getSystemService("keyguard");
        this.mAudioService = getAudioService();
        this.mAudioManagerInternal = (AudioManagerInternal) LocalServices.getService(AudioManagerInternal.class);
        this.mActivityManager = (ActivityManager) this.mContext.getSystemService("activity");
        this.mAudioPlayerStateMonitor = AudioPlayerStateMonitor.getInstance(this.mContext);
        this.mAudioPlayerStateMonitor.registerListener(new AudioPlayerStateMonitor.OnAudioPlayerActiveStateChangedListener() {
            public final void onAudioPlayerActiveStateChanged(AudioPlaybackConfiguration audioPlaybackConfiguration, boolean z) {
                MediaSessionService.this.lambda$onStart$0$MediaSessionService(audioPlaybackConfiguration, z);
            }
        }, (Handler) null);
        this.mContentResolver = this.mContext.getContentResolver();
        this.mSettingsObserver = new SettingsObserver();
        this.mSettingsObserver.observe();
        this.mHasFeatureLeanback = this.mContext.getPackageManager().hasSystemFeature("android.software.leanback");
        updateUser();
    }

    public /* synthetic */ void lambda$onStart$0$MediaSessionService(AudioPlaybackConfiguration config, boolean isRemoved) {
        if (config.getPlayerType() != 3) {
            synchronized (this.mLock) {
                FullUserRecord user = getFullUserRecordLocked(UserHandle.getUserId(config.getClientUid()));
                if (user != null) {
                    user.mPriorityStack.updateMediaButtonSessionIfNeeded();
                }
            }
        }
    }

    private IAudioService getAudioService() {
        return IAudioService.Stub.asInterface(ServiceManager.getService("audio"));
    }

    /* access modifiers changed from: private */
    public boolean isGlobalPriorityActiveLocked() {
        MediaSessionRecord mediaSessionRecord = this.mGlobalPrioritySession;
        return mediaSessionRecord != null && mediaSessionRecord.isActive();
    }

    /* access modifiers changed from: package-private */
    public void updateSession(MediaSessionRecord record) {
        synchronized (this.mLock) {
            FullUserRecord user = getFullUserRecordLocked(record.getUserId());
            if (user == null) {
                Log.w(TAG, "Unknown session updated. Ignoring.");
                return;
            }
            if ((record.getFlags() & 65536) != 0) {
                setGlobalPrioritySession(record);
                Log.d(TAG, "Global priority session is updated, active=" + record.isActive());
                user.pushAddressedPlayerChangedLocked();
            } else if (!user.mPriorityStack.contains(record)) {
                Log.w(TAG, "Unknown session updated. Ignoring.");
                return;
            } else {
                user.mPriorityStack.onSessionStateChange(record);
            }
            this.mHandler.postSessionsChanged(record.getUserId());
        }
    }

    /* access modifiers changed from: package-private */
    public void setGlobalPrioritySession(MediaSessionRecord record) {
        synchronized (this.mLock) {
            FullUserRecord user = getFullUserRecordLocked(record.getUserId());
            if (this.mGlobalPrioritySession != record) {
                Log.d(TAG, "Global priority session is changed from " + this.mGlobalPrioritySession + " to " + record);
                this.mGlobalPrioritySession = record;
                if (user != null && user.mPriorityStack.contains(record)) {
                    user.mPriorityStack.removeSession(record);
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public List<MediaSessionRecord> getActiveSessionsLocked(int userId) {
        List<MediaSessionRecord> records = new ArrayList<>();
        if (userId == -1) {
            int size = this.mUserRecords.size();
            for (int i = 0; i < size; i++) {
                records.addAll(this.mUserRecords.valueAt(i).mPriorityStack.getActiveSessions(userId));
            }
        } else {
            FullUserRecord user = getFullUserRecordLocked(userId);
            if (user == null) {
                Log.w(TAG, "getSessions failed. Unknown user " + userId);
                return records;
            }
            records.addAll(user.mPriorityStack.getActiveSessions(userId));
        }
        if (isGlobalPriorityActiveLocked() && (userId == -1 || userId == this.mGlobalPrioritySession.getUserId())) {
            records.add(0, this.mGlobalPrioritySession);
        }
        return records;
    }

    /* access modifiers changed from: package-private */
    public List<Session2Token> getSession2TokensLocked(int userId) {
        List<Session2Token> list = new ArrayList<>();
        if (userId == -1) {
            for (int i = 0; i < this.mSession2TokensPerUser.size(); i++) {
                list.addAll(this.mSession2TokensPerUser.valueAt(i));
            }
        } else {
            list.addAll(this.mSession2TokensPerUser.get(userId));
        }
        return list;
    }

    public void notifyRemoteVolumeChanged(int flags, MediaSessionRecord session) {
        if (session.isActive()) {
            synchronized (this.mLock) {
                int size = this.mRemoteVolumeControllers.beginBroadcast();
                MediaSession.Token token = session.getSessionToken();
                for (int i = size - 1; i >= 0; i--) {
                    try {
                        this.mRemoteVolumeControllers.getBroadcastItem(i).remoteVolumeChanged(token, flags);
                    } catch (Exception e) {
                        Log.w(TAG, "Error sending volume change.", e);
                    }
                }
                this.mRemoteVolumeControllers.finishBroadcast();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void onSessionPlaystateChanged(MediaSessionRecord record, int oldState, int newState) {
        synchronized (this.mLock) {
            FullUserRecord user = getFullUserRecordLocked(record.getUserId());
            if (user != null) {
                if (user.mPriorityStack.contains(record)) {
                    user.mPriorityStack.onPlaystateChanged(record, oldState, newState);
                    return;
                }
            }
            Log.d(TAG, "Unknown session changed playback state. Ignoring.");
        }
    }

    /* access modifiers changed from: package-private */
    public void onSessionPlaybackTypeChanged(MediaSessionRecord record) {
        synchronized (this.mLock) {
            FullUserRecord user = getFullUserRecordLocked(record.getUserId());
            if (user != null) {
                if (user.mPriorityStack.contains(record)) {
                    pushRemoteVolumeUpdateLocked(record.getUserId());
                    return;
                }
            }
            Log.d(TAG, "Unknown session changed playback type. Ignoring.");
        }
    }

    public void onStartUser(int userId) {
        if (DEBUG) {
            Log.d(TAG, "onStartUser: " + userId);
        }
        updateUser();
    }

    public void onSwitchUser(int userId) {
        if (DEBUG) {
            Log.d(TAG, "onSwitchUser: " + userId);
        }
        updateUser();
    }

    public void onStopUser(int userId) {
        if (DEBUG) {
            Log.d(TAG, "onStopUser: " + userId);
        }
        synchronized (this.mLock) {
            FullUserRecord user = getFullUserRecordLocked(userId);
            if (user != null) {
                if (user.mFullUserId == userId) {
                    user.destroySessionsForUserLocked(-1);
                    this.mUserRecords.remove(userId);
                } else {
                    user.destroySessionsForUserLocked(userId);
                }
            }
            this.mSession2TokensPerUser.remove(userId);
            updateUser();
        }
    }

    public void monitor() {
        synchronized (this.mLock) {
        }
    }

    /* access modifiers changed from: protected */
    public void enforcePhoneStatePermission(int pid, int uid) {
        if (this.mContext.checkPermission("android.permission.MODIFY_PHONE_STATE", pid, uid) != 0) {
            throw new SecurityException("Must hold the MODIFY_PHONE_STATE permission.");
        }
    }

    /* access modifiers changed from: package-private */
    public void sessionDied(MediaSessionRecord session) {
        synchronized (this.mLock) {
            destroySessionLocked(session);
        }
    }

    /* access modifiers changed from: package-private */
    public void destroySession(MediaSessionRecord session) {
        synchronized (this.mLock) {
            destroySessionLocked(session);
        }
    }

    private void updateUser() {
        synchronized (this.mLock) {
            this.mFullUserIds.clear();
            List<UserInfo> allUsers = ((UserManager) this.mContext.getSystemService("user")).getUsers();
            if (allUsers != null) {
                for (UserInfo userInfo : allUsers) {
                    if (userInfo.isManagedProfile()) {
                        this.mFullUserIds.put(userInfo.id, userInfo.profileGroupId);
                    } else {
                        this.mFullUserIds.put(userInfo.id, userInfo.id);
                        if (this.mUserRecords.get(userInfo.id) == null) {
                            this.mUserRecords.put(userInfo.id, new FullUserRecord(userInfo.id));
                        }
                    }
                    if (this.mSession2TokensPerUser.get(userInfo.id) == null) {
                        this.mSession2TokensPerUser.put(userInfo.id, new ArrayList());
                    }
                }
            }
            int currentFullUserId = ActivityManager.getCurrentUser();
            this.mCurrentFullUserRecord = this.mUserRecords.get(currentFullUserId);
            if (this.mCurrentFullUserRecord == null) {
                Log.w(TAG, "Cannot find FullUserInfo for the current user " + currentFullUserId);
                this.mCurrentFullUserRecord = new FullUserRecord(currentFullUserId);
                this.mUserRecords.put(currentFullUserId, this.mCurrentFullUserRecord);
                if (this.mSession2TokensPerUser.get(currentFullUserId) == null) {
                    this.mSession2TokensPerUser.put(currentFullUserId, new ArrayList());
                }
            }
            this.mFullUserIds.put(currentFullUserId, currentFullUserId);
        }
    }

    /* access modifiers changed from: private */
    public void updateActiveSessionListeners() {
        synchronized (this.mLock) {
            for (int i = this.mSessionsListeners.size() - 1; i >= 0; i--) {
                SessionsListenerRecord listener = this.mSessionsListeners.get(i);
                try {
                    enforceMediaPermissions(listener.componentName, listener.pid, listener.uid, listener.userId);
                } catch (SecurityException e) {
                    Log.i(TAG, "ActiveSessionsListener " + listener.componentName + " is no longer authorized. Disconnecting.");
                    this.mSessionsListeners.remove(i);
                    try {
                        listener.listener.onActiveSessionsChanged(new ArrayList());
                    } catch (Exception e2) {
                    }
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public void destroySessionLocked(MediaSessionRecord session) {
        if (DEBUG) {
            Log.d(TAG, "Destroying " + session);
        }
        FullUserRecord user = getFullUserRecordLocked(session.getUserId());
        if (this.mGlobalPrioritySession == session) {
            this.mGlobalPrioritySession = null;
            if (session.isActive() && user != null) {
                user.pushAddressedPlayerChangedLocked();
            }
        } else if (user != null) {
            user.mPriorityStack.removeSession(session);
        }
        try {
            session.getCallback().asBinder().unlinkToDeath(session, 0);
        } catch (Exception e) {
        }
        session.onDestroy();
        this.mHandler.postSessionsChanged(session.getUserId());
    }

    /* access modifiers changed from: private */
    public void enforcePackageName(String packageName, int uid) {
        if (!TextUtils.isEmpty(packageName)) {
            String[] packages = this.mContext.getPackageManager().getPackagesForUid(uid);
            int packageCount = packages.length;
            int i = 0;
            while (i < packageCount) {
                if (!packageName.equals(packages[i])) {
                    i++;
                } else {
                    return;
                }
            }
            throw new IllegalArgumentException("packageName is not owned by the calling process");
        }
        throw new IllegalArgumentException("packageName may not be empty");
    }

    /* access modifiers changed from: private */
    public void enforceMediaPermissions(ComponentName compName, int pid, int uid, int resolvedUserId) {
        if (!hasStatusBarServicePermission(pid, uid) && this.mContext.checkPermission("android.permission.MEDIA_CONTENT_CONTROL", pid, uid) != 0 && !isEnabledNotificationListener(compName, UserHandle.getUserId(uid), resolvedUserId)) {
            throw new SecurityException("Missing permission to control media.");
        }
    }

    /* access modifiers changed from: private */
    public boolean hasStatusBarServicePermission(int pid, int uid) {
        return this.mContext.checkPermission("android.permission.STATUS_BAR_SERVICE", pid, uid) == 0;
    }

    /* access modifiers changed from: private */
    public void enforceStatusBarServicePermission(String action, int pid, int uid) {
        if (!hasStatusBarServicePermission(pid, uid)) {
            throw new SecurityException("Only System UI and Settings may " + action);
        }
    }

    private boolean isEnabledNotificationListener(ComponentName compName, int userId, int forUserId) {
        if (userId != forUserId) {
            return false;
        }
        if (DEBUG) {
            Log.d(TAG, "Checking if enabled notification listener " + compName);
        }
        if (compName != null) {
            try {
                return this.mNotificationManager.isNotificationListenerAccessGrantedForUser(compName, userId);
            } catch (RemoteException e) {
                Log.w(TAG, "Dead NotificationManager in isEnabledNotificationListener", e);
            }
        }
        return false;
    }

    /* access modifiers changed from: private */
    public MediaSessionRecord createSessionInternal(int callerPid, int callerUid, int userId, String callerPackageName, ISessionCallback cb, String tag, Bundle sessionInfo) throws RemoteException {
        MediaSessionRecord createSessionLocked;
        synchronized (this.mLock) {
            createSessionLocked = createSessionLocked(callerPid, callerUid, userId, callerPackageName, cb, tag, sessionInfo);
        }
        return createSessionLocked;
    }

    private MediaSessionRecord createSessionLocked(int callerPid, int callerUid, int userId, String callerPackageName, ISessionCallback cb, String tag, Bundle sessionInfo) {
        int i = userId;
        String str = callerPackageName;
        FullUserRecord user = getFullUserRecordLocked(i);
        if (user != null) {
            MediaSessionRecord session = new MediaSessionRecord(callerPid, callerUid, userId, callerPackageName, cb, tag, sessionInfo, this, this.mHandler.getLooper());
            try {
                cb.asBinder().linkToDeath(session, 0);
                user.mPriorityStack.addSession(session);
                this.mHandler.postSessionsChanged(i);
                if (DEBUG) {
                    Log.d(TAG, "Created session for " + str + " with tag " + tag);
                } else {
                    String str2 = tag;
                }
                return session;
            } catch (RemoteException e) {
                String str3 = tag;
                throw new RuntimeException("Media Session owner died prematurely.", e);
            }
        } else {
            String str4 = tag;
            Log.w(TAG, "Request from invalid user: " + i + ", pkg=" + str);
            throw new RuntimeException("Session request from invalid user.");
        }
    }

    /* access modifiers changed from: private */
    public int findIndexOfSessionsListenerLocked(IActiveSessionsListener listener) {
        for (int i = this.mSessionsListeners.size() - 1; i >= 0; i--) {
            if (this.mSessionsListeners.get(i).listener.asBinder() == listener.asBinder()) {
                return i;
            }
        }
        return -1;
    }

    /* access modifiers changed from: private */
    public int findIndexOfSession2TokensListenerLocked(ISession2TokensListener listener) {
        for (int i = this.mSession2TokensListenerRecords.size() - 1; i >= 0; i--) {
            if (this.mSession2TokensListenerRecords.get(i).listener.asBinder() == listener.asBinder()) {
                return i;
            }
        }
        return -1;
    }

    /* access modifiers changed from: private */
    public void pushSessionsChanged(int userId) {
        synchronized (this.mLock) {
            if (getFullUserRecordLocked(userId) == null) {
                Log.w(TAG, "pushSessionsChanged failed. No user with id=" + userId);
                return;
            }
            List<MediaSessionRecord> records = getActiveSessionsLocked(userId);
            int size = records.size();
            ArrayList<MediaSession.Token> tokens = new ArrayList<>();
            for (int i = 0; i < size; i++) {
                tokens.add(records.get(i).getSessionToken());
            }
            pushRemoteVolumeUpdateLocked(userId);
            for (int i2 = this.mSessionsListeners.size() - 1; i2 >= 0; i2--) {
                SessionsListenerRecord record = this.mSessionsListeners.get(i2);
                if (record.userId == -1 || record.userId == userId) {
                    try {
                        record.listener.onActiveSessionsChanged(tokens);
                    } catch (RemoteException e) {
                        Log.w(TAG, "Dead ActiveSessionsListener in pushSessionsChanged, removing", e);
                        this.mSessionsListeners.remove(i2);
                    }
                }
            }
        }
    }

    private void pushRemoteVolumeUpdateLocked(int userId) {
        FullUserRecord user = getFullUserRecordLocked(userId);
        if (user == null) {
            Log.w(TAG, "pushRemoteVolumeUpdateLocked failed. No user with id=" + userId);
            return;
        }
        synchronized (this.mLock) {
            int size = this.mRemoteVolumeControllers.beginBroadcast();
            MediaSessionRecord record = user.mPriorityStack.getDefaultRemoteSession(userId);
            MediaSession.Token token = record == null ? null : record.getSessionToken();
            for (int i = size - 1; i >= 0; i--) {
                try {
                    this.mRemoteVolumeControllers.getBroadcastItem(i).updateRemoteController(token);
                } catch (Exception e) {
                    Log.w(TAG, "Error sending default remote volume.", e);
                }
            }
            this.mRemoteVolumeControllers.finishBroadcast();
        }
    }

    /* access modifiers changed from: package-private */
    public void pushSession2TokensChangedLocked(int userId) {
        List<Session2Token> allSession2Tokens = getSession2TokensLocked(-1);
        List<Session2Token> session2Tokens = getSession2TokensLocked(userId);
        for (int i = this.mSession2TokensListenerRecords.size() - 1; i >= 0; i--) {
            Session2TokensListenerRecord listenerRecord = this.mSession2TokensListenerRecords.get(i);
            try {
                if (listenerRecord.userId == -1) {
                    listenerRecord.listener.onSession2TokensChanged(allSession2Tokens);
                } else if (listenerRecord.userId == userId) {
                    listenerRecord.listener.onSession2TokensChanged(session2Tokens);
                }
            } catch (RemoteException e) {
                Log.w(TAG, "Failed to notify Session2Token change. Removing listener.", e);
                this.mSession2TokensListenerRecords.remove(i);
            }
        }
    }

    public void onMediaButtonReceiverChanged(MediaSessionRecord record) {
        synchronized (this.mLock) {
            FullUserRecord user = getFullUserRecordLocked(record.getUserId());
            MediaSessionRecord mediaButtonSession = user.mPriorityStack.getMediaButtonSession();
            if (record == mediaButtonSession) {
                user.rememberMediaButtonReceiverLocked(mediaButtonSession);
            }
        }
    }

    /* access modifiers changed from: private */
    public String getCallingPackageName(int uid) {
        String[] packages = this.mContext.getPackageManager().getPackagesForUid(uid);
        if (packages == null || packages.length <= 0) {
            return "";
        }
        return packages[0];
    }

    /* access modifiers changed from: private */
    public void dispatchVolumeKeyLongPressLocked(KeyEvent keyEvent) {
        if (this.mCurrentFullUserRecord.mOnVolumeKeyLongPressListener != null) {
            try {
                this.mCurrentFullUserRecord.mOnVolumeKeyLongPressListener.onVolumeKeyLongPress(keyEvent);
            } catch (RemoteException e) {
                Log.w(TAG, "Failed to send " + keyEvent + " to volume key long-press listener");
            }
        }
    }

    /* access modifiers changed from: private */
    public FullUserRecord getFullUserRecordLocked(int userId) {
        int fullUserId = this.mFullUserIds.get(userId, -1);
        if (fullUserId < 0) {
            return null;
        }
        return this.mUserRecords.get(fullUserId);
    }

    /* access modifiers changed from: private */
    public MediaSessionRecord getMediaSessionRecordLocked(MediaSession.Token sessionToken) {
        FullUserRecord user = getFullUserRecordLocked(UserHandle.getUserId(sessionToken.getUid()));
        if (user != null) {
            return user.mPriorityStack.getMediaSessionRecord(sessionToken);
        }
        return null;
    }

    final class FullUserRecord implements MediaSessionStack.OnMediaButtonSessionChangedListener {
        private static final String COMPONENT_NAME_USER_ID_DELIM = ",";
        public static final int COMPONENT_TYPE_ACTIVITY = 2;
        public static final int COMPONENT_TYPE_BROADCAST = 1;
        public static final int COMPONENT_TYPE_INVALID = 0;
        public static final int COMPONENT_TYPE_SERVICE = 3;
        /* access modifiers changed from: private */
        public ICallback mCallback;
        /* access modifiers changed from: private */
        public final int mFullUserId;
        /* access modifiers changed from: private */
        public boolean mInitialDownMusicOnly;
        /* access modifiers changed from: private */
        public KeyEvent mInitialDownVolumeKeyEvent;
        /* access modifiers changed from: private */
        public int mInitialDownVolumeStream;
        /* access modifiers changed from: private */
        public PendingIntent mLastMediaButtonReceiver;
        /* access modifiers changed from: private */
        public IOnMediaKeyListener mOnMediaKeyListener;
        /* access modifiers changed from: private */
        public int mOnMediaKeyListenerUid;
        /* access modifiers changed from: private */
        public IOnVolumeKeyLongPressListener mOnVolumeKeyLongPressListener;
        /* access modifiers changed from: private */
        public int mOnVolumeKeyLongPressListenerUid;
        /* access modifiers changed from: private */
        public final MediaSessionStack mPriorityStack;
        /* access modifiers changed from: private */
        public ComponentName mRestoredMediaButtonReceiver;
        /* access modifiers changed from: private */
        public int mRestoredMediaButtonReceiverComponentType;
        /* access modifiers changed from: private */
        public int mRestoredMediaButtonReceiverUserId;

        FullUserRecord(int fullUserId) {
            String[] tokens;
            this.mFullUserId = fullUserId;
            this.mPriorityStack = new MediaSessionStack(MediaSessionService.this.mAudioPlayerStateMonitor, this);
            String mediaButtonReceiverInfo = Settings.Secure.getStringForUser(MediaSessionService.this.mContentResolver, "media_button_receiver", this.mFullUserId);
            if (mediaButtonReceiverInfo != null && (tokens = mediaButtonReceiverInfo.split(COMPONENT_NAME_USER_ID_DELIM)) != null) {
                if (tokens.length == 2 || tokens.length == 3) {
                    this.mRestoredMediaButtonReceiver = ComponentName.unflattenFromString(tokens[0]);
                    this.mRestoredMediaButtonReceiverUserId = Integer.parseInt(tokens[1]);
                    if (tokens.length == 3) {
                        this.mRestoredMediaButtonReceiverComponentType = Integer.parseInt(tokens[2]);
                    } else {
                        this.mRestoredMediaButtonReceiverComponentType = getComponentType(this.mRestoredMediaButtonReceiver);
                    }
                }
            }
        }

        public void destroySessionsForUserLocked(int userId) {
            for (MediaSessionRecord session : this.mPriorityStack.getPriorityList(false, userId)) {
                MediaSessionService.this.destroySessionLocked(session);
            }
        }

        public void dumpLocked(PrintWriter pw, String prefix) {
            pw.print(prefix + "Record for full_user=" + this.mFullUserId);
            int size = MediaSessionService.this.mFullUserIds.size();
            for (int i = 0; i < size; i++) {
                if (MediaSessionService.this.mFullUserIds.keyAt(i) != MediaSessionService.this.mFullUserIds.valueAt(i) && MediaSessionService.this.mFullUserIds.valueAt(i) == this.mFullUserId) {
                    pw.print(", profile_user=" + MediaSessionService.this.mFullUserIds.keyAt(i));
                }
            }
            pw.println();
            String indent = prefix + "  ";
            pw.println(indent + "Volume key long-press listener: " + this.mOnVolumeKeyLongPressListener);
            pw.println(indent + "Volume key long-press listener package: " + MediaSessionService.this.getCallingPackageName(this.mOnVolumeKeyLongPressListenerUid));
            pw.println(indent + "Media key listener: " + this.mOnMediaKeyListener);
            pw.println(indent + "Media key listener package: " + MediaSessionService.this.getCallingPackageName(this.mOnMediaKeyListenerUid));
            pw.println(indent + "Callback: " + this.mCallback);
            pw.println(indent + "Last MediaButtonReceiver: " + this.mLastMediaButtonReceiver);
            pw.println(indent + "Restored MediaButtonReceiver: " + this.mRestoredMediaButtonReceiver);
            pw.println(indent + "Restored MediaButtonReceiverComponentType: " + this.mRestoredMediaButtonReceiverComponentType);
            this.mPriorityStack.dump(pw, indent);
            pw.println(indent + "Session2Tokens:");
            for (int i2 = 0; i2 < MediaSessionService.this.mSession2TokensPerUser.size(); i2++) {
                List<Session2Token> list = (List) MediaSessionService.this.mSession2TokensPerUser.valueAt(i2);
                if (!(list == null || list.size() == 0)) {
                    for (Session2Token token : list) {
                        pw.println(indent + "  " + token);
                    }
                }
            }
        }

        public void onMediaButtonSessionChanged(MediaSessionRecord oldMediaButtonSession, MediaSessionRecord newMediaButtonSession) {
            Log.d(MediaSessionService.TAG, "Media button session is changed to " + newMediaButtonSession);
            synchronized (MediaSessionService.this.mLock) {
                if (oldMediaButtonSession != null) {
                    try {
                        MediaSessionService.this.mHandler.postSessionsChanged(oldMediaButtonSession.getUserId());
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (newMediaButtonSession != null) {
                    rememberMediaButtonReceiverLocked(newMediaButtonSession);
                    MediaSessionService.this.mHandler.postSessionsChanged(newMediaButtonSession.getUserId());
                }
                pushAddressedPlayerChangedLocked();
            }
        }

        public void rememberMediaButtonReceiverLocked(MediaSessionRecord record) {
            ComponentName component;
            PendingIntent receiver = record.getMediaButtonReceiver();
            this.mLastMediaButtonReceiver = receiver;
            this.mRestoredMediaButtonReceiver = null;
            this.mRestoredMediaButtonReceiverComponentType = 0;
            String mediaButtonReceiverInfo = "";
            if (!(receiver == null || (component = receiver.getIntent().getComponent()) == null || !record.getPackageName().equals(component.getPackageName()))) {
                mediaButtonReceiverInfo = String.join(COMPONENT_NAME_USER_ID_DELIM, new CharSequence[]{component.flattenToString(), String.valueOf(record.getUserId()), String.valueOf(getComponentType(component))});
            }
            Settings.Secure.putStringForUser(MediaSessionService.this.mContentResolver, "media_button_receiver", mediaButtonReceiverInfo, this.mFullUserId);
        }

        /* access modifiers changed from: private */
        public void pushAddressedPlayerChangedLocked() {
            if (this.mCallback != null) {
                try {
                    MediaSessionRecord mediaButtonSession = getMediaButtonSessionLocked();
                    if (mediaButtonSession != null) {
                        this.mCallback.onAddressedPlayerChangedToMediaSession(mediaButtonSession.getSessionToken());
                    } else if (MediaSessionService.this.mCurrentFullUserRecord.mLastMediaButtonReceiver != null) {
                        this.mCallback.onAddressedPlayerChangedToMediaButtonReceiver(MediaSessionService.this.mCurrentFullUserRecord.mLastMediaButtonReceiver.getIntent().getComponent());
                    } else if (MediaSessionService.this.mCurrentFullUserRecord.mRestoredMediaButtonReceiver != null) {
                        this.mCallback.onAddressedPlayerChangedToMediaButtonReceiver(MediaSessionService.this.mCurrentFullUserRecord.mRestoredMediaButtonReceiver);
                    }
                } catch (RemoteException e) {
                    Log.w(MediaSessionService.TAG, "Failed to pushAddressedPlayerChangedLocked", e);
                }
            }
        }

        /* access modifiers changed from: private */
        public MediaSessionRecord getMediaButtonSessionLocked() {
            return MediaSessionService.this.isGlobalPriorityActiveLocked() ? MediaSessionService.this.mGlobalPrioritySession : this.mPriorityStack.getMediaButtonSession();
        }

        private int getComponentType(ComponentName componentName) {
            if (componentName == null) {
                return 0;
            }
            PackageManager pm = MediaSessionService.this.mContext.getPackageManager();
            try {
                if (pm.getActivityInfo(componentName, 786433) != null) {
                    return 2;
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
            try {
                if (pm.getServiceInfo(componentName, 786436) != null) {
                    return 3;
                }
                return 1;
            } catch (PackageManager.NameNotFoundException e2) {
                return 1;
            }
        }
    }

    final class SessionsListenerRecord implements IBinder.DeathRecipient {
        public final ComponentName componentName;
        public final IActiveSessionsListener listener;
        public final int pid;
        public final int uid;
        public final int userId;

        SessionsListenerRecord(IActiveSessionsListener listener2, ComponentName componentName2, int userId2, int pid2, int uid2) {
            this.listener = listener2;
            this.componentName = componentName2;
            this.userId = userId2;
            this.pid = pid2;
            this.uid = uid2;
        }

        public void binderDied() {
            synchronized (MediaSessionService.this.mLock) {
                MediaSessionService.this.mSessionsListeners.remove(this);
            }
        }
    }

    final class Session2TokensListenerRecord implements IBinder.DeathRecipient {
        public final ISession2TokensListener listener;
        public final int userId;

        Session2TokensListenerRecord(ISession2TokensListener listener2, int userId2) {
            this.listener = listener2;
            this.userId = userId2;
        }

        public void binderDied() {
            synchronized (MediaSessionService.this.mLock) {
                MediaSessionService.this.mSession2TokensListenerRecords.remove(this);
            }
        }
    }

    final class SettingsObserver extends ContentObserver {
        private final Uri mSecureSettingsUri;

        private SettingsObserver() {
            super((Handler) null);
            this.mSecureSettingsUri = Settings.Secure.getUriFor("enabled_notification_listeners");
        }

        /* access modifiers changed from: private */
        public void observe() {
            MediaSessionService.this.mContentResolver.registerContentObserver(this.mSecureSettingsUri, false, this, -1);
        }

        public void onChange(boolean selfChange, Uri uri) {
            MediaSessionService.this.updateActiveSessionListeners();
        }
    }

    class SessionManagerImpl extends ISessionManager.Stub {
        private static final String EXTRA_WAKELOCK_ACQUIRED = "android.media.AudioService.WAKELOCK_ACQUIRED";
        private static final int WAKELOCK_RELEASE_ON_FINISHED = 1980;
        BroadcastReceiver mKeyEventDone = new BroadcastReceiver() {
            public void onReceive(Context context, Intent intent) {
                Bundle extras;
                if (intent != null && (extras = intent.getExtras()) != null) {
                    synchronized (MediaSessionService.this.mLock) {
                        if (extras.containsKey(SessionManagerImpl.EXTRA_WAKELOCK_ACQUIRED) && MediaSessionService.this.mMediaEventWakeLock.isHeld()) {
                            MediaSessionService.this.mMediaEventWakeLock.release();
                        }
                    }
                }
            }
        };
        private KeyEventWakeLockReceiver mKeyEventReceiver = new KeyEventWakeLockReceiver(MediaSessionService.this.mHandler);
        private boolean mVoiceButtonDown = false;
        private boolean mVoiceButtonHandled = false;

        SessionManagerImpl() {
        }

        /* Debug info: failed to restart local var, previous not found, register: 15 */
        public ISession createSession(String packageName, ISessionCallback cb, String tag, Bundle sessionInfo, int userId) throws RemoteException {
            int pid = Binder.getCallingPid();
            int uid = Binder.getCallingUid();
            long token = Binder.clearCallingIdentity();
            try {
                try {
                    MediaSessionService.this.enforcePackageName(packageName, uid);
                    int resolvedUserId = ActivityManager.handleIncomingUser(pid, uid, userId, false, true, "createSession", packageName);
                    if (cb != null) {
                        ISession sessionBinder = MediaSessionService.this.createSessionInternal(pid, uid, resolvedUserId, packageName, cb, tag, sessionInfo).getSessionBinder();
                        Binder.restoreCallingIdentity(token);
                        return sessionBinder;
                    }
                    throw new IllegalArgumentException("Controller callback cannot be null");
                } catch (Throwable th) {
                    th = th;
                    Binder.restoreCallingIdentity(token);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                String str = packageName;
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }

        /* Debug info: failed to restart local var, previous not found, register: 8 */
        public void notifySession2Created(Session2Token sessionToken) throws RemoteException {
            int callingPid = Binder.getCallingPid();
            int uid = Binder.getCallingUid();
            long token = Binder.clearCallingIdentity();
            try {
                if (MediaSessionService.DEBUG) {
                    Log.d(MediaSessionService.TAG, "Session2 is created " + sessionToken);
                }
                if (uid == sessionToken.getUid()) {
                    new MediaController2.Builder(MediaSessionService.this.mContext, sessionToken).setControllerCallback(new HandlerExecutor(MediaSessionService.this.mHandler), new Controller2Callback(sessionToken)).build();
                    return;
                }
                throw new SecurityException("Unexpected Session2Token's UID, expected=" + uid + " but actually=" + sessionToken.getUid());
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        /* Debug info: failed to restart local var, previous not found, register: 11 */
        public List<MediaSession.Token> getSessions(ComponentName componentName, int userId) {
            int pid = Binder.getCallingPid();
            int uid = Binder.getCallingUid();
            long token = Binder.clearCallingIdentity();
            try {
                int resolvedUserId = verifySessionsRequest(componentName, userId, pid, uid);
                ArrayList<MediaSession.Token> tokens = new ArrayList<>();
                synchronized (MediaSessionService.this.mLock) {
                    for (MediaSessionRecord record : MediaSessionService.this.getActiveSessionsLocked(resolvedUserId)) {
                        tokens.add(record.getSessionToken());
                    }
                }
                Binder.restoreCallingIdentity(token);
                return tokens;
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }

        /* Debug info: failed to restart local var, previous not found, register: 11 */
        public ParceledListSlice getSession2Tokens(int userId) {
            List<Session2Token> result;
            int pid = Binder.getCallingPid();
            int uid = Binder.getCallingUid();
            long token = Binder.clearCallingIdentity();
            try {
                int resolvedUserId = ActivityManager.handleIncomingUser(pid, uid, userId, true, true, "getSession2Tokens", (String) null);
                synchronized (MediaSessionService.this.mLock) {
                    result = MediaSessionService.this.getSession2TokensLocked(resolvedUserId);
                }
                ParceledListSlice parceledListSlice = new ParceledListSlice(result);
                Binder.restoreCallingIdentity(token);
                return parceledListSlice;
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }

        /* Debug info: failed to restart local var, previous not found, register: 17 */
        public void addSessionsListener(IActiveSessionsListener listener, ComponentName componentName, int userId) throws RemoteException {
            int pid = Binder.getCallingPid();
            int uid = Binder.getCallingUid();
            long token = Binder.clearCallingIdentity();
            try {
                int resolvedUserId = verifySessionsRequest(componentName, userId, pid, uid);
                synchronized (MediaSessionService.this.mLock) {
                    int index = MediaSessionService.this.findIndexOfSessionsListenerLocked(listener);
                    if (index != -1) {
                        Log.w(MediaSessionService.TAG, "ActiveSessionsListener is already added, ignoring");
                        return;
                    }
                    int i = index;
                    SessionsListenerRecord record = new SessionsListenerRecord(listener, componentName, resolvedUserId, pid, uid);
                    try {
                        listener.asBinder().linkToDeath(record, 0);
                        MediaSessionService.this.mSessionsListeners.add(record);
                        Binder.restoreCallingIdentity(token);
                    } catch (RemoteException e) {
                        Log.e(MediaSessionService.TAG, "ActiveSessionsListener is dead, ignoring it", e);
                        Binder.restoreCallingIdentity(token);
                    }
                }
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        public void removeSessionsListener(IActiveSessionsListener listener) throws RemoteException {
            synchronized (MediaSessionService.this.mLock) {
                int index = MediaSessionService.this.findIndexOfSessionsListenerLocked(listener);
                if (index != -1) {
                    SessionsListenerRecord record = (SessionsListenerRecord) MediaSessionService.this.mSessionsListeners.remove(index);
                    try {
                        record.listener.asBinder().unlinkToDeath(record, 0);
                    } catch (Exception e) {
                    }
                }
            }
        }

        /* Debug info: failed to restart local var, previous not found, register: 11 */
        public void addSession2TokensListener(ISession2TokensListener listener, int userId) {
            int pid = Binder.getCallingPid();
            int uid = Binder.getCallingUid();
            long token = Binder.clearCallingIdentity();
            try {
                int resolvedUserId = ActivityManager.handleIncomingUser(pid, uid, userId, true, true, "addSession2TokensListener", (String) null);
                synchronized (MediaSessionService.this.mLock) {
                    if (MediaSessionService.this.findIndexOfSession2TokensListenerLocked(listener) >= 0) {
                        Log.w(MediaSessionService.TAG, "addSession2TokensListener is already added, ignoring");
                        Binder.restoreCallingIdentity(token);
                        return;
                    }
                    MediaSessionService.this.mSession2TokensListenerRecords.add(new Session2TokensListenerRecord(listener, resolvedUserId));
                    Binder.restoreCallingIdentity(token);
                }
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }

        /* Debug info: failed to restart local var, previous not found, register: 9 */
        public void removeSession2TokensListener(ISession2TokensListener listener) {
            int callingPid = Binder.getCallingPid();
            int callingUid = Binder.getCallingUid();
            long token = Binder.clearCallingIdentity();
            try {
                synchronized (MediaSessionService.this.mLock) {
                    int index = MediaSessionService.this.findIndexOfSession2TokensListenerLocked(listener);
                    if (index >= 0) {
                        Session2TokensListenerRecord listenerRecord = (Session2TokensListenerRecord) MediaSessionService.this.mSession2TokensListenerRecords.remove(index);
                        try {
                            listenerRecord.listener.asBinder().unlinkToDeath(listenerRecord, 0);
                        } catch (Exception e) {
                        }
                    }
                }
                Binder.restoreCallingIdentity(token);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }

        /* Debug info: failed to restart local var, previous not found, register: 20 */
        /* JADX WARNING: Code restructure failed: missing block: B:61:0x0139, code lost:
            android.os.Binder.restoreCallingIdentity(r14);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:62:0x013d, code lost:
            return;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void dispatchMediaKeyEvent(java.lang.String r21, boolean r22, android.view.KeyEvent r23, boolean r24) {
            /*
                r20 = this;
                r10 = r20
                r11 = r23
                if (r11 == 0) goto L_0x0146
                int r0 = r23.getKeyCode()
                boolean r0 = android.view.KeyEvent.isMediaSessionKey(r0)
                if (r0 != 0) goto L_0x0012
                goto L_0x0146
            L_0x0012:
                int r12 = android.os.Binder.getCallingPid()
                int r13 = android.os.Binder.getCallingUid()
                long r14 = android.os.Binder.clearCallingIdentity()
                boolean r0 = com.android.server.media.MediaSessionService.DEBUG     // Catch:{ all -> 0x0141 }
                if (r0 == 0) goto L_0x0066
                java.lang.String r0 = "MediaSessionService"
                java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ all -> 0x005f }
                r1.<init>()     // Catch:{ all -> 0x005f }
                java.lang.String r2 = "dispatchMediaKeyEvent, pkg="
                r1.append(r2)     // Catch:{ all -> 0x005f }
                r9 = r21
                r1.append(r9)     // Catch:{ all -> 0x005d }
                java.lang.String r2 = " pid="
                r1.append(r2)     // Catch:{ all -> 0x005d }
                r1.append(r12)     // Catch:{ all -> 0x005d }
                java.lang.String r2 = ", uid="
                r1.append(r2)     // Catch:{ all -> 0x005d }
                r1.append(r13)     // Catch:{ all -> 0x005d }
                java.lang.String r2 = ", asSystem="
                r1.append(r2)     // Catch:{ all -> 0x005d }
                r8 = r22
                r1.append(r8)     // Catch:{ all -> 0x0141 }
                java.lang.String r2 = ", event="
                r1.append(r2)     // Catch:{ all -> 0x0141 }
                r1.append(r11)     // Catch:{ all -> 0x0141 }
                java.lang.String r1 = r1.toString()     // Catch:{ all -> 0x0141 }
                android.util.Log.d(r0, r1)     // Catch:{ all -> 0x0141 }
                goto L_0x006a
            L_0x005d:
                r0 = move-exception
                goto L_0x0062
            L_0x005f:
                r0 = move-exception
                r9 = r21
            L_0x0062:
                r8 = r22
                goto L_0x0142
            L_0x0066:
                r9 = r21
                r8 = r22
            L_0x006a:
                boolean r0 = r20.isUserSetupComplete()     // Catch:{ all -> 0x0141 }
                if (r0 != 0) goto L_0x007b
                java.lang.String r0 = "MediaSessionService"
                java.lang.String r1 = "Not dispatching media key event because user setup is in progress."
                android.util.Slog.i(r0, r1)     // Catch:{ all -> 0x0141 }
                android.os.Binder.restoreCallingIdentity(r14)
                return
            L_0x007b:
                com.android.server.media.MediaSessionService r0 = com.android.server.media.MediaSessionService.this     // Catch:{ all -> 0x0141 }
                java.lang.Object r16 = r0.mLock     // Catch:{ all -> 0x0141 }
                monitor-enter(r16)     // Catch:{ all -> 0x0141 }
                com.android.server.media.MediaSessionService r0 = com.android.server.media.MediaSessionService.this     // Catch:{ all -> 0x013e }
                boolean r0 = r0.isGlobalPriorityActiveLocked()     // Catch:{ all -> 0x013e }
                r17 = r0
                if (r17 == 0) goto L_0x009c
                r0 = 1000(0x3e8, float:1.401E-42)
                if (r13 == r0) goto L_0x009c
                java.lang.String r0 = "MediaSessionService"
                java.lang.String r1 = "Only the system can dispatch media key event to the global priority session."
                android.util.Slog.i(r0, r1)     // Catch:{ all -> 0x013e }
                monitor-exit(r16)     // Catch:{ all -> 0x013e }
                android.os.Binder.restoreCallingIdentity(r14)
                return
            L_0x009c:
                if (r17 != 0) goto L_0x010d
                com.android.server.media.MediaSessionService r0 = com.android.server.media.MediaSessionService.this     // Catch:{ all -> 0x013e }
                com.android.server.media.MediaSessionService$FullUserRecord r0 = r0.mCurrentFullUserRecord     // Catch:{ all -> 0x013e }
                android.media.session.IOnMediaKeyListener r0 = r0.mOnMediaKeyListener     // Catch:{ all -> 0x013e }
                if (r0 == 0) goto L_0x010d
                java.lang.String r0 = "MediaSessionService"
                java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ all -> 0x013e }
                r1.<init>()     // Catch:{ all -> 0x013e }
                java.lang.String r2 = "Send "
                r1.append(r2)     // Catch:{ all -> 0x013e }
                r1.append(r11)     // Catch:{ all -> 0x013e }
                java.lang.String r2 = " to the media key listener"
                r1.append(r2)     // Catch:{ all -> 0x013e }
                java.lang.String r1 = r1.toString()     // Catch:{ all -> 0x013e }
                android.util.Log.d(r0, r1)     // Catch:{ all -> 0x013e }
                com.android.server.media.MediaSessionService r0 = com.android.server.media.MediaSessionService.this     // Catch:{ RemoteException -> 0x00f1 }
                com.android.server.media.MediaSessionService$FullUserRecord r0 = r0.mCurrentFullUserRecord     // Catch:{ RemoteException -> 0x00f1 }
                android.media.session.IOnMediaKeyListener r0 = r0.mOnMediaKeyListener     // Catch:{ RemoteException -> 0x00f1 }
                com.android.server.media.MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver r7 = new com.android.server.media.MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver     // Catch:{ RemoteException -> 0x00f1 }
                r18 = 0
                r1 = r7
                r2 = r20
                r3 = r21
                r4 = r12
                r5 = r13
                r6 = r22
                r19 = r7
                r7 = r23
                r8 = r24
                r9 = r18
                r1.<init>(r3, r4, r5, r6, r7, r8)     // Catch:{ RemoteException -> 0x00f1 }
                r1 = r19
                r0.onMediaKey(r11, r1)     // Catch:{ RemoteException -> 0x00f1 }
                monitor-exit(r16)     // Catch:{ all -> 0x013e }
                android.os.Binder.restoreCallingIdentity(r14)
                return
            L_0x00f1:
                r0 = move-exception
                java.lang.String r1 = "MediaSessionService"
                java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ all -> 0x013e }
                r2.<init>()     // Catch:{ all -> 0x013e }
                java.lang.String r3 = "Failed to send "
                r2.append(r3)     // Catch:{ all -> 0x013e }
                r2.append(r11)     // Catch:{ all -> 0x013e }
                java.lang.String r3 = " to the media key listener"
                r2.append(r3)     // Catch:{ all -> 0x013e }
                java.lang.String r2 = r2.toString()     // Catch:{ all -> 0x013e }
                android.util.Log.w(r1, r2)     // Catch:{ all -> 0x013e }
            L_0x010d:
                if (r17 != 0) goto L_0x0129
                int r0 = r23.getKeyCode()     // Catch:{ all -> 0x013e }
                boolean r0 = r10.isVoiceKey(r0)     // Catch:{ all -> 0x013e }
                if (r0 == 0) goto L_0x0129
                r1 = r20
                r2 = r21
                r3 = r12
                r4 = r13
                r5 = r22
                r6 = r23
                r7 = r24
                r1.handleVoiceKeyEventLocked(r2, r3, r4, r5, r6, r7)     // Catch:{ all -> 0x013e }
                goto L_0x0138
            L_0x0129:
                r1 = r20
                r2 = r21
                r3 = r12
                r4 = r13
                r5 = r22
                r6 = r23
                r7 = r24
                r1.dispatchMediaKeyEventLocked(r2, r3, r4, r5, r6, r7)     // Catch:{ all -> 0x013e }
            L_0x0138:
                monitor-exit(r16)     // Catch:{ all -> 0x013e }
                android.os.Binder.restoreCallingIdentity(r14)
                return
            L_0x013e:
                r0 = move-exception
                monitor-exit(r16)     // Catch:{ all -> 0x013e }
                throw r0     // Catch:{ all -> 0x0141 }
            L_0x0141:
                r0 = move-exception
            L_0x0142:
                android.os.Binder.restoreCallingIdentity(r14)
                throw r0
            L_0x0146:
                java.lang.String r0 = "MediaSessionService"
                java.lang.String r1 = "Attempted to dispatch null or non-media key event."
                android.util.Log.w(r0, r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.server.media.MediaSessionService.SessionManagerImpl.dispatchMediaKeyEvent(java.lang.String, boolean, android.view.KeyEvent, boolean):void");
        }

        /* Debug info: failed to restart local var, previous not found, register: 18 */
        public boolean dispatchMediaKeyEventToSessionAsSystemService(String packageName, MediaSession.Token sessionToken, KeyEvent keyEvent) {
            MediaSession.Token token = sessionToken;
            int pid = Binder.getCallingPid();
            int uid = Binder.getCallingUid();
            long token2 = Binder.clearCallingIdentity();
            try {
                synchronized (MediaSessionService.this.mLock) {
                    try {
                        MediaSessionRecord record = MediaSessionService.this.getMediaSessionRecordLocked(token);
                        if (record == null) {
                            Log.w(MediaSessionService.TAG, "Failed to find session to dispatch key event.");
                            return false;
                        }
                        if (MediaSessionService.DEBUG) {
                            try {
                                StringBuilder sb = new StringBuilder();
                                sb.append("dispatchMediaKeyEventToSessionAsSystemService, pkg=");
                                sb.append(packageName);
                                sb.append(", pid=");
                                sb.append(pid);
                                sb.append(", uid=");
                                sb.append(uid);
                                sb.append(", sessionToken=");
                                sb.append(token);
                                sb.append(", event=");
                                sb.append(keyEvent);
                                sb.append(", session=");
                                sb.append(record);
                                Log.d(MediaSessionService.TAG, sb.toString());
                            } catch (Throwable th) {
                                th = th;
                                String str = packageName;
                                KeyEvent keyEvent2 = keyEvent;
                                throw th;
                            }
                        } else {
                            String str2 = packageName;
                            KeyEvent keyEvent3 = keyEvent;
                        }
                        boolean sendMediaButton = record.sendMediaButton(packageName, pid, uid, true, keyEvent, 0, (ResultReceiver) null);
                        Binder.restoreCallingIdentity(token2);
                        return sendMediaButton;
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                }
            } finally {
                Binder.restoreCallingIdentity(token2);
            }
        }

        /* Debug info: failed to restart local var, previous not found, register: 10 */
        public void setCallback(ICallback callback) {
            int callingPid = Binder.getCallingPid();
            int uid = Binder.getCallingUid();
            long token = Binder.clearCallingIdentity();
            try {
                if (UserHandle.isSameApp(uid, 1002)) {
                    synchronized (MediaSessionService.this.mLock) {
                        int userId = UserHandle.getUserId(uid);
                        final FullUserRecord user = MediaSessionService.this.getFullUserRecordLocked(userId);
                        if (user != null) {
                            if (user.mFullUserId == userId) {
                                ICallback unused = user.mCallback = callback;
                                Log.d(MediaSessionService.TAG, "The callback " + user.mCallback + " is set by " + MediaSessionService.this.getCallingPackageName(uid));
                                if (user.mCallback == null) {
                                    Binder.restoreCallingIdentity(token);
                                    return;
                                }
                                try {
                                    user.mCallback.asBinder().linkToDeath(new IBinder.DeathRecipient() {
                                        public void binderDied() {
                                            synchronized (MediaSessionService.this.mLock) {
                                                ICallback unused = user.mCallback = null;
                                            }
                                        }
                                    }, 0);
                                    user.pushAddressedPlayerChangedLocked();
                                } catch (RemoteException e) {
                                    Log.w(MediaSessionService.TAG, "Failed to set callback", e);
                                    ICallback unused2 = user.mCallback = null;
                                }
                            }
                        }
                        Log.w(MediaSessionService.TAG, "Only the full user can set the callback, userId=" + userId);
                        return;
                    }
                }
                throw new SecurityException("Only Bluetooth service processes can set Callback");
                Binder.restoreCallingIdentity(token);
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        /* Debug info: failed to restart local var, previous not found, register: 11 */
        public void setOnVolumeKeyLongPressListener(IOnVolumeKeyLongPressListener listener) {
            int pid = Binder.getCallingPid();
            int uid = Binder.getCallingUid();
            long token = Binder.clearCallingIdentity();
            try {
                if (MediaSessionService.this.mContext.checkPermission("android.permission.SET_VOLUME_KEY_LONG_PRESS_LISTENER", pid, uid) == 0) {
                    synchronized (MediaSessionService.this.mLock) {
                        int userId = UserHandle.getUserId(uid);
                        final FullUserRecord user = MediaSessionService.this.getFullUserRecordLocked(userId);
                        if (user != null) {
                            if (user.mFullUserId == userId) {
                                if (user.mOnVolumeKeyLongPressListener == null || user.mOnVolumeKeyLongPressListenerUid == uid) {
                                    IOnVolumeKeyLongPressListener unused = user.mOnVolumeKeyLongPressListener = listener;
                                    int unused2 = user.mOnVolumeKeyLongPressListenerUid = uid;
                                    Log.d(MediaSessionService.TAG, "The volume key long-press listener " + listener + " is set by " + MediaSessionService.this.getCallingPackageName(uid));
                                    if (user.mOnVolumeKeyLongPressListener != null) {
                                        try {
                                            user.mOnVolumeKeyLongPressListener.asBinder().linkToDeath(new IBinder.DeathRecipient() {
                                                public void binderDied() {
                                                    synchronized (MediaSessionService.this.mLock) {
                                                        IOnVolumeKeyLongPressListener unused = user.mOnVolumeKeyLongPressListener = null;
                                                    }
                                                }
                                            }, 0);
                                        } catch (RemoteException e) {
                                            Log.w(MediaSessionService.TAG, "Failed to set death recipient " + user.mOnVolumeKeyLongPressListener);
                                            IOnVolumeKeyLongPressListener unused3 = user.mOnVolumeKeyLongPressListener = null;
                                        }
                                    }
                                } else {
                                    Log.w(MediaSessionService.TAG, "The volume key long-press listener cannot be reset by another app , mOnVolumeKeyLongPressListener=" + user.mOnVolumeKeyLongPressListenerUid + ", uid=" + uid);
                                    Binder.restoreCallingIdentity(token);
                                    return;
                                }
                            }
                        }
                        Log.w(MediaSessionService.TAG, "Only the full user can set the volume key long-press listener, userId=" + userId);
                        return;
                    }
                }
                throw new SecurityException("Must hold the SET_VOLUME_KEY_LONG_PRESS_LISTENER permission.");
                Binder.restoreCallingIdentity(token);
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        /* Debug info: failed to restart local var, previous not found, register: 11 */
        public void setOnMediaKeyListener(IOnMediaKeyListener listener) {
            int pid = Binder.getCallingPid();
            int uid = Binder.getCallingUid();
            long token = Binder.clearCallingIdentity();
            try {
                if (MediaSessionService.this.mContext.checkPermission("android.permission.SET_MEDIA_KEY_LISTENER", pid, uid) == 0) {
                    synchronized (MediaSessionService.this.mLock) {
                        int userId = UserHandle.getUserId(uid);
                        final FullUserRecord user = MediaSessionService.this.getFullUserRecordLocked(userId);
                        if (user != null) {
                            if (user.mFullUserId == userId) {
                                if (user.mOnMediaKeyListener == null || user.mOnMediaKeyListenerUid == uid) {
                                    IOnMediaKeyListener unused = user.mOnMediaKeyListener = listener;
                                    int unused2 = user.mOnMediaKeyListenerUid = uid;
                                    Log.d(MediaSessionService.TAG, "The media key listener " + user.mOnMediaKeyListener + " is set by " + MediaSessionService.this.getCallingPackageName(uid));
                                    if (user.mOnMediaKeyListener != null) {
                                        try {
                                            user.mOnMediaKeyListener.asBinder().linkToDeath(new IBinder.DeathRecipient() {
                                                public void binderDied() {
                                                    synchronized (MediaSessionService.this.mLock) {
                                                        IOnMediaKeyListener unused = user.mOnMediaKeyListener = null;
                                                    }
                                                }
                                            }, 0);
                                        } catch (RemoteException e) {
                                            Log.w(MediaSessionService.TAG, "Failed to set death recipient " + user.mOnMediaKeyListener);
                                            IOnMediaKeyListener unused3 = user.mOnMediaKeyListener = null;
                                        }
                                    }
                                } else {
                                    Log.w(MediaSessionService.TAG, "The media key listener cannot be reset by another app. , mOnMediaKeyListenerUid=" + user.mOnMediaKeyListenerUid + ", uid=" + uid);
                                    Binder.restoreCallingIdentity(token);
                                    return;
                                }
                            }
                        }
                        Log.w(MediaSessionService.TAG, "Only the full user can set the media key listener, userId=" + userId);
                        return;
                    }
                }
                throw new SecurityException("Must hold the SET_MEDIA_KEY_LISTENER permission.");
                Binder.restoreCallingIdentity(token);
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        /* Debug info: failed to restart local var, previous not found, register: 21 */
        public void dispatchVolumeKeyEvent(String packageName, String opPackageName, boolean asSystemService, KeyEvent keyEvent, int stream, boolean musicOnly) {
            KeyEvent keyEvent2 = keyEvent;
            int i = stream;
            boolean z = musicOnly;
            if (keyEvent2 == null || !(keyEvent.getKeyCode() == 24 || keyEvent.getKeyCode() == 25 || keyEvent.getKeyCode() == 164)) {
                Log.w(MediaSessionService.TAG, "Attempted to dispatch null or non-volume key event.");
                return;
            }
            int pid = Binder.getCallingPid();
            int uid = Binder.getCallingUid();
            long token = Binder.clearCallingIdentity();
            Log.d(MediaSessionService.TAG, "dispatchVolumeKeyEvent, pkg=" + packageName + ", opPkg=" + opPackageName + ", pid=" + pid + ", uid=" + uid + ", asSystem=" + asSystemService + ", event=" + keyEvent2 + ", stream=" + i + ", musicOnly=" + z);
            try {
                synchronized (MediaSessionService.this.mLock) {
                    if (!MediaSessionService.this.isGlobalPriorityActiveLocked()) {
                        if (MediaSessionService.this.mCurrentFullUserRecord.mOnVolumeKeyLongPressListener != null) {
                            if (keyEvent.getAction() == 0) {
                                if (keyEvent.getRepeatCount() == 0) {
                                    KeyEvent unused = MediaSessionService.this.mCurrentFullUserRecord.mInitialDownVolumeKeyEvent = KeyEvent.obtain(keyEvent);
                                    int unused2 = MediaSessionService.this.mCurrentFullUserRecord.mInitialDownVolumeStream = i;
                                    boolean unused3 = MediaSessionService.this.mCurrentFullUserRecord.mInitialDownMusicOnly = z;
                                    MediaSessionService.this.mHandler.sendMessageDelayed(MediaSessionService.this.mHandler.obtainMessage(2, MediaSessionService.this.mCurrentFullUserRecord.mFullUserId, 0), (long) MediaSessionService.this.mLongPressTimeout);
                                }
                                if (keyEvent.getRepeatCount() > 0 || keyEvent.isLongPress()) {
                                    MediaSessionService.this.mHandler.removeMessages(2);
                                    if (MediaSessionService.this.mCurrentFullUserRecord.mInitialDownVolumeKeyEvent != null) {
                                        MediaSessionService.this.dispatchVolumeKeyLongPressLocked(MediaSessionService.this.mCurrentFullUserRecord.mInitialDownVolumeKeyEvent);
                                        KeyEvent unused4 = MediaSessionService.this.mCurrentFullUserRecord.mInitialDownVolumeKeyEvent = null;
                                    }
                                    MediaSessionService.this.dispatchVolumeKeyLongPressLocked(keyEvent2);
                                }
                            } else {
                                MediaSessionService.this.mHandler.removeMessages(2);
                                if (MediaSessionService.this.mCurrentFullUserRecord.mInitialDownVolumeKeyEvent == null || MediaSessionService.this.mCurrentFullUserRecord.mInitialDownVolumeKeyEvent.getDownTime() != keyEvent.getDownTime()) {
                                    MediaSessionService.this.dispatchVolumeKeyLongPressLocked(keyEvent2);
                                } else {
                                    dispatchVolumeKeyEventLocked(packageName, opPackageName, pid, uid, asSystemService, MediaSessionService.this.mCurrentFullUserRecord.mInitialDownVolumeKeyEvent, MediaSessionService.this.mCurrentFullUserRecord.mInitialDownVolumeStream, MediaSessionService.this.mCurrentFullUserRecord.mInitialDownMusicOnly);
                                    dispatchVolumeKeyEventLocked(packageName, opPackageName, pid, uid, asSystemService, keyEvent, stream, musicOnly);
                                }
                            }
                        }
                    }
                    dispatchVolumeKeyEventLocked(packageName, opPackageName, pid, uid, asSystemService, keyEvent, stream, musicOnly);
                }
                Binder.restoreCallingIdentity(token);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }

        private void dispatchVolumeKeyEventLocked(String packageName, String opPackageName, int pid, int uid, boolean asSystemService, KeyEvent keyEvent, int stream, boolean musicOnly) {
            int flags;
            boolean up = false;
            boolean down = keyEvent.getAction() == 0;
            if (keyEvent.getAction() == 1) {
                up = true;
            }
            int direction = 0;
            boolean isMute = false;
            int keyCode = keyEvent.getKeyCode();
            if (keyCode == 24) {
                direction = 1;
            } else if (keyCode == 25) {
                direction = -1;
            } else if (keyCode == 164) {
                isMute = true;
            }
            if (down || up) {
                if (musicOnly) {
                    flags = 4096 | 512;
                } else if (up) {
                    flags = 4096 | 20;
                } else {
                    flags = 4096 | 17;
                }
                if (direction != 0) {
                    if (up) {
                        direction = 0;
                    }
                    dispatchAdjustVolumeLocked(packageName, opPackageName, pid, uid, asSystemService, stream, direction, flags);
                } else if (isMute && down && keyEvent.getRepeatCount() == 0) {
                    dispatchAdjustVolumeLocked(packageName, opPackageName, pid, uid, asSystemService, stream, 101, flags);
                }
            }
        }

        /* Debug info: failed to restart local var, previous not found, register: 25 */
        /* JADX WARNING: Code restructure failed: missing block: B:58:0x010f, code lost:
            android.os.Binder.restoreCallingIdentity(r22);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:59:0x0113, code lost:
            return;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void dispatchVolumeKeyEventToSessionAsSystemService(java.lang.String r26, java.lang.String r27, android.media.session.MediaSession.Token r28, android.view.KeyEvent r29) {
            /*
                r25 = this;
                r10 = r25
                r11 = r28
                int r15 = android.os.Binder.getCallingPid()
                int r14 = android.os.Binder.getCallingUid()
                long r22 = android.os.Binder.clearCallingIdentity()
                com.android.server.media.MediaSessionService r0 = com.android.server.media.MediaSessionService.this     // Catch:{ all -> 0x0125 }
                java.lang.Object r24 = r0.mLock     // Catch:{ all -> 0x0125 }
                monitor-enter(r24)     // Catch:{ all -> 0x0125 }
                com.android.server.media.MediaSessionService r0 = com.android.server.media.MediaSessionService.this     // Catch:{ all -> 0x0116 }
                com.android.server.media.MediaSessionRecord r0 = r0.getMediaSessionRecordLocked(r11)     // Catch:{ all -> 0x0116 }
                if (r0 != 0) goto L_0x005b
                java.lang.String r1 = "MediaSessionService"
                java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ all -> 0x0050 }
                r2.<init>()     // Catch:{ all -> 0x0050 }
                java.lang.String r3 = "Failed to find session to dispatch key event, token="
                r2.append(r3)     // Catch:{ all -> 0x0050 }
                r2.append(r11)     // Catch:{ all -> 0x0050 }
                java.lang.String r3 = ". Fallbacks to the default handling."
                r2.append(r3)     // Catch:{ all -> 0x0050 }
                java.lang.String r2 = r2.toString()     // Catch:{ all -> 0x0050 }
                android.util.Log.w(r1, r2)     // Catch:{ all -> 0x0050 }
                r6 = 1
                r8 = -2147483648(0xffffffff80000000, float:-0.0)
                r9 = 0
                r1 = r25
                r2 = r26
                r3 = r27
                r4 = r15
                r5 = r14
                r7 = r29
                r1.dispatchVolumeKeyEventLocked(r2, r3, r4, r5, r6, r7, r8, r9)     // Catch:{ all -> 0x0050 }
                monitor-exit(r24)     // Catch:{ all -> 0x0050 }
                android.os.Binder.restoreCallingIdentity(r22)
                return
            L_0x0050:
                r0 = move-exception
                r3 = r26
            L_0x0053:
                r4 = r27
            L_0x0055:
                r5 = r29
            L_0x0057:
                r2 = r14
                r6 = r15
                goto L_0x011f
            L_0x005b:
                boolean r1 = com.android.server.media.MediaSessionService.DEBUG     // Catch:{ all -> 0x0116 }
                if (r1 == 0) goto L_0x00b2
                java.lang.String r1 = "MediaSessionService"
                java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ all -> 0x0050 }
                r2.<init>()     // Catch:{ all -> 0x0050 }
                java.lang.String r3 = "dispatchVolumeKeyEventToSessionAsSystemService, pkg="
                r2.append(r3)     // Catch:{ all -> 0x0050 }
                r3 = r26
                r2.append(r3)     // Catch:{ all -> 0x00b0 }
                java.lang.String r4 = ", opPkg="
                r2.append(r4)     // Catch:{ all -> 0x00b0 }
                r4 = r27
                r2.append(r4)     // Catch:{ all -> 0x00ae }
                java.lang.String r5 = ", pid="
                r2.append(r5)     // Catch:{ all -> 0x00ae }
                r2.append(r15)     // Catch:{ all -> 0x00ae }
                java.lang.String r5 = ", uid="
                r2.append(r5)     // Catch:{ all -> 0x00ae }
                r2.append(r14)     // Catch:{ all -> 0x00ae }
                java.lang.String r5 = ", sessionToken="
                r2.append(r5)     // Catch:{ all -> 0x00ae }
                r2.append(r11)     // Catch:{ all -> 0x00ae }
                java.lang.String r5 = ", event="
                r2.append(r5)     // Catch:{ all -> 0x00ae }
                r5 = r29
                r2.append(r5)     // Catch:{ all -> 0x00ac }
                java.lang.String r6 = ", session="
                r2.append(r6)     // Catch:{ all -> 0x00ac }
                r2.append(r0)     // Catch:{ all -> 0x00ac }
                java.lang.String r2 = r2.toString()     // Catch:{ all -> 0x00ac }
                android.util.Log.d(r1, r2)     // Catch:{ all -> 0x00ac }
                goto L_0x00b8
            L_0x00ac:
                r0 = move-exception
                goto L_0x0057
            L_0x00ae:
                r0 = move-exception
                goto L_0x0055
            L_0x00b0:
                r0 = move-exception
                goto L_0x0053
            L_0x00b2:
                r3 = r26
                r4 = r27
                r5 = r29
            L_0x00b8:
                int r1 = r29.getAction()     // Catch:{ all -> 0x0114 }
                if (r1 == 0) goto L_0x00dd
                r2 = 1
                if (r1 == r2) goto L_0x00c4
                r2 = r14
                r6 = r15
                goto L_0x010e
            L_0x00c4:
                r1 = 4116(0x1014, float:5.768E-42)
                r17 = 0
                r18 = 1
                r19 = 0
                r20 = 4116(0x1014, float:5.768E-42)
                r21 = 0
                r12 = r0
                r13 = r26
                r2 = r14
                r14 = r27
                r6 = r15
                r16 = r2
                r12.adjustVolume(r13, r14, r15, r16, r17, r18, r19, r20, r21)     // Catch:{ all -> 0x0123 }
                goto L_0x010e
            L_0x00dd:
                r2 = r14
                r6 = r15
                r1 = 0
                int r7 = r29.getKeyCode()     // Catch:{ all -> 0x0123 }
                r8 = 24
                if (r7 == r8) goto L_0x00f6
                r8 = 25
                if (r7 == r8) goto L_0x00f4
                r8 = 164(0xa4, float:2.3E-43)
                if (r7 == r8) goto L_0x00f1
                goto L_0x00f8
            L_0x00f1:
                r1 = 101(0x65, float:1.42E-43)
                goto L_0x00f8
            L_0x00f4:
                r1 = -1
                goto L_0x00f8
            L_0x00f6:
                r1 = 1
            L_0x00f8:
                r17 = 0
                r18 = 1
                r20 = 1
                r21 = 0
                r12 = r0
                r13 = r26
                r14 = r27
                r15 = r6
                r16 = r2
                r19 = r1
                r12.adjustVolume(r13, r14, r15, r16, r17, r18, r19, r20, r21)     // Catch:{ all -> 0x0123 }
            L_0x010e:
                monitor-exit(r24)     // Catch:{ all -> 0x0123 }
                android.os.Binder.restoreCallingIdentity(r22)
                return
            L_0x0114:
                r0 = move-exception
                goto L_0x011d
            L_0x0116:
                r0 = move-exception
                r3 = r26
                r4 = r27
                r5 = r29
            L_0x011d:
                r2 = r14
                r6 = r15
            L_0x011f:
                monitor-exit(r24)     // Catch:{ all -> 0x0123 }
                throw r0     // Catch:{ all -> 0x0121 }
            L_0x0121:
                r0 = move-exception
                goto L_0x012e
            L_0x0123:
                r0 = move-exception
                goto L_0x011f
            L_0x0125:
                r0 = move-exception
                r3 = r26
                r4 = r27
                r5 = r29
                r2 = r14
                r6 = r15
            L_0x012e:
                android.os.Binder.restoreCallingIdentity(r22)
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.server.media.MediaSessionService.SessionManagerImpl.dispatchVolumeKeyEventToSessionAsSystemService(java.lang.String, java.lang.String, android.media.session.MediaSession$Token, android.view.KeyEvent):void");
        }

        /* Debug info: failed to restart local var, previous not found, register: 16 */
        public void dispatchAdjustVolume(String packageName, String opPackageName, int suggestedStream, int delta, int flags) {
            int pid = Binder.getCallingPid();
            int uid = Binder.getCallingUid();
            long token = Binder.clearCallingIdentity();
            try {
                synchronized (MediaSessionService.this.mLock) {
                    dispatchAdjustVolumeLocked(packageName, opPackageName, pid, uid, false, suggestedStream, delta, flags);
                }
                Binder.restoreCallingIdentity(token);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }

        /* Debug info: failed to restart local var, previous not found, register: 7 */
        public void registerRemoteVolumeController(IRemoteVolumeController rvc) {
            int pid = Binder.getCallingPid();
            int uid = Binder.getCallingUid();
            long token = Binder.clearCallingIdentity();
            synchronized (MediaSessionService.this.mLock) {
                try {
                    MediaSessionService.this.enforceStatusBarServicePermission("listen for volume changes", pid, uid);
                    MediaSessionService.this.mRemoteVolumeControllers.register(rvc);
                    Binder.restoreCallingIdentity(token);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(token);
                    throw th;
                }
            }
        }

        /* Debug info: failed to restart local var, previous not found, register: 7 */
        public void unregisterRemoteVolumeController(IRemoteVolumeController rvc) {
            int pid = Binder.getCallingPid();
            int uid = Binder.getCallingUid();
            long token = Binder.clearCallingIdentity();
            synchronized (MediaSessionService.this.mLock) {
                try {
                    MediaSessionService.this.enforceStatusBarServicePermission("listen for volume changes", pid, uid);
                    MediaSessionService.this.mRemoteVolumeControllers.unregister(rvc);
                    Binder.restoreCallingIdentity(token);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(token);
                    throw th;
                }
            }
        }

        public boolean isGlobalPriorityActive() {
            boolean access$1500;
            synchronized (MediaSessionService.this.mLock) {
                access$1500 = MediaSessionService.this.isGlobalPriorityActiveLocked();
            }
            return access$1500;
        }

        public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
            if (DumpUtils.checkDumpPermission(MediaSessionService.this.mContext, MediaSessionService.TAG, pw)) {
                pw.println("MEDIA SESSION SERVICE (dumpsys media_session)");
                pw.println();
                synchronized (MediaSessionService.this.mLock) {
                    pw.println(MediaSessionService.this.mSessionsListeners.size() + " sessions listeners.");
                    pw.println("Global priority session is " + MediaSessionService.this.mGlobalPrioritySession);
                    if (MediaSessionService.this.mGlobalPrioritySession != null) {
                        MediaSessionService.this.mGlobalPrioritySession.dump(pw, "  ");
                    }
                    pw.println("User Records:");
                    int count = MediaSessionService.this.mUserRecords.size();
                    for (int i = 0; i < count; i++) {
                        ((FullUserRecord) MediaSessionService.this.mUserRecords.valueAt(i)).dumpLocked(pw, "");
                    }
                    MediaSessionService.this.mAudioPlayerStateMonitor.dump(MediaSessionService.this.mContext, pw, "");
                }
            }
        }

        public boolean isTrusted(String controllerPackageName, int controllerPid, int controllerUid) throws RemoteException {
            int uid = Binder.getCallingUid();
            long token = Binder.clearCallingIdentity();
            try {
                return hasMediaControlPermission(UserHandle.getUserId(uid), controllerPackageName, controllerPid, controllerUid);
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        private int verifySessionsRequest(ComponentName componentName, int userId, int pid, int uid) {
            String packageName = null;
            if (componentName != null) {
                packageName = componentName.getPackageName();
                MediaSessionService.this.enforcePackageName(packageName, uid);
            }
            int resolvedUserId = ActivityManager.handleIncomingUser(pid, uid, userId, true, true, "getSessions", packageName);
            MediaSessionService.this.enforceMediaPermissions(componentName, pid, uid, resolvedUserId);
            return resolvedUserId;
        }

        private boolean hasMediaControlPermission(int resolvedUserId, String packageName, int pid, int uid) throws RemoteException {
            if (MediaSessionService.this.hasStatusBarServicePermission(pid, uid) || uid == 1000 || MediaSessionService.this.mContext.checkPermission("android.permission.MEDIA_CONTENT_CONTROL", pid, uid) == 0) {
                return true;
            }
            if (MediaSessionService.DEBUG) {
                Log.d(MediaSessionService.TAG, packageName + " (uid=" + uid + ") hasn't granted MEDIA_CONTENT_CONTROL");
            }
            int userId = UserHandle.getUserId(uid);
            if (resolvedUserId != userId) {
                return false;
            }
            List<ComponentName> enabledNotificationListeners = MediaSessionService.this.mNotificationManager.getEnabledNotificationListeners(userId);
            if (enabledNotificationListeners != null) {
                for (int i = 0; i < enabledNotificationListeners.size(); i++) {
                    if (TextUtils.equals(packageName, enabledNotificationListeners.get(i).getPackageName())) {
                        return true;
                    }
                }
            }
            if (MediaSessionService.DEBUG) {
                Log.d(MediaSessionService.TAG, packageName + " (uid=" + uid + ") doesn't have an enabled notification listener");
            }
            return false;
        }

        private void dispatchAdjustVolumeLocked(String packageName, String opPackageName, int pid, int uid, boolean asSystemService, int suggestedStream, int direction, int flags) {
            MediaSessionRecord mediaSessionRecord;
            boolean preferSuggestedStream;
            int i = suggestedStream;
            int i2 = flags;
            if (MediaSessionService.this.isGlobalPriorityActiveLocked()) {
                mediaSessionRecord = MediaSessionService.this.mGlobalPrioritySession;
            } else {
                mediaSessionRecord = MediaSessionService.this.mCurrentFullUserRecord.mPriorityStack.getDefaultVolumeSession();
            }
            MediaSessionRecord session = mediaSessionRecord;
            if (!isValidLocalStreamType(i) || !AudioSystem.isStreamActive(i, 0)) {
                preferSuggestedStream = false;
            } else {
                preferSuggestedStream = true;
            }
            Log.d(MediaSessionService.TAG, "Adjusting " + session + " by " + direction + ". flags=" + i2 + ", suggestedStream=" + i + ", preferSuggestedStream=" + preferSuggestedStream);
            if (session != null && !preferSuggestedStream) {
                session.adjustVolume(packageName, opPackageName, pid, uid, (ISessionControllerCallback) null, asSystemService, direction, flags, true);
                boolean z = preferSuggestedStream;
                MediaSessionRecord mediaSessionRecord2 = session;
            } else if ((i2 & 512) == 0 || AudioSystem.isStreamActive(3, 0)) {
                final boolean z2 = asSystemService;
                final String str = opPackageName;
                final int i3 = uid;
                final int i4 = suggestedStream;
                boolean z3 = preferSuggestedStream;
                final int i5 = direction;
                MediaSessionRecord mediaSessionRecord3 = session;
                final int i6 = flags;
                final String str2 = packageName;
                MediaSessionService.this.mHandler.post(new Runnable() {
                    public void run() {
                        int callingUid;
                        String callingOpPackageName;
                        if (z2) {
                            callingOpPackageName = MediaSessionService.this.mContext.getOpPackageName();
                            callingUid = Process.myUid();
                        } else {
                            callingOpPackageName = str;
                            callingUid = i3;
                        }
                        try {
                            MediaSessionService.this.mAudioManagerInternal.adjustSuggestedStreamVolumeForUid(i4, i5, i6, callingOpPackageName, callingUid);
                        } catch (IllegalArgumentException | SecurityException e) {
                            Log.e(MediaSessionService.TAG, "Cannot adjust volume: direction=" + i5 + ", suggestedStream=" + i4 + ", flags=" + i6 + ", packageName=" + str2 + ", uid=" + i3 + ", asSystemService=" + z2, e);
                        }
                    }
                });
            } else if (MediaSessionService.DEBUG) {
                Log.d(MediaSessionService.TAG, "No active session to adjust, skipping media only volume event");
            }
        }

        /* access modifiers changed from: private */
        public void handleVoiceKeyEventLocked(String packageName, int pid, int uid, boolean asSystemService, KeyEvent keyEvent, boolean needWakeLock) {
            int action = keyEvent.getAction();
            boolean isLongPress = (keyEvent.getFlags() & 128) != 0;
            if (action != 0) {
                boolean z = needWakeLock;
                if (action != 1) {
                    KeyEvent keyEvent2 = keyEvent;
                } else if (this.mVoiceButtonDown) {
                    this.mVoiceButtonDown = false;
                    if (this.mVoiceButtonHandled || keyEvent.isCanceled()) {
                        KeyEvent keyEvent3 = keyEvent;
                        return;
                    }
                    dispatchMediaKeyEventLocked(packageName, pid, uid, asSystemService, KeyEvent.changeAction(keyEvent, 0), needWakeLock);
                    dispatchMediaKeyEventLocked(packageName, pid, uid, asSystemService, keyEvent, needWakeLock);
                } else {
                    KeyEvent keyEvent4 = keyEvent;
                }
            } else if (keyEvent.getRepeatCount() == 0) {
                this.mVoiceButtonDown = true;
                this.mVoiceButtonHandled = false;
                KeyEvent keyEvent5 = keyEvent;
                boolean z2 = needWakeLock;
            } else if (!this.mVoiceButtonDown || this.mVoiceButtonHandled || !isLongPress) {
                boolean z3 = needWakeLock;
                KeyEvent keyEvent6 = keyEvent;
            } else {
                this.mVoiceButtonHandled = true;
                startVoiceInput(needWakeLock);
                KeyEvent keyEvent7 = keyEvent;
            }
        }

        /* access modifiers changed from: private */
        public void dispatchMediaKeyEventLocked(String packageName, int pid, int uid, boolean asSystemService, KeyEvent keyEvent, boolean needWakeLock) {
            ComponentName componentName;
            KeyEvent keyEvent2 = keyEvent;
            MediaSessionRecord session = MediaSessionService.this.mCurrentFullUserRecord.getMediaButtonSessionLocked();
            int i = -1;
            if (session != null) {
                Log.d(MediaSessionService.TAG, "Sending " + keyEvent2 + " to " + session);
                if (needWakeLock) {
                    this.mKeyEventReceiver.aquireWakeLockLocked();
                }
                if (needWakeLock) {
                    i = this.mKeyEventReceiver.mLastTimeoutId;
                }
                session.sendMediaButton(packageName, pid, uid, asSystemService, keyEvent, i, this.mKeyEventReceiver);
                if (MediaSessionService.this.mCurrentFullUserRecord.mCallback != null) {
                    try {
                        MediaSessionService.this.mCurrentFullUserRecord.mCallback.onMediaKeyEventDispatchedToMediaSession(keyEvent2, session.getSessionToken());
                    } catch (RemoteException e) {
                        Log.w(MediaSessionService.TAG, "Failed to send callback", e);
                    }
                }
            } else if (MediaSessionService.this.mCurrentFullUserRecord.mLastMediaButtonReceiver != null || MediaSessionService.this.mCurrentFullUserRecord.mRestoredMediaButtonReceiver != null) {
                if (needWakeLock) {
                    this.mKeyEventReceiver.aquireWakeLockLocked();
                }
                Intent mediaButtonIntent = new Intent("android.intent.action.MEDIA_BUTTON");
                mediaButtonIntent.addFlags(268435456);
                mediaButtonIntent.putExtra("android.intent.extra.KEY_EVENT", keyEvent2);
                mediaButtonIntent.putExtra("android.intent.extra.PACKAGE_NAME", asSystemService ? MediaSessionService.this.mContext.getPackageName() : packageName);
                try {
                    if (MediaSessionService.this.mCurrentFullUserRecord.mLastMediaButtonReceiver != null) {
                        PendingIntent receiver = MediaSessionService.this.mCurrentFullUserRecord.mLastMediaButtonReceiver;
                        Log.d(MediaSessionService.TAG, "Sending " + keyEvent2 + " to the last known PendingIntent " + receiver);
                        Context access$1700 = MediaSessionService.this.mContext;
                        if (needWakeLock) {
                            i = this.mKeyEventReceiver.mLastTimeoutId;
                        }
                        receiver.send(access$1700, i, mediaButtonIntent, this.mKeyEventReceiver, MediaSessionService.this.mHandler);
                        if (!(MediaSessionService.this.mCurrentFullUserRecord.mCallback == null || (componentName = MediaSessionService.this.mCurrentFullUserRecord.mLastMediaButtonReceiver.getIntent().getComponent()) == null)) {
                            MediaSessionService.this.mCurrentFullUserRecord.mCallback.onMediaKeyEventDispatchedToMediaButtonReceiver(keyEvent2, componentName);
                        }
                        return;
                    }
                    ComponentName receiver2 = MediaSessionService.this.mCurrentFullUserRecord.mRestoredMediaButtonReceiver;
                    int componentType = MediaSessionService.this.mCurrentFullUserRecord.mRestoredMediaButtonReceiverComponentType;
                    UserHandle userHandle = UserHandle.of(MediaSessionService.this.mCurrentFullUserRecord.mRestoredMediaButtonReceiverUserId);
                    Log.d(MediaSessionService.TAG, "Sending " + keyEvent2 + " to the restored intent " + receiver2 + ", type=" + componentType);
                    mediaButtonIntent.setComponent(receiver2);
                    if (componentType == 2) {
                        MediaSessionService.this.mContext.startActivityAsUser(mediaButtonIntent, userHandle);
                    } else if (componentType != 3) {
                        try {
                            MediaSessionService.this.mContext.sendBroadcastAsUser(mediaButtonIntent, userHandle);
                        } catch (Exception e2) {
                            Log.w(MediaSessionService.TAG, "Error sending media button to the restored intent " + receiver2 + ", type=" + componentType, e2);
                        }
                    } else {
                        MediaSessionService.this.mContext.startForegroundServiceAsUser(mediaButtonIntent, userHandle);
                    }
                    if (MediaSessionService.this.mCurrentFullUserRecord.mCallback != null) {
                        MediaSessionService.this.mCurrentFullUserRecord.mCallback.onMediaKeyEventDispatchedToMediaButtonReceiver(keyEvent2, receiver2);
                    }
                } catch (PendingIntent.CanceledException e3) {
                    Log.i(MediaSessionService.TAG, "Error sending key event to media button receiver " + MediaSessionService.this.mCurrentFullUserRecord.mLastMediaButtonReceiver, e3);
                } catch (RemoteException e4) {
                    Log.w(MediaSessionService.TAG, "Failed to send callback", e4);
                }
            }
        }

        private void startVoiceInput(boolean needWakeLock) {
            Intent voiceIntent;
            if (MediaSessionServiceInjector.startVoiceAssistant(MediaSessionService.this.getContext())) {
                Log.i(MediaSessionService.TAG, "startVoiceAssistant success");
                return;
            }
            PowerManager pm = (PowerManager) MediaSessionService.this.mContext.getSystemService("power");
            boolean z = true;
            boolean isLocked = MediaSessionService.this.mKeyguardManager != null && MediaSessionService.this.mKeyguardManager.isKeyguardLocked();
            if (isLocked || !pm.isScreenOn()) {
                voiceIntent = new Intent("android.speech.action.VOICE_SEARCH_HANDS_FREE");
                if (!isLocked || !MediaSessionService.this.mKeyguardManager.isKeyguardSecure()) {
                    z = false;
                }
                voiceIntent.putExtra("android.speech.extras.EXTRA_SECURE", z);
                Log.i(MediaSessionService.TAG, "voice-based interactions: about to use ACTION_VOICE_SEARCH_HANDS_FREE");
            } else {
                voiceIntent = new Intent("android.speech.action.WEB_SEARCH");
                Log.i(MediaSessionService.TAG, "voice-based interactions: about to use ACTION_WEB_SEARCH");
            }
            if (needWakeLock) {
                MediaSessionService.this.mMediaEventWakeLock.acquire();
            }
            try {
                voiceIntent.setFlags(276824064);
                if (MediaSessionService.DEBUG) {
                    Log.d(MediaSessionService.TAG, "voiceIntent: " + voiceIntent);
                }
                MediaSessionService.this.mContext.startActivityAsUser(voiceIntent, UserHandle.CURRENT);
                if (!needWakeLock) {
                    return;
                }
            } catch (ActivityNotFoundException e) {
                Log.w(MediaSessionService.TAG, "No activity for search: " + e);
                if (!needWakeLock) {
                    return;
                }
            } catch (Throwable th) {
                if (needWakeLock) {
                    MediaSessionService.this.mMediaEventWakeLock.release();
                }
                throw th;
            }
            MediaSessionService.this.mMediaEventWakeLock.release();
        }

        /* access modifiers changed from: private */
        public boolean isVoiceKey(int keyCode) {
            return keyCode == 79 || (!MediaSessionService.this.mHasFeatureLeanback && keyCode == 85);
        }

        private boolean isUserSetupComplete() {
            return Settings.Secure.getIntForUser(MediaSessionService.this.mContext.getContentResolver(), "user_setup_complete", 0, -2) != 0;
        }

        private boolean isValidLocalStreamType(int streamType) {
            return streamType >= 0 && streamType <= 5;
        }

        private class MediaKeyListenerResultReceiver extends ResultReceiver implements Runnable {
            private final boolean mAsSystemService;
            private boolean mHandled;
            private final KeyEvent mKeyEvent;
            private final boolean mNeedWakeLock;
            private final String mPackageName;
            private final int mPid;
            private final int mUid;

            private MediaKeyListenerResultReceiver(String packageName, int pid, int uid, boolean asSystemService, KeyEvent keyEvent, boolean needWakeLock) {
                super(MediaSessionService.this.mHandler);
                MediaSessionService.this.mHandler.postDelayed(this, 1000);
                this.mPackageName = packageName;
                this.mPid = pid;
                this.mUid = uid;
                this.mAsSystemService = asSystemService;
                this.mKeyEvent = keyEvent;
                this.mNeedWakeLock = needWakeLock;
            }

            public void run() {
                Log.d(MediaSessionService.TAG, "The media key listener is timed-out for " + this.mKeyEvent);
                dispatchMediaKeyEvent();
            }

            /* access modifiers changed from: protected */
            public void onReceiveResult(int resultCode, Bundle resultData) {
                if (resultCode == 1) {
                    this.mHandled = true;
                    MediaSessionService.this.mHandler.removeCallbacks(this);
                    return;
                }
                dispatchMediaKeyEvent();
            }

            private void dispatchMediaKeyEvent() {
                if (!this.mHandled) {
                    this.mHandled = true;
                    MediaSessionService.this.mHandler.removeCallbacks(this);
                    synchronized (MediaSessionService.this.mLock) {
                        if (MediaSessionService.this.isGlobalPriorityActiveLocked() || !SessionManagerImpl.this.isVoiceKey(this.mKeyEvent.getKeyCode())) {
                            SessionManagerImpl.this.dispatchMediaKeyEventLocked(this.mPackageName, this.mPid, this.mUid, this.mAsSystemService, this.mKeyEvent, this.mNeedWakeLock);
                        } else {
                            SessionManagerImpl.this.handleVoiceKeyEventLocked(this.mPackageName, this.mPid, this.mUid, this.mAsSystemService, this.mKeyEvent, this.mNeedWakeLock);
                        }
                    }
                }
            }
        }

        class KeyEventWakeLockReceiver extends ResultReceiver implements Runnable, PendingIntent.OnFinished {
            private final Handler mHandler;
            /* access modifiers changed from: private */
            public int mLastTimeoutId = 0;
            private int mRefCount = 0;

            KeyEventWakeLockReceiver(Handler handler) {
                super(handler);
                this.mHandler = handler;
            }

            public void onTimeout() {
                synchronized (MediaSessionService.this.mLock) {
                    if (this.mRefCount != 0) {
                        this.mLastTimeoutId++;
                        this.mRefCount = 0;
                        releaseWakeLockLocked();
                    }
                }
            }

            public void aquireWakeLockLocked() {
                if (this.mRefCount == 0) {
                    MediaSessionService.this.mMediaEventWakeLock.acquire();
                }
                this.mRefCount++;
                this.mHandler.removeCallbacks(this);
                this.mHandler.postDelayed(this, 5000);
            }

            public void run() {
                onTimeout();
            }

            /* access modifiers changed from: protected */
            public void onReceiveResult(int resultCode, Bundle resultData) {
                if (resultCode >= this.mLastTimeoutId) {
                    synchronized (MediaSessionService.this.mLock) {
                        if (this.mRefCount > 0) {
                            this.mRefCount--;
                            if (this.mRefCount == 0) {
                                releaseWakeLockLocked();
                            }
                        }
                    }
                }
            }

            private void releaseWakeLockLocked() {
                MediaSessionService.this.mMediaEventWakeLock.release();
                this.mHandler.removeCallbacks(this);
            }

            public void onSendFinished(PendingIntent pendingIntent, Intent intent, int resultCode, String resultData, Bundle resultExtras) {
                onReceiveResult(resultCode, (Bundle) null);
            }
        }
    }

    final class MessageHandler extends Handler {
        private static final int MSG_SESSIONS_CHANGED = 1;
        private static final int MSG_VOLUME_INITIAL_DOWN = 2;
        private final SparseArray<Integer> mIntegerCache = new SparseArray<>();

        MessageHandler() {
        }

        public void handleMessage(Message msg) {
            int i = msg.what;
            if (i == 1) {
                MediaSessionService.this.pushSessionsChanged(((Integer) msg.obj).intValue());
            } else if (i == 2) {
                synchronized (MediaSessionService.this.mLock) {
                    FullUserRecord user = (FullUserRecord) MediaSessionService.this.mUserRecords.get(msg.arg1);
                    if (!(user == null || user.mInitialDownVolumeKeyEvent == null)) {
                        MediaSessionService.this.dispatchVolumeKeyLongPressLocked(user.mInitialDownVolumeKeyEvent);
                        KeyEvent unused = user.mInitialDownVolumeKeyEvent = null;
                    }
                }
            }
        }

        public void postSessionsChanged(int userId) {
            Integer userIdInteger = this.mIntegerCache.get(userId);
            if (userIdInteger == null) {
                userIdInteger = Integer.valueOf(userId);
                this.mIntegerCache.put(userId, userIdInteger);
            }
            removeMessages(1, userIdInteger);
            obtainMessage(1, userIdInteger).sendToTarget();
        }
    }

    private class Controller2Callback extends MediaController2.ControllerCallback {
        private final Session2Token mToken;

        Controller2Callback(Session2Token token) {
            this.mToken = token;
        }

        public void onConnected(MediaController2 controller, Session2CommandGroup allowedCommands) {
            synchronized (MediaSessionService.this.mLock) {
                int userId = UserHandle.getUserId(this.mToken.getUid());
                ((List) MediaSessionService.this.mSession2TokensPerUser.get(userId)).add(this.mToken);
                MediaSessionService.this.pushSession2TokensChangedLocked(userId);
            }
        }

        public void onDisconnected(MediaController2 controller) {
            synchronized (MediaSessionService.this.mLock) {
                int userId = UserHandle.getUserId(this.mToken.getUid());
                ((List) MediaSessionService.this.mSession2TokensPerUser.get(userId)).remove(this.mToken);
                MediaSessionService.this.pushSession2TokensChangedLocked(userId);
            }
        }
    }
}
