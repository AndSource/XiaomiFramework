package com.android.server.usb;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.debug.AdbManagerInternal;
import android.debug.IAdbTransport;
import android.hardware.usb.UsbAccessory;
import android.hardware.usb.UsbConfiguration;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbInterface;
import android.hardware.usb.UsbManager;
import android.hardware.usb.UsbPort;
import android.hardware.usb.UsbPortStatus;
import android.hardware.usb.gadget.V1_0.GadgetFunction;
import android.hardware.usb.gadget.V1_0.IUsbGadget;
import android.hardware.usb.gadget.V1_0.IUsbGadgetCallback;
import android.hidl.manager.V1_0.IServiceManager;
import android.hidl.manager.V1_0.IServiceNotification;
import android.os.Bundle;
import android.os.Environment;
import android.os.FileUtils;
import android.os.Handler;
import android.os.IHwBinder;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.UEventObserver;
import android.os.UserHandle;
import android.os.UserManager;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.provider.Settings;
import android.util.Pair;
import android.util.Slog;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.notification.SystemNotificationChannels;
import com.android.internal.os.SomeArgs;
import com.android.internal.usb.DumpUtils;
import com.android.internal.util.dump.DualDumpOutputStream;
import com.android.server.FgThread;
import com.android.server.LocalServices;
import com.android.server.UiModeManagerService;
import com.android.server.job.controllers.JobStatus;
import com.android.server.usb.descriptors.UsbDescriptor;
import com.android.server.wm.ActivityTaskManagerInternal;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

public class UsbDeviceManager implements ActivityTaskManagerInternal.ScreenObserver {
    private static final int ACCESSORY_REQUEST_TIMEOUT = 10000;
    private static final String ACCESSORY_START_MATCH = "DEVPATH=/devices/virtual/misc/usb_accessory";
    private static final String ADB_NOTIFICATION_CHANNEL_ID_TV = "usbdevicemanager.adb.tv";
    private static final int AUDIO_MODE_SOURCE = 1;
    private static final String AUDIO_SOURCE_PCM_PATH = "/sys/class/android_usb/android0/f_audio_source/pcm";
    private static final String BOOT_MODE_PROPERTY = "ro.bootmode";
    private static final boolean DEBUG = false;
    private static final String MIDI_ALSA_PATH = "/sys/class/android_usb/android0/f_midi/alsa";
    private static final int MSG_ACCESSORY_MODE_ENTER_TIMEOUT = 8;
    private static final int MSG_BOOT_COMPLETED = 4;
    private static final int MSG_ENABLE_ADB = 1;
    private static final int MSG_FUNCTION_SWITCH_TIMEOUT = 17;
    private static final int MSG_GADGET_HAL_REGISTERED = 18;
    private static final int MSG_GET_CURRENT_USB_FUNCTIONS = 16;
    private static final int MSG_LOCALE_CHANGED = 11;
    private static final int MSG_SET_CHARGING_FUNCTIONS = 14;
    private static final int MSG_SET_CURRENT_FUNCTIONS = 2;
    private static final int MSG_SET_FUNCTIONS_TIMEOUT = 15;
    private static final int MSG_SET_SCREEN_UNLOCKED_FUNCTIONS = 12;
    private static final int MSG_SYSTEM_READY = 3;
    private static final int MSG_UPDATE_CHARGING_STATE = 9;
    private static final int MSG_UPDATE_HOST_STATE = 10;
    private static final int MSG_UPDATE_PORT_STATE = 7;
    private static final int MSG_UPDATE_SCREEN_LOCK = 13;
    private static final int MSG_UPDATE_STATE = 0;
    private static final int MSG_UPDATE_USER_RESTRICTIONS = 6;
    private static final int MSG_USER_SWITCHED = 5;
    private static final String NORMAL_BOOT = "normal";
    private static final String RNDIS_ETH_ADDR_PATH = "/sys/class/android_usb/android0/f_rndis/ethaddr";
    private static final String STATE_PATH = "/sys/class/android_usb/android0/state";
    /* access modifiers changed from: private */
    public static final String TAG = UsbDeviceManager.class.getSimpleName();
    static final String UNLOCKED_CONFIG_PREF = "usb-screen-unlocked-config-%d";
    private static final int UPDATE_DELAY = 3000;
    private static final String USB_PREFS_XML = "UsbDeviceManagerPrefs.xml";
    private static final String USB_STATE_MATCH = "DEVPATH=/devices/virtual/android_usb/android0";
    private static final String USB_STATE_MATCH_SEC = "DEVPATH=/devices/virtual/android_usb/android1";
    /* access modifiers changed from: private */
    public static Set<Integer> sBlackListedInterfaces = new HashSet();
    @GuardedBy({"mLock"})
    private String[] mAccessoryStrings;
    private final ContentResolver mContentResolver;
    private final Context mContext;
    private HashMap<Long, FileDescriptor> mControlFds;
    @GuardedBy({"mLock"})
    private UsbProfileGroupSettingsManager mCurrentSettings;
    /* access modifiers changed from: private */
    public UsbHandler mHandler;
    private final boolean mHasUsbAccessory;
    private final Object mLock = new Object();
    private final UEventObserver mUEventObserver;

    private native String[] nativeGetAccessoryStrings();

    private native int nativeGetAudioMode();

    private native boolean nativeIsStartRequested();

    private native ParcelFileDescriptor nativeOpenAccessory();

    private native FileDescriptor nativeOpenControl(String str);

    static {
        sBlackListedInterfaces.add(1);
        sBlackListedInterfaces.add(2);
        sBlackListedInterfaces.add(3);
        sBlackListedInterfaces.add(7);
        sBlackListedInterfaces.add(8);
        sBlackListedInterfaces.add(9);
        sBlackListedInterfaces.add(10);
        sBlackListedInterfaces.add(11);
        sBlackListedInterfaces.add(13);
        sBlackListedInterfaces.add(14);
        sBlackListedInterfaces.add(Integer.valueOf(UsbDescriptor.CLASSID_WIRELESS));
    }

    private final class UsbUEventObserver extends UEventObserver {
        private UsbUEventObserver() {
        }

        public void onUEvent(UEventObserver.UEvent event) {
            String state = event.get("USB_STATE");
            String accessory = event.get("ACCESSORY");
            if (state != null) {
                UsbDeviceManager.this.mHandler.updateState(state);
            } else if ("START".equals(accessory)) {
                UsbDeviceManager.this.startAccessoryMode();
            }
        }
    }

    public void onKeyguardStateChanged(boolean isShowing) {
        this.mHandler.sendMessage(13, isShowing && ((KeyguardManager) this.mContext.getSystemService(KeyguardManager.class)).isDeviceSecure(ActivityManager.getCurrentUser()));
    }

    public void onAwakeStateChanged(boolean isAwake) {
    }

    public void onUnlockUser(int userHandle) {
        onKeyguardStateChanged(false);
    }

