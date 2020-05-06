package com.android.server.connectivity;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothPan;
import android.bluetooth.BluetoothProfile;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.hardware.usb.UsbManager;
import android.net.INetworkPolicyManager;
import android.net.INetworkStatsService;
import android.net.ITetheringEventCallback;
import android.net.IpPrefix;
import android.net.LinkAddress;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.NetworkState;
import android.net.NetworkUtils;
import android.net.ip.IpServer;
import android.net.util.InterfaceSet;
import android.net.util.PrefixUtils;
import android.net.util.SharedLog;
import android.net.util.VersionedBroadcastListener;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.INetworkManagementService;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.UserManagerInternal;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import android.util.SparseArray;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.notification.SystemNotificationChannels;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.IndentingPrintWriter;
import com.android.internal.util.MessageUtils;
import com.android.internal.util.State;
import com.android.internal.util.StateMachine;
import com.android.server.ConnectivityService;
import com.android.server.LocalServices;
import com.android.server.connectivity.tethering.EntitlementManager;
import com.android.server.connectivity.tethering.IPv6TetheringCoordinator;
import com.android.server.connectivity.tethering.OffloadController;
import com.android.server.connectivity.tethering.TetheringConfiguration;
import com.android.server.connectivity.tethering.TetheringDependencies;
import com.android.server.connectivity.tethering.TetheringInterfaceUtils;
import com.android.server.connectivity.tethering.UpstreamNetworkMonitor;
import com.android.server.job.controllers.JobStatus;
import com.android.server.net.BaseNetworkObserver;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.function.Consumer;

public class Tethering extends BaseNetworkObserver {
    private static final boolean DBG = false;
    /* access modifiers changed from: private */
    public static final String TAG = Tethering.class.getSimpleName();
    private static final boolean VDBG = false;
    private static final Class[] messageClasses = {Tethering.class, TetherMasterSM.class, IpServer.class};
    private static final SparseArray<String> sMagicDecoderRing = MessageUtils.findMessageNames(messageClasses);
    private final VersionedBroadcastListener mCarrierConfigChange;
    /* access modifiers changed from: private */
    public volatile TetheringConfiguration mConfig;
    private final Context mContext;
    /* access modifiers changed from: private */
    public InterfaceSet mCurrentUpstreamIfaceSet;
    private final VersionedBroadcastListener mDefaultSubscriptionChange;
    private final TetheringDependencies mDeps;
    /* access modifiers changed from: private */
    public final EntitlementManager mEntitlementMgr;
    /* access modifiers changed from: private */
    public final HashSet<IpServer> mForwardedDownstreams;
    private final Handler mHandler;
    private int mLastNotificationId;
    /* access modifiers changed from: private */
    public final SharedLog mLog = new SharedLog(TAG);
    private final Looper mLooper;
    /* access modifiers changed from: private */
    public final INetworkManagementService mNMService;
    /* access modifiers changed from: private */
    public final OffloadController mOffloadController;
    private final INetworkPolicyManager mPolicyManager;
    /* access modifiers changed from: private */
    public final Object mPublicSync;
    /* access modifiers changed from: private */
    public boolean mRndisEnabled;
    private final BroadcastReceiver mStateReceiver;
    private final INetworkStatsService mStatsService;
    /* access modifiers changed from: private */
    public final StateMachine mTetherMasterSM;
    private final ArrayMap<String, TetherState> mTetherStates;
    /* access modifiers changed from: private */
    public Network mTetherUpstream;
    private Notification.Builder mTetheredNotificationBuilder;
    private final RemoteCallbackList<ITetheringEventCallback> mTetheringEventCallbacks = new RemoteCallbackList<>();
    /* access modifiers changed from: private */
    public final UpstreamNetworkMonitor mUpstreamNetworkMonitor;
    private boolean mWifiTetherRequested;

    private static class TetherState {
        public final IpServer ipServer;
        public int lastError = 0;
        public int lastState = 1;

        public TetherState(IpServer ipServer2) {
            this.ipServer = ipServer2;
        }

        public boolean isCurrentlyServing() {
            int i = this.lastState;
            if (i == 2 || i == 3) {
                return true;
            }
            return false;
        }
    }

    public Tethering(Context context, INetworkManagementService nmService, INetworkStatsService statsService, INetworkPolicyManager policyManager, Looper looper, MockableSystemProperties systemProperties, TetheringDependencies deps) {
        this.mLog.mark("constructed");
        this.mContext = context;
        this.mNMService = nmService;
        this.mStatsService = statsService;
        this.mPolicyManager = policyManager;
        this.mLooper = looper;
        this.mDeps = deps;
        this.mPublicSync = new Object();
        this.mTetherStates = new ArrayMap<>();
        this.mTetherMasterSM = new TetherMasterSM("TetherMaster", this.mLooper, deps);
        this.mTetherMasterSM.start();
        this.mHandler = this.mTetherMasterSM.getHandler();
        Handler handler = this.mHandler;
        this.mOffloadController = new OffloadController(handler, this.mDeps.getOffloadHardwareInterface(handler, this.mLog), this.mContext.getContentResolver(), this.mNMService, this.mLog);
        this.mUpstreamNetworkMonitor = deps.getUpstreamNetworkMonitor(this.mContext, this.mTetherMasterSM, this.mLog, 327685);
        this.mForwardedDownstreams = new HashSet<>();
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.telephony.action.CARRIER_CONFIG_CHANGED");
        this.mEntitlementMgr = this.mDeps.getEntitlementManager(this.mContext, this.mTetherMasterSM, this.mLog, 327688, systemProperties);
        this.mEntitlementMgr.setOnUiEntitlementFailedListener(new EntitlementManager.OnUiEntitlementFailedListener() {
            public final void onUiEntitlementFailed(int i) {
                Tethering.this.lambda$new$0$Tethering(i);
            }
        });
        this.mEntitlementMgr.setTetheringConfigurationFetcher(new EntitlementManager.TetheringConfigurationFetcher() {
            public final TetheringConfiguration fetchTetheringConfiguration() {
                return Tethering.this.lambda$new$1$Tethering();
            }
        });
        this.mCarrierConfigChange = new VersionedBroadcastListener("CarrierConfigChangeListener", this.mContext, this.mHandler, filter, new Consumer() {
            public final void accept(Object obj) {
                Tethering.this.lambda$new$2$Tethering((Intent) obj);
            }
        });
        IntentFilter filter2 = new IntentFilter();
        filter2.addAction("android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED");
        this.mDefaultSubscriptionChange = new VersionedBroadcastListener("DefaultSubscriptionChangeListener", this.mContext, this.mHandler, filter2, new Consumer() {
            public final void accept(Object obj) {
                Tethering.this.lambda$new$3$Tethering((Intent) obj);
            }
        });
        this.mStateReceiver = new StateReceiver();
        updateConfiguration();
        startStateMachineUpdaters(this.mHandler);
    }

    public /* synthetic */ void lambda$new$0$Tethering(int downstream) {
        this.mLog.log("OBSERVED UiEnitlementFailed");
        stopTethering(downstream);
    }

    public /* synthetic */ TetheringConfiguration lambda$new$1$Tethering() {
        maybeDefaultDataSubChanged();
        return this.mConfig;
    }

    public /* synthetic */ void lambda$new$2$Tethering(Intent ignored) {
        this.mLog.log("OBSERVED carrier config change");
        updateConfiguration();
        this.mEntitlementMgr.reevaluateSimCardProvisioning(this.mConfig);
    }

    public /* synthetic */ void lambda$new$3$Tethering(Intent ignored) {
        this.mLog.log("OBSERVED default data subscription change");
        maybeDefaultDataSubChanged();
        if (this.mEntitlementMgr.getCarrierConfig(this.mConfig) != null) {
            this.mEntitlementMgr.reevaluateSimCardProvisioning(this.mConfig);
        } else {
            this.mLog.log("IGNORED reevaluate provisioning due to no carrier config loaded");
        }
    }

