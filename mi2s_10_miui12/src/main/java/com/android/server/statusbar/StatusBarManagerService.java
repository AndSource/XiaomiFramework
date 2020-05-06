package com.android.server.statusbar;

import android.app.ActivityThread;
import android.app.Notification;
import android.content.ComponentName;
import android.content.Context;
import android.graphics.Rect;
import android.hardware.biometrics.IBiometricServiceReceiverInternal;
import android.hardware.display.DisplayManager;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import android.util.Pair;
import android.util.Slog;
import android.util.SparseArray;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.statusbar.IStatusBar;
import com.android.internal.statusbar.IStatusBarService;
import com.android.internal.statusbar.NotificationVisibility;
import com.android.internal.statusbar.RegisterStatusBarResult;
import com.android.internal.statusbar.StatusBarIcon;
import com.android.internal.util.DumpUtils;
import com.android.server.LocalServices;
import com.android.server.notification.NotificationDelegate;
import com.android.server.policy.GlobalActionsProvider;
import com.android.server.power.ShutdownThread;
import com.android.server.wm.WindowManagerService;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;

public class StatusBarManagerService extends IStatusBarService.Stub implements DisplayManager.DisplayListener {
    private static final boolean SPEW = false;
    private static final String TAG = "StatusBarManagerService";
    /* access modifiers changed from: private */
    public volatile IStatusBar mBar;
    /* access modifiers changed from: private */
    public final Context mContext;
    /* access modifiers changed from: private */
    public int mCurrentUserId;
    /* access modifiers changed from: private */
    public final DeathRecipient mDeathRecipient = new DeathRecipient();
    private final ArrayList<DisableRecord> mDisableRecords = new ArrayList<>();
    /* access modifiers changed from: private */
    public SparseArray<UiState> mDisplayUiState = new SparseArray<>();
    /* access modifiers changed from: private */
    public GlobalActionsProvider.GlobalActionsListener mGlobalActionListener;
    private final GlobalActionsProvider mGlobalActionsProvider = new GlobalActionsProvider() {
        public boolean isGlobalActionsDisabled() {
            if ((((UiState) StatusBarManagerService.this.mDisplayUiState.get(0)).getDisabled2() & 8) != 0) {
                return true;
            }
            return false;
        }

        public void setGlobalActionsListener(GlobalActionsProvider.GlobalActionsListener listener) {
            GlobalActionsProvider.GlobalActionsListener unused = StatusBarManagerService.this.mGlobalActionListener = listener;
            StatusBarManagerService.this.mGlobalActionListener.onGlobalActionsAvailableChanged(StatusBarManagerService.this.mBar != null);
        }

        public void showGlobalActions() {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.showGlobalActionsMenu();
                } catch (RemoteException e) {
                }
            }
        }
    };
    private Handler mHandler = new Handler();
    private ArrayMap<String, StatusBarIcon> mIcons = new ArrayMap<>();
    private final StatusBarManagerInternal mInternalService = new StatusBarManagerInternal() {
        private boolean mNotificationLightOn;

        public void setNotificationDelegate(NotificationDelegate delegate) {
            NotificationDelegate unused = StatusBarManagerService.this.mNotificationDelegate = delegate;
        }

        public void showScreenPinningRequest(int taskId) {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.showScreenPinningRequest(taskId);
                } catch (RemoteException e) {
                }
            }
        }

        public void showAssistDisclosure() {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.showAssistDisclosure();
                } catch (RemoteException e) {
                }
            }
        }

        public void startAssist(Bundle args) {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.startAssist(args);
                } catch (RemoteException e) {
                }
            }
        }

        public void onCameraLaunchGestureDetected(int source) {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.onCameraLaunchGestureDetected(source);
                } catch (RemoteException e) {
                }
            }
        }

        public void topAppWindowChanged(int displayId, boolean menuVisible) {
            StatusBarManagerService.this.topAppWindowChanged(displayId, menuVisible);
        }

        public void setSystemUiVisibility(int displayId, int vis, int fullscreenStackVis, int dockedStackVis, int mask, Rect fullscreenBounds, Rect dockedBounds, boolean isNavbarColorManagedByIme, String cause) {
            StatusBarManagerService.this.setSystemUiVisibility(displayId, vis, fullscreenStackVis, dockedStackVis, mask, fullscreenBounds, dockedBounds, isNavbarColorManagedByIme, cause);
        }

        public void toggleSplitScreen() {
            StatusBarManagerService.this.enforceStatusBarService();
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.toggleSplitScreen();
                } catch (RemoteException e) {
                }
            }
        }

        public void appTransitionFinished(int displayId) {
            StatusBarManagerService.this.enforceStatusBarService();
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.appTransitionFinished(displayId);
                } catch (RemoteException e) {
                }
            }
        }

        public void toggleRecentApps() {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.toggleRecentApps();
                } catch (RemoteException e) {
                }
            }
        }

        public void setCurrentUser(int newUserId) {
            int unused = StatusBarManagerService.this.mCurrentUserId = newUserId;
        }

        public void preloadRecentApps() {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.preloadRecentApps();
                } catch (RemoteException e) {
                }
            }
        }

        public void cancelPreloadRecentApps() {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.cancelPreloadRecentApps();
                } catch (RemoteException e) {
                }
            }
        }

        public void showRecentApps(boolean triggeredFromAltTab) {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.showRecentApps(triggeredFromAltTab);
                } catch (RemoteException e) {
                }
            }
        }

        public void hideRecentApps(boolean triggeredFromAltTab, boolean triggeredFromHomeKey) {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.hideRecentApps(triggeredFromAltTab, triggeredFromHomeKey);
                } catch (RemoteException e) {
                }
            }
        }

        public void dismissKeyboardShortcutsMenu() {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.dismissKeyboardShortcutsMenu();
                } catch (RemoteException e) {
                }
            }
        }

        public void toggleKeyboardShortcutsMenu(int deviceId) {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.toggleKeyboardShortcutsMenu(deviceId);
                } catch (RemoteException e) {
                }
            }
        }

        public void showChargingAnimation(int batteryLevel) {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.showWirelessChargingAnimation(batteryLevel);
                } catch (RemoteException e) {
                }
            }
        }

        public void showPictureInPictureMenu() {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.showPictureInPictureMenu();
                } catch (RemoteException e) {
                }
            }
        }

        public void setWindowState(int displayId, int window, int state) {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.setWindowState(displayId, window, state);
                } catch (RemoteException e) {
                }
            }
        }

        public void appTransitionPending(int displayId) {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.appTransitionPending(displayId);
                } catch (RemoteException e) {
                }
            }
        }

        public void appTransitionCancelled(int displayId) {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.appTransitionCancelled(displayId);
                } catch (RemoteException e) {
                }
            }
        }

        public void appTransitionStarting(int displayId, long statusBarAnimationsStartTime, long statusBarAnimationsDuration) {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.appTransitionStarting(displayId, statusBarAnimationsStartTime, statusBarAnimationsDuration);
                } catch (RemoteException e) {
                }
            }
        }

        public void setTopAppHidesStatusBar(boolean hidesStatusBar) {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.setTopAppHidesStatusBar(hidesStatusBar);
                } catch (RemoteException e) {
                }
            }
        }

        public boolean showShutdownUi(boolean isReboot, String reason) {
            if (StatusBarManagerService.this.mContext.getResources().getBoolean(17891519) && StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.showShutdownUi(isReboot, reason);
                    return true;
                } catch (RemoteException e) {
                }
            }
            return false;
        }

        public void onProposedRotationChanged(int rotation, boolean isValid) {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.onProposedRotationChanged(rotation, isValid);
                } catch (RemoteException e) {
                }
            }
        }

        public void onDisplayReady(int displayId) {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.onDisplayReady(displayId);
                } catch (RemoteException e) {
                }
            }
        }

        public void onRecentsAnimationStateChanged(boolean running) {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.onRecentsAnimationStateChanged(running);
                } catch (RemoteException e) {
                }
            }
        }
    };
    private final Object mLock = new Object();
    /* access modifiers changed from: private */
    public NotificationDelegate mNotificationDelegate;
    ArrayList<StatusRecord> mStatusRecords = new ArrayList<>();
    private IBinder mSysUiVisToken = new Binder();
    private final WindowManagerService mWindowManager;

    private class DeathRecipient implements IBinder.DeathRecipient {
        private DeathRecipient() {
        }

        public void binderDied() {
            StatusBarManagerService.this.mBar.asBinder().unlinkToDeath(this, 0);
            IStatusBar unused = StatusBarManagerService.this.mBar = null;
            StatusBarManagerService.this.notifyBarAttachChanged();
        }

        public void linkToDeath() {
            try {
                StatusBarManagerService.this.mBar.asBinder().linkToDeath(StatusBarManagerService.this.mDeathRecipient, 0);
            } catch (RemoteException e) {
                Slog.e(StatusBarManagerService.TAG, "Unable to register Death Recipient for status bar", e);
            }
        }
    }

    private class DisableRecord implements IBinder.DeathRecipient {
        String pkg;
        IBinder token;
        int userId;
        int what1;
        int what2;

        public DisableRecord(int userId2, IBinder token2) {
            this.userId = userId2;
            this.token = token2;
            try {
                token2.linkToDeath(this, 0);
            } catch (RemoteException e) {
            }
        }

        public void binderDied() {
            Slog.i(StatusBarManagerService.TAG, "binder died for pkg=" + this.pkg);
            StatusBarManagerService.this.disableForUser(0, this.token, this.pkg, this.userId);
            StatusBarManagerService.this.disable2ForUser(0, this.token, this.pkg, this.userId);
            this.token.unlinkToDeath(this, 0);
        }

        public void setFlags(int what, int which, String pkg2) {
            if (which == 1) {
                this.what1 = what;
            } else if (which != 2) {
                Slog.w(StatusBarManagerService.TAG, "Can't set unsupported disable flag " + which + ": 0x" + Integer.toHexString(what));
            } else {
                this.what2 = what;
            }
            this.pkg = pkg2;
        }

        public int getFlags(int which) {
            if (which == 1) {
                return this.what1;
            }
            if (which == 2) {
                return this.what2;
            }
            Slog.w(StatusBarManagerService.TAG, "Can't get unsupported disable flag " + which);
            return 0;
        }

        public boolean isEmpty() {
            return this.what1 == 0 && this.what2 == 0;
        }

        public String toString() {
            return String.format("userId=%d what1=0x%08X what2=0x%08X pkg=%s token=%s", new Object[]{Integer.valueOf(this.userId), Integer.valueOf(this.what1), Integer.valueOf(this.what2), this.pkg, this.token});
        }
    }

    public StatusBarManagerService(Context context, WindowManagerService windowManager) {
        this.mContext = context;
        this.mWindowManager = windowManager;
        LocalServices.addService(StatusBarManagerInternal.class, this.mInternalService);
        LocalServices.addService(GlobalActionsProvider.class, this.mGlobalActionsProvider);
        this.mDisplayUiState.put(0, new UiState());
        ((DisplayManager) context.getSystemService("display")).registerDisplayListener(this, this.mHandler);
    }

    public void onDisplayAdded(int displayId) {
    }

    public void onDisplayRemoved(int displayId) {
        synchronized (this.mLock) {
            this.mDisplayUiState.remove(displayId);
        }
    }

    public void onDisplayChanged(int displayId) {
    }

    public void expandNotificationsPanel() {
        enforceExpandStatusBar();
        if (this.mBar != null) {
            try {
                this.mBar.animateExpandNotificationsPanel();
            } catch (RemoteException e) {
            }
        }
    }

    public void collapsePanels() {
        enforceExpandStatusBar();
        if (this.mBar != null) {
            try {
                this.mBar.animateCollapsePanels();
            } catch (RemoteException e) {
            }
        }
    }

    public void togglePanel() {
        enforceExpandStatusBar();
        if (this.mBar != null) {
            try {
                this.mBar.togglePanel();
            } catch (RemoteException e) {
            }
        }
    }

    public void expandSettingsPanel(String subPanel) {
        enforceExpandStatusBar();
        if (this.mBar != null) {
            try {
                this.mBar.animateExpandSettingsPanel(subPanel);
            } catch (RemoteException e) {
            }
        }
    }

    public void addTile(ComponentName component) {
        enforceStatusBarOrShell();
        if (this.mBar != null) {
            try {
                this.mBar.addQsTile(component);
            } catch (RemoteException e) {
            }
        }
    }

    public void remTile(ComponentName component) {
        enforceStatusBarOrShell();
        if (this.mBar != null) {
            try {
                this.mBar.remQsTile(component);
            } catch (RemoteException e) {
            }
        }
    }

    public void clickTile(ComponentName component) {
        enforceStatusBarOrShell();
        if (this.mBar != null) {
            try {
                this.mBar.clickQsTile(component);
            } catch (RemoteException e) {
            }
        }
    }

    public void handleSystemKey(int key) throws RemoteException {
        enforceExpandStatusBar();
        if (this.mBar != null) {
            try {
                this.mBar.handleSystemKey(key);
            } catch (RemoteException e) {
            }
        }
    }

    public void showPinningEnterExitToast(boolean entering) throws RemoteException {
        if (this.mBar != null) {
            try {
                this.mBar.showPinningEnterExitToast(entering);
            } catch (RemoteException e) {
            }
        }
    }

    public void showPinningEscapeToast() throws RemoteException {
        if (this.mBar != null) {
            try {
                this.mBar.showPinningEscapeToast();
            } catch (RemoteException e) {
            }
        }
    }

    public void showBiometricDialog(Bundle bundle, IBiometricServiceReceiverInternal receiver, int type, boolean requireConfirmation, int userId) {
        enforceBiometricDialog();
        if (this.mBar != null) {
            try {
                this.mBar.showBiometricDialog(bundle, receiver, type, requireConfirmation, userId);
            } catch (RemoteException e) {
            }
        }
    }

    public void onBiometricAuthenticated(boolean authenticated, String failureReason) {
        enforceBiometricDialog();
        if (this.mBar != null) {
            try {
                this.mBar.onBiometricAuthenticated(authenticated, failureReason);
            } catch (RemoteException e) {
            }
        }
    }

    public void onBiometricHelp(String message) {
        enforceBiometricDialog();
        if (this.mBar != null) {
            try {
                this.mBar.onBiometricHelp(message);
            } catch (RemoteException e) {
            }
        }
    }

    public void onBiometricError(String error) {
        enforceBiometricDialog();
        if (this.mBar != null) {
            try {
                this.mBar.onBiometricError(error);
            } catch (RemoteException e) {
            }
        }
    }

    public void hideBiometricDialog() {
        enforceBiometricDialog();
        if (this.mBar != null) {
            try {
                this.mBar.hideBiometricDialog();
            } catch (RemoteException e) {
            }
        }
    }

    public void disable(int what, IBinder token, String pkg) {
        disableForUser(what, token, pkg, this.mCurrentUserId);
    }

    public void disableForUser(int what, IBinder token, String pkg, int userId) {
        enforceStatusBar();
        synchronized (this.mLock) {
            disableLocked(0, userId, what, token, pkg, 1);
        }
    }

    public void disable2(int what, IBinder token, String pkg) {
        disable2ForUser(what, token, pkg, this.mCurrentUserId);
    }

    public void disable2ForUser(int what, IBinder token, String pkg, int userId) {
        enforceStatusBar();
        synchronized (this.mLock) {
            disableLocked(0, userId, what, token, pkg, 2);
        }
    }

    private void disableLocked(int displayId, int userId, int what, IBinder token, String pkg, int whichFlag) {
        manageDisableListLocked(userId, what, token, pkg, whichFlag);
        int net1 = gatherDisableActionsLocked(this.mCurrentUserId, 1);
        int net2 = gatherDisableActionsLocked(this.mCurrentUserId, 2);
        UiState state = getUiState(displayId);
        if (!state.disableEquals(net1, net2)) {
            state.setDisabled(net1, net2);
            this.mHandler.post(new Runnable(net1) {
                private final /* synthetic */ int f$1;

                {
                    this.f$1 = r2;
                }

                public final void run() {
                    StatusBarManagerService.this.lambda$disableLocked$0$StatusBarManagerService(this.f$1);
                }
            });
            if (this.mBar != null) {
                try {
                    this.mBar.disable(displayId, net1, net2);
                } catch (RemoteException e) {
                }
            }
        }
    }

    public /* synthetic */ void lambda$disableLocked$0$StatusBarManagerService(int net1) {
        this.mNotificationDelegate.onSetDisabled(net1);
    }

    public int[] getDisableFlags(IBinder token, int userId) {
        enforceStatusBar();
        int disable1 = 0;
        int disable2 = 0;
        synchronized (this.mLock) {
            DisableRecord record = (DisableRecord) findMatchingRecordLocked(token, userId).second;
            if (record != null) {
                disable1 = record.what1;
                disable2 = record.what2;
            }
        }
        return new int[]{disable1, disable2};
    }

    public void setIcon(String slot, String iconPackage, int iconId, int iconLevel, String contentDescription) {
        enforceStatusBar();
        synchronized (this.mIcons) {
            StatusBarIcon icon = new StatusBarIcon(iconPackage, UserHandle.SYSTEM, iconId, iconLevel, 0, contentDescription);
            this.mIcons.put(slot, icon);
            if (this.mBar != null) {
                try {
                    this.mBar.setIcon(slot, icon);
                } catch (RemoteException e) {
                }
            }
        }
    }

    public void setIconVisibility(String slot, boolean visibility) {
        enforceStatusBar();
        synchronized (this.mIcons) {
            StatusBarIcon icon = this.mIcons.get(slot);
            if (icon != null) {
                if (icon.visible != visibility) {
                    icon.visible = visibility;
                    if (this.mBar != null) {
                        try {
                            this.mBar.setIcon(slot, icon);
                        } catch (RemoteException e) {
                        }
                    }
                }
            }
        }
    }

    public void removeIcon(String slot) {
        enforceStatusBar();
        synchronized (this.mIcons) {
            this.mIcons.remove(slot);
            if (this.mBar != null) {
                try {
                    this.mBar.removeIcon(slot);
                } catch (RemoteException e) {
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public void topAppWindowChanged(int displayId, boolean menuVisible) {
        enforceStatusBar();
        synchronized (this.mLock) {
            getUiState(displayId).setMenuVisible(menuVisible);
            this.mHandler.post(new Runnable(displayId, menuVisible) {
                private final /* synthetic */ int f$1;
                private final /* synthetic */ boolean f$2;

                {
                    this.f$1 = r2;
                    this.f$2 = r3;
                }

                public final void run() {
                    StatusBarManagerService.this.lambda$topAppWindowChanged$1$StatusBarManagerService(this.f$1, this.f$2);
                }
            });
        }
    }

    public /* synthetic */ void lambda$topAppWindowChanged$1$StatusBarManagerService(int displayId, boolean menuVisible) {
        if (this.mBar != null) {
            try {
                this.mBar.topAppWindowChanged(displayId, menuVisible);
            } catch (RemoteException e) {
            }
        }
    }

    public void setImeWindowStatus(int displayId, IBinder token, int vis, int backDisposition, boolean showImeSwitcher) {
        enforceStatusBar();
        synchronized (this.mLock) {
            getUiState(displayId).setImeWindowState(vis, backDisposition, showImeSwitcher, token);
            this.mHandler.post(new Runnable(displayId, token, vis, backDisposition, showImeSwitcher) {
                private final /* synthetic */ int f$1;
                private final /* synthetic */ IBinder f$2;
                private final /* synthetic */ int f$3;
                private final /* synthetic */ int f$4;
                private final /* synthetic */ boolean f$5;

                {
                    this.f$1 = r2;
                    this.f$2 = r3;
                    this.f$3 = r4;
                    this.f$4 = r5;
                    this.f$5 = r6;
                }

                public final void run() {
                    StatusBarManagerService.this.lambda$setImeWindowStatus$2$StatusBarManagerService(this.f$1, this.f$2, this.f$3, this.f$4, this.f$5);
                }
            });
        }
    }

    public /* synthetic */ void lambda$setImeWindowStatus$2$StatusBarManagerService(int displayId, IBinder token, int vis, int backDisposition, boolean showImeSwitcher) {
        if (this.mBar != null) {
            try {
                this.mBar.setImeWindowStatus(displayId, token, vis, backDisposition, showImeSwitcher);
            } catch (RemoteException e) {
            }
        }
    }

    public void setSystemUiVisibility(int displayId, int vis, int mask, String cause) {
        UiState state = getUiState(displayId);
        setSystemUiVisibility(displayId, vis, 0, 0, mask, state.mFullscreenStackBounds, state.mDockedStackBounds, state.mNavbarColorManagedByIme, cause);
    }

    /* access modifiers changed from: private */
    public void setSystemUiVisibility(int displayId, int vis, int fullscreenStackVis, int dockedStackVis, int mask, Rect fullscreenBounds, Rect dockedBounds, boolean isNavbarColorManagedByIme, String cause) {
        enforceStatusBarService();
        synchronized (this.mLock) {
            updateUiVisibilityLocked(displayId, vis, fullscreenStackVis, dockedStackVis, mask, fullscreenBounds, dockedBounds, isNavbarColorManagedByIme);
            disableLocked(displayId, this.mCurrentUserId, vis & 67043328, this.mSysUiVisToken, cause, 1);
        }
    }

    private void updateUiVisibilityLocked(int displayId, int vis, int fullscreenStackVis, int dockedStackVis, int mask, Rect fullscreenBounds, Rect dockedBounds, boolean isNavbarColorManagedByIme) {
        UiState state = getUiState(displayId);
        if (!state.systemUiStateEquals(vis, fullscreenStackVis, dockedStackVis, fullscreenBounds, dockedBounds, isNavbarColorManagedByIme)) {
            state.setSystemUiState(vis, fullscreenStackVis, dockedStackVis, fullscreenBounds, dockedBounds, isNavbarColorManagedByIme);
            this.mHandler.post(new Runnable(displayId, vis, fullscreenStackVis, dockedStackVis, mask, fullscreenBounds, dockedBounds, isNavbarColorManagedByIme) {
                private final /* synthetic */ int f$1;
                private final /* synthetic */ int f$2;
                private final /* synthetic */ int f$3;
                private final /* synthetic */ int f$4;
                private final /* synthetic */ int f$5;
                private final /* synthetic */ Rect f$6;
                private final /* synthetic */ Rect f$7;
                private final /* synthetic */ boolean f$8;

                {
                    this.f$1 = r2;
                    this.f$2 = r3;
                    this.f$3 = r4;
                    this.f$4 = r5;
                    this.f$5 = r6;
                    this.f$6 = r7;
                    this.f$7 = r8;
                    this.f$8 = r9;
                }

                public final void run() {
                    StatusBarManagerService.this.lambda$updateUiVisibilityLocked$3$StatusBarManagerService(this.f$1, this.f$2, this.f$3, this.f$4, this.f$5, this.f$6, this.f$7, this.f$8);
                }
            });
            return;
        }
    }

    public /* synthetic */ void lambda$updateUiVisibilityLocked$3$StatusBarManagerService(int displayId, int vis, int fullscreenStackVis, int dockedStackVis, int mask, Rect fullscreenBounds, Rect dockedBounds, boolean isNavbarColorManagedByIme) {
        if (this.mBar != null) {
            try {
                this.mBar.setSystemUiVisibility(displayId, vis, fullscreenStackVis, dockedStackVis, mask, fullscreenBounds, dockedBounds, isNavbarColorManagedByIme);
            } catch (RemoteException e) {
                Log.w(TAG, "Can not get StatusBar!");
            }
        }
    }

    private UiState getUiState(int displayId) {
        UiState state = this.mDisplayUiState.get(displayId);
        if (state != null) {
            return state;
        }
        UiState state2 = new UiState();
        this.mDisplayUiState.put(displayId, state2);
        return state2;
    }

    private class UiState {
        private int mDisabled1;
        private int mDisabled2;
        /* access modifiers changed from: private */
        public final Rect mDockedStackBounds;
        /* access modifiers changed from: private */
        public int mDockedStackSysUiVisibility;
        /* access modifiers changed from: private */
        public final Rect mFullscreenStackBounds;
        /* access modifiers changed from: private */
        public int mFullscreenStackSysUiVisibility;
        /* access modifiers changed from: private */
        public int mImeBackDisposition;
        /* access modifiers changed from: private */
        public IBinder mImeToken;
        /* access modifiers changed from: private */
        public int mImeWindowVis;
        /* access modifiers changed from: private */
        public boolean mMenuVisible;
        /* access modifiers changed from: private */
        public boolean mNavbarColorManagedByIme;
        /* access modifiers changed from: private */
        public boolean mShowImeSwitcher;
        /* access modifiers changed from: private */
        public int mSystemUiVisibility;

        private UiState() {
            this.mSystemUiVisibility = 0;
            this.mFullscreenStackSysUiVisibility = 0;
            this.mDockedStackSysUiVisibility = 0;
            this.mFullscreenStackBounds = new Rect();
            this.mDockedStackBounds = new Rect();
            this.mMenuVisible = false;
            this.mDisabled1 = 0;
            this.mDisabled2 = 0;
            this.mImeWindowVis = 0;
            this.mImeBackDisposition = 0;
            this.mShowImeSwitcher = false;
            this.mImeToken = null;
            this.mNavbarColorManagedByIme = false;
        }

        /* access modifiers changed from: private */
        public int getDisabled1() {
            return this.mDisabled1;
        }

        /* access modifiers changed from: private */
        public int getDisabled2() {
            return this.mDisabled2;
        }

        /* access modifiers changed from: private */
        public void setDisabled(int disabled1, int disabled2) {
            this.mDisabled1 = disabled1;
            this.mDisabled2 = disabled2;
        }

        private boolean isMenuVisible() {
            return this.mMenuVisible;
        }

        /* access modifiers changed from: private */
        public void setMenuVisible(boolean menuVisible) {
            this.mMenuVisible = menuVisible;
        }

        /* access modifiers changed from: private */
        public boolean disableEquals(int disabled1, int disabled2) {
            return this.mDisabled1 == disabled1 && this.mDisabled2 == disabled2;
        }

        /* access modifiers changed from: private */
        public void setSystemUiState(int vis, int fullscreenStackVis, int dockedStackVis, Rect fullscreenBounds, Rect dockedBounds, boolean navbarColorManagedByIme) {
            this.mSystemUiVisibility = vis;
            this.mFullscreenStackSysUiVisibility = fullscreenStackVis;
            this.mDockedStackSysUiVisibility = dockedStackVis;
            this.mFullscreenStackBounds.set(fullscreenBounds);
            this.mDockedStackBounds.set(dockedBounds);
            this.mNavbarColorManagedByIme = navbarColorManagedByIme;
        }

        /* access modifiers changed from: private */
        public boolean systemUiStateEquals(int vis, int fullscreenStackVis, int dockedStackVis, Rect fullscreenBounds, Rect dockedBounds, boolean navbarColorManagedByIme) {
            return this.mSystemUiVisibility == vis && this.mFullscreenStackSysUiVisibility == fullscreenStackVis && this.mDockedStackSysUiVisibility == dockedStackVis && this.mFullscreenStackBounds.equals(fullscreenBounds) && this.mDockedStackBounds.equals(dockedBounds) && this.mNavbarColorManagedByIme == navbarColorManagedByIme;
        }

        /* access modifiers changed from: private */
        public void setImeWindowState(int vis, int backDisposition, boolean showImeSwitcher, IBinder token) {
            this.mImeWindowVis = vis;
            this.mImeBackDisposition = backDisposition;
            this.mShowImeSwitcher = showImeSwitcher;
            this.mImeToken = token;
        }
    }

    private void enforceStatusBarOrShell() {
        if (Binder.getCallingUid() != 2000) {
            enforceStatusBar();
        }
    }

    private void enforceStatusBar() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.STATUS_BAR", TAG);
    }

    private void enforceExpandStatusBar() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.EXPAND_STATUS_BAR", TAG);
    }

    /* access modifiers changed from: private */
    public void enforceStatusBarService() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.STATUS_BAR_SERVICE", TAG);
    }

    private void enforceBiometricDialog() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_BIOMETRIC_DIALOG", TAG);
    }

    public RegisterStatusBarResult registerStatusBar(IStatusBar bar) {
        ArrayMap<String, StatusBarIcon> icons;
        RegisterStatusBarResult registerStatusBarResult;
        IStatusBar iStatusBar = bar;
        enforceStatusBarService();
        Slog.i(TAG, "registerStatusBar bar=" + iStatusBar);
        this.mBar = iStatusBar;
        this.mDeathRecipient.linkToDeath();
        notifyBarAttachChanged();
        synchronized (this.mIcons) {
            icons = new ArrayMap<>(this.mIcons);
        }
        synchronized (this.mLock) {
            UiState state = this.mDisplayUiState.get(0);
            registerStatusBarResult = new RegisterStatusBarResult(icons, gatherDisableActionsLocked(this.mCurrentUserId, 1), state.mSystemUiVisibility, state.mMenuVisible, state.mImeWindowVis, state.mImeBackDisposition, state.mShowImeSwitcher, gatherDisableActionsLocked(this.mCurrentUserId, 2), state.mFullscreenStackSysUiVisibility, state.mDockedStackSysUiVisibility, state.mImeToken, state.mFullscreenStackBounds, state.mDockedStackBounds, state.mNavbarColorManagedByIme);
        }
        return registerStatusBarResult;
    }

    /* access modifiers changed from: private */
    public void notifyBarAttachChanged() {
        this.mHandler.post(new Runnable() {
            public final void run() {
                StatusBarManagerService.this.lambda$notifyBarAttachChanged$4$StatusBarManagerService();
            }
        });
    }

    public /* synthetic */ void lambda$notifyBarAttachChanged$4$StatusBarManagerService() {
        GlobalActionsProvider.GlobalActionsListener globalActionsListener = this.mGlobalActionListener;
        if (globalActionsListener != null) {
            globalActionsListener.onGlobalActionsAvailableChanged(this.mBar != null);
        }
    }

    public void onPanelRevealed(boolean clearNotificationEffects, int numItems) {
        enforceStatusBarService();
        StatusBarManagerServiceInjector.getInstance().boostSystemUI(true);
        long identity = Binder.clearCallingIdentity();
        try {
            this.mNotificationDelegate.onPanelRevealed(clearNotificationEffects, numItems);
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public void clearNotificationEffects() throws RemoteException {
        enforceStatusBarService();
        long identity = Binder.clearCallingIdentity();
        try {
            this.mNotificationDelegate.clearEffects();
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public void onPanelHidden() throws RemoteException {
        enforceStatusBarService();
        StatusBarManagerServiceInjector.getInstance().boostSystemUI(false);
        long identity = Binder.clearCallingIdentity();
        try {
            this.mNotificationDelegate.onPanelHidden();
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public void shutdown() {
        enforceStatusBarService();
        long identity = Binder.clearCallingIdentity();
        try {
            this.mHandler.post($$Lambda$StatusBarManagerService$UDezjj1c1F0KKrpAAYUhMa21kk.INSTANCE);
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public void reboot(boolean safeMode) {
        enforceStatusBarService();
        long identity = Binder.clearCallingIdentity();
        try {
            this.mHandler.post(new Runnable(safeMode) {
                private final /* synthetic */ boolean f$0;

                {
                    this.f$0 = r1;
                }

                public final void run() {
                    StatusBarManagerService.lambda$reboot$6(this.f$0);
                }
            });
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    static /* synthetic */ void lambda$reboot$6(boolean safeMode) {
        if (safeMode) {
            ShutdownThread.rebootSafeMode(getUiContext(), true);
        } else {
            ShutdownThread.reboot(getUiContext(), "userrequested", false);
        }
    }

    public void onGlobalActionsShown() {
        enforceStatusBarService();
        long identity = Binder.clearCallingIdentity();
        try {
            if (this.mGlobalActionListener != null) {
                this.mGlobalActionListener.onGlobalActionsShown();
                Binder.restoreCallingIdentity(identity);
            }
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public void onGlobalActionsHidden() {
        enforceStatusBarService();
        long identity = Binder.clearCallingIdentity();
        try {
            if (this.mGlobalActionListener != null) {
                this.mGlobalActionListener.onGlobalActionsDismissed();
                Binder.restoreCallingIdentity(identity);
            }
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public void onNotificationClick(String key, NotificationVisibility nv) {
        enforceStatusBarService();
        int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        long identity = Binder.clearCallingIdentity();
        try {
            this.mNotificationDelegate.onNotificationClick(callingUid, callingPid, key, nv);
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public void onNotificationActionClick(String key, int actionIndex, Notification.Action action, NotificationVisibility nv, boolean generatedByAssistant) {
        enforceStatusBarService();
        int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        long identity = Binder.clearCallingIdentity();
        try {
            this.mNotificationDelegate.onNotificationActionClick(callingUid, callingPid, key, actionIndex, action, nv, generatedByAssistant);
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public void onNotificationError(String pkg, String tag, int id, int uid, int initialPid, String message, int userId) {
        enforceStatusBarService();
        int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        long identity = Binder.clearCallingIdentity();
        try {
            this.mNotificationDelegate.onNotificationError(callingUid, callingPid, pkg, tag, id, uid, initialPid, message, userId);
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public void onNotificationClear(String pkg, String tag, int id, int userId, String key, int dismissalSurface, int dismissalSentiment, NotificationVisibility nv) {
        enforceStatusBarService();
        int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        long identity = Binder.clearCallingIdentity();
        try {
            this.mNotificationDelegate.onNotificationClear(callingUid, callingPid, pkg, tag, id, userId, key, dismissalSurface, dismissalSentiment, nv);
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public void onNotificationVisibilityChanged(NotificationVisibility[] newlyVisibleKeys, NotificationVisibility[] noLongerVisibleKeys) throws RemoteException {
        enforceStatusBarService();
        long identity = Binder.clearCallingIdentity();
        try {
            this.mNotificationDelegate.onNotificationVisibilityChanged(newlyVisibleKeys, noLongerVisibleKeys);
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public void onNotificationExpansionChanged(String key, boolean userAction, boolean expanded, int location) throws RemoteException {
        enforceStatusBarService();
        long identity = Binder.clearCallingIdentity();
        try {
            this.mNotificationDelegate.onNotificationExpansionChanged(key, userAction, expanded, location);
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public void onNotificationDirectReplied(String key) throws RemoteException {
        enforceStatusBarService();
        long identity = Binder.clearCallingIdentity();
        try {
            this.mNotificationDelegate.onNotificationDirectReplied(key);
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public void onNotificationSmartSuggestionsAdded(String key, int smartReplyCount, int smartActionCount, boolean generatedByAssistant, boolean editBeforeSending) {
        enforceStatusBarService();
        long identity = Binder.clearCallingIdentity();
        try {
            this.mNotificationDelegate.onNotificationSmartSuggestionsAdded(key, smartReplyCount, smartActionCount, generatedByAssistant, editBeforeSending);
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public void onNotificationSmartReplySent(String key, int replyIndex, CharSequence reply, int notificationLocation, boolean modifiedBeforeSending) throws RemoteException {
        enforceStatusBarService();
        long identity = Binder.clearCallingIdentity();
        try {
            this.mNotificationDelegate.onNotificationSmartReplySent(key, replyIndex, reply, notificationLocation, modifiedBeforeSending);
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public void onNotificationSettingsViewed(String key) throws RemoteException {
        enforceStatusBarService();
        long identity = Binder.clearCallingIdentity();
        try {
            this.mNotificationDelegate.onNotificationSettingsViewed(key);
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public void onClearAllNotifications(int userId) {
        enforceStatusBarService();
        int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        long identity = Binder.clearCallingIdentity();
        try {
            this.mNotificationDelegate.onClearAll(callingUid, callingPid, userId);
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public void onNotificationBubbleChanged(String key, boolean isBubble) {
        enforceStatusBarService();
        long identity = Binder.clearCallingIdentity();
        try {
            this.mNotificationDelegate.onNotificationBubbleChanged(key, isBubble);
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    /* JADX WARNING: type inference failed for: r1v1, types: [android.os.Binder] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onShellCommand(java.io.FileDescriptor r9, java.io.FileDescriptor r10, java.io.FileDescriptor r11, java.lang.String[] r12, android.os.ShellCallback r13, android.os.ResultReceiver r14) {
        /*
            r8 = this;
            com.android.server.statusbar.StatusBarShellCommand r0 = new com.android.server.statusbar.StatusBarShellCommand
            android.content.Context r1 = r8.mContext
            r0.<init>(r8, r1)
            r1 = r8
            r2 = r9
            r3 = r10
            r4 = r11
            r5 = r12
            r6 = r13
            r7 = r14
            r0.exec(r1, r2, r3, r4, r5, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.statusbar.StatusBarManagerService.onShellCommand(java.io.FileDescriptor, java.io.FileDescriptor, java.io.FileDescriptor, java.lang.String[], android.os.ShellCallback, android.os.ResultReceiver):void");
    }

    public String[] getStatusBarIcons() {
        return this.mContext.getResources().getStringArray(17236068);
    }

    /* access modifiers changed from: package-private */
    public void manageDisableListLocked(int userId, int what, IBinder token, String pkg, int which) {
        Pair<Integer, DisableRecord> match = findMatchingRecordLocked(token, userId);
        int i = ((Integer) match.first).intValue();
        DisableRecord record = (DisableRecord) match.second;
        if (!token.isBinderAlive()) {
            if (record != null) {
                this.mDisableRecords.remove(i);
                record.token.unlinkToDeath(record, 0);
            }
        } else if (record != null) {
            record.setFlags(what, which, pkg);
            if (record.isEmpty()) {
                this.mDisableRecords.remove(i);
                record.token.unlinkToDeath(record, 0);
            }
        } else {
            DisableRecord record2 = new DisableRecord(userId, token);
            record2.setFlags(what, which, pkg);
            this.mDisableRecords.add(record2);
        }
    }

    @GuardedBy({"mLock"})
    private Pair<Integer, DisableRecord> findMatchingRecordLocked(IBinder token, int userId) {
        int numRecords = this.mDisableRecords.size();
        DisableRecord record = null;
        int i = 0;
        while (true) {
            if (i >= numRecords) {
                break;
            }
            DisableRecord r = this.mDisableRecords.get(i);
            if (r.token == token && r.userId == userId) {
                record = r;
                break;
            }
            i++;
        }
        return new Pair<>(Integer.valueOf(i), record);
    }

    /* access modifiers changed from: package-private */
    public int gatherDisableActionsLocked(int userId, int which) {
        int N = this.mDisableRecords.size();
        int net = 0;
        for (int i = 0; i < N; i++) {
            DisableRecord rec = this.mDisableRecords.get(i);
            if (rec.userId == userId) {
                net |= rec.getFlags(which);
            }
        }
        return net;
    }

    /* access modifiers changed from: protected */
    public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        if (DumpUtils.checkDumpPermission(this.mContext, TAG, pw)) {
            synchronized (this.mLock) {
                for (int i = 0; i < this.mDisplayUiState.size(); i++) {
                    int key = this.mDisplayUiState.keyAt(i);
                    UiState state = this.mDisplayUiState.get(key);
                    pw.println("  displayId=" + key);
                    pw.println("    mDisabled1=0x" + Integer.toHexString(state.getDisabled1()));
                    pw.println("    mDisabled2=0x" + Integer.toHexString(state.getDisabled2()));
                }
                int N = this.mDisableRecords.size();
                pw.println("  mDisableRecords.size=" + N);
                for (int i2 = 0; i2 < N; i2++) {
                    pw.println("    [" + i2 + "] " + this.mDisableRecords.get(i2));
                }
                pw.println("  mCurrentUserId=" + this.mCurrentUserId);
                pw.println("  mIcons=");
                for (String slot : this.mIcons.keySet()) {
                    pw.println("    ");
                    pw.print(slot);
                    pw.print(" -> ");
                    StatusBarIcon icon = this.mIcons.get(slot);
                    pw.print(icon);
                    if (!TextUtils.isEmpty(icon.contentDescription)) {
                        pw.print(" \"");
                        pw.print(icon.contentDescription);
                        pw.print("\"");
                    }
                    pw.println();
                }
            }
        }
    }

    private static final Context getUiContext() {
        return ActivityThread.currentActivityThread().getSystemUiContext();
    }

    class StatusRecord implements IBinder.DeathRecipient {
        String pkg;
        IBinder token;

        StatusRecord() {
        }

        public void binderDied() {
            Slog.i(StatusBarManagerService.TAG, "binder died for pkg=" + this.pkg);
            StatusBarManagerService.this.setStatus(0, this.token, this.pkg, (Bundle) null);
            this.token.unlinkToDeath(this, 0);
        }
    }

    /* access modifiers changed from: package-private */
    public void manageStatusListLocked(int what, IBinder token, String pkg) {
        int N = this.mStatusRecords.size();
        StatusRecord tok = null;
        int i = 0;
        while (true) {
            if (i >= N) {
                break;
            }
            StatusRecord t = this.mStatusRecords.get(i);
            if (t.token == token) {
                tok = t;
                break;
            }
            i++;
        }
        if (what != 0 && token.isBinderAlive()) {
            if (tok == null) {
                tok = new StatusRecord();
                try {
                    token.linkToDeath(tok, 0);
                    this.mStatusRecords.add(tok);
                } catch (RemoteException e) {
                    return;
                }
            }
            tok.token = token;
            tok.pkg = pkg;
        } else if (tok != null) {
            this.mStatusRecords.remove(i);
            tok.token.unlinkToDeath(tok, 0);
        }
    }

    public void setStatus(int what, IBinder token, String action, Bundle ext) {
        synchronized (this.mLock) {
            manageStatusListLocked(what, token, action);
            if (this.mBar != null) {
                try {
                    this.mBar.setStatus(what, action, ext);
                } catch (RemoteException e) {
                }
            }
        }
    }
}