    public UsbDeviceManager(Context context, UsbAlsaManager alsaManager, UsbSettingsManager settingsManager) {
        NoSuchElementException e;
        this.mContext = context;
        this.mContentResolver = context.getContentResolver();
        this.mHasUsbAccessory = this.mContext.getPackageManager().hasSystemFeature("android.hardware.usb.accessory");
        initRndisAddress();
        try {
            IUsbGadget.getService(true);
        } catch (RemoteException e2) {
            Slog.e(TAG, "USB GADGET HAL present but exception thrown", e2);
        } catch (NoSuchElementException e3) {
            Slog.i(TAG, "USB GADGET HAL not present in the device", e3);
            e = 1;
        }
        e = null;
        this.mControlFds = new HashMap<>();
        FileDescriptor mtpFd = nativeOpenControl("mtp");
        if (mtpFd == null) {
            Slog.e(TAG, "Failed to open control for mtp");
        }
        this.mControlFds.put(4L, mtpFd);
        FileDescriptor ptpFd = nativeOpenControl("ptp");
        if (ptpFd == null) {
            Slog.e(TAG, "Failed to open control for ptp");
        }
        this.mControlFds.put(16L, ptpFd);
        if (e != null) {
            this.mHandler = new UsbHandlerLegacy(FgThread.get().getLooper(), this.mContext, this, alsaManager, settingsManager);
        } else {
            this.mHandler = new UsbHandlerHal(FgThread.get().getLooper(), this.mContext, this, alsaManager, settingsManager);
        }
        if (nativeIsStartRequested()) {
            startAccessoryMode();
        }
        BroadcastReceiver portReceiver = new BroadcastReceiver() {
            public void onReceive(Context context, Intent intent) {
                UsbDeviceManager.this.mHandler.updateHostState(intent.getParcelableExtra("port").getUsbPort((UsbManager) context.getSystemService(UsbManager.class)), intent.getParcelableExtra("portStatus"));
            }
        };
        BroadcastReceiver chargingReceiver = new BroadcastReceiver() {
            public void onReceive(Context context, Intent intent) {
                UsbDeviceManager.this.mHandler.sendMessage(9, intent.getIntExtra("plugged", -1) == 2);
            }
        };
        BroadcastReceiver hostReceiver = new BroadcastReceiver() {
            public void onReceive(Context context, Intent intent) {
                Iterator devices = ((UsbManager) context.getSystemService("usb")).getDeviceList().entrySet().iterator();
                if (intent.getAction().equals("android.hardware.usb.action.USB_DEVICE_ATTACHED")) {
                    UsbDeviceManager.this.mHandler.sendMessage(10, (Object) devices, true);
                } else {
                    UsbDeviceManager.this.mHandler.sendMessage(10, (Object) devices, false);
                }
            }
        };
        BroadcastReceiver languageChangedReceiver = new BroadcastReceiver() {
            public void onReceive(Context context, Intent intent) {
                UsbDeviceManager.this.mHandler.sendEmptyMessage(11);
            }
        };
        this.mContext.registerReceiver(portReceiver, new IntentFilter("android.hardware.usb.action.USB_PORT_CHANGED"));
        this.mContext.registerReceiver(chargingReceiver, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        IntentFilter filter = new IntentFilter("android.hardware.usb.action.USB_DEVICE_ATTACHED");
        filter.addAction("android.hardware.usb.action.USB_DEVICE_DETACHED");
        this.mContext.registerReceiver(hostReceiver, filter);
        this.mContext.registerReceiver(languageChangedReceiver, new IntentFilter("android.intent.action.LOCALE_CHANGED"));
        this.mUEventObserver = new UsbUEventObserver();
        this.mUEventObserver.startObserving(USB_STATE_MATCH);
        this.mUEventObserver.startObserving(USB_STATE_MATCH_SEC);
        this.mUEventObserver.startObserving(ACCESSORY_START_MATCH);
    }

    /* access modifiers changed from: package-private */
    public UsbProfileGroupSettingsManager getCurrentSettings() {
        UsbProfileGroupSettingsManager usbProfileGroupSettingsManager;
        synchronized (this.mLock) {
            usbProfileGroupSettingsManager = this.mCurrentSettings;
        }
        return usbProfileGroupSettingsManager;
    }

    /* access modifiers changed from: package-private */
    public String[] getAccessoryStrings() {
        String[] strArr;
        synchronized (this.mLock) {
            strArr = this.mAccessoryStrings;
        }
        return strArr;
    }

    public void systemReady() {
        ((ActivityTaskManagerInternal) LocalServices.getService(ActivityTaskManagerInternal.class)).registerScreenObserver(this);
        this.mHandler.sendEmptyMessage(3);
    }

    public void bootCompleted() {
        this.mHandler.sendEmptyMessage(4);
    }

    public void setCurrentUser(int newCurrentUserId, UsbProfileGroupSettingsManager settings) {
        synchronized (this.mLock) {
            this.mCurrentSettings = settings;
            this.mHandler.obtainMessage(5, newCurrentUserId, 0).sendToTarget();
        }
    }

    public void updateUserRestrictions() {
        this.mHandler.sendEmptyMessage(6);
    }

    /* access modifiers changed from: private */
    public void startAccessoryMode() {
        if (this.mHasUsbAccessory) {
            this.mAccessoryStrings = nativeGetAccessoryStrings();
            boolean enableAccessory = false;
            boolean enableAudio = nativeGetAudioMode() == 1;
            String[] strArr = this.mAccessoryStrings;
            if (!(strArr == null || strArr[0] == null || strArr[1] == null)) {
                enableAccessory = true;
            }
            long functions = 0;
            if (enableAccessory) {
                functions = 0 | 2;
            }
            if (enableAudio) {
                functions |= 64;
            }
            if (functions != 0) {
                UsbHandler usbHandler = this.mHandler;
                usbHandler.sendMessageDelayed(usbHandler.obtainMessage(8), JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY);
                setCurrentFunctions(functions);
            }
        }
    }

    private static void initRndisAddress() {
        int[] address = new int[6];
        address[0] = 2;
        String serial = SystemProperties.get("ro.serialno", "1234567890ABCDEF");
        int serialLength = serial.length();
        for (int i = 0; i < serialLength; i++) {
            int i2 = (i % 5) + 1;
            address[i2] = address[i2] ^ serial.charAt(i);
        }
        try {
            FileUtils.stringToFile(RNDIS_ETH_ADDR_PATH, String.format(Locale.US, "%02X:%02X:%02X:%02X:%02X:%02X", new Object[]{Integer.valueOf(address[0]), Integer.valueOf(address[1]), Integer.valueOf(address[2]), Integer.valueOf(address[3]), Integer.valueOf(address[4]), Integer.valueOf(address[5])}));
        } catch (IOException e) {
            Slog.e(TAG, "failed to write to /sys/class/android_usb/android0/f_rndis/ethaddr");
        }
    }

    static abstract class UsbHandler extends Handler {
        protected static final String USB_PERSISTENT_CONFIG_PROPERTY = "persist.vendor.usb.config";
        private boolean mAdbNotificationShown;
        private boolean mAudioAccessoryConnected;
        private boolean mAudioAccessorySupported;
        private boolean mAudioSourceEnabled;
        protected boolean mBootCompleted;
        private Intent mBroadcastedIntent;
        private boolean mConfigured;
        private boolean mConnected;
        protected final ContentResolver mContentResolver;
        private final Context mContext;
        private UsbAccessory mCurrentAccessory;
        protected long mCurrentFunctions;
        protected boolean mCurrentFunctionsApplied;
        protected boolean mCurrentUsbFunctionsReceived;
        protected int mCurrentUser = ActivityManager.getCurrentUser();
        private boolean mHideUsbNotification;
        private boolean mHostConnected;
        private int mMidiCard;
        private int mMidiDevice;
        private boolean mMidiEnabled;
        private NotificationManager mNotificationManager;
        private boolean mPendingBootBroadcast;
        private boolean mScreenLocked;
        protected long mScreenUnlockedFunctions;
        protected SharedPreferences mSettings;
        private final UsbSettingsManager mSettingsManager;
        private boolean mSinkPower;
        private boolean mSourcePower;
        private boolean mSupportsAllCombinations;
        protected boolean mSwitchFunction;
        private boolean mSystemReady;
        private final UsbAlsaManager mUsbAlsaManager;
        private boolean mUsbCharging;
        protected final UsbDeviceManager mUsbDeviceManager;
        private int mUsbNotificationId;
        protected boolean mUseUsbNotification;

        /* access modifiers changed from: protected */
        public abstract void setEnabledFunctions(long j, boolean z);

        UsbHandler(Looper looper, Context context, UsbDeviceManager deviceManager, UsbAlsaManager alsaManager, UsbSettingsManager settingsManager) {
            super(looper);
            this.mContext = context;
            this.mUsbDeviceManager = deviceManager;
            this.mUsbAlsaManager = alsaManager;
            this.mSettingsManager = settingsManager;
            this.mContentResolver = context.getContentResolver();
            boolean z = true;
            this.mScreenLocked = true;
            this.mSettings = getPinnedSharedPrefs(this.mContext);
            SharedPreferences sharedPreferences = this.mSettings;
            if (sharedPreferences == null) {
                Slog.e(UsbDeviceManager.TAG, "Couldn't load shared preferences");
            } else {
                this.mScreenUnlockedFunctions = UsbManager.usbFunctionsFromString(sharedPreferences.getString(String.format(Locale.ENGLISH, UsbDeviceManager.UNLOCKED_CONFIG_PREF, new Object[]{Integer.valueOf(this.mCurrentUser)}), ""));
            }
            StorageManager storageManager = StorageManager.from(this.mContext);
            StorageVolume primary = storageManager != null ? storageManager.getPrimaryVolume() : null;
            this.mUseUsbNotification = ((primary != null && primary.allowMassStorage()) || !this.mContext.getResources().getBoolean(17891560)) ? false : z;
        }

        public void sendMessage(int what, boolean arg) {
            removeMessages(what);
            Message m = Message.obtain(this, what);
            m.arg1 = arg;
            sendMessage(m);
        }

        public void sendMessage(int what, Object arg) {
            removeMessages(what);
            Message m = Message.obtain(this, what);
            m.obj = arg;
            sendMessage(m);
        }

        public void sendMessage(int what, Object arg, boolean arg1) {
            removeMessages(what);
            Message m = Message.obtain(this, what);
            m.obj = arg;
            m.arg1 = arg1;
            sendMessage(m);
        }

        public void sendMessage(int what, boolean arg1, boolean arg2) {
            removeMessages(what);
            Message m = Message.obtain(this, what);
            m.arg1 = arg1;
            m.arg2 = arg2;
            sendMessage(m);
        }

        public void sendMessageDelayed(int what, boolean arg, long delayMillis) {
            removeMessages(what);
            Message m = Message.obtain(this, what);
            m.arg1 = arg;
            sendMessageDelayed(m, delayMillis);
        }

        public void updateState(String state) {
            int configured;
            int connected;
            if ("DISCONNECTED".equals(state)) {
                connected = 0;
                configured = 0;
            } else if ("CONNECTED".equals(state)) {
                connected = 1;
                configured = 0;
            } else if ("CONFIGURED".equals(state)) {
                this.mSwitchFunction = false;
                connected = 1;
                configured = 1;
            } else {
                String access$300 = UsbDeviceManager.TAG;
                Slog.e(access$300, "unknown state " + state);
                return;
            }
            removeMessages(0);
            if (connected == 1) {
                removeMessages(17);
            }
            Message msg = Message.obtain(this, 0);
            msg.arg1 = connected;
            msg.arg2 = configured;
            sendMessageDelayed(msg, (connected != 0 || !this.mSwitchFunction) ? 0 : 3000);
        }

        public void updateHostState(UsbPort port, UsbPortStatus status) {
            SomeArgs args = SomeArgs.obtain();
            args.arg1 = port;
            args.arg2 = status;
            removeMessages(7);
            sendMessageDelayed(obtainMessage(7, args), 3000);
        }

        private void setAdbEnabled(boolean enable) {
            if (enable) {
                setSystemProperty(USB_PERSISTENT_CONFIG_PROPERTY, "adb");
            } else {
                setSystemProperty(USB_PERSISTENT_CONFIG_PROPERTY, "none");
            }
            setEnabledFunctions(this.mCurrentFunctions, true);
            updateAdbNotification(false);
        }

        /* access modifiers changed from: protected */
        public boolean isUsbTransferAllowed() {
            return !((UserManager) this.mContext.getSystemService("user")).hasUserRestriction("no_usb_file_transfer");
        }

        private void updateCurrentAccessory() {
            boolean enteringAccessoryMode = hasMessages(8);
            if (this.mConfigured && enteringAccessoryMode) {
                String[] accessoryStrings = this.mUsbDeviceManager.getAccessoryStrings();
                if (accessoryStrings != null) {
                    UsbSerialReader serialReader = new UsbSerialReader(this.mContext, this.mSettingsManager, accessoryStrings[5]);
                    this.mCurrentAccessory = new UsbAccessory(accessoryStrings[0], accessoryStrings[1], accessoryStrings[2], accessoryStrings[3], accessoryStrings[4], serialReader);
                    serialReader.setDevice(this.mCurrentAccessory);
                    String access$300 = UsbDeviceManager.TAG;
                    Slog.d(access$300, "entering USB accessory mode: " + this.mCurrentAccessory);
                    if (this.mBootCompleted) {
                        this.mUsbDeviceManager.getCurrentSettings().accessoryAttached(this.mCurrentAccessory);
                        return;
                    }
                    return;
                }
                Slog.e(UsbDeviceManager.TAG, "nativeGetAccessoryStrings failed");
            } else if (!enteringAccessoryMode) {
                notifyAccessoryModeExit();
            }
        }

        private void notifyAccessoryModeExit() {
            Slog.d(UsbDeviceManager.TAG, "exited USB accessory mode");
            setEnabledFunctions(0, false);
            UsbAccessory usbAccessory = this.mCurrentAccessory;
            if (usbAccessory != null) {
                if (this.mBootCompleted) {
                    this.mSettingsManager.usbAccessoryRemoved(usbAccessory);
                }
                this.mCurrentAccessory = null;
            }
        }

        /* access modifiers changed from: protected */
        public SharedPreferences getPinnedSharedPrefs(Context context) {
            return context.createDeviceProtectedStorageContext().getSharedPreferences(new File(Environment.getDataSystemDeDirectory(0), UsbDeviceManager.USB_PREFS_XML), 0);
        }

        private boolean isUsbStateChanged(Intent intent) {
            Set<String> keySet = intent.getExtras().keySet();
            Intent intent2 = this.mBroadcastedIntent;
            if (intent2 == null) {
                for (String key : keySet) {
                    if (intent.getBooleanExtra(key, false)) {
                        return true;
                    }
                }
            } else if (!keySet.equals(intent2.getExtras().keySet())) {
                return true;
            } else {
                for (String key2 : keySet) {
                    if (intent.getBooleanExtra(key2, false) != this.mBroadcastedIntent.getBooleanExtra(key2, false)) {
                        return true;
                    }
                }
            }
            return false;
        }

        /* access modifiers changed from: protected */
        public void updateUsbStateBroadcastIfNeeded(long functions) {
            Intent intent = new Intent("android.hardware.usb.action.USB_STATE");
            intent.addFlags(822083584);
            intent.putExtra("connected", this.mConnected);
            intent.putExtra("host_connected", this.mHostConnected);
            intent.putExtra("configured", this.mConfigured);
            intent.putExtra("unlocked", isUsbTransferAllowed() && isUsbDataTransferActive(this.mCurrentFunctions));
            for (long remainingFunctions = functions; remainingFunctions != 0; remainingFunctions -= Long.highestOneBit(remainingFunctions)) {
                intent.putExtra(UsbManager.usbFunctionsToString(Long.highestOneBit(remainingFunctions)), true);
            }
            if (isUsbStateChanged(intent)) {
                sendStickyBroadcast(intent);
                this.mBroadcastedIntent = intent;
            }
        }

        /* access modifiers changed from: protected */
        public void sendStickyBroadcast(Intent intent) {
            this.mContext.sendStickyBroadcastAsUser(intent, UserHandle.ALL);
        }

        private void updateUsbFunctions() {
            updateMidiFunction();
        }

        /* JADX WARNING: Code restructure failed: missing block: B:15:0x003e, code lost:
            if (r3 == null) goto L_0x004a;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private void updateMidiFunction() {
            /*
                r7 = this;
                long r0 = r7.mCurrentFunctions
                r2 = 8
                long r0 = r0 & r2
                r2 = 0
                int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
                r1 = 1
                r2 = 0
                if (r0 == 0) goto L_0x000f
                r0 = r1
                goto L_0x0010
            L_0x000f:
                r0 = r2
            L_0x0010:
                boolean r3 = r7.mMidiEnabled
                if (r0 == r3) goto L_0x004c
                if (r0 == 0) goto L_0x004a
                r3 = 0
                java.util.Scanner r4 = new java.util.Scanner     // Catch:{ FileNotFoundException -> 0x0033 }
                java.io.File r5 = new java.io.File     // Catch:{ FileNotFoundException -> 0x0033 }
                java.lang.String r6 = "/sys/class/android_usb/android0/f_midi/alsa"
                r5.<init>(r6)     // Catch:{ FileNotFoundException -> 0x0033 }
                r4.<init>(r5)     // Catch:{ FileNotFoundException -> 0x0033 }
                r3 = r4
                int r4 = r3.nextInt()     // Catch:{ FileNotFoundException -> 0x0033 }
                r7.mMidiCard = r4     // Catch:{ FileNotFoundException -> 0x0033 }
                int r4 = r3.nextInt()     // Catch:{ FileNotFoundException -> 0x0033 }
                r7.mMidiDevice = r4     // Catch:{ FileNotFoundException -> 0x0033 }
                goto L_0x0040
            L_0x0031:
                r1 = move-exception
                goto L_0x0044
            L_0x0033:
                r4 = move-exception
                java.lang.String r5 = com.android.server.usb.UsbDeviceManager.TAG     // Catch:{ all -> 0x0031 }
                java.lang.String r6 = "could not open MIDI file"
                android.util.Slog.e(r5, r6, r4)     // Catch:{ all -> 0x0031 }
                r0 = 0
                if (r3 == 0) goto L_0x004a
            L_0x0040:
                r3.close()
                goto L_0x004a
            L_0x0044:
                if (r3 == 0) goto L_0x0049
                r3.close()
            L_0x0049:
                throw r1
            L_0x004a:
                r7.mMidiEnabled = r0
            L_0x004c:
                com.android.server.usb.UsbAlsaManager r3 = r7.mUsbAlsaManager
                boolean r4 = r7.mMidiEnabled
                if (r4 == 0) goto L_0x0057
                boolean r4 = r7.mConfigured
                if (r4 == 0) goto L_0x0057
                goto L_0x0058
            L_0x0057:
                r1 = r2
            L_0x0058:
                int r2 = r7.mMidiCard
                int r4 = r7.mMidiDevice
                r3.setPeripheralMidiState(r1, r2, r4)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.server.usb.UsbDeviceManager.UsbHandler.updateMidiFunction():void");
        }

        private void setScreenUnlockedFunctions() {
            setEnabledFunctions(this.mScreenUnlockedFunctions, false);
        }

        private static class AdbTransport extends IAdbTransport.Stub {
            private final UsbHandler mHandler;

            AdbTransport(UsbHandler handler) {
                this.mHandler = handler;
            }

            public void onAdbEnabled(boolean enabled) {
                this.mHandler.sendMessage(1, enabled);
            }
        }

        /* access modifiers changed from: package-private */
        public long getAppliedFunctions(long functions) {
            if (functions == 0) {
                return getChargingFunctions();
            }
            if (isAdbEnabled()) {
                return 1 | functions;
            }
            return functions;
        }

        public void handleMessage(Message msg) {
            boolean z = false;
            boolean z2 = true;
            switch (msg.what) {
                case 0:
                    this.mConnected = msg.arg1 == 1;
                    this.mConfigured = msg.arg2 == 1;
                    updateUsbNotification(false);
                    updateAdbNotification(false);
                    if (this.mBootCompleted) {
                        updateUsbStateBroadcastIfNeeded(getAppliedFunctions(this.mCurrentFunctions));
                    }
                    if ((this.mCurrentFunctions & 2) != 0) {
                        updateCurrentAccessory();
                    }
                    if (this.mBootCompleted) {
                        if (!this.mConnected && !hasMessages(8) && !hasMessages(17)) {
                            if (this.mScreenLocked || this.mScreenUnlockedFunctions == 0) {
                                setEnabledFunctions(0, false);
                            } else {
                                setScreenUnlockedFunctions();
                            }
                        }
                        updateUsbFunctions();
                        return;
                    }
                    this.mPendingBootBroadcast = true;
                    return;
                case 1:
                    if (msg.arg1 == 1) {
                        z = true;
                    }
                    setAdbEnabled(z);
                    return;
                case 2:
                    setEnabledFunctions(((Long) msg.obj).longValue(), false);
                    return;
                case 3:
                    this.mNotificationManager = (NotificationManager) this.mContext.getSystemService("notification");
                    ((AdbManagerInternal) LocalServices.getService(AdbManagerInternal.class)).registerTransport(new AdbTransport(this));
                    if (isTv()) {
                        this.mNotificationManager.createNotificationChannel(new NotificationChannel(UsbDeviceManager.ADB_NOTIFICATION_CHANNEL_ID_TV, this.mContext.getString(17039474), 4));
                    }
                    this.mSystemReady = true;
                    finishBoot();
                    return;
                case 4:
                    this.mBootCompleted = true;
                    finishBoot();
                    return;
                case 5:
                    if (this.mCurrentUser != msg.arg1) {
                        this.mCurrentUser = msg.arg1;
                        this.mScreenLocked = true;
                        this.mScreenUnlockedFunctions = 0;
                        SharedPreferences sharedPreferences = this.mSettings;
                        if (sharedPreferences != null) {
                            this.mScreenUnlockedFunctions = UsbManager.usbFunctionsFromString(sharedPreferences.getString(String.format(Locale.ENGLISH, UsbDeviceManager.UNLOCKED_CONFIG_PREF, new Object[]{Integer.valueOf(this.mCurrentUser)}), ""));
                        }
                        setEnabledFunctions(0, false);
                        return;
                    }
                    return;
                case 6:
                    if (isUsbDataTransferActive(this.mCurrentFunctions) && !isUsbTransferAllowed()) {
                        setEnabledFunctions(0, true);
                        return;
                    }
                    return;
                case 7:
                    SomeArgs args = (SomeArgs) msg.obj;
                    boolean prevHostConnected = this.mHostConnected;
                    UsbPort port = (UsbPort) args.arg1;
                    UsbPortStatus status = (UsbPortStatus) args.arg2;
                    this.mHostConnected = status.getCurrentDataRole() == 1;
                    this.mSourcePower = false;
                    this.mSinkPower = status.getCurrentPowerRole() == 2;
                    this.mAudioAccessoryConnected = status.getCurrentMode() == 4;
                    this.mAudioAccessorySupported = port.isModeSupported(4);
                    this.mSupportsAllCombinations = status.isRoleCombinationSupported(1, 1) && status.isRoleCombinationSupported(2, 1) && status.isRoleCombinationSupported(1, 2) && status.isRoleCombinationSupported(2, 2);
                    args.recycle();
                    updateUsbNotification(false);
                    if (!this.mBootCompleted) {
                        this.mPendingBootBroadcast = true;
                        return;
                    } else if (this.mHostConnected || prevHostConnected) {
                        updateUsbStateBroadcastIfNeeded(getAppliedFunctions(this.mCurrentFunctions));
                        return;
                    } else {
                        return;
                    }
                case 8:
                    if (!this.mConnected || (this.mCurrentFunctions & 2) == 0) {
                        notifyAccessoryModeExit();
                        return;
                    }
                    return;
                case 9:
                    if (msg.arg1 != 1) {
                        z2 = false;
                    }
                    this.mUsbCharging = z2;
                    updateUsbNotification(false);
                    return;
                case 10:
                    Iterator devices = (Iterator) msg.obj;
                    if (msg.arg1 == 1) {
                    }
                    this.mHideUsbNotification = false;
                    while (devices.hasNext()) {
                        UsbDevice device = (UsbDevice) ((Map.Entry) devices.next()).getValue();
                        int configurationCount = device.getConfigurationCount() - 1;
                        while (configurationCount >= 0) {
                            UsbConfiguration config = device.getConfiguration(configurationCount);
                            configurationCount--;
                            int interfaceCount = config.getInterfaceCount() - 1;
                            while (true) {
                                if (interfaceCount >= 0) {
                                    UsbInterface intrface = config.getInterface(interfaceCount);
                                    interfaceCount--;
                                    if (UsbDeviceManager.sBlackListedInterfaces.contains(Integer.valueOf(intrface.getInterfaceClass()))) {
                                        this.mHideUsbNotification = true;
                                    }
                                }
                            }
                        }
                    }
                    updateUsbNotification(false);
                    return;
                case 11:
                    updateAdbNotification(true);
                    updateUsbNotification(true);
                    return;
                case 12:
                    this.mScreenUnlockedFunctions = ((Long) msg.obj).longValue();
                    SharedPreferences sharedPreferences2 = this.mSettings;
                    if (sharedPreferences2 != null) {
                        SharedPreferences.Editor editor = sharedPreferences2.edit();
                        editor.putString(String.format(Locale.ENGLISH, UsbDeviceManager.UNLOCKED_CONFIG_PREF, new Object[]{Integer.valueOf(this.mCurrentUser)}), UsbManager.usbFunctionsToString(this.mScreenUnlockedFunctions));
                        editor.commit();
                    }
                    if (!this.mScreenLocked && this.mScreenUnlockedFunctions != 0) {
                        setScreenUnlockedFunctions();
                        return;
                    }
                    return;
                case 13:
                    if ((msg.arg1 == 1) != this.mScreenLocked) {
                        if (msg.arg1 != 1) {
                            z2 = false;
                        }
                        this.mScreenLocked = z2;
                        if (this.mBootCompleted) {
                            if (this.mScreenLocked) {
                                if (!this.mConnected) {
                                    setEnabledFunctions(0, false);
                                    return;
                                }
                                return;
                            } else if (this.mScreenUnlockedFunctions != 0 && this.mCurrentFunctions == 0) {
                                setScreenUnlockedFunctions();
                                return;
                            } else {
                                return;
                            }
                        } else {
                            return;
                        }
                    } else {
                        return;
                    }
                default:
                    return;
            }
        }

        /* access modifiers changed from: protected */
        public void finishBoot() {
            if (this.mBootCompleted && this.mCurrentUsbFunctionsReceived && this.mSystemReady) {
                if (this.mPendingBootBroadcast) {
                    updateUsbStateBroadcastIfNeeded(getAppliedFunctions(this.mCurrentFunctions));
                    this.mPendingBootBroadcast = false;
                }
                if (this.mScreenLocked || this.mScreenUnlockedFunctions == 0) {
                    setEnabledFunctions(0, false);
                } else {
                    setScreenUnlockedFunctions();
                }
                if (this.mCurrentAccessory != null) {
                    this.mUsbDeviceManager.getCurrentSettings().accessoryAttached(this.mCurrentAccessory);
                }
                updateUsbNotification(false);
                updateAdbNotification(false);
                updateUsbFunctions();
            }
        }

        /* access modifiers changed from: protected */
        public boolean isUsbDataTransferActive(long functions) {
            return ((4 & functions) == 0 && (16 & functions) == 0) ? false : true;
        }

        public UsbAccessory getCurrentAccessory() {
            return this.mCurrentAccessory;
        }

        /* access modifiers changed from: protected */
        public void updateUsbNotification(boolean force) {
            PendingIntent pi;
            String channel;
            PendingIntent pi2;
            if (this.mNotificationManager != null && this.mUseUsbNotification && !"0".equals(getSystemProperty("persist.charging.notify", ""))) {
                if (!this.mHideUsbNotification || this.mSupportsAllCombinations) {
                    int id = 0;
                    int titleRes = 0;
                    Resources r = this.mContext.getResources();
                    CharSequence message = r.getText(17041276);
                    if (this.mAudioAccessoryConnected && !this.mAudioAccessorySupported) {
                        titleRes = 17041295;
                        id = 41;
                    } else if (this.mConnected) {
                        long j = this.mCurrentFunctions;
                        if (j == 4) {
                            titleRes = 17041275;
                            id = 27;
                        } else if (j == 16) {
                            titleRes = 17041278;
                            id = 28;
                        } else if (j == 8) {
                            titleRes = 17041269;
                            id = 29;
                        } else if (j == 32) {
                            titleRes = 17041293;
                            id = 47;
                        } else if (j == 2) {
                            titleRes = 17041262;
                            id = 30;
                        }
                        if (this.mSourcePower) {
                            if (titleRes != 0) {
                                message = r.getText(17041277);
                            } else {
                                titleRes = 17041292;
                                id = 31;
                            }
                        } else if (titleRes == 0) {
                            titleRes = 17041264;
                            id = 32;
                        }
                    } else if (this.mSourcePower) {
                        titleRes = 17041292;
                        id = 31;
                    } else if (this.mHostConnected && this.mSinkPower && this.mUsbCharging) {
                        titleRes = 17041264;
                        id = 32;
                    }
                    if (id != this.mUsbNotificationId || force) {
                        int i = this.mUsbNotificationId;
                        if (i != 0) {
                            this.mNotificationManager.cancelAsUser((String) null, i, UserHandle.ALL);
                            Slog.d(UsbDeviceManager.TAG, "Clear notification");
                            this.mUsbNotificationId = 0;
                        }
                        if (this.mContext.getPackageManager().hasSystemFeature("android.hardware.type.automotive") && id == 32) {
                            this.mUsbNotificationId = 0;
                        } else if (id != 0) {
                            CharSequence title = r.getText(titleRes);
                            if (titleRes != 17041295) {
                                pi = PendingIntent.getActivityAsUser(this.mContext, 0, Intent.makeRestartActivityTask(new ComponentName("com.android.settings", "com.android.settings.Settings$UsbDetailsActivity")), 0, (Bundle) null, UserHandle.CURRENT);
                                channel = SystemNotificationChannels.USB;
                            } else {
                                Intent intent = new Intent();
                                intent.setClassName("com.android.settings", "com.android.settings.HelpTrampoline");
                                intent.putExtra("android.intent.extra.TEXT", "help_url_audio_accessory_not_supported");
                                if (this.mContext.getPackageManager().resolveActivity(intent, 0) != null) {
                                    pi2 = PendingIntent.getActivity(this.mContext, 0, intent, 0);
                                } else {
                                    pi2 = null;
                                }
                                String channel2 = SystemNotificationChannels.ALERTS;
                                message = r.getText(17041294);
                                pi = pi2;
                                channel = channel2;
                            }
                            Notification.Builder builder = new Notification.Builder(this.mContext, channel).setSmallIcon(17303570).setWhen(0).setOngoing(true).setTicker(title).setDefaults(0).setColor(this.mContext.getColor(17170460)).setContentTitle(title).setContentText(message).setContentIntent(pi).setVisibility(1);
                            if (titleRes == 17041295) {
                                builder.setStyle(new Notification.BigTextStyle().bigText(message));
                            }
                            this.mNotificationManager.notifyAsUser((String) null, id, builder.build(), UserHandle.ALL);
                            String access$300 = UsbDeviceManager.TAG;
                            Slog.d(access$300, "push notification:" + title);
                            this.mUsbNotificationId = id;
                        }
                    }
                } else {
                    int i2 = this.mUsbNotificationId;
                    if (i2 != 0) {
                        this.mNotificationManager.cancelAsUser((String) null, i2, UserHandle.ALL);
                        this.mUsbNotificationId = 0;
                        Slog.d(UsbDeviceManager.TAG, "Clear notification");
                    }
                }
            }
        }

        /* access modifiers changed from: protected */
        public boolean isAdbEnabled() {
            return ((AdbManagerInternal) LocalServices.getService(AdbManagerInternal.class)).isAdbEnabled();
        }

        /* access modifiers changed from: protected */
        public void updateAdbNotification(boolean force) {
            if (this.mNotificationManager != null) {
                if (!isAdbEnabled() || !this.mConnected) {
                    if (this.mAdbNotificationShown) {
                        this.mAdbNotificationShown = false;
                        this.mNotificationManager.cancelAsUser((String) null, 26, UserHandle.ALL);
                    }
                } else if (!"0".equals(getSystemProperty("persist.adb.notify", ""))) {
                    if (force && this.mAdbNotificationShown) {
                        this.mAdbNotificationShown = false;
                        this.mNotificationManager.cancelAsUser((String) null, 26, UserHandle.ALL);
                    }
                    if (!this.mAdbNotificationShown) {
                        Resources r = this.mContext.getResources();
                        CharSequence title = r.getText(17039473);
                        CharSequence message = r.getText(17039472);
                        Intent intent = new Intent("android.settings.APPLICATION_DEVELOPMENT_SETTINGS");
                        intent.addFlags(268468224);
                        Notification notification = new Notification.Builder(this.mContext, SystemNotificationChannels.DEVELOPER).setSmallIcon(17303570).setWhen(0).setOngoing(true).setTicker(title).setDefaults(0).setColor(this.mContext.getColor(17170460)).setContentTitle(title).setContentText(message).setContentIntent(PendingIntent.getActivityAsUser(this.mContext, 0, intent, 0, (Bundle) null, UserHandle.CURRENT)).setVisibility(1).extend(new Notification.TvExtender().setChannelId(UsbDeviceManager.ADB_NOTIFICATION_CHANNEL_ID_TV)).build();
                        this.mAdbNotificationShown = true;
                        this.mNotificationManager.notifyAsUser((String) null, 26, notification, UserHandle.ALL);
                    }
                }
            }
        }

        private boolean isTv() {
            return this.mContext.getPackageManager().hasSystemFeature("android.software.leanback");
        }

        /* access modifiers changed from: protected */
        public long getChargingFunctions() {
            if (isAdbEnabled()) {
                return 1;
            }
            return 4;
        }

        /* access modifiers changed from: protected */
        public void setSystemProperty(String prop, String val) {
            SystemProperties.set(prop, val);
        }

        /* access modifiers changed from: protected */
        public String getSystemProperty(String prop, String def) {
            return SystemProperties.get(prop, def);
        }

        /* access modifiers changed from: protected */
        public void putGlobalSettings(ContentResolver contentResolver, String setting, int val) {
            Settings.Global.putInt(contentResolver, setting, val);
        }

        public long getEnabledFunctions() {
            return this.mCurrentFunctions;
        }

        public long getScreenUnlockedFunctions() {
            return this.mScreenUnlockedFunctions;
        }

        private void dumpFunctions(DualDumpOutputStream dump, String idName, long id, long functions) {
            for (int i = 0; i < 63; i++) {
                if (((1 << i) & functions) == 0) {
                    DualDumpOutputStream dualDumpOutputStream = dump;
                    String str = idName;
                    long j = id;
                } else if (dump.isProto()) {
                    dump.write(idName, id, 1 << i);
                    DualDumpOutputStream dualDumpOutputStream2 = dump;
                    String str2 = idName;
                    long j2 = id;
                } else {
                    DualDumpOutputStream dualDumpOutputStream3 = dump;
                    String str3 = idName;
                    long j3 = id;
                    dump.write(idName, id, GadgetFunction.toString(1 << i));
                }
            }
            DualDumpOutputStream dualDumpOutputStream4 = dump;
            String str4 = idName;
            long j4 = id;
        }

        public void dump(DualDumpOutputStream dump, String idName, long id) {
            DualDumpOutputStream dualDumpOutputStream = dump;
            long token = dump.start(idName, id);
            dumpFunctions(dump, "current_functions", 2259152797697L, this.mCurrentFunctions);
            dump.write("current_functions_applied", 1133871366146L, this.mCurrentFunctionsApplied);
            dumpFunctions(dump, "screen_unlocked_functions", 2259152797699L, this.mScreenUnlockedFunctions);
            dump.write("screen_locked", 1133871366148L, this.mScreenLocked);
            dump.write("connected", 1133871366149L, this.mConnected);
            dump.write("configured", 1133871366150L, this.mConfigured);
            UsbAccessory usbAccessory = this.mCurrentAccessory;
            if (usbAccessory != null) {
                DumpUtils.writeAccessory(dump, "current_accessory", 1146756268039L, usbAccessory);
            }
            dump.write("host_connected", 1133871366152L, this.mHostConnected);
            dump.write("source_power", 1133871366153L, this.mSourcePower);
            dump.write("sink_power", 1133871366154L, this.mSinkPower);
            dump.write("usb_charging", 1133871366155L, this.mUsbCharging);
            dump.write("hide_usb_notification", 1133871366156L, this.mHideUsbNotification);
            dump.write("audio_accessory_connected", 1133871366157L, this.mAudioAccessoryConnected);
            try {
                com.android.internal.util.dump.DumpUtils.writeStringIfNotNull(dump, "kernel_state", 1138166333455L, FileUtils.readTextFile(new File(UsbDeviceManager.STATE_PATH), 0, (String) null).trim());
            } catch (Exception e) {
                Slog.e(UsbDeviceManager.TAG, "Could not read kernel state", e);
            }
            dump.end(token);
        }
    }

    private static final class UsbHandlerLegacy extends UsbHandler {
        private static final String USB_CONFIG_PROPERTY = "sys.usb.config";
        private static final String USB_STATE_PROPERTY = "sys.usb.state";
        private String mCurrentFunctionsStr;
        private String mCurrentOemFunctions;
        private HashMap<String, HashMap<String, Pair<String, String>>> mOemModeMap;
        private boolean mUsbDataUnlocked;

        UsbHandlerLegacy(Looper looper, Context context, UsbDeviceManager deviceManager, UsbAlsaManager alsaManager, UsbSettingsManager settingsManager) {
            super(looper, context, deviceManager, alsaManager, settingsManager);
            try {
                readOemUsbOverrideConfig(context);
                this.mCurrentOemFunctions = getSystemProperty(getPersistProp(false), "none");
                if (isNormalBoot()) {
                    this.mCurrentFunctionsStr = getSystemProperty(USB_CONFIG_PROPERTY, "none");
                    this.mCurrentFunctionsApplied = this.mCurrentFunctionsStr.equals(getSystemProperty(USB_STATE_PROPERTY, "none"));
                } else {
                    this.mCurrentFunctionsStr = getSystemProperty(getPersistProp(true), "none");
                    this.mCurrentFunctionsApplied = getSystemProperty(USB_CONFIG_PROPERTY, "none").equals(getSystemProperty(USB_STATE_PROPERTY, "none"));
                }
                this.mCurrentFunctions = 0;
                this.mCurrentUsbFunctionsReceived = true;
                updateState(FileUtils.readTextFile(new File(UsbDeviceManager.STATE_PATH), 0, (String) null).trim());
            } catch (Exception e) {
                Slog.e(UsbDeviceManager.TAG, "Error initializing UsbHandler", e);
            }
        }

        private void readOemUsbOverrideConfig(Context context) {
            String[] configList = context.getResources().getStringArray(17236051);
            if (configList != null) {
                for (String config : configList) {
                    String[] items = config.split(":");
                    if (items.length == 3 || items.length == 4) {
                        if (this.mOemModeMap == null) {
                            this.mOemModeMap = new HashMap<>();
                        }
                        HashMap<String, Pair<String, String>> overrideMap = this.mOemModeMap.get(items[0]);
                        if (overrideMap == null) {
                            overrideMap = new HashMap<>();
                            this.mOemModeMap.put(items[0], overrideMap);
                        }
                        if (!overrideMap.containsKey(items[1])) {
                            if (items.length == 3) {
                                overrideMap.put(items[1], new Pair(items[2], ""));
                            } else {
                                overrideMap.put(items[1], new Pair(items[2], items[3]));
                            }
                        }
                    }
                }
            }
        }

        private String applyOemOverrideFunction(String usbFunctions) {
            String newFunction;
            if (usbFunctions == null || this.mOemModeMap == null) {
                return usbFunctions;
            }
            String bootMode = getSystemProperty(UsbDeviceManager.BOOT_MODE_PROPERTY, UiModeManagerService.Shell.NIGHT_MODE_STR_UNKNOWN);
            String access$300 = UsbDeviceManager.TAG;
            Slog.d(access$300, "applyOemOverride usbfunctions=" + usbFunctions + " bootmode=" + bootMode);
            Map<String, Pair<String, String>> overridesMap = this.mOemModeMap.get(bootMode);
            if (overridesMap != null && !bootMode.equals(UsbDeviceManager.NORMAL_BOOT) && !bootMode.equals(UiModeManagerService.Shell.NIGHT_MODE_STR_UNKNOWN)) {
                Pair<String, String> overrideFunctions = overridesMap.get(usbFunctions);
                if (overrideFunctions != null) {
                    String access$3002 = UsbDeviceManager.TAG;
                    Slog.d(access$3002, "OEM USB override: " + usbFunctions + " ==> " + ((String) overrideFunctions.first) + " persist across reboot " + ((String) overrideFunctions.second));
                    if (!((String) overrideFunctions.second).equals("")) {
                        if (isAdbEnabled()) {
                            newFunction = addFunction((String) overrideFunctions.second, "adb");
                        } else {
                            newFunction = (String) overrideFunctions.second;
                        }
                        String access$3003 = UsbDeviceManager.TAG;
                        Slog.d(access$3003, "OEM USB override persisting: " + newFunction + "in prop: " + getPersistProp(false));
                        setSystemProperty(getPersistProp(false), newFunction);
                    }
                    return (String) overrideFunctions.first;
                } else if (isAdbEnabled()) {
                    setSystemProperty(getPersistProp(false), addFunction("none", "adb"));
                } else {
                    setSystemProperty(getPersistProp(false), "none");
                }
            }
            return usbFunctions;
        }

        private boolean waitForState(String state) {
            String value = null;
            for (int i = 0; i < 60; i++) {
                value = getSystemProperty(USB_STATE_PROPERTY, "");
                if (state.equals(value)) {
                    return true;
                }
                SystemClock.sleep(50);
            }
            String access$300 = UsbDeviceManager.TAG;
            Slog.e(access$300, "waitForState(" + state + ") FAILED: got " + value);
            return false;
        }

        private void setUsbConfig(String config) {
            setSystemProperty(USB_CONFIG_PROPERTY, config);
        }

        /* access modifiers changed from: protected */
        public void setEnabledFunctions(long usbFunctions, boolean forceRestart) {
            boolean usbDataUnlocked = isUsbDataTransferActive(usbFunctions);
            if (usbDataUnlocked != this.mUsbDataUnlocked) {
                this.mUsbDataUnlocked = usbDataUnlocked;
                updateUsbNotification(false);
                forceRestart = true;
            }
            long oldFunctions = this.mCurrentFunctions;
            boolean oldFunctionsApplied = this.mCurrentFunctionsApplied;
            if (!trySetEnabledFunctions(usbFunctions, forceRestart)) {
                if (oldFunctionsApplied && oldFunctions != usbFunctions) {
                    Slog.e(UsbDeviceManager.TAG, "Failsafe 1: Restoring previous USB functions.");
                    if (trySetEnabledFunctions(oldFunctions, false)) {
                        return;
                    }
                }
                Slog.e(UsbDeviceManager.TAG, "Failsafe 2: Restoring default USB functions.");
                if (!trySetEnabledFunctions(0, false)) {
                    Slog.e(UsbDeviceManager.TAG, "Failsafe 3: Restoring empty function list (with ADB if enabled).");
                    if (!trySetEnabledFunctions(0, false)) {
                        Slog.e(UsbDeviceManager.TAG, "Unable to set any USB functions!");
                    }
                }
            }
        }

        private boolean isNormalBoot() {
            String bootMode = getSystemProperty(UsbDeviceManager.BOOT_MODE_PROPERTY, UiModeManagerService.Shell.NIGHT_MODE_STR_UNKNOWN);
            return bootMode.equals(UsbDeviceManager.NORMAL_BOOT) || bootMode.equals(UiModeManagerService.Shell.NIGHT_MODE_STR_UNKNOWN);
        }

        /* access modifiers changed from: protected */
        public String applyAdbFunction(String functions) {
            if (functions == null) {
                functions = "";
            }
            if (isAdbEnabled()) {
                return addFunction(functions, "adb");
            }
            return removeFunction(functions, "adb");
        }

        private boolean trySetEnabledFunctions(long usbFunctions, boolean forceRestart) {
            String functions = null;
            if (usbFunctions != 0) {
                functions = UsbManager.usbFunctionsToString(usbFunctions);
            }
            this.mCurrentFunctions = usbFunctions;
            if (functions == null || applyAdbFunction(functions).equals("none")) {
                functions = getSystemProperty(getPersistProp(true), "none");
                if (functions.equals("none")) {
                    functions = UsbManager.usbFunctionsToString(getChargingFunctions());
                }
            }
            String functions2 = applyAdbFunction(functions);
            String oemFunctions = applyOemOverrideFunction(functions2);
            if (!isNormalBoot() && !this.mCurrentFunctionsStr.equals(functions2)) {
                setSystemProperty(getPersistProp(true), functions2);
            }
            if ((!functions2.equals(oemFunctions) && !this.mCurrentOemFunctions.equals(oemFunctions)) || !this.mCurrentFunctionsStr.equals(functions2) || !this.mCurrentFunctionsApplied || forceRestart) {
                String access$300 = UsbDeviceManager.TAG;
                Slog.i(access$300, "Setting USB config to " + functions2);
                this.mSwitchFunction = true;
                this.mCurrentFunctionsStr = functions2;
                this.mCurrentOemFunctions = oemFunctions;
                this.mCurrentFunctionsApplied = false;
                setUsbConfig("none");
                if (!waitForState("none")) {
                    Slog.e(UsbDeviceManager.TAG, "Failed to kick USB config");
                    return false;
                }
                setUsbConfig(oemFunctions);
                if (this.mBootCompleted && (containsFunction(functions2, "mtp") || containsFunction(functions2, "ptp"))) {
                    updateUsbStateBroadcastIfNeeded(getAppliedFunctions(this.mCurrentFunctions));
                }
                if (!waitForState(oemFunctions)) {
                    String access$3002 = UsbDeviceManager.TAG;
                    Slog.e(access$3002, "Failed to switch USB config to " + functions2);
                    return false;
                }
                this.mCurrentFunctionsApplied = true;
            }
            return true;
        }

        private String getPersistProp(boolean functions) {
            String bootMode = getSystemProperty(UsbDeviceManager.BOOT_MODE_PROPERTY, UiModeManagerService.Shell.NIGHT_MODE_STR_UNKNOWN);
            if (bootMode.equals(UsbDeviceManager.NORMAL_BOOT) || bootMode.equals(UiModeManagerService.Shell.NIGHT_MODE_STR_UNKNOWN)) {
                return "persist.vendor.usb.config";
            }
            if (functions) {
                return "persist.sys.usb." + bootMode + ".func";
            }
            return "persist.sys.usb." + bootMode + ".config";
        }

        private static String addFunction(String functions, String function) {
            if ("none".equals(functions)) {
                return function;
            }
            if (containsFunction(functions, function)) {
                return functions;
            }
            if (functions.length() > 0) {
                functions = functions + ",";
            }
            return functions + function;
        }

        private static String removeFunction(String functions, String function) {
            String[] split = functions.split(",");
            for (int i = 0; i < split.length; i++) {
                if (function.equals(split[i])) {
                    split[i] = null;
                }
            }
            if (split.length == 1 && split[0] == null) {
                return "none";
            }
            StringBuilder builder = new StringBuilder();
            for (String s : split) {
                if (s != null) {
                    if (builder.length() > 0) {
                        builder.append(",");
                    }
                    builder.append(s);
                }
            }
            return builder.toString();
        }

        static boolean containsFunction(String functions, String function) {
            int index = functions.indexOf(function);
            if (index < 0) {
                return false;
            }
            if (index > 0 && functions.charAt(index - 1) != ',') {
                return false;
            }
            int charAfter = function.length() + index;
            if (charAfter >= functions.length() || functions.charAt(charAfter) == ',') {
                return true;
            }
            return false;
        }
    }

    private static final class UsbHandlerHal extends UsbHandler {
        protected static final String ADBD = "adbd";
        protected static final String CTL_START = "ctl.start";
        protected static final String CTL_STOP = "ctl.stop";
        private static final int ENUMERATION_TIME_OUT_MS = 2000;
        protected static final String GADGET_HAL_FQ_NAME = "android.hardware.usb.gadget@1.0::IUsbGadget";
        private static final int SET_FUNCTIONS_LEEWAY_MS = 500;
        private static final int SET_FUNCTIONS_TIMEOUT_MS = 3000;
        private static final int USB_GADGET_HAL_DEATH_COOKIE = 2000;
        /* access modifiers changed from: private */
        public int mCurrentRequest = 0;
        protected boolean mCurrentUsbFunctionsRequested;
        /* access modifiers changed from: private */
        @GuardedBy({"mGadgetProxyLock"})
        public IUsbGadget mGadgetProxy;
        /* access modifiers changed from: private */
        public final Object mGadgetProxyLock = new Object();

        /* Debug info: failed to restart local var, previous not found, register: 9 */
        UsbHandlerHal(Looper looper, Context context, UsbDeviceManager deviceManager, UsbAlsaManager alsaManager, UsbSettingsManager settingsManager) {
            super(looper, context, deviceManager, alsaManager, settingsManager);
            try {
                if (!IServiceManager.getService().registerForNotifications("android.hardware.usb.gadget@1.0::IUsbGadget", "", new ServiceNotification())) {
                    Slog.e(UsbDeviceManager.TAG, "Failed to register usb gadget service start notification");
                    return;
                }
                synchronized (this.mGadgetProxyLock) {
                    this.mGadgetProxy = IUsbGadget.getService(true);
                    this.mGadgetProxy.linkToDeath(new UsbGadgetDeathRecipient(), 2000);
                    this.mCurrentFunctions = 0;
                    this.mCurrentUsbFunctionsRequested = true;
                    this.mGadgetProxy.getCurrentUsbFunctions(new UsbGadgetCallback());
                }
                updateState(FileUtils.readTextFile(new File(UsbDeviceManager.STATE_PATH), 0, (String) null).trim());
            } catch (NoSuchElementException e) {
                Slog.e(UsbDeviceManager.TAG, "Usb gadget hal not found", e);
            } catch (RemoteException e2) {
                Slog.e(UsbDeviceManager.TAG, "Usb Gadget hal not responding", e2);
            } catch (Exception e3) {
                Slog.e(UsbDeviceManager.TAG, "Error initializing UsbHandler", e3);
            }
        }

        final class UsbGadgetDeathRecipient implements IHwBinder.DeathRecipient {
            UsbGadgetDeathRecipient() {
            }

            public void serviceDied(long cookie) {
                if (cookie == 2000) {
                    String access$300 = UsbDeviceManager.TAG;
                    Slog.e(access$300, "Usb Gadget hal service died cookie: " + cookie);
                    synchronized (UsbHandlerHal.this.mGadgetProxyLock) {
                        IUsbGadget unused = UsbHandlerHal.this.mGadgetProxy = null;
                    }
                }
            }
        }

        final class ServiceNotification extends IServiceNotification.Stub {
            ServiceNotification() {
            }

            public void onRegistration(String fqName, String name, boolean preexisting) {
                String access$300 = UsbDeviceManager.TAG;
                Slog.i(access$300, "Usb gadget hal service started " + fqName + " " + name);
                if (!fqName.equals("android.hardware.usb.gadget@1.0::IUsbGadget")) {
                    Slog.e(UsbDeviceManager.TAG, "fqName does not match");
                } else {
                    UsbHandlerHal.this.sendMessage(18, preexisting);
                }
            }
        }

        public void handleMessage(Message msg) {
            boolean z = false;
            boolean z2 = true;
            switch (msg.what) {
                case 14:
                    setEnabledFunctions(0, false);
                    return;
                case 15:
                    Slog.e(UsbDeviceManager.TAG, "Set functions timed out! no reply from usb hal");
                    if (msg.arg1 != 1) {
                        setEnabledFunctions(0, false);
                        return;
                    }
                    return;
                case 16:
                    Slog.e(UsbDeviceManager.TAG, "prcessing MSG_GET_CURRENT_USB_FUNCTIONS");
                    this.mCurrentUsbFunctionsReceived = true;
                    if (this.mCurrentUsbFunctionsRequested) {
                        Slog.e(UsbDeviceManager.TAG, "updating mCurrentFunctions");
                        this.mCurrentFunctions = ((Long) msg.obj).longValue() & -2;
                        Slog.e(UsbDeviceManager.TAG, "mCurrentFunctions:" + this.mCurrentFunctions + "applied:" + msg.arg1);
                        if (msg.arg1 == 1) {
                            z = true;
                        }
                        this.mCurrentFunctionsApplied = z;
                    }
                    finishBoot();
                    return;
                case 17:
                    if (msg.arg1 != 1) {
                        setEnabledFunctions(0, !isAdbEnabled());
                        return;
                    }
                    return;
                case 18:
                    if (msg.arg1 != 1) {
                        z2 = false;
                    }
                    boolean preexisting = z2;
                    synchronized (this.mGadgetProxyLock) {
                        try {
                            this.mGadgetProxy = IUsbGadget.getService();
                            this.mGadgetProxy.linkToDeath(new UsbGadgetDeathRecipient(), 2000);
                            if (!this.mCurrentFunctionsApplied && !preexisting) {
                                setEnabledFunctions(this.mCurrentFunctions, false);
                            }
                        } catch (NoSuchElementException e) {
                            Slog.e(UsbDeviceManager.TAG, "Usb gadget hal not found", e);
                        } catch (RemoteException e2) {
                            Slog.e(UsbDeviceManager.TAG, "Usb Gadget hal not responding", e2);
                        }
                    }
                    return;
                default:
                    super.handleMessage(msg);
                    return;
            }
        }

        private class UsbGadgetCallback extends IUsbGadgetCallback.Stub {
            boolean mChargingFunctions;
            long mFunctions;
            int mRequest;

            UsbGadgetCallback() {
            }

            UsbGadgetCallback(int request, long functions, boolean chargingFunctions) {
                this.mRequest = request;
                this.mFunctions = functions;
                this.mChargingFunctions = chargingFunctions;
            }

            public void setCurrentUsbFunctionsCb(long functions, int status) {
                if (UsbHandlerHal.this.mCurrentRequest == this.mRequest && UsbHandlerHal.this.hasMessages(15) && this.mFunctions == functions) {
                    UsbHandlerHal.this.removeMessages(15);
                    String access$300 = UsbDeviceManager.TAG;
                    Slog.e(access$300, "notifyCurrentFunction request:" + this.mRequest + " status:" + status);
                    if (status == 0) {
                        UsbHandlerHal.this.mCurrentFunctionsApplied = true;
                    } else if (!this.mChargingFunctions) {
                        Slog.e(UsbDeviceManager.TAG, "Setting default fuctions");
                        UsbHandlerHal.this.sendEmptyMessage(14);
                    }
                }
            }

            public void getCurrentUsbFunctionsCb(long functions, int status) {
                UsbHandlerHal.this.sendMessage(16, (Object) Long.valueOf(functions), status == 2);
            }
        }

        private void setUsbConfig(long config, boolean chargingFunctions) {
            String access$300 = UsbDeviceManager.TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("setUsbConfig(");
            sb.append(config);
            sb.append(") request:");
            int i = this.mCurrentRequest + 1;
            this.mCurrentRequest = i;
            sb.append(i);
            Slog.d(access$300, sb.toString());
            removeMessages(17);
            removeMessages(15);
            removeMessages(14);
            synchronized (this.mGadgetProxyLock) {
                if (this.mGadgetProxy == null) {
                    Slog.e(UsbDeviceManager.TAG, "setUsbConfig mGadgetProxy is null");
                    return;
                }
                if ((1 & config) != 0) {
                    try {
                        setSystemProperty(CTL_START, ADBD);
                    } catch (RemoteException e) {
                        Slog.e(UsbDeviceManager.TAG, "Remoteexception while calling setCurrentUsbFunctions", e);
                        return;
                    }
                } else {
                    setSystemProperty(CTL_STOP, ADBD);
                }
                this.mGadgetProxy.setCurrentUsbFunctions(config, new UsbGadgetCallback(this.mCurrentRequest, config, chargingFunctions), 2500);
                sendMessageDelayed(15, chargingFunctions, 3000);
                sendMessageDelayed(17, chargingFunctions, 5000);
            }
        }

        /* access modifiers changed from: protected */
        public void setEnabledFunctions(long functions, boolean forceRestart) {
            if (this.mCurrentFunctions != functions || !this.mCurrentFunctionsApplied || forceRestart) {
                String access$300 = UsbDeviceManager.TAG;
                Slog.i(access$300, "Setting USB config to " + UsbManager.usbFunctionsToString(functions));
                this.mCurrentFunctions = functions;
                boolean chargingFunctions = false;
                this.mCurrentFunctionsApplied = false;
                this.mCurrentUsbFunctionsRequested = false;
                if (functions == 0) {
                    chargingFunctions = true;
                }
                long functions2 = getAppliedFunctions(functions);
                setUsbConfig(functions2, chargingFunctions);
                if (this.mBootCompleted && isUsbDataTransferActive(functions2)) {
                    updateUsbStateBroadcastIfNeeded(functions2);
                }
            }
        }
    }

    public UsbAccessory getCurrentAccessory() {
        return this.mHandler.getCurrentAccessory();
    }

    public ParcelFileDescriptor openAccessory(UsbAccessory accessory, UsbUserSettingsManager settings, int uid) {
        UsbAccessory currentAccessory = this.mHandler.getCurrentAccessory();
        if (currentAccessory == null) {
            throw new IllegalArgumentException("no accessory attached");
        } else if (currentAccessory.equals(accessory)) {
            settings.checkPermission(accessory, uid);
            return nativeOpenAccessory();
        } else {
            throw new IllegalArgumentException(accessory.toString() + " does not match current accessory " + currentAccessory);
        }
    }

    public long getCurrentFunctions() {
        return this.mHandler.getEnabledFunctions();
    }

    public ParcelFileDescriptor getControlFd(long usbFunction) {
        FileDescriptor fd = this.mControlFds.get(Long.valueOf(usbFunction));
        if (fd == null) {
            return null;
        }
        try {
            return ParcelFileDescriptor.dup(fd);
        } catch (IOException e) {
            String str = TAG;
            Slog.e(str, "Could not dup fd for " + usbFunction);
            return null;
        }
    }

    public long getScreenUnlockedFunctions() {
        return this.mHandler.getScreenUnlockedFunctions();
    }

    public void setCurrentFunctions(long functions) {
        if (functions == 0) {
            MetricsLogger.action(this.mContext, 1275);
        } else if (functions == 4) {
            MetricsLogger.action(this.mContext, 1276);
        } else if (functions == 16) {
            MetricsLogger.action(this.mContext, 1277);
        } else if (functions == 8) {
            MetricsLogger.action(this.mContext, 1279);
        } else if (functions == 32) {
            MetricsLogger.action(this.mContext, 1278);
        } else if (functions == 2) {
            MetricsLogger.action(this.mContext, 1280);
        }
        this.mHandler.sendMessage(2, (Object) Long.valueOf(functions));
    }

    public void setScreenUnlockedFunctions(long functions) {
        this.mHandler.sendMessage(12, (Object) Long.valueOf(functions));
    }

    private void onAdbEnabled(boolean enabled) {
        this.mHandler.sendMessage(1, enabled);
    }

    public void dump(DualDumpOutputStream dump, String idName, long id) {
        long token = dump.start(idName, id);
        UsbHandler usbHandler = this.mHandler;
        if (usbHandler != null) {
            usbHandler.dump(dump, "handler", 1146756268033L);
        }
        dump.end(token);
    }
}