    private void startStateMachineUpdaters(Handler handler) {
        this.mCarrierConfigChange.startListening();
        this.mDefaultSubscriptionChange.startListening();
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.hardware.usb.action.USB_STATE");
        filter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        filter.addAction("android.net.wifi.WIFI_AP_STATE_CHANGED");
        filter.addAction("android.intent.action.CONFIGURATION_CHANGED");
        this.mContext.registerReceiver(this.mStateReceiver, filter, (String) null, handler);
        TetheringInjector.init();
        IntentFilter filter2 = new IntentFilter();
        filter2.addAction("android.intent.action.MEDIA_SHARED");
        filter2.addAction("android.intent.action.MEDIA_UNSHARED");
        filter2.addDataScheme("file");
        this.mContext.registerReceiver(this.mStateReceiver, filter2, (String) null, handler);
        UserManagerInternal umi = (UserManagerInternal) LocalServices.getService(UserManagerInternal.class);
        if (umi != null) {
            umi.addUserRestrictionsListener(new TetheringUserRestrictionListener(this));
        }
    }

    /* access modifiers changed from: private */
    public WifiManager getWifiManager() {
        return (WifiManager) this.mContext.getSystemService("wifi");
    }

    /* access modifiers changed from: private */
    public void updateConfiguration() {
        updateConfiguration(this.mDeps.getDefaultDataSubscriptionId());
    }

    private void updateConfiguration(int subId) {
        this.mConfig = new TetheringConfiguration(this.mContext, this.mLog, subId);
        this.mUpstreamNetworkMonitor.updateMobileRequiresDun(this.mConfig.isDunRequired);
    }

    /* access modifiers changed from: private */
    public void maybeDunSettingChanged() {
        if (TetheringConfiguration.checkDunRequired(this.mContext) != this.mConfig.isDunRequired) {
            updateConfiguration();
        }
    }

    private void maybeDefaultDataSubChanged() {
        int subId = this.mDeps.getDefaultDataSubscriptionId();
        if (subId != this.mConfig.subId) {
            updateConfiguration(subId);
        }
    }

    public void interfaceStatusChanged(String iface, boolean up) {
        synchronized (this.mPublicSync) {
            if (up) {
                maybeTrackNewInterfaceLocked(iface);
            } else if (ifaceNameToType(iface) == 3) {
                stopTrackingInterfaceLocked(iface);
            }
        }
    }

    public void interfaceLinkStateChanged(String iface, boolean up) {
        interfaceStatusChanged(iface, up);
    }

    private int ifaceNameToType(String iface) {
        TetheringConfiguration cfg = this.mConfig;
        if (cfg.isWifi(iface)) {
            if (SystemProperties.get("persist.vendor.wigig.interface", "wigig0").equals(iface)) {
                return 3;
            }
            return 0;
        } else if (cfg.isUsb(iface)) {
            return 1;
        } else {
            if (cfg.isBluetooth(iface)) {
                return 2;
            }
            return -1;
        }
    }

    public void interfaceAdded(String iface) {
        synchronized (this.mPublicSync) {
            maybeTrackNewInterfaceLocked(iface);
        }
    }

    public void interfaceRemoved(String iface) {
        synchronized (this.mPublicSync) {
            stopTrackingInterfaceLocked(iface);
        }
    }

    public void startTethering(int type, ResultReceiver receiver, boolean showProvisioningUi) {
        this.mEntitlementMgr.startProvisioningIfNeeded(type, showProvisioningUi);
        enableTetheringInternal(type, true, receiver);
    }

    public void stopTethering(int type) {
        enableTetheringInternal(type, false, (ResultReceiver) null);
        this.mEntitlementMgr.stopProvisioningIfNeeded(type);
    }

    private void enableTetheringInternal(int type, boolean enable, ResultReceiver receiver) {
        if (type == 0) {
            sendTetherResult(receiver, setWifiTethering(enable));
        } else if (type == 1) {
            sendTetherResult(receiver, setUsbTethering(enable));
        } else if (type != 2) {
            Log.w(TAG, "Invalid tether type.");
            sendTetherResult(receiver, 1);
        } else {
            setBluetoothTethering(enable, receiver);
        }
    }

    /* access modifiers changed from: private */
    public void sendTetherResult(ResultReceiver receiver, int result) {
        if (receiver != null) {
            receiver.send(result, (Bundle) null);
        }
    }

    /* Debug info: failed to restart local var, previous not found, register: 6 */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0022, code lost:
        if (r3.startSoftAp((android.net.wifi.WifiConfiguration) null) == false) goto L_0x0024;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private int setWifiTethering(boolean r7) {
        /*
            r6 = this;
            long r0 = android.os.Binder.clearCallingIdentity()
            java.lang.Object r2 = r6.mPublicSync     // Catch:{ all -> 0x003e }
            monitor-enter(r2)     // Catch:{ all -> 0x003e }
            android.net.wifi.WifiManager r3 = r6.getWifiManager()     // Catch:{ all -> 0x003b }
            if (r3 != 0) goto L_0x001b
            android.net.util.SharedLog r4 = r6.mLog     // Catch:{ all -> 0x003b }
            java.lang.String r5 = "setWifiTethering: failed to get WifiManager!"
            r4.e((java.lang.String) r5)     // Catch:{ all -> 0x003b }
            r4 = 2
            monitor-exit(r2)     // Catch:{ all -> 0x003b }
            android.os.Binder.restoreCallingIdentity(r0)
            return r4
        L_0x001b:
            if (r7 == 0) goto L_0x0024
            r4 = 0
            boolean r4 = r3.startSoftAp(r4)     // Catch:{ all -> 0x003b }
            if (r4 != 0) goto L_0x002c
        L_0x0024:
            if (r7 != 0) goto L_0x0034
            boolean r4 = r3.stopSoftAp()     // Catch:{ all -> 0x003b }
            if (r4 == 0) goto L_0x0034
        L_0x002c:
            r6.mWifiTetherRequested = r7     // Catch:{ all -> 0x003b }
            r4 = 0
            monitor-exit(r2)     // Catch:{ all -> 0x003b }
            android.os.Binder.restoreCallingIdentity(r0)
            return r4
        L_0x0034:
            monitor-exit(r2)     // Catch:{ all -> 0x003b }
            android.os.Binder.restoreCallingIdentity(r0)
            r2 = 5
            return r2
        L_0x003b:
            r3 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x003b }
            throw r3     // Catch:{ all -> 0x003e }
        L_0x003e:
            r2 = move-exception
            android.os.Binder.restoreCallingIdentity(r0)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.connectivity.Tethering.setWifiTethering(boolean):int");
    }

    private void setBluetoothTethering(final boolean enable, final ResultReceiver receiver) {
        final BluetoothAdapter adapter = BluetoothAdapter.getDefaultAdapter();
        if (adapter == null || !adapter.isEnabled()) {
            String str = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("Tried to enable bluetooth tethering with null or disabled adapter. null: ");
            sb.append(adapter == null);
            Log.w(str, sb.toString());
            sendTetherResult(receiver, 2);
            return;
        }
        adapter.getProfileProxy(this.mContext, new BluetoothProfile.ServiceListener() {
            public void onServiceDisconnected(int profile) {
            }

            public void onServiceConnected(int profile, BluetoothProfile proxy) {
                int result;
                ((BluetoothPan) proxy).setBluetoothTethering(enable);
                if (((BluetoothPan) proxy).isTetheringOn() == enable) {
                    result = 0;
                } else {
                    result = 5;
                }
                Tethering.this.sendTetherResult(receiver, result);
                adapter.closeProfileProxy(5, proxy);
            }
        }, 5);
    }

    public int tether(String iface) {
        return tether(iface, 2);
    }

    private int tether(String iface, int requestedState) {
        synchronized (this.mPublicSync) {
            TetherState tetherState = this.mTetherStates.get(iface);
            if (tetherState == null) {
                String str = TAG;
                Log.e(str, "Tried to Tether an unknown iface: " + iface + ", ignoring");
                return 1;
            } else if (tetherState.lastState != 1) {
                String str2 = TAG;
                Log.e(str2, "Tried to Tether an unavailable iface: " + iface + ", ignoring");
                return 4;
            } else {
                tetherState.ipServer.sendMessage(IpServer.CMD_TETHER_REQUESTED, requestedState);
                return 0;
            }
        }
    }

    public int untether(String iface) {
        synchronized (this.mPublicSync) {
            TetherState tetherState = this.mTetherStates.get(iface);
            if (tetherState == null) {
                String str = TAG;
                Log.e(str, "Tried to Untether an unknown iface :" + iface + ", ignoring");
                return 1;
            } else if (!tetherState.isCurrentlyServing()) {
                String str2 = TAG;
                Log.e(str2, "Tried to untether an inactive iface :" + iface + ", ignoring");
                return 4;
            } else {
                tetherState.ipServer.sendMessage(IpServer.CMD_TETHER_UNREQUESTED);
                return 0;
            }
        }
    }

    public void untetherAll() {
        stopTethering(0);
        stopTethering(1);
        stopTethering(2);
    }

    public int getLastTetherError(String iface) {
        synchronized (this.mPublicSync) {
            TetherState tetherState = this.mTetherStates.get(iface);
            if (tetherState == null) {
                String str = TAG;
                Log.e(str, "Tried to getLastTetherError on an unknown iface :" + iface + ", ignoring");
                return 1;
            }
            int i = tetherState.lastError;
            return i;
        }
    }

    private void sendTetherStateChangedBroadcast() {
        if (this.mDeps.isTetheringSupported()) {
            ArrayList<String> availableList = new ArrayList<>();
            ArrayList<String> tetherList = new ArrayList<>();
            ArrayList<String> localOnlyList = new ArrayList<>();
            ArrayList<String> erroredList = new ArrayList<>();
            boolean wifiTethered = false;
            boolean usbTethered = false;
            boolean bluetoothTethered = false;
            TetheringConfiguration cfg = this.mConfig;
            synchronized (this.mPublicSync) {
                for (int i = 0; i < this.mTetherStates.size(); i++) {
                    TetherState tetherState = this.mTetherStates.valueAt(i);
                    String iface = this.mTetherStates.keyAt(i);
                    if (tetherState.lastError != 0) {
                        erroredList.add(iface);
                    } else if (tetherState.lastState == 1) {
                        availableList.add(iface);
                    } else if (tetherState.lastState == 3) {
                        localOnlyList.add(iface);
                    } else if (tetherState.lastState == 2) {
                        if (cfg.isUsb(iface)) {
                            usbTethered = true;
                        } else if (cfg.isWifi(iface)) {
                            wifiTethered = true;
                        } else if (cfg.isBluetooth(iface)) {
                            bluetoothTethered = true;
                        }
                        tetherList.add(iface);
                    }
                }
            }
            Intent bcast = new Intent("android.net.conn.TETHER_STATE_CHANGED");
            bcast.addFlags(603979776);
            bcast.putStringArrayListExtra("availableArray", availableList);
            bcast.putStringArrayListExtra("localOnlyArray", localOnlyList);
            bcast.putStringArrayListExtra("tetherArray", tetherList);
            bcast.putStringArrayListExtra("erroredArray", erroredList);
            this.mContext.sendStickyBroadcastAsUser(bcast, UserHandle.ALL);
            if (usbTethered) {
                if (wifiTethered || bluetoothTethered) {
                    showTetheredNotification(14);
                } else {
                    showTetheredNotification(15);
                }
            } else if (wifiTethered) {
                if (bluetoothTethered) {
                    showTetheredNotification(14);
                } else {
                    clearTetheredNotification();
                }
            } else if (bluetoothTethered) {
                showTetheredNotification(16);
            } else {
                clearTetheredNotification();
            }
        }
    }

    private void showTetheredNotification(int id) {
        showTetheredNotification(id, true);
    }

    /* access modifiers changed from: protected */
    @VisibleForTesting
    public void showTetheredNotification(int id, boolean tetheringOn) {
        int icon;
        CharSequence message;
        CharSequence title;
        NotificationManager notificationManager = (NotificationManager) this.mContext.getSystemService("notification");
        if (notificationManager != null) {
            if (id == 15) {
                icon = 17303635;
            } else if (id != 16) {
                icon = 17303634;
            } else {
                icon = 17303633;
            }
            int i = this.mLastNotificationId;
            if (i != 0) {
                if (i != icon) {
                    notificationManager.cancelAsUser((String) null, i, UserHandle.ALL);
                    this.mLastNotificationId = 0;
                } else {
                    return;
                }
            }
            Intent intent = new Intent();
            intent.setClassName("com.android.settings", "com.android.settings.TetherSettings");
            intent.setFlags(1073741824);
            PendingIntent pi = PendingIntent.getActivityAsUser(this.mContext, 0, intent, 0, (Bundle) null, UserHandle.CURRENT);
            Resources r = Resources.getSystem();
            if (tetheringOn) {
                title = r.getText(17041227);
                message = r.getText(17041223);
            } else {
                title = r.getText(17039904);
                message = r.getText(17039903);
            }
            if (this.mTetheredNotificationBuilder == null) {
                this.mTetheredNotificationBuilder = new Notification.Builder(this.mContext, SystemNotificationChannels.NETWORK_STATUS);
                this.mTetheredNotificationBuilder.setWhen(0).setOngoing(true).setColor(this.mContext.getColor(17170460)).setVisibility(1).setCategory("status");
            }
            this.mTetheredNotificationBuilder.setSmallIcon(icon).setContentTitle(title).setContentText(message).setContentIntent(pi);
            this.mLastNotificationId = id;
            TetheringInjector.setTetheredNotification(this.mContext, this.mTetheredNotificationBuilder);
            notificationManager.notifyAsUser((String) null, this.mLastNotificationId, this.mTetheredNotificationBuilder.buildInto(new Notification()), UserHandle.ALL);
        }
    }

    /* access modifiers changed from: protected */
    @VisibleForTesting
    public void clearTetheredNotification() {
        int i;
        NotificationManager notificationManager = (NotificationManager) this.mContext.getSystemService("notification");
        if (notificationManager != null && (i = this.mLastNotificationId) != 0) {
            notificationManager.cancelAsUser((String) null, i, UserHandle.ALL);
            this.mLastNotificationId = 0;
            TetheringInjector.notificationFinished(this.mContext);
        }
    }

    private class StateReceiver extends BroadcastReceiver {
        private StateReceiver() {
        }

        public void onReceive(Context content, Intent intent) {
            String action = intent.getAction();
            if (action != null) {
                if (action.equals("android.hardware.usb.action.USB_STATE")) {
                    handleUsbAction(intent);
                } else if (action.equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                    handleConnectivityAction(intent);
                } else if (action.equals("android.net.wifi.WIFI_AP_STATE_CHANGED")) {
                    handleWifiApAction(intent);
                } else if (action.equals("android.intent.action.CONFIGURATION_CHANGED")) {
                    Tethering.this.mLog.log("OBSERVED configuration changed");
                    Tethering.this.updateConfiguration();
                }
            }
        }

        private void handleConnectivityAction(Intent intent) {
            NetworkInfo networkInfo = (NetworkInfo) intent.getParcelableExtra("networkInfo");
            if (networkInfo != null && networkInfo.getDetailedState() != NetworkInfo.DetailedState.FAILED) {
                Tethering.this.mTetherMasterSM.sendMessage(327683);
            }
        }

        private void handleUsbAction(Intent intent) {
            boolean z = false;
            boolean usbConnected = intent.getBooleanExtra("connected", false);
            boolean usbConfigured = intent.getBooleanExtra("configured", false);
            boolean rndisEnabled = intent.getBooleanExtra("rndis", false);
            Tethering.this.mLog.log(String.format("USB bcast connected:%s configured:%s rndis:%s", new Object[]{Boolean.valueOf(usbConnected), Boolean.valueOf(usbConfigured), Boolean.valueOf(rndisEnabled)}));
            synchronized (Tethering.this.mPublicSync) {
                if (!usbConnected) {
                    try {
                        if (Tethering.this.mRndisEnabled) {
                            Tethering.this.tetherMatchingInterfaces(1, 1);
                            Tethering.this.mEntitlementMgr.stopProvisioningIfNeeded(1);
                            Tethering tethering = Tethering.this;
                            if (usbConfigured && rndisEnabled) {
                                z = true;
                            }
                            boolean unused = tethering.mRndisEnabled = z;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (usbConfigured && rndisEnabled) {
                    Tethering.this.tetherMatchingInterfaces(2, 1);
                }
                Tethering tethering2 = Tethering.this;
                z = true;
                boolean unused2 = tethering2.mRndisEnabled = z;
            }
        }

        private void handleWifiApAction(Intent intent) {
            int curState = intent.getIntExtra("wifi_state", 11);
            String ifname = intent.getStringExtra("wifi_ap_interface_name");
            int ipmode = intent.getIntExtra("wifi_ap_mode", -1);
            synchronized (Tethering.this.mPublicSync) {
                if (curState != 12) {
                    if (curState != 13) {
                        try {
                            Tethering.this.disableWifiIpServingLocked(ifname, curState);
                            Tethering.this.mEntitlementMgr.stopProvisioningIfNeeded(0);
                        } catch (Throwable th) {
                            throw th;
                        }
                    } else {
                        Tethering.this.enableWifiIpServingLocked(ifname, ipmode);
                    }
                }
            }
        }
    }

    @VisibleForTesting
    protected static class TetheringUserRestrictionListener implements UserManagerInternal.UserRestrictionsListener {
        private final Tethering mWrapper;

        public TetheringUserRestrictionListener(Tethering wrapper) {
            this.mWrapper = wrapper;
        }

        public void onUserRestrictionsChanged(int userId, Bundle newRestrictions, Bundle prevRestrictions) {
            boolean newlyDisallowed = newRestrictions.getBoolean("no_config_tethering");
            boolean isTetheringActiveOnDevice = true;
            if (newlyDisallowed != prevRestrictions.getBoolean("no_config_tethering")) {
                this.mWrapper.clearTetheredNotification();
                if (this.mWrapper.getTetheredIfaces().length == 0) {
                    isTetheringActiveOnDevice = false;
                }
                if (newlyDisallowed && isTetheringActiveOnDevice) {
                    this.mWrapper.showTetheredNotification(17303634, false);
                    this.mWrapper.untetherAll();
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public void disableWifiIpServingLocked(String ifname, int apState) {
        String str;
        TetherState ts;
        this.mLog.log("Canceling WiFi tethering request - AP_STATE=" + apState);
        this.mWifiTetherRequested = false;
        if (TextUtils.isEmpty(ifname) || (ts = this.mTetherStates.get(ifname)) == null) {
            for (int i = 0; i < this.mTetherStates.size(); i++) {
                IpServer ipServer = this.mTetherStates.valueAt(i).ipServer;
                if (ipServer.interfaceType() == 0) {
                    ipServer.unwanted();
                    return;
                }
            }
            SharedLog sharedLog = this.mLog;
            StringBuilder sb = new StringBuilder();
            sb.append("Error disabling Wi-Fi IP serving; ");
            if (TextUtils.isEmpty(ifname)) {
                str = "no interface name specified";
            } else {
                str = "specified interface: " + ifname;
            }
            sb.append(str);
            sharedLog.log(sb.toString());
            return;
        }
        ts.ipServer.unwanted();
    }

    /* access modifiers changed from: private */
    public void enableWifiIpServingLocked(String ifname, int wifiIpMode) {
        int ipServingMode;
        if (wifiIpMode == 1) {
            ipServingMode = 2;
        } else if (wifiIpMode != 2) {
            SharedLog sharedLog = this.mLog;
            sharedLog.e("Cannot enable IP serving in unknown WiFi mode: " + wifiIpMode);
            return;
        } else {
            ipServingMode = 3;
        }
        if (!TextUtils.isEmpty(ifname)) {
            maybeTrackNewInterfaceLocked(ifname, 0);
            changeInterfaceState(ifname, ipServingMode);
            return;
        }
        this.mLog.e(String.format("Cannot enable IP serving in mode %s on missing interface name", new Object[]{Integer.valueOf(ipServingMode)}));
    }

    /* access modifiers changed from: private */
    public void tetherMatchingInterfaces(int requestedState, int interfaceType) {
        try {
            String[] ifaces = this.mNMService.listInterfaces();
            String chosenIface = null;
            if (ifaces != null) {
                int length = ifaces.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    String iface = ifaces[i];
                    if (ifaceNameToType(iface) == interfaceType) {
                        chosenIface = iface;
                        break;
                    }
                    i++;
                }
            }
            if (chosenIface == null) {
                String str = TAG;
                Log.e(str, "could not find iface of type " + interfaceType);
                return;
            }
            changeInterfaceState(chosenIface, requestedState);
        } catch (Exception e) {
            Log.e(TAG, "Error listing Interfaces", e);
        }
    }

    private void changeInterfaceState(String ifname, int requestedState) {
        int result;
        if (requestedState == 0 || requestedState == 1) {
            result = untether(ifname);
        } else if (requestedState == 2 || requestedState == 3) {
            result = tether(ifname, requestedState);
        } else {
            String str = TAG;
            Log.wtf(str, "Unknown interface state: " + requestedState);
            return;
        }
        if (result != 0) {
            String str2 = TAG;
            Log.e(str2, "unable start or stop tethering on iface " + ifname);
        }
    }

    public TetheringConfiguration getTetheringConfiguration() {
        return this.mConfig;
    }

    public boolean hasTetherableConfiguration() {
        TetheringConfiguration cfg = this.mConfig;
        boolean hasDownstreamConfiguration = (cfg.tetherableUsbRegexs.length == 0 && cfg.tetherableWifiRegexs.length == 0 && cfg.tetherableBluetoothRegexs.length == 0) ? false : true;
        boolean hasUpstreamConfiguration = !cfg.preferredUpstreamIfaceTypes.isEmpty() || cfg.chooseUpstreamAutomatically;
        if (!hasDownstreamConfiguration || !hasUpstreamConfiguration) {
            return false;
        }
        return true;
    }

    public String[] getTetherableUsbRegexs() {
        return copy(this.mConfig.tetherableUsbRegexs);
    }

    public String[] getTetherableWifiRegexs() {
        return copy(this.mConfig.tetherableWifiRegexs);
    }

    public String[] getTetherableBluetoothRegexs() {
        return copy(this.mConfig.tetherableBluetoothRegexs);
    }

    public int setUsbTethering(boolean enable) {
        long j;
        UsbManager usbManager = (UsbManager) this.mContext.getSystemService("usb");
        if (usbManager == null) {
            this.mLog.e("setUsbTethering: failed to get UsbManager!");
            return 2;
        }
        synchronized (this.mPublicSync) {
            if (enable) {
                j = 32;
            } else {
                j = 0;
            }
            usbManager.setCurrentFunctions(j);
        }
        return 0;
    }

    public String[] getTetheredIfaces() {
        ArrayList<String> list = new ArrayList<>();
        synchronized (this.mPublicSync) {
            for (int i = 0; i < this.mTetherStates.size(); i++) {
                if (this.mTetherStates.valueAt(i).lastState == 2) {
                    list.add(this.mTetherStates.keyAt(i));
                }
            }
        }
        return (String[]) list.toArray(new String[list.size()]);
    }

    public String[] getTetherableIfaces() {
        ArrayList<String> list = new ArrayList<>();
        synchronized (this.mPublicSync) {
            for (int i = 0; i < this.mTetherStates.size(); i++) {
                if (this.mTetherStates.valueAt(i).lastState == 1) {
                    list.add(this.mTetherStates.keyAt(i));
                }
            }
        }
        return (String[]) list.toArray(new String[list.size()]);
    }

    public String[] getTetheredDhcpRanges() {
        return this.mConfig.legacyDhcpRanges;
    }

    public String[] getErroredIfaces() {
        ArrayList<String> list = new ArrayList<>();
        synchronized (this.mPublicSync) {
            for (int i = 0; i < this.mTetherStates.size(); i++) {
                if (this.mTetherStates.valueAt(i).lastError != 0) {
                    list.add(this.mTetherStates.keyAt(i));
                }
            }
        }
        return (String[]) list.toArray(new String[list.size()]);
    }

    /* access modifiers changed from: private */
    public void logMessage(State state, int what) {
        SharedLog sharedLog = this.mLog;
        sharedLog.log(state.getName() + " got " + sMagicDecoderRing.get(what, Integer.toString(what)));
    }

    /* access modifiers changed from: private */
    public boolean upstreamWanted() {
        boolean z;
        if (!this.mForwardedDownstreams.isEmpty()) {
            return true;
        }
        synchronized (this.mPublicSync) {
            z = this.mWifiTetherRequested;
        }
        return z;
    }

    /* access modifiers changed from: private */
    public boolean pertainsToCurrentUpstream(NetworkState ns) {
        if (ns == null || ns.linkProperties == null || this.mCurrentUpstreamIfaceSet == null) {
            return false;
        }
        for (String ifname : ns.linkProperties.getAllInterfaceNames()) {
            if (this.mCurrentUpstreamIfaceSet.ifnames.contains(ifname)) {
                return true;
            }
        }
        return false;
    }

    class TetherMasterSM extends StateMachine {
        private static final int BASE_MASTER = 327680;
        static final int CMD_CLEAR_ERROR = 327686;
        static final int CMD_RETRY_UPSTREAM = 327684;
        static final int CMD_UPSTREAM_CHANGED = 327683;
        static final int EVENT_IFACE_SERVING_STATE_ACTIVE = 327681;
        static final int EVENT_IFACE_SERVING_STATE_INACTIVE = 327682;
        static final int EVENT_IFACE_UPDATE_LINKPROPERTIES = 327687;
        static final int EVENT_UPSTREAM_CALLBACK = 327685;
        static final int EVENT_UPSTREAM_PERMISSION_CHANGED = 327688;
        private static final int UPSTREAM_SETTLE_TIME_MS = 10000;
        private final IPv6TetheringCoordinator mIPv6TetheringCoordinator;
        /* access modifiers changed from: private */
        public final State mInitialState = new InitialState();
        /* access modifiers changed from: private */
        public final ArrayList<IpServer> mNotifyList;
        /* access modifiers changed from: private */
        public final OffloadWrapper mOffload;
        private final State mSetDnsForwardersErrorState = new SetDnsForwardersErrorState();
        private final State mSetIpForwardingDisabledErrorState = new SetIpForwardingDisabledErrorState();
        private final State mSetIpForwardingEnabledErrorState = new SetIpForwardingEnabledErrorState();
        private final State mStartTetheringErrorState = new StartTetheringErrorState();
        private final State mStopTetheringErrorState = new StopTetheringErrorState();
        /* access modifiers changed from: private */
        public final State mTetherModeAliveState = new TetherModeAliveState();

        TetherMasterSM(String name, Looper looper, TetheringDependencies deps) {
            super(name, looper);
            addState(this.mInitialState);
            addState(this.mTetherModeAliveState);
            addState(this.mSetIpForwardingEnabledErrorState);
            addState(this.mSetIpForwardingDisabledErrorState);
            addState(this.mStartTetheringErrorState);
            addState(this.mStopTetheringErrorState);
            addState(this.mSetDnsForwardersErrorState);
            this.mNotifyList = new ArrayList<>();
            this.mIPv6TetheringCoordinator = deps.getIPv6TetheringCoordinator(this.mNotifyList, Tethering.this.mLog);
            this.mOffload = new OffloadWrapper();
            setInitialState(this.mInitialState);
        }

        class InitialState extends State {
            InitialState() {
            }

            public boolean processMessage(Message message) {
                Tethering.this.logMessage(this, message.what);
                switch (message.what) {
                    case TetherMasterSM.EVENT_IFACE_SERVING_STATE_ACTIVE /*327681*/:
                        TetherMasterSM.this.handleInterfaceServingStateActive(message.arg1, (IpServer) message.obj);
                        TetherMasterSM tetherMasterSM = TetherMasterSM.this;
                        tetherMasterSM.transitionTo(tetherMasterSM.mTetherModeAliveState);
                        return true;
                    case TetherMasterSM.EVENT_IFACE_SERVING_STATE_INACTIVE /*327682*/:
                        TetherMasterSM.this.handleInterfaceServingStateInactive((IpServer) message.obj);
                        return true;
                    case TetherMasterSM.EVENT_IFACE_UPDATE_LINKPROPERTIES /*327687*/:
                        return true;
                    default:
                        return false;
                }
            }
        }

        /* access modifiers changed from: protected */
        public boolean turnOnMasterTetherSettings() {
            String[] dhcpRanges;
            TetheringConfiguration cfg = Tethering.this.mConfig;
            try {
                Tethering.this.mNMService.setIpForwardingEnabled(true);
                if (cfg.enableLegacyDhcpServer) {
                    dhcpRanges = cfg.legacyDhcpRanges;
                } else {
                    dhcpRanges = new String[0];
                }
                try {
                    Tethering.this.mNMService.startTethering(dhcpRanges);
                } catch (Exception e) {
                    try {
                        Tethering.this.mNMService.stopTethering();
                        Tethering.this.mNMService.startTethering(dhcpRanges);
                    } catch (Exception ee) {
                        Tethering.this.mLog.e(ee);
                        transitionTo(this.mStartTetheringErrorState);
                        return false;
                    }
                }
                Tethering.this.mLog.log("SET master tether settings: ON");
                return true;
            } catch (Exception e2) {
                Tethering.this.mLog.e(e2);
                transitionTo(this.mSetIpForwardingEnabledErrorState);
                return false;
            }
        }

        /* access modifiers changed from: protected */
        public boolean turnOffMasterTetherSettings() {
            try {
                Tethering.this.mNMService.stopTethering();
                try {
                    Tethering.this.mNMService.setIpForwardingEnabled(false);
                    transitionTo(this.mInitialState);
                    Tethering.this.mLog.log("SET master tether settings: OFF");
                    return true;
                } catch (Exception e) {
                    Tethering.this.mLog.e(e);
                    transitionTo(this.mSetIpForwardingDisabledErrorState);
                    return false;
                }
            } catch (Exception e2) {
                Tethering.this.mLog.e(e2);
                transitionTo(this.mStopTetheringErrorState);
                return false;
            }
        }

        /* access modifiers changed from: protected */
        public void chooseUpstreamType(boolean tryCell) {
            NetworkState ns;
            Tethering.this.maybeDunSettingChanged();
            TetheringConfiguration config = Tethering.this.mConfig;
            if (config.chooseUpstreamAutomatically) {
                ns = Tethering.this.mUpstreamNetworkMonitor.getCurrentPreferredUpstream();
            } else {
                ns = Tethering.this.mUpstreamNetworkMonitor.selectPreferredUpstreamType(config.preferredUpstreamIfaceTypes);
            }
            if (ns == null) {
                if (tryCell) {
                    Tethering.this.mUpstreamNetworkMonitor.registerMobileNetworkRequest();
                } else {
                    sendMessageDelayed(CMD_RETRY_UPSTREAM, JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY);
                }
            }
            setUpstreamNetwork(ns);
            Network newUpstream = ns != null ? ns.network : null;
            if (Tethering.this.mTetherUpstream != newUpstream) {
                Network unused = Tethering.this.mTetherUpstream = newUpstream;
                Tethering.this.mUpstreamNetworkMonitor.setCurrentUpstream(Tethering.this.mTetherUpstream);
                Tethering tethering = Tethering.this;
                tethering.reportUpstreamChanged(tethering.mTetherUpstream);
            }
        }

        /* access modifiers changed from: protected */
        public void setUpstreamNetwork(NetworkState ns) {
            InterfaceSet ifaces = null;
            if (ns != null) {
                SharedLog access$200 = Tethering.this.mLog;
                access$200.i("Looking for default routes on: " + ns.linkProperties);
                ifaces = TetheringInterfaceUtils.getTetheringInterfaces(ns);
                SharedLog access$2002 = Tethering.this.mLog;
                access$2002.i("Found upstream interface(s): " + ifaces);
            }
            if (ifaces != null) {
                setDnsForwarders(ns.network, ns.linkProperties);
            }
            notifyDownstreamsOfNewUpstreamIface(ifaces);
            if (ns != null && Tethering.this.pertainsToCurrentUpstream(ns)) {
                handleNewUpstreamNetworkState(ns);
            } else if (Tethering.this.mCurrentUpstreamIfaceSet == null) {
                handleNewUpstreamNetworkState((NetworkState) null);
            }
        }

        /* access modifiers changed from: protected */
        public void setDnsForwarders(Network network, LinkProperties lp) {
            String[] dnsServers = Tethering.this.mConfig.defaultIPv4DNS;
            Collection<InetAddress> dnses = lp.getDnsServers();
            if (dnses != null && !dnses.isEmpty()) {
                dnsServers = NetworkUtils.makeStrings(dnses);
            }
            try {
                Tethering.this.mNMService.setDnsForwarders(network, dnsServers);
                Tethering.this.mLog.log(String.format("SET DNS forwarders: network=%s dnsServers=%s", new Object[]{network, Arrays.toString(dnsServers)}));
            } catch (Exception e) {
                SharedLog access$200 = Tethering.this.mLog;
                access$200.e("setting DNS forwarders failed, " + e);
                transitionTo(this.mSetDnsForwardersErrorState);
            }
        }

        /* access modifiers changed from: protected */
        public void notifyDownstreamsOfNewUpstreamIface(InterfaceSet ifaces) {
            InterfaceSet unused = Tethering.this.mCurrentUpstreamIfaceSet = ifaces;
            Iterator<IpServer> it = this.mNotifyList.iterator();
            while (it.hasNext()) {
                it.next().sendMessage(IpServer.CMD_TETHER_CONNECTION_CHANGED, ifaces);
            }
        }

        /* access modifiers changed from: protected */
        public void handleNewUpstreamNetworkState(NetworkState ns) {
            this.mIPv6TetheringCoordinator.updateUpstreamNetworkState(ns);
            this.mOffload.updateUpstreamNetworkState(ns);
        }

        /* access modifiers changed from: private */
        public void handleInterfaceServingStateActive(int mode, IpServer who) {
            if (this.mNotifyList.indexOf(who) < 0) {
                this.mNotifyList.add(who);
                this.mIPv6TetheringCoordinator.addActiveDownstream(who, mode);
            }
            if (mode == 2) {
                Tethering.this.mForwardedDownstreams.add(who);
            } else {
                this.mOffload.excludeDownstreamInterface(who.interfaceName());
                Tethering.this.mForwardedDownstreams.remove(who);
            }
            if (who.interfaceType() == 0) {
                WifiManager mgr = Tethering.this.getWifiManager();
                String iface = who.interfaceName();
                if (mode == 2) {
                    mgr.updateInterfaceIpState(iface, 1);
                } else if (mode != 3) {
                    String access$2500 = Tethering.TAG;
                    Log.wtf(access$2500, "Unknown active serving mode: " + mode);
                } else {
                    mgr.updateInterfaceIpState(iface, 2);
                }
            }
        }

        /* access modifiers changed from: private */
        public void handleInterfaceServingStateInactive(IpServer who) {
            this.mNotifyList.remove(who);
            this.mIPv6TetheringCoordinator.removeActiveDownstream(who);
            this.mOffload.excludeDownstreamInterface(who.interfaceName());
            Tethering.this.mForwardedDownstreams.remove(who);
            if (who.interfaceType() == 0 && who.lastError() != 0) {
                Tethering.this.getWifiManager().updateInterfaceIpState(who.interfaceName(), 0);
            }
        }

        /* access modifiers changed from: private */
        public void handleUpstreamNetworkMonitorCallback(int arg1, Object o) {
            if (arg1 == 10) {
                this.mOffload.sendOffloadExemptPrefixes((Set) o);
                return;
            }
            NetworkState ns = (NetworkState) o;
            if (ns == null || !Tethering.this.pertainsToCurrentUpstream(ns)) {
                if (Tethering.this.mCurrentUpstreamIfaceSet == null) {
                    chooseUpstreamType(false);
                }
            } else if (arg1 == 1) {
                handleNewUpstreamNetworkState(ns);
            } else if (arg1 == 2) {
                chooseUpstreamType(false);
            } else if (arg1 != 3) {
                SharedLog access$200 = Tethering.this.mLog;
                access$200.e("Unknown arg1 value: " + arg1);
            } else {
                handleNewUpstreamNetworkState((NetworkState) null);
            }
        }

        class TetherModeAliveState extends State {
            boolean mTryCell = true;
            boolean mUpstreamWanted = false;

            TetherModeAliveState() {
            }

            public void enter() {
                if (TetherMasterSM.this.turnOnMasterTetherSettings()) {
                    Tethering.this.mUpstreamNetworkMonitor.startObserveAllNetworks();
                    if (Tethering.this.upstreamWanted()) {
                        this.mUpstreamWanted = true;
                        TetherMasterSM.this.mOffload.start();
                        TetherMasterSM.this.chooseUpstreamType(true);
                        this.mTryCell = false;
                    }
                }
            }

            public void exit() {
                TetherMasterSM.this.mOffload.stop();
                Tethering.this.mUpstreamNetworkMonitor.stop();
                TetherMasterSM.this.notifyDownstreamsOfNewUpstreamIface((InterfaceSet) null);
                TetherMasterSM.this.handleNewUpstreamNetworkState((NetworkState) null);
                if (Tethering.this.mTetherUpstream != null) {
                    Network unused = Tethering.this.mTetherUpstream = null;
                    Tethering.this.reportUpstreamChanged((Network) null);
                }
            }

            private boolean updateUpstreamWanted() {
                boolean previousUpstreamWanted = this.mUpstreamWanted;
                this.mUpstreamWanted = Tethering.this.upstreamWanted();
                boolean z = this.mUpstreamWanted;
                if (z != previousUpstreamWanted) {
                    if (z) {
                        TetherMasterSM.this.mOffload.start();
                    } else {
                        TetherMasterSM.this.mOffload.stop();
                    }
                }
                return previousUpstreamWanted;
            }

            public boolean processMessage(Message message) {
                Tethering.this.logMessage(this, message.what);
                switch (message.what) {
                    case TetherMasterSM.EVENT_IFACE_SERVING_STATE_ACTIVE /*327681*/:
                        IpServer who = (IpServer) message.obj;
                        TetherMasterSM.this.handleInterfaceServingStateActive(message.arg1, who);
                        who.sendMessage(IpServer.CMD_TETHER_CONNECTION_CHANGED, Tethering.this.mCurrentUpstreamIfaceSet);
                        if (updateUpstreamWanted() || !this.mUpstreamWanted) {
                            return true;
                        }
                        TetherMasterSM.this.chooseUpstreamType(true);
                        return true;
                    case TetherMasterSM.EVENT_IFACE_SERVING_STATE_INACTIVE /*327682*/:
                        TetherMasterSM.this.handleInterfaceServingStateInactive((IpServer) message.obj);
                        if (TetherMasterSM.this.mNotifyList.isEmpty()) {
                            TetherMasterSM.this.turnOffMasterTetherSettings();
                            return true;
                        } else if (!updateUpstreamWanted() || this.mUpstreamWanted) {
                            return true;
                        } else {
                            Tethering.this.mUpstreamNetworkMonitor.releaseMobileNetworkRequest();
                            return true;
                        }
                    case TetherMasterSM.CMD_UPSTREAM_CHANGED /*327683*/:
                    case TetherMasterSM.EVENT_UPSTREAM_PERMISSION_CHANGED /*327688*/:
                        updateUpstreamWanted();
                        if (!this.mUpstreamWanted) {
                            return true;
                        }
                        TetherMasterSM.this.chooseUpstreamType(true);
                        this.mTryCell = false;
                        return true;
                    case TetherMasterSM.CMD_RETRY_UPSTREAM /*327684*/:
                        updateUpstreamWanted();
                        if (!this.mUpstreamWanted) {
                            return true;
                        }
                        TetherMasterSM.this.chooseUpstreamType(this.mTryCell);
                        this.mTryCell = !this.mTryCell;
                        return true;
                    case TetherMasterSM.EVENT_UPSTREAM_CALLBACK /*327685*/:
                        updateUpstreamWanted();
                        if (!this.mUpstreamWanted) {
                            return true;
                        }
                        TetherMasterSM.this.handleUpstreamNetworkMonitorCallback(message.arg1, message.obj);
                        return true;
                    case TetherMasterSM.EVENT_IFACE_UPDATE_LINKPROPERTIES /*327687*/:
                        LinkProperties newLp = (LinkProperties) message.obj;
                        if (message.arg1 == 2) {
                            TetherMasterSM.this.mOffload.updateDownstreamLinkProperties(newLp);
                            return true;
                        }
                        TetherMasterSM.this.mOffload.excludeDownstreamInterface(newLp.getInterfaceName());
                        return true;
                    default:
                        return false;
                }
            }
        }

        class ErrorState extends State {
            private int mErrorNotification;

            ErrorState() {
            }

            public boolean processMessage(Message message) {
                int i = message.what;
                if (i == TetherMasterSM.EVENT_IFACE_SERVING_STATE_ACTIVE) {
                    ((IpServer) message.obj).sendMessage(this.mErrorNotification);
                    return true;
                } else if (i != TetherMasterSM.CMD_CLEAR_ERROR) {
                    return false;
                } else {
                    this.mErrorNotification = 0;
                    TetherMasterSM tetherMasterSM = TetherMasterSM.this;
                    tetherMasterSM.transitionTo(tetherMasterSM.mInitialState);
                    return true;
                }
            }

            /* access modifiers changed from: package-private */
            public void notify(int msgType) {
                this.mErrorNotification = msgType;
                Iterator it = TetherMasterSM.this.mNotifyList.iterator();
                while (it.hasNext()) {
                    ((IpServer) it.next()).sendMessage(msgType);
                }
            }
        }

        class SetIpForwardingEnabledErrorState extends ErrorState {
            SetIpForwardingEnabledErrorState() {
                super();
            }

            public void enter() {
                Log.e(Tethering.TAG, "Error in setIpForwardingEnabled");
                notify(IpServer.CMD_IP_FORWARDING_ENABLE_ERROR);
            }
        }

        class SetIpForwardingDisabledErrorState extends ErrorState {
            SetIpForwardingDisabledErrorState() {
                super();
            }

            public void enter() {
                Log.e(Tethering.TAG, "Error in setIpForwardingDisabled");
                notify(IpServer.CMD_IP_FORWARDING_DISABLE_ERROR);
            }
        }

        class StartTetheringErrorState extends ErrorState {
            StartTetheringErrorState() {
                super();
            }

            public void enter() {
                Log.e(Tethering.TAG, "Error in startTethering");
                notify(IpServer.CMD_START_TETHERING_ERROR);
                try {
                    Tethering.this.mNMService.setIpForwardingEnabled(false);
                } catch (Exception e) {
                }
            }
        }

        class StopTetheringErrorState extends ErrorState {
            StopTetheringErrorState() {
                super();
            }

            public void enter() {
                Log.e(Tethering.TAG, "Error in stopTethering");
                notify(IpServer.CMD_STOP_TETHERING_ERROR);
                try {
                    Tethering.this.mNMService.setIpForwardingEnabled(false);
                } catch (Exception e) {
                }
            }
        }

        class SetDnsForwardersErrorState extends ErrorState {
            SetDnsForwardersErrorState() {
                super();
            }

            public void enter() {
                Log.e(Tethering.TAG, "Error in setDnsForwarders");
                notify(IpServer.CMD_SET_DNS_FORWARDERS_ERROR);
                try {
                    Tethering.this.mNMService.stopTethering();
                } catch (Exception e) {
                }
                try {
                    Tethering.this.mNMService.setIpForwardingEnabled(false);
                } catch (Exception e2) {
                }
            }
        }

        class OffloadWrapper {
            OffloadWrapper() {
            }

            public void start() {
                Tethering.this.mOffloadController.start();
                sendOffloadExemptPrefixes();
            }

            public void stop() {
                Tethering.this.mOffloadController.stop();
            }

            public void updateUpstreamNetworkState(NetworkState ns) {
                Tethering.this.mOffloadController.setUpstreamLinkProperties(ns != null ? ns.linkProperties : null);
            }

            public void updateDownstreamLinkProperties(LinkProperties newLp) {
                sendOffloadExemptPrefixes();
                Tethering.this.mOffloadController.notifyDownstreamLinkProperties(newLp);
            }

            public void excludeDownstreamInterface(String ifname) {
                sendOffloadExemptPrefixes();
                Tethering.this.mOffloadController.removeDownstreamInterface(ifname);
            }

            public void sendOffloadExemptPrefixes() {
                sendOffloadExemptPrefixes(Tethering.this.mUpstreamNetworkMonitor.getLocalPrefixes());
            }

            public void sendOffloadExemptPrefixes(Set<IpPrefix> localPrefixes) {
                PrefixUtils.addNonForwardablePrefixes(localPrefixes);
                localPrefixes.add(PrefixUtils.DEFAULT_WIFI_P2P_PREFIX);
                Iterator it = TetherMasterSM.this.mNotifyList.iterator();
                while (it.hasNext()) {
                    IpServer ipServer = (IpServer) it.next();
                    LinkProperties lp = ipServer.linkProperties();
                    int servingMode = ipServer.servingMode();
                    if (!(servingMode == 0 || servingMode == 1)) {
                        if (servingMode == 2) {
                            for (LinkAddress addr : lp.getAllLinkAddresses()) {
                                InetAddress ip = addr.getAddress();
                                if (!ip.isLinkLocalAddress()) {
                                    localPrefixes.add(PrefixUtils.ipAddressAsPrefix(ip));
                                }
                            }
                        } else if (servingMode == 3) {
                            localPrefixes.addAll(PrefixUtils.localPrefixesFrom(lp));
                        }
                    }
                }
                Tethering.this.mOffloadController.setLocalPrefixes(localPrefixes);
            }
        }
    }

    public void systemReady() {
        this.mUpstreamNetworkMonitor.startTrackDefaultNetwork(this.mDeps.getDefaultNetworkRequest(), this.mEntitlementMgr);
    }

    public void getLatestTetheringEntitlementResult(int type, ResultReceiver receiver, boolean showEntitlementUi) {
        if (receiver != null) {
            this.mEntitlementMgr.getLatestTetheringEntitlementResult(type, receiver, showEntitlementUi);
        }
    }

    public void registerTetheringEventCallback(ITetheringEventCallback callback) {
        this.mHandler.post(new Runnable(callback) {
            private final /* synthetic */ ITetheringEventCallback f$1;

            {
                this.f$1 = r2;
            }

            public final void run() {
                Tethering.this.lambda$registerTetheringEventCallback$4$Tethering(this.f$1);
            }
        });
    }

    public /* synthetic */ void lambda$registerTetheringEventCallback$4$Tethering(ITetheringEventCallback callback) {
        try {
            callback.onUpstreamChanged(this.mTetherUpstream);
        } catch (RemoteException e) {
        }
        this.mTetheringEventCallbacks.register(callback);
    }

    public void unregisterTetheringEventCallback(ITetheringEventCallback callback) {
        this.mHandler.post(new Runnable(callback) {
            private final /* synthetic */ ITetheringEventCallback f$1;

            {
                this.f$1 = r2;
            }

            public final void run() {
                Tethering.this.lambda$unregisterTetheringEventCallback$5$Tethering(this.f$1);
            }
        });
    }

    public /* synthetic */ void lambda$unregisterTetheringEventCallback$5$Tethering(ITetheringEventCallback callback) {
        this.mTetheringEventCallbacks.unregister(callback);
    }

    /* access modifiers changed from: private */
    public void reportUpstreamChanged(Network network) {
        int length = this.mTetheringEventCallbacks.beginBroadcast();
        for (int i = 0; i < length; i++) {
            try {
                this.mTetheringEventCallbacks.getBroadcastItem(i).onUpstreamChanged(network);
            } catch (RemoteException e) {
            } catch (Throwable th) {
                this.mTetheringEventCallbacks.finishBroadcast();
                throw th;
            }
        }
        this.mTetheringEventCallbacks.finishBroadcast();
    }

    public void dump(FileDescriptor fd, PrintWriter writer, String[] args) {
        IndentingPrintWriter pw = new IndentingPrintWriter(writer, "  ");
        if (DumpUtils.checkDumpPermission(this.mContext, TAG, pw)) {
            pw.println("Tethering:");
            pw.increaseIndent();
            pw.println("Configuration:");
            pw.increaseIndent();
            this.mConfig.dump(pw);
            pw.decreaseIndent();
            pw.println("Entitlement:");
            pw.increaseIndent();
            this.mEntitlementMgr.dump(pw);
            pw.decreaseIndent();
            synchronized (this.mPublicSync) {
                pw.println("Tether state:");
                pw.increaseIndent();
                for (int i = 0; i < this.mTetherStates.size(); i++) {
                    TetherState tetherState = this.mTetherStates.valueAt(i);
                    pw.print(this.mTetherStates.keyAt(i) + " - ");
                    int i2 = tetherState.lastState;
                    if (i2 == 0) {
                        pw.print("UnavailableState");
                    } else if (i2 == 1) {
                        pw.print("AvailableState");
                    } else if (i2 == 2) {
                        pw.print("TetheredState");
                    } else if (i2 != 3) {
                        pw.print("UnknownState");
                    } else {
                        pw.print("LocalHotspotState");
                    }
                    pw.println(" - lastError = " + tetherState.lastError);
                }
                pw.println("Upstream wanted: " + upstreamWanted());
                pw.println("Current upstream interface(s): " + this.mCurrentUpstreamIfaceSet);
                pw.decreaseIndent();
            }
            pw.println("Hardware offload:");
            pw.increaseIndent();
            this.mOffloadController.dump(pw);
            pw.decreaseIndent();
            pw.println("Log:");
            pw.increaseIndent();
            if (argsContain(args, ConnectivityService.SHORT_ARG)) {
                pw.println("<log removed for brevity>");
            } else {
                this.mLog.dump(fd, pw, args);
            }
            pw.decreaseIndent();
            pw.decreaseIndent();
        }
    }

    private static boolean argsContain(String[] args, String target) {
        for (String arg : args) {
            if (target.equals(arg)) {
                return true;
            }
        }
        return false;
    }

    private IpServer.Callback makeControlCallback() {
        return new IpServer.Callback() {
            public void updateInterfaceState(IpServer who, int state, int lastError) {
                Tethering.this.notifyInterfaceStateChange(who, state, lastError);
            }

            public void updateLinkProperties(IpServer who, LinkProperties newLp) {
                Tethering.this.notifyLinkPropertiesChanged(who, newLp);
            }
        };
    }

    /* access modifiers changed from: private */
    public void notifyInterfaceStateChange(IpServer who, int state, int error) {
        int which;
        String iface = who.interfaceName();
        synchronized (this.mPublicSync) {
            TetherState tetherState = this.mTetherStates.get(iface);
            if (tetherState != null && tetherState.ipServer.equals(who)) {
                tetherState.lastState = state;
                tetherState.lastError = error;
            }
        }
        this.mLog.log(String.format("OBSERVED iface=%s state=%s error=%s", new Object[]{iface, Integer.valueOf(state), Integer.valueOf(error)}));
        try {
            this.mPolicyManager.onTetheringChanged(iface, state == 2);
        } catch (RemoteException e) {
        }
        if (error == 5) {
            this.mTetherMasterSM.sendMessage(327686, who);
        }
        if (state == 0 || state == 1) {
            which = 327682;
        } else if (state == 2 || state == 3) {
            which = 327681;
        } else {
            String str = TAG;
            Log.wtf(str, "Unknown interface state: " + state);
            return;
        }
        this.mTetherMasterSM.sendMessage(which, state, 0, who);
        sendTetherStateChangedBroadcast();
    }

    /* access modifiers changed from: private */
    public void notifyLinkPropertiesChanged(IpServer who, LinkProperties newLp) {
        String iface = who.interfaceName();
        synchronized (this.mPublicSync) {
            TetherState tetherState = this.mTetherStates.get(iface);
            if (tetherState == null || !tetherState.ipServer.equals(who)) {
                SharedLog sharedLog = this.mLog;
                sharedLog.log("got notification from stale iface " + iface);
                return;
            }
            int state = tetherState.lastState;
            this.mLog.log(String.format("OBSERVED LinkProperties update iface=%s state=%s lp=%s", new Object[]{iface, IpServer.getStateString(state), newLp}));
            this.mTetherMasterSM.sendMessage(327687, state, 0, newLp);
        }
    }

    private void maybeTrackNewInterfaceLocked(String iface) {
        int interfaceType = ifaceNameToType(iface);
        if (interfaceType == -1) {
            SharedLog sharedLog = this.mLog;
            sharedLog.log(iface + " is not a tetherable iface, ignoring");
            return;
        }
        maybeTrackNewInterfaceLocked(iface, interfaceType);
    }

    private void maybeTrackNewInterfaceLocked(String iface, int interfaceType) {
        if (this.mTetherStates.containsKey(iface)) {
            SharedLog sharedLog = this.mLog;
            sharedLog.log("active iface (" + iface + ") reported as added, ignoring");
            return;
        }
        SharedLog sharedLog2 = this.mLog;
        sharedLog2.log("adding TetheringInterfaceStateMachine for: " + iface);
        TetherState tetherState = new TetherState(new IpServer(iface, this.mLooper, interfaceType, this.mLog, this.mNMService, this.mStatsService, makeControlCallback(), this.mConfig.enableLegacyDhcpServer, this.mDeps.getIpServerDependencies()));
        this.mTetherStates.put(iface, tetherState);
        tetherState.ipServer.start();
    }

    private void stopTrackingInterfaceLocked(String iface) {
        TetherState tetherState = this.mTetherStates.get(iface);
        if (tetherState == null) {
            SharedLog sharedLog = this.mLog;
            sharedLog.log("attempting to remove unknown iface (" + iface + "), ignoring");
            return;
        }
        tetherState.ipServer.stop();
        SharedLog sharedLog2 = this.mLog;
        sharedLog2.log("removing TetheringInterfaceStateMachine for: " + iface);
        this.mTetherStates.remove(iface);
    }

    private static String[] copy(String[] strarray) {
        return (String[]) Arrays.copyOf(strarray, strarray.length);
    }
}
