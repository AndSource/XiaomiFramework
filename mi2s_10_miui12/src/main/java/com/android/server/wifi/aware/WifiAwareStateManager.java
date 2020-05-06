package com.android.server.wifi.aware;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.wifi.V1_2.NanDataPathChannelInfo;
import android.location.LocationManager;
import android.net.wifi.WifiManager;
import android.net.wifi.aware.Characteristics;
import android.net.wifi.aware.ConfigRequest;
import android.net.wifi.aware.IWifiAwareDiscoverySessionCallback;
import android.net.wifi.aware.IWifiAwareEventCallback;
import android.net.wifi.aware.IWifiAwareMacAddressProvider;
import android.net.wifi.aware.PublishConfig;
import android.net.wifi.aware.SubscribeConfig;
import android.net.wifi.aware.WifiAwareNetworkSpecifier;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.ShellCommand;
import android.os.SystemClock;
import android.os.UserHandle;
import android.util.ArrayMap;
import android.util.Log;
import android.util.Pair;
import android.util.SparseArray;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.util.MessageUtils;
import com.android.internal.util.State;
import com.android.internal.util.StateMachine;
import com.android.internal.util.WakeupMessage;
import com.android.server.wifi.Clock;
import com.android.server.wifi.aware.WifiAwareDiscoverySessionState;
import com.android.server.wifi.aware.WifiAwareShellCommand;
import com.android.server.wifi.hotspot2.anqp.Constants;
import com.android.server.wifi.util.WifiPermissionsUtil;
import com.android.server.wifi.util.WifiPermissionsWrapper;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class WifiAwareStateManager implements WifiAwareShellCommand.DelegatedShellCommand {
    private static final byte[] ALL_ZERO_MAC = {0, 0, 0, 0, 0, 0};
    private static final int COMMAND_TYPE_CONNECT = 100;
    private static final int COMMAND_TYPE_CREATE_ALL_DATA_PATH_INTERFACES = 112;
    private static final int COMMAND_TYPE_CREATE_DATA_PATH_INTERFACE = 114;
    private static final int COMMAND_TYPE_DELAYED_INITIALIZATION = 121;
    private static final int COMMAND_TYPE_DELETE_ALL_DATA_PATH_INTERFACES = 113;
    private static final int COMMAND_TYPE_DELETE_DATA_PATH_INTERFACE = 115;
    private static final int COMMAND_TYPE_DISABLE_USAGE = 109;
    private static final int COMMAND_TYPE_DISCONNECT = 101;
    private static final int COMMAND_TYPE_ENABLE_USAGE = 108;
    private static final int COMMAND_TYPE_END_DATA_PATH = 118;
    private static final int COMMAND_TYPE_ENQUEUE_SEND_MESSAGE = 107;
    private static final int COMMAND_TYPE_GET_AWARE = 122;
    private static final int COMMAND_TYPE_GET_CAPABILITIES = 111;
    private static final int COMMAND_TYPE_INITIATE_DATA_PATH_SETUP = 116;
    private static final int COMMAND_TYPE_PUBLISH = 103;
    private static final int COMMAND_TYPE_RECONFIGURE = 120;
    private static final int COMMAND_TYPE_RELEASE_AWARE = 123;
    private static final int COMMAND_TYPE_RESPOND_TO_DATA_PATH_SETUP_REQUEST = 117;
    private static final int COMMAND_TYPE_SUBSCRIBE = 105;
    private static final int COMMAND_TYPE_TERMINATE_SESSION = 102;
    private static final int COMMAND_TYPE_TRANSMIT_NEXT_MESSAGE = 119;
    private static final int COMMAND_TYPE_UPDATE_PUBLISH = 104;
    private static final int COMMAND_TYPE_UPDATE_SUBSCRIBE = 106;
    @VisibleForTesting
    public static final String HAL_COMMAND_TIMEOUT_TAG = "WifiAwareStateManager HAL Command Timeout";
    @VisibleForTesting
    public static final String HAL_DATA_PATH_CONFIRM_TIMEOUT_TAG = "WifiAwareStateManager HAL Data Path Confirm Timeout";
    @VisibleForTesting
    public static final String HAL_SEND_MESSAGE_TIMEOUT_TAG = "WifiAwareStateManager HAL Send Message Timeout";
    private static final String MESSAGE_BUNDLE_KEY_APP_INFO = "app_info";
    private static final String MESSAGE_BUNDLE_KEY_CALLING_PACKAGE = "calling_package";
    private static final String MESSAGE_BUNDLE_KEY_CHANNEL = "channel";
    private static final String MESSAGE_BUNDLE_KEY_CHANNEL_REQ_TYPE = "channel_request_type";
    private static final String MESSAGE_BUNDLE_KEY_CONFIG = "config";
    private static final String MESSAGE_BUNDLE_KEY_FILTER_DATA = "filter_data";
    private static final String MESSAGE_BUNDLE_KEY_INTERFACE_NAME = "interface_name";
    private static final String MESSAGE_BUNDLE_KEY_MAC_ADDRESS = "mac_address";
    private static final String MESSAGE_BUNDLE_KEY_MESSAGE = "message";
    private static final String MESSAGE_BUNDLE_KEY_MESSAGE_ARRIVAL_SEQ = "message_arrival_seq";
    private static final String MESSAGE_BUNDLE_KEY_MESSAGE_DATA = "message_data";
    private static final String MESSAGE_BUNDLE_KEY_MESSAGE_ID = "message_id";
    private static final String MESSAGE_BUNDLE_KEY_MESSAGE_PEER_ID = "message_peer_id";
    private static final String MESSAGE_BUNDLE_KEY_NDP_IDS = "ndp_ids";
    private static final String MESSAGE_BUNDLE_KEY_NOTIFY_IDENTITY_CHANGE = "notify_identity_chg";
    private static final String MESSAGE_BUNDLE_KEY_OOB = "out_of_band";
    private static final String MESSAGE_BUNDLE_KEY_PASSPHRASE = "passphrase";
    private static final String MESSAGE_BUNDLE_KEY_PEER_ID = "peer_id";
    private static final String MESSAGE_BUNDLE_KEY_PID = "pid";
    private static final String MESSAGE_BUNDLE_KEY_PMK = "pmk";
    private static final String MESSAGE_BUNDLE_KEY_REQ_INSTANCE_ID = "req_instance_id";
    private static final String MESSAGE_BUNDLE_KEY_RETRY_COUNT = "retry_count";
    private static final String MESSAGE_BUNDLE_KEY_SEND_MESSAGE_ENQUEUE_TIME = "message_queue_time";
    private static final String MESSAGE_BUNDLE_KEY_SENT_MESSAGE = "send_message";
    private static final String MESSAGE_BUNDLE_KEY_SESSION_ID = "session_id";
    private static final String MESSAGE_BUNDLE_KEY_SESSION_TYPE = "session_type";
    private static final String MESSAGE_BUNDLE_KEY_SSI_DATA = "ssi_data";
    private static final String MESSAGE_BUNDLE_KEY_STATUS_CODE = "status_code";
    private static final String MESSAGE_BUNDLE_KEY_SUCCESS_FLAG = "success_flag";
    private static final String MESSAGE_BUNDLE_KEY_UID = "uid";
    private static final String MESSAGE_RANGE_MM = "range_mm";
    private static final String MESSAGE_RANGING_INDICATION = "ranging_indication";
    private static final int MESSAGE_TYPE_COMMAND = 1;
    private static final int MESSAGE_TYPE_DATA_PATH_TIMEOUT = 6;
    private static final int MESSAGE_TYPE_NOTIFICATION = 3;
    private static final int MESSAGE_TYPE_RESPONSE = 2;
    private static final int MESSAGE_TYPE_RESPONSE_TIMEOUT = 4;
    private static final int MESSAGE_TYPE_SEND_MESSAGE_TIMEOUT = 5;
    private static final int NOTIFICATION_TYPE_AWARE_DOWN = 306;
    private static final int NOTIFICATION_TYPE_CLUSTER_CHANGE = 302;
    private static final int NOTIFICATION_TYPE_INTERFACE_CHANGE = 301;
    private static final int NOTIFICATION_TYPE_MATCH = 303;
    private static final int NOTIFICATION_TYPE_MESSAGE_RECEIVED = 305;
    private static final int NOTIFICATION_TYPE_ON_DATA_PATH_CONFIRM = 310;
    private static final int NOTIFICATION_TYPE_ON_DATA_PATH_END = 311;
    private static final int NOTIFICATION_TYPE_ON_DATA_PATH_REQUEST = 309;
    private static final int NOTIFICATION_TYPE_ON_DATA_PATH_SCHED_UPDATE = 312;
    private static final int NOTIFICATION_TYPE_ON_MESSAGE_SEND_FAIL = 308;
    private static final int NOTIFICATION_TYPE_ON_MESSAGE_SEND_SUCCESS = 307;
    private static final int NOTIFICATION_TYPE_SESSION_TERMINATED = 304;
    public static final String PARAM_ON_IDLE_DISABLE_AWARE = "on_idle_disable_aware";
    public static final int PARAM_ON_IDLE_DISABLE_AWARE_DEFAULT = 1;
    private static final int RESPONSE_TYPE_ON_CAPABILITIES_UPDATED = 206;
    private static final int RESPONSE_TYPE_ON_CONFIG_FAIL = 201;
    private static final int RESPONSE_TYPE_ON_CONFIG_SUCCESS = 200;
    private static final int RESPONSE_TYPE_ON_CREATE_INTERFACE = 207;
    private static final int RESPONSE_TYPE_ON_DELETE_INTERFACE = 208;
    private static final int RESPONSE_TYPE_ON_DISABLE = 213;
    private static final int RESPONSE_TYPE_ON_END_DATA_PATH = 212;
    private static final int RESPONSE_TYPE_ON_INITIATE_DATA_PATH_FAIL = 210;
    private static final int RESPONSE_TYPE_ON_INITIATE_DATA_PATH_SUCCESS = 209;
    private static final int RESPONSE_TYPE_ON_MESSAGE_SEND_QUEUED_FAIL = 205;
    private static final int RESPONSE_TYPE_ON_MESSAGE_SEND_QUEUED_SUCCESS = 204;
    private static final int RESPONSE_TYPE_ON_RESPOND_TO_DATA_PATH_SETUP_REQUEST = 211;
    private static final int RESPONSE_TYPE_ON_SESSION_CONFIG_FAIL = 203;
    private static final int RESPONSE_TYPE_ON_SESSION_CONFIG_SUCCESS = 202;
    private static final String TAG = "WifiAwareStateManager";
    private static final boolean VDBG = false;
    private static final boolean VVDBG = false;
    private static final SparseArray<String> sSmToString = MessageUtils.findMessageNames(new Class[]{WifiAwareStateManager.class}, new String[]{"MESSAGE_TYPE", "COMMAND_TYPE", "RESPONSE_TYPE", "NOTIFICATION_TYPE"});
    private WifiAwareMetrics mAwareMetrics;
    /* access modifiers changed from: private */
    public volatile Capabilities mCapabilities;
    private volatile Characteristics mCharacteristics = null;
    private final SparseArray<WifiAwareClientState> mClients = new SparseArray<>();
    /* access modifiers changed from: private */
    public Context mContext;
    private ConfigRequest mCurrentAwareConfiguration = null;
    private byte[] mCurrentDiscoveryInterfaceMac = ALL_ZERO_MAC;
    private boolean mCurrentIdentityNotification = false;
    public WifiAwareDataPathStateManager mDataPathMgr;
    boolean mDbg = false;
    private LocationManager mLocationManager;
    /* access modifiers changed from: private */
    public PowerManager mPowerManager;
    /* access modifiers changed from: private */
    public Map<String, Integer> mSettableParameters = new HashMap();
    private WifiAwareStateMachine mSm;
    private volatile boolean mUsageEnabled = false;
    /* access modifiers changed from: private */
    public WifiAwareNativeApi mWifiAwareNativeApi;
    /* access modifiers changed from: private */
    public WifiAwareNativeManager mWifiAwareNativeManager;
    private WifiManager mWifiManager;
    private WifiPermissionsUtil mWifiPermissionsUtil;

    public WifiAwareStateManager() {
        onReset();
    }

    public void setNative(WifiAwareNativeManager wifiAwareNativeManager, WifiAwareNativeApi wifiAwareNativeApi) {
        this.mWifiAwareNativeManager = wifiAwareNativeManager;
        this.mWifiAwareNativeApi = wifiAwareNativeApi;
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int onCommand(android.os.ShellCommand r12) {
        /*
            r11 = this;
            java.io.PrintWriter r0 = r12.getErrPrintWriter()
            java.io.PrintWriter r1 = r12.getOutPrintWriter()
            java.lang.String r2 = r12.getNextArgRequired()
            int r3 = r2.hashCode()
            r4 = 3
            r5 = 2
            r6 = 1
            r7 = 0
            r8 = -1
            switch(r3) {
                case -1212873217: goto L_0x0037;
                case 102230: goto L_0x002d;
                case 113762: goto L_0x0023;
                case 1060304561: goto L_0x0019;
                default: goto L_0x0018;
            }
        L_0x0018:
            goto L_0x0041
        L_0x0019:
            java.lang.String r3 = "allow_ndp_any"
            boolean r3 = r2.equals(r3)
            if (r3 == 0) goto L_0x0018
            r3 = r4
            goto L_0x0042
        L_0x0023:
            java.lang.String r3 = "set"
            boolean r3 = r2.equals(r3)
            if (r3 == 0) goto L_0x0018
            r3 = r7
            goto L_0x0042
        L_0x002d:
            java.lang.String r3 = "get"
            boolean r3 = r2.equals(r3)
            if (r3 == 0) goto L_0x0018
            r3 = r6
            goto L_0x0042
        L_0x0037:
            java.lang.String r3 = "get_capabilities"
            boolean r3 = r2.equals(r3)
            if (r3 == 0) goto L_0x0018
            r3 = r5
            goto L_0x0042
        L_0x0041:
            r3 = r8
        L_0x0042:
            java.lang.String r9 = "Unknown parameter name -- '"
            java.lang.String r10 = "'"
            if (r3 == 0) goto L_0x016d
            if (r3 == r6) goto L_0x013b
            if (r3 == r5) goto L_0x0094
            if (r3 == r4) goto L_0x004f
            goto L_0x0076
        L_0x004f:
            java.lang.String r3 = r12.getNextArgRequired()
            com.android.server.wifi.aware.WifiAwareDataPathStateManager r4 = r11.mDataPathMgr
            if (r4 != 0) goto L_0x005d
            java.lang.String r4 = "Null Aware data-path manager - can't configure"
            r0.println(r4)
            return r8
        L_0x005d:
            java.lang.String r4 = "true"
            boolean r4 = android.text.TextUtils.equals(r4, r3)
            if (r4 == 0) goto L_0x006a
            com.android.server.wifi.aware.WifiAwareDataPathStateManager r4 = r11.mDataPathMgr
            r4.mAllowNdpResponderFromAnyOverride = r6
            goto L_0x0076
        L_0x006a:
            java.lang.String r4 = "false"
            boolean r4 = android.text.TextUtils.equals(r4, r3)
            if (r4 == 0) goto L_0x007c
            com.android.server.wifi.aware.WifiAwareDataPathStateManager r4 = r11.mDataPathMgr
            r4.mAllowNdpResponderFromAnyOverride = r7
        L_0x0076:
            java.lang.String r3 = "Unknown 'wifiaware state_mgr <cmd>'"
            r0.println(r3)
            return r8
        L_0x007c:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = "Unknown configuration flag for 'allow_ndp_any' - true|false expected -- '"
            r4.append(r5)
            r4.append(r3)
            r4.append(r10)
            java.lang.String r4 = r4.toString()
            r0.println(r4)
            return r8
        L_0x0094:
            org.json.JSONObject r3 = new org.json.JSONObject
            r3.<init>()
            com.android.server.wifi.aware.Capabilities r4 = r11.mCapabilities
            if (r4 == 0) goto L_0x0133
            java.lang.String r4 = "maxConcurrentAwareClusters"
            com.android.server.wifi.aware.Capabilities r5 = r11.mCapabilities     // Catch:{ JSONException -> 0x011c }
            int r5 = r5.maxConcurrentAwareClusters     // Catch:{ JSONException -> 0x011c }
            r3.put(r4, r5)     // Catch:{ JSONException -> 0x011c }
            java.lang.String r4 = "maxPublishes"
            com.android.server.wifi.aware.Capabilities r5 = r11.mCapabilities     // Catch:{ JSONException -> 0x011c }
            int r5 = r5.maxPublishes     // Catch:{ JSONException -> 0x011c }
            r3.put(r4, r5)     // Catch:{ JSONException -> 0x011c }
            java.lang.String r4 = "maxSubscribes"
            com.android.server.wifi.aware.Capabilities r5 = r11.mCapabilities     // Catch:{ JSONException -> 0x011c }
            int r5 = r5.maxSubscribes     // Catch:{ JSONException -> 0x011c }
            r3.put(r4, r5)     // Catch:{ JSONException -> 0x011c }
            java.lang.String r4 = "maxServiceNameLen"
            com.android.server.wifi.aware.Capabilities r5 = r11.mCapabilities     // Catch:{ JSONException -> 0x011c }
            int r5 = r5.maxServiceNameLen     // Catch:{ JSONException -> 0x011c }
            r3.put(r4, r5)     // Catch:{ JSONException -> 0x011c }
            java.lang.String r4 = "maxMatchFilterLen"
            com.android.server.wifi.aware.Capabilities r5 = r11.mCapabilities     // Catch:{ JSONException -> 0x011c }
            int r5 = r5.maxMatchFilterLen     // Catch:{ JSONException -> 0x011c }
            r3.put(r4, r5)     // Catch:{ JSONException -> 0x011c }
            java.lang.String r4 = "maxTotalMatchFilterLen"
            com.android.server.wifi.aware.Capabilities r5 = r11.mCapabilities     // Catch:{ JSONException -> 0x011c }
            int r5 = r5.maxTotalMatchFilterLen     // Catch:{ JSONException -> 0x011c }
            r3.put(r4, r5)     // Catch:{ JSONException -> 0x011c }
            java.lang.String r4 = "maxServiceSpecificInfoLen"
            com.android.server.wifi.aware.Capabilities r5 = r11.mCapabilities     // Catch:{ JSONException -> 0x011c }
            int r5 = r5.maxServiceSpecificInfoLen     // Catch:{ JSONException -> 0x011c }
            r3.put(r4, r5)     // Catch:{ JSONException -> 0x011c }
            java.lang.String r4 = "maxExtendedServiceSpecificInfoLen"
            com.android.server.wifi.aware.Capabilities r5 = r11.mCapabilities     // Catch:{ JSONException -> 0x011c }
            int r5 = r5.maxExtendedServiceSpecificInfoLen     // Catch:{ JSONException -> 0x011c }
            r3.put(r4, r5)     // Catch:{ JSONException -> 0x011c }
            java.lang.String r4 = "maxNdiInterfaces"
            com.android.server.wifi.aware.Capabilities r5 = r11.mCapabilities     // Catch:{ JSONException -> 0x011c }
            int r5 = r5.maxNdiInterfaces     // Catch:{ JSONException -> 0x011c }
            r3.put(r4, r5)     // Catch:{ JSONException -> 0x011c }
            java.lang.String r4 = "maxNdpSessions"
            com.android.server.wifi.aware.Capabilities r5 = r11.mCapabilities     // Catch:{ JSONException -> 0x011c }
            int r5 = r5.maxNdpSessions     // Catch:{ JSONException -> 0x011c }
            r3.put(r4, r5)     // Catch:{ JSONException -> 0x011c }
            java.lang.String r4 = "maxAppInfoLen"
            com.android.server.wifi.aware.Capabilities r5 = r11.mCapabilities     // Catch:{ JSONException -> 0x011c }
            int r5 = r5.maxAppInfoLen     // Catch:{ JSONException -> 0x011c }
            r3.put(r4, r5)     // Catch:{ JSONException -> 0x011c }
            java.lang.String r4 = "maxQueuedTransmitMessages"
            com.android.server.wifi.aware.Capabilities r5 = r11.mCapabilities     // Catch:{ JSONException -> 0x011c }
            int r5 = r5.maxQueuedTransmitMessages     // Catch:{ JSONException -> 0x011c }
            r3.put(r4, r5)     // Catch:{ JSONException -> 0x011c }
            java.lang.String r4 = "maxSubscribeInterfaceAddresses"
            com.android.server.wifi.aware.Capabilities r5 = r11.mCapabilities     // Catch:{ JSONException -> 0x011c }
            int r5 = r5.maxSubscribeInterfaceAddresses     // Catch:{ JSONException -> 0x011c }
            r3.put(r4, r5)     // Catch:{ JSONException -> 0x011c }
            java.lang.String r4 = "supportedCipherSuites"
            com.android.server.wifi.aware.Capabilities r5 = r11.mCapabilities     // Catch:{ JSONException -> 0x011c }
            int r5 = r5.supportedCipherSuites     // Catch:{ JSONException -> 0x011c }
            r3.put(r4, r5)     // Catch:{ JSONException -> 0x011c }
            goto L_0x0133
        L_0x011c:
            r4 = move-exception
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "onCommand: get_capabilities e="
            r5.append(r6)
            r5.append(r4)
            java.lang.String r5 = r5.toString()
            java.lang.String r6 = "WifiAwareStateManager"
            android.util.Log.e(r6, r5)
        L_0x0133:
            java.lang.String r4 = r3.toString()
            r1.println(r4)
            return r7
        L_0x013b:
            java.lang.String r3 = r12.getNextArgRequired()
            java.util.Map<java.lang.String, java.lang.Integer> r4 = r11.mSettableParameters
            boolean r4 = r4.containsKey(r3)
            if (r4 != 0) goto L_0x015d
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            r4.append(r9)
            r4.append(r3)
            r4.append(r10)
            java.lang.String r4 = r4.toString()
            r0.println(r4)
            return r8
        L_0x015d:
            java.util.Map<java.lang.String, java.lang.Integer> r4 = r11.mSettableParameters
            java.lang.Object r4 = r4.get(r3)
            java.lang.Integer r4 = (java.lang.Integer) r4
            int r4 = r4.intValue()
            r1.println(r4)
            return r7
        L_0x016d:
            java.lang.String r3 = r12.getNextArgRequired()
            java.util.Map<java.lang.String, java.lang.Integer> r4 = r11.mSettableParameters
            boolean r4 = r4.containsKey(r3)
            if (r4 != 0) goto L_0x018f
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            r4.append(r9)
            r4.append(r3)
            r4.append(r10)
            java.lang.String r4 = r4.toString()
            r0.println(r4)
            return r8
        L_0x018f:
            java.lang.String r4 = r12.getNextArgRequired()
            java.lang.Integer r5 = java.lang.Integer.valueOf(r4)     // Catch:{ NumberFormatException -> 0x01a6 }
            int r5 = r5.intValue()     // Catch:{ NumberFormatException -> 0x01a6 }
            java.util.Map<java.lang.String, java.lang.Integer> r6 = r11.mSettableParameters
            java.lang.Integer r8 = java.lang.Integer.valueOf(r5)
            r6.put(r3, r8)
            return r7
        L_0x01a6:
            r5 = move-exception
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = "Can't convert value to integer -- '"
            r6.append(r7)
            r6.append(r4)
            r6.append(r10)
            java.lang.String r6 = r6.toString()
            r0.println(r6)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.wifi.aware.WifiAwareStateManager.onCommand(android.os.ShellCommand):int");
    }

    public void onReset() {
        this.mSettableParameters.put(PARAM_ON_IDLE_DISABLE_AWARE, 1);
        WifiAwareDataPathStateManager wifiAwareDataPathStateManager = this.mDataPathMgr;
        if (wifiAwareDataPathStateManager != null) {
            wifiAwareDataPathStateManager.mAllowNdpResponderFromAnyOverride = false;
        }
    }

    public void onHelp(String command, ShellCommand parentShell) {
        PrintWriter pw = parentShell.getOutPrintWriter();
        pw.println("  " + command);
        pw.println("    set <name> <value>: sets named parameter to value. Names: " + this.mSettableParameters.keySet());
        pw.println("    get <name>: gets named parameter value. Names: " + this.mSettableParameters.keySet());
        pw.println("    get_capabilities: prints out the capabilities as a JSON string");
        pw.println("    allow_ndp_any true|false: configure whether Responders can be specified to accept requests from ANY requestor (null peer spec)");
    }

    public void start(Context context, Looper looper, WifiAwareMetrics awareMetrics, final WifiPermissionsUtil wifiPermissionsUtil, WifiPermissionsWrapper permissionsWrapper, Clock clock) {
        Log.i(TAG, "start()");
        this.mContext = context;
        this.mAwareMetrics = awareMetrics;
        this.mWifiPermissionsUtil = wifiPermissionsUtil;
        this.mSm = new WifiAwareStateMachine(TAG, looper);
        this.mSm.setDbg(false);
        this.mSm.start();
        this.mDataPathMgr = new WifiAwareDataPathStateManager(this, clock);
        this.mDataPathMgr.start(this.mContext, this.mSm.getHandler().getLooper(), awareMetrics, wifiPermissionsUtil, permissionsWrapper);
        this.mPowerManager = (PowerManager) this.mContext.getSystemService(PowerManager.class);
        this.mLocationManager = (LocationManager) this.mContext.getSystemService("location");
        this.mWifiManager = (WifiManager) this.mContext.getSystemService("wifi");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.os.action.DEVICE_IDLE_MODE_CHANGED");
        this.mContext.registerReceiver(new BroadcastReceiver() {
            public void onReceive(Context context, Intent intent) {
                String action = intent.getAction();
                if (action.equals("android.intent.action.SCREEN_ON") || action.equals("android.intent.action.SCREEN_OFF")) {
                    WifiAwareStateManager.this.reconfigure();
                }
                if (!action.equals("android.os.action.DEVICE_IDLE_MODE_CHANGED")) {
                    return;
                }
                if (((Integer) WifiAwareStateManager.this.mSettableParameters.get(WifiAwareStateManager.PARAM_ON_IDLE_DISABLE_AWARE)).intValue() == 0) {
                    WifiAwareStateManager.this.reconfigure();
                } else if (WifiAwareStateManager.this.mPowerManager.isDeviceIdleMode()) {
                    WifiAwareStateManager.this.disableUsage();
                } else {
                    WifiAwareStateManager.this.enableUsage();
                }
            }
        }, intentFilter);
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("android.location.MODE_CHANGED");
        this.mContext.registerReceiver(new BroadcastReceiver() {
            public void onReceive(Context context, Intent intent) {
                if (WifiAwareStateManager.this.mDbg) {
                    Log.v(WifiAwareStateManager.TAG, "onReceive: MODE_CHANGED_ACTION: intent=" + intent);
                }
                if (wifiPermissionsUtil.isLocationModeEnabled()) {
                    WifiAwareStateManager.this.enableUsage();
                } else {
                    WifiAwareStateManager.this.disableUsage();
                }
            }
        }, intentFilter2);
        IntentFilter intentFilter3 = new IntentFilter();
        intentFilter3.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        this.mContext.registerReceiver(new BroadcastReceiver() {
            public void onReceive(Context context, Intent intent) {
                if (intent.getIntExtra("wifi_state", 4) == 3) {
                    WifiAwareStateManager.this.enableUsage();
                } else {
                    WifiAwareStateManager.this.disableUsage();
                }
            }
        }, intentFilter3);
    }

    public void startLate() {
        delayedInitialization();
    }

    /* access modifiers changed from: package-private */
    public WifiAwareClientState getClient(int clientId) {
        return this.mClients.get(clientId);
    }

    public Capabilities getCapabilities() {
        return this.mCapabilities;
    }

    public Characteristics getCharacteristics() {
        if (this.mCharacteristics == null && this.mCapabilities != null) {
            this.mCharacteristics = this.mCapabilities.toPublicCharacteristics();
        }
        return this.mCharacteristics;
    }

    public void requestMacAddresses(int uid, List<Integer> peerIds, IWifiAwareMacAddressProvider callback) {
        this.mSm.getHandler().post(new Runnable(uid, peerIds, callback) {
            private final /* synthetic */ int f$1;
            private final /* synthetic */ List f$2;
            private final /* synthetic */ IWifiAwareMacAddressProvider f$3;

            {
                this.f$1 = r2;
                this.f$2 = r3;
                this.f$3 = r4;
            }

            public final void run() {
                WifiAwareStateManager.this.lambda$requestMacAddresses$0$WifiAwareStateManager(this.f$1, this.f$2, this.f$3);
            }
        });
    }

    public /* synthetic */ void lambda$requestMacAddresses$0$WifiAwareStateManager(int uid, List peerIds, IWifiAwareMacAddressProvider callback) {
        Map<Integer, byte[]> peerIdToMacMap = new HashMap<>();
        for (int i = 0; i < this.mClients.size(); i++) {
            WifiAwareClientState client = this.mClients.valueAt(i);
            if (client.getUid() == uid) {
                SparseArray<WifiAwareDiscoverySessionState> sessions = client.getSessions();
                for (int j = 0; j < sessions.size(); j++) {
                    WifiAwareDiscoverySessionState session = sessions.valueAt(j);
                    Iterator it = peerIds.iterator();
                    while (it.hasNext()) {
                        int peerId = ((Integer) it.next()).intValue();
                        WifiAwareDiscoverySessionState.PeerInfo peerInfo = session.getPeerInfo(peerId);
                        if (peerInfo != null) {
                            peerIdToMacMap.put(Integer.valueOf(peerId), peerInfo.mMac);
                        }
                    }
                }
            }
        }
        try {
            callback.macAddress(peerIdToMacMap);
        } catch (RemoteException e) {
            Log.e(TAG, "requestMacAddress (sync): exception on callback -- " + e);
        }
    }

    public void delayedInitialization() {
        Message msg = this.mSm.obtainMessage(1);
        msg.arg1 = COMMAND_TYPE_DELAYED_INITIALIZATION;
        this.mSm.sendMessage(msg);
    }

    public void getAwareInterface() {
        Message msg = this.mSm.obtainMessage(1);
        msg.arg1 = COMMAND_TYPE_GET_AWARE;
        this.mSm.sendMessage(msg);
    }

    public void releaseAwareInterface() {
        Message msg = this.mSm.obtainMessage(1);
        msg.arg1 = COMMAND_TYPE_RELEASE_AWARE;
        this.mSm.sendMessage(msg);
    }

    public void connect(int clientId, int uid, int pid, String callingPackage, IWifiAwareEventCallback callback, ConfigRequest configRequest, boolean notifyOnIdentityChanged) {
        Message msg = this.mSm.obtainMessage(1);
        msg.arg1 = 100;
        msg.arg2 = clientId;
        msg.obj = callback;
        msg.getData().putParcelable(MESSAGE_BUNDLE_KEY_CONFIG, configRequest);
        msg.getData().putInt(MESSAGE_BUNDLE_KEY_UID, uid);
        msg.getData().putInt("pid", pid);
        msg.getData().putString(MESSAGE_BUNDLE_KEY_CALLING_PACKAGE, callingPackage);
        msg.getData().putBoolean(MESSAGE_BUNDLE_KEY_NOTIFY_IDENTITY_CHANGE, notifyOnIdentityChanged);
        this.mSm.sendMessage(msg);
    }

    public void disconnect(int clientId) {
        Message msg = this.mSm.obtainMessage(1);
        msg.arg1 = 101;
        msg.arg2 = clientId;
        this.mSm.sendMessage(msg);
    }

    public void reconfigure() {
        Message msg = this.mSm.obtainMessage(1);
        msg.arg1 = 120;
        this.mSm.sendMessage(msg);
    }

    public void terminateSession(int clientId, int sessionId) {
        Message msg = this.mSm.obtainMessage(1);
        msg.arg1 = 102;
        msg.arg2 = clientId;
        msg.obj = Integer.valueOf(sessionId);
        this.mSm.sendMessage(msg);
    }

    public void publish(int clientId, PublishConfig publishConfig, IWifiAwareDiscoverySessionCallback callback) {
        Message msg = this.mSm.obtainMessage(1);
        msg.arg1 = 103;
        msg.arg2 = clientId;
        msg.obj = callback;
        msg.getData().putParcelable(MESSAGE_BUNDLE_KEY_CONFIG, publishConfig);
        this.mSm.sendMessage(msg);
    }

    public void updatePublish(int clientId, int sessionId, PublishConfig publishConfig) {
        Message msg = this.mSm.obtainMessage(1);
        msg.arg1 = 104;
        msg.arg2 = clientId;
        msg.obj = publishConfig;
        msg.getData().putInt(MESSAGE_BUNDLE_KEY_SESSION_ID, sessionId);
        this.mSm.sendMessage(msg);
    }

    public void subscribe(int clientId, SubscribeConfig subscribeConfig, IWifiAwareDiscoverySessionCallback callback) {
        Message msg = this.mSm.obtainMessage(1);
        msg.arg1 = 105;
        msg.arg2 = clientId;
        msg.obj = callback;
        msg.getData().putParcelable(MESSAGE_BUNDLE_KEY_CONFIG, subscribeConfig);
        this.mSm.sendMessage(msg);
    }

    public void updateSubscribe(int clientId, int sessionId, SubscribeConfig subscribeConfig) {
        Message msg = this.mSm.obtainMessage(1);
        msg.arg1 = 106;
        msg.arg2 = clientId;
        msg.obj = subscribeConfig;
        msg.getData().putInt(MESSAGE_BUNDLE_KEY_SESSION_ID, sessionId);
        this.mSm.sendMessage(msg);
    }

    public void sendMessage(int clientId, int sessionId, int peerId, byte[] message, int messageId, int retryCount) {
        Message msg = this.mSm.obtainMessage(1);
        msg.arg1 = 107;
        msg.arg2 = clientId;
        msg.getData().putInt(MESSAGE_BUNDLE_KEY_SESSION_ID, sessionId);
        msg.getData().putInt(MESSAGE_BUNDLE_KEY_MESSAGE_PEER_ID, peerId);
        msg.getData().putByteArray("message", message);
        msg.getData().putInt(MESSAGE_BUNDLE_KEY_MESSAGE_ID, messageId);
        msg.getData().putInt(MESSAGE_BUNDLE_KEY_RETRY_COUNT, retryCount);
        this.mSm.sendMessage(msg);
    }

    public void enableUsage() {
        if (this.mSettableParameters.get(PARAM_ON_IDLE_DISABLE_AWARE).intValue() == 0 || !this.mPowerManager.isDeviceIdleMode()) {
            if (!this.mWifiPermissionsUtil.isLocationModeEnabled()) {
                if (this.mDbg) {
                    Log.d(TAG, "enableUsage(): while location is disabled - ignoring");
                }
            } else if (this.mWifiManager.getWifiState() == 3) {
                Message msg = this.mSm.obtainMessage(1);
                msg.arg1 = 108;
                this.mSm.sendMessage(msg);
            } else if (this.mDbg) {
                Log.d(TAG, "enableUsage(): while Wi-Fi is disabled - ignoring");
            }
        } else if (this.mDbg) {
            Log.d(TAG, "enableUsage(): while device is in IDLE mode - ignoring");
        }
    }

    public void disableUsage() {
        Message msg = this.mSm.obtainMessage(1);
        msg.arg1 = COMMAND_TYPE_DISABLE_USAGE;
        this.mSm.sendMessage(msg);
    }

    public boolean isUsageEnabled() {
        return this.mUsageEnabled;
    }

    public void queryCapabilities() {
        Message msg = this.mSm.obtainMessage(1);
        msg.arg1 = COMMAND_TYPE_GET_CAPABILITIES;
        this.mSm.sendMessage(msg);
    }

    public void createAllDataPathInterfaces() {
        Message msg = this.mSm.obtainMessage(1);
        msg.arg1 = 112;
        this.mSm.sendMessage(msg);
    }

    public void deleteAllDataPathInterfaces() {
        Message msg = this.mSm.obtainMessage(1);
        msg.arg1 = 113;
        this.mSm.sendMessage(msg);
    }

    public void createDataPathInterface(String interfaceName) {
        Message msg = this.mSm.obtainMessage(1);
        msg.arg1 = COMMAND_TYPE_CREATE_DATA_PATH_INTERFACE;
        msg.obj = interfaceName;
        this.mSm.sendMessage(msg);
    }

    public void deleteDataPathInterface(String interfaceName) {
        Message msg = this.mSm.obtainMessage(1);
        msg.arg1 = COMMAND_TYPE_DELETE_DATA_PATH_INTERFACE;
        msg.obj = interfaceName;
        this.mSm.sendMessage(msg);
    }

    public void initiateDataPathSetup(WifiAwareNetworkSpecifier networkSpecifier, int peerId, int channelRequestType, int channel, byte[] peer, String interfaceName, byte[] pmk, String passphrase, boolean isOutOfBand, byte[] appInfo) {
        Message msg = this.mSm.obtainMessage(1);
        msg.arg1 = COMMAND_TYPE_INITIATE_DATA_PATH_SETUP;
        msg.obj = networkSpecifier;
        msg.getData().putInt(MESSAGE_BUNDLE_KEY_PEER_ID, peerId);
        msg.getData().putInt(MESSAGE_BUNDLE_KEY_CHANNEL_REQ_TYPE, channelRequestType);
        msg.getData().putInt(MESSAGE_BUNDLE_KEY_CHANNEL, channel);
        msg.getData().putByteArray(MESSAGE_BUNDLE_KEY_MAC_ADDRESS, peer);
        msg.getData().putString(MESSAGE_BUNDLE_KEY_INTERFACE_NAME, interfaceName);
        msg.getData().putByteArray(MESSAGE_BUNDLE_KEY_PMK, pmk);
        msg.getData().putString(MESSAGE_BUNDLE_KEY_PASSPHRASE, passphrase);
        msg.getData().putBoolean(MESSAGE_BUNDLE_KEY_OOB, isOutOfBand);
        msg.getData().putByteArray(MESSAGE_BUNDLE_KEY_APP_INFO, appInfo);
        this.mSm.sendMessage(msg);
    }

    public void respondToDataPathRequest(boolean accept, int ndpId, String interfaceName, byte[] pmk, String passphrase, byte[] appInfo, boolean isOutOfBand) {
        Message msg = this.mSm.obtainMessage(1);
        msg.arg1 = COMMAND_TYPE_RESPOND_TO_DATA_PATH_SETUP_REQUEST;
        msg.arg2 = ndpId;
        msg.obj = Boolean.valueOf(accept);
        msg.getData().putString(MESSAGE_BUNDLE_KEY_INTERFACE_NAME, interfaceName);
        msg.getData().putByteArray(MESSAGE_BUNDLE_KEY_PMK, pmk);
        msg.getData().putString(MESSAGE_BUNDLE_KEY_PASSPHRASE, passphrase);
        msg.getData().putByteArray(MESSAGE_BUNDLE_KEY_APP_INFO, appInfo);
        msg.getData().putBoolean(MESSAGE_BUNDLE_KEY_OOB, isOutOfBand);
        this.mSm.sendMessage(msg);
    }

    public void endDataPath(int ndpId) {
        Message msg = this.mSm.obtainMessage(1);
        msg.arg1 = COMMAND_TYPE_END_DATA_PATH;
        msg.arg2 = ndpId;
        this.mSm.sendMessage(msg);
    }

    /* access modifiers changed from: private */
    public void transmitNextMessage() {
        Message msg = this.mSm.obtainMessage(1);
        msg.arg1 = COMMAND_TYPE_TRANSMIT_NEXT_MESSAGE;
        this.mSm.sendMessage(msg);
    }

    public void onConfigSuccessResponse(short transactionId) {
        Message msg = this.mSm.obtainMessage(2);
        msg.arg1 = 200;
        msg.arg2 = transactionId;
        this.mSm.sendMessage(msg);
    }

    public void onConfigFailedResponse(short transactionId, int reason) {
        Message msg = this.mSm.obtainMessage(2);
        msg.arg1 = RESPONSE_TYPE_ON_CONFIG_FAIL;
        msg.arg2 = transactionId;
        msg.obj = Integer.valueOf(reason);
        this.mSm.sendMessage(msg);
    }

    public void onDisableResponse(short transactionId, int reason) {
        Message msg = this.mSm.obtainMessage(2);
        msg.arg1 = RESPONSE_TYPE_ON_DISABLE;
        msg.arg2 = transactionId;
        msg.obj = Integer.valueOf(reason);
        this.mSm.sendMessage(msg);
    }

    public void onSessionConfigSuccessResponse(short transactionId, boolean isPublish, byte pubSubId) {
        Message msg = this.mSm.obtainMessage(2);
        msg.arg1 = RESPONSE_TYPE_ON_SESSION_CONFIG_SUCCESS;
        msg.arg2 = transactionId;
        msg.obj = Byte.valueOf(pubSubId);
        msg.getData().putBoolean(MESSAGE_BUNDLE_KEY_SESSION_TYPE, isPublish);
        this.mSm.sendMessage(msg);
    }

    public void onSessionConfigFailResponse(short transactionId, boolean isPublish, int reason) {
        Message msg = this.mSm.obtainMessage(2);
        msg.arg1 = RESPONSE_TYPE_ON_SESSION_CONFIG_FAIL;
        msg.arg2 = transactionId;
        msg.obj = Integer.valueOf(reason);
        msg.getData().putBoolean(MESSAGE_BUNDLE_KEY_SESSION_TYPE, isPublish);
        this.mSm.sendMessage(msg);
    }

    public void onMessageSendQueuedSuccessResponse(short transactionId) {
        Message msg = this.mSm.obtainMessage(2);
        msg.arg1 = RESPONSE_TYPE_ON_MESSAGE_SEND_QUEUED_SUCCESS;
        msg.arg2 = transactionId;
        this.mSm.sendMessage(msg);
    }

    public void onMessageSendQueuedFailResponse(short transactionId, int reason) {
        Message msg = this.mSm.obtainMessage(2);
        msg.arg1 = RESPONSE_TYPE_ON_MESSAGE_SEND_QUEUED_FAIL;
        msg.arg2 = transactionId;
        msg.obj = Integer.valueOf(reason);
        this.mSm.sendMessage(msg);
    }

    public void onCapabilitiesUpdateResponse(short transactionId, Capabilities capabilities) {
        Message msg = this.mSm.obtainMessage(2);
        msg.arg1 = RESPONSE_TYPE_ON_CAPABILITIES_UPDATED;
        msg.arg2 = transactionId;
        msg.obj = capabilities;
        this.mSm.sendMessage(msg);
    }

    public void onCreateDataPathInterfaceResponse(short transactionId, boolean success, int reasonOnFailure) {
        Message msg = this.mSm.obtainMessage(2);
        msg.arg1 = RESPONSE_TYPE_ON_CREATE_INTERFACE;
        msg.arg2 = transactionId;
        msg.getData().putBoolean(MESSAGE_BUNDLE_KEY_SUCCESS_FLAG, success);
        msg.getData().putInt(MESSAGE_BUNDLE_KEY_STATUS_CODE, reasonOnFailure);
        this.mSm.sendMessage(msg);
    }

    public void onDeleteDataPathInterfaceResponse(short transactionId, boolean success, int reasonOnFailure) {
        Message msg = this.mSm.obtainMessage(2);
        msg.arg1 = RESPONSE_TYPE_ON_DELETE_INTERFACE;
        msg.arg2 = transactionId;
        msg.getData().putBoolean(MESSAGE_BUNDLE_KEY_SUCCESS_FLAG, success);
        msg.getData().putInt(MESSAGE_BUNDLE_KEY_STATUS_CODE, reasonOnFailure);
        this.mSm.sendMessage(msg);
    }

    public void onInitiateDataPathResponseSuccess(short transactionId, int ndpId) {
        Message msg = this.mSm.obtainMessage(2);
        msg.arg1 = RESPONSE_TYPE_ON_INITIATE_DATA_PATH_SUCCESS;
        msg.arg2 = transactionId;
        msg.obj = Integer.valueOf(ndpId);
        this.mSm.sendMessage(msg);
    }

    public void onInitiateDataPathResponseFail(short transactionId, int reason) {
        Message msg = this.mSm.obtainMessage(2);
        msg.arg1 = RESPONSE_TYPE_ON_INITIATE_DATA_PATH_FAIL;
        msg.arg2 = transactionId;
        msg.obj = Integer.valueOf(reason);
        this.mSm.sendMessage(msg);
    }

    public void onRespondToDataPathSetupRequestResponse(short transactionId, boolean success, int reasonOnFailure) {
        Message msg = this.mSm.obtainMessage(2);
        msg.arg1 = RESPONSE_TYPE_ON_RESPOND_TO_DATA_PATH_SETUP_REQUEST;
        msg.arg2 = transactionId;
        msg.getData().putBoolean(MESSAGE_BUNDLE_KEY_SUCCESS_FLAG, success);
        msg.getData().putInt(MESSAGE_BUNDLE_KEY_STATUS_CODE, reasonOnFailure);
        this.mSm.sendMessage(msg);
    }

    public void onEndDataPathResponse(short transactionId, boolean success, int reasonOnFailure) {
        Message msg = this.mSm.obtainMessage(2);
        msg.arg1 = RESPONSE_TYPE_ON_END_DATA_PATH;
        msg.arg2 = transactionId;
        msg.getData().putBoolean(MESSAGE_BUNDLE_KEY_SUCCESS_FLAG, success);
        msg.getData().putInt(MESSAGE_BUNDLE_KEY_STATUS_CODE, reasonOnFailure);
        this.mSm.sendMessage(msg);
    }

    public void onInterfaceAddressChangeNotification(byte[] mac) {
        Message msg = this.mSm.obtainMessage(3);
        msg.arg1 = NOTIFICATION_TYPE_INTERFACE_CHANGE;
        msg.obj = mac;
        this.mSm.sendMessage(msg);
    }

    public void onClusterChangeNotification(int flag, byte[] clusterId) {
        Message msg = this.mSm.obtainMessage(3);
        msg.arg1 = NOTIFICATION_TYPE_CLUSTER_CHANGE;
        msg.arg2 = flag;
        msg.obj = clusterId;
        this.mSm.sendMessage(msg);
    }

    public void onMatchNotification(int pubSubId, int requestorInstanceId, byte[] peerMac, byte[] serviceSpecificInfo, byte[] matchFilter, int rangingIndication, int rangeMm) {
        Message msg = this.mSm.obtainMessage(3);
        msg.arg1 = NOTIFICATION_TYPE_MATCH;
        msg.arg2 = pubSubId;
        msg.getData().putInt(MESSAGE_BUNDLE_KEY_REQ_INSTANCE_ID, requestorInstanceId);
        msg.getData().putByteArray(MESSAGE_BUNDLE_KEY_MAC_ADDRESS, peerMac);
        msg.getData().putByteArray(MESSAGE_BUNDLE_KEY_SSI_DATA, serviceSpecificInfo);
        msg.getData().putByteArray(MESSAGE_BUNDLE_KEY_FILTER_DATA, matchFilter);
        msg.getData().putInt(MESSAGE_RANGING_INDICATION, rangingIndication);
        msg.getData().putInt(MESSAGE_RANGE_MM, rangeMm);
        this.mSm.sendMessage(msg);
    }

    public void onSessionTerminatedNotification(int pubSubId, int reason, boolean isPublish) {
        Message msg = this.mSm.obtainMessage(3);
        msg.arg1 = NOTIFICATION_TYPE_SESSION_TERMINATED;
        msg.arg2 = pubSubId;
        msg.obj = Integer.valueOf(reason);
        msg.getData().putBoolean(MESSAGE_BUNDLE_KEY_SESSION_TYPE, isPublish);
        this.mSm.sendMessage(msg);
    }

    public void onMessageReceivedNotification(int pubSubId, int requestorInstanceId, byte[] peerMac, byte[] message) {
        Message msg = this.mSm.obtainMessage(3);
        msg.arg1 = NOTIFICATION_TYPE_MESSAGE_RECEIVED;
        msg.arg2 = pubSubId;
        msg.obj = Integer.valueOf(requestorInstanceId);
        msg.getData().putByteArray(MESSAGE_BUNDLE_KEY_MAC_ADDRESS, peerMac);
        msg.getData().putByteArray(MESSAGE_BUNDLE_KEY_MESSAGE_DATA, message);
        this.mSm.sendMessage(msg);
    }

    public void onAwareDownNotification(int reason) {
        Message msg = this.mSm.obtainMessage(3);
        msg.arg1 = NOTIFICATION_TYPE_AWARE_DOWN;
        msg.arg2 = reason;
        this.mSm.sendMessage(msg);
    }

    public void onMessageSendSuccessNotification(short transactionId) {
        Message msg = this.mSm.obtainMessage(3);
        msg.arg1 = NOTIFICATION_TYPE_ON_MESSAGE_SEND_SUCCESS;
        msg.arg2 = transactionId;
        this.mSm.sendMessage(msg);
    }

    public void onMessageSendFailNotification(short transactionId, int reason) {
        Message msg = this.mSm.obtainMessage(3);
        msg.arg1 = NOTIFICATION_TYPE_ON_MESSAGE_SEND_FAIL;
        msg.arg2 = transactionId;
        msg.obj = Integer.valueOf(reason);
        this.mSm.sendMessage(msg);
    }

    public void onDataPathRequestNotification(int pubSubId, byte[] mac, int ndpId, byte[] message) {
        Message msg = this.mSm.obtainMessage(3);
        msg.arg1 = NOTIFICATION_TYPE_ON_DATA_PATH_REQUEST;
        msg.arg2 = pubSubId;
        msg.obj = Integer.valueOf(ndpId);
        msg.getData().putByteArray(MESSAGE_BUNDLE_KEY_MAC_ADDRESS, mac);
        msg.getData().putByteArray("message", message);
        this.mSm.sendMessage(msg);
    }

    public void onDataPathConfirmNotification(int ndpId, byte[] mac, boolean accept, int reason, byte[] message, List<NanDataPathChannelInfo> channelInfo) {
        Message msg = this.mSm.obtainMessage(3);
        msg.arg1 = NOTIFICATION_TYPE_ON_DATA_PATH_CONFIRM;
        msg.arg2 = ndpId;
        msg.getData().putByteArray(MESSAGE_BUNDLE_KEY_MAC_ADDRESS, mac);
        msg.getData().putBoolean(MESSAGE_BUNDLE_KEY_SUCCESS_FLAG, accept);
        msg.getData().putInt(MESSAGE_BUNDLE_KEY_STATUS_CODE, reason);
        msg.getData().putByteArray(MESSAGE_BUNDLE_KEY_MESSAGE_DATA, message);
        msg.obj = channelInfo;
        this.mSm.sendMessage(msg);
    }

    public void onDataPathEndNotification(int ndpId) {
        Message msg = this.mSm.obtainMessage(3);
        msg.arg1 = NOTIFICATION_TYPE_ON_DATA_PATH_END;
        msg.arg2 = ndpId;
        this.mSm.sendMessage(msg);
    }

    public void onDataPathScheduleUpdateNotification(byte[] peerMac, ArrayList<Integer> ndpIds, List<NanDataPathChannelInfo> channelInfo) {
        Message msg = this.mSm.obtainMessage(3);
        msg.arg1 = NOTIFICATION_TYPE_ON_DATA_PATH_SCHED_UPDATE;
        msg.getData().putByteArray(MESSAGE_BUNDLE_KEY_MAC_ADDRESS, peerMac);
        msg.getData().putIntegerArrayList(MESSAGE_BUNDLE_KEY_NDP_IDS, ndpIds);
        msg.obj = channelInfo;
        this.mSm.sendMessage(msg);
    }

    @VisibleForTesting
    class WifiAwareStateMachine extends StateMachine {
        private static final long AWARE_SEND_MESSAGE_TIMEOUT = 10000;
        private static final long AWARE_WAIT_FOR_DP_CONFIRM_TIMEOUT = 20000;
        private static final int TRANSACTION_ID_IGNORE = 0;
        /* access modifiers changed from: private */
        public Message mCurrentCommand;
        /* access modifiers changed from: private */
        public short mCurrentTransactionId = 0;
        /* access modifiers changed from: private */
        public final Map<WifiAwareNetworkSpecifier, WakeupMessage> mDataPathConfirmTimeoutMessages = new ArrayMap();
        private DefaultState mDefaultState = new DefaultState();
        private final Map<Short, Message> mFwQueuedSendMessages = new LinkedHashMap();
        private final SparseArray<Message> mHostQueuedSendMessages = new SparseArray<>();
        public int mNextSessionId = 1;
        private short mNextTransactionId = 1;
        private int mSendArrivalSequenceCounter = 0;
        private WakeupMessage mSendMessageTimeoutMessage = new WakeupMessage(WifiAwareStateManager.this.mContext, getHandler(), WifiAwareStateManager.HAL_SEND_MESSAGE_TIMEOUT_TAG, 5);
        private boolean mSendQueueBlocked = false;
        /* access modifiers changed from: private */
        public WaitForResponseState mWaitForResponseState = new WaitForResponseState();
        /* access modifiers changed from: private */
        public WaitState mWaitState = new WaitState();

        WifiAwareStateMachine(String name, Looper looper) {
            super(name, looper);
            addState(this.mDefaultState);
            addState(this.mWaitState, this.mDefaultState);
            addState(this.mWaitForResponseState, this.mDefaultState);
            setInitialState(this.mWaitState);
        }

        public void onAwareDownCleanupSendQueueState() {
            this.mSendQueueBlocked = false;
            this.mHostQueuedSendMessages.clear();
            this.mFwQueuedSendMessages.clear();
        }

        private class DefaultState extends State {
            private DefaultState() {
            }

            public boolean processMessage(Message msg) {
                int i = msg.what;
                if (i == 3) {
                    WifiAwareStateMachine.this.processNotification(msg);
                    return true;
                } else if (i == 5) {
                    WifiAwareStateMachine.this.processSendMessageTimeout();
                    return true;
                } else if (i != 6) {
                    Log.wtf(WifiAwareStateManager.TAG, "DefaultState: should not get non-NOTIFICATION in this state: msg=" + msg);
                    return false;
                } else {
                    WifiAwareNetworkSpecifier networkSpecifier = (WifiAwareNetworkSpecifier) msg.obj;
                    if (WifiAwareStateManager.this.mDbg) {
                        Log.v(WifiAwareStateManager.TAG, "MESSAGE_TYPE_DATA_PATH_TIMEOUT: networkSpecifier=" + networkSpecifier);
                    }
                    WifiAwareStateManager.this.mDataPathMgr.handleDataPathTimeout(networkSpecifier);
                    WifiAwareStateMachine.this.mDataPathConfirmTimeoutMessages.remove(networkSpecifier);
                    return true;
                }
            }
        }

        private class WaitState extends State {
            private WaitState() {
            }

            public boolean processMessage(Message msg) {
                int i = msg.what;
                if (i == 1) {
                    if (WifiAwareStateMachine.this.processCommand(msg)) {
                        WifiAwareStateMachine wifiAwareStateMachine = WifiAwareStateMachine.this;
                        wifiAwareStateMachine.transitionTo(wifiAwareStateMachine.mWaitForResponseState);
                    }
                    return true;
                } else if (i != 2 && i != 4) {
                    return false;
                } else {
                    WifiAwareStateMachine.this.deferMessage(msg);
                    return true;
                }
            }
        }

        private class WaitForResponseState extends State {
            private static final long AWARE_COMMAND_TIMEOUT = 5000;
            private WakeupMessage mTimeoutMessage;

            private WaitForResponseState() {
            }

            public void enter() {
                this.mTimeoutMessage = new WakeupMessage(WifiAwareStateManager.this.mContext, WifiAwareStateMachine.this.getHandler(), WifiAwareStateManager.HAL_COMMAND_TIMEOUT_TAG, 4, WifiAwareStateMachine.this.mCurrentCommand.arg1, WifiAwareStateMachine.this.mCurrentTransactionId);
                this.mTimeoutMessage.schedule(SystemClock.elapsedRealtime() + 5000);
            }

            public void exit() {
                this.mTimeoutMessage.cancel();
            }

            public boolean processMessage(Message msg) {
                int i = msg.what;
                if (i == 1) {
                    WifiAwareStateMachine.this.deferMessage(msg);
                    return true;
                } else if (i == 2) {
                    if (msg.arg2 == WifiAwareStateMachine.this.mCurrentTransactionId) {
                        WifiAwareStateMachine.this.processResponse(msg);
                        WifiAwareStateMachine wifiAwareStateMachine = WifiAwareStateMachine.this;
                        wifiAwareStateMachine.transitionTo(wifiAwareStateMachine.mWaitState);
                    } else {
                        Log.w(WifiAwareStateManager.TAG, "WaitForResponseState: processMessage: non-matching transaction ID on RESPONSE (a very late response) -- msg=" + msg);
                    }
                    return true;
                } else if (i != 4) {
                    return false;
                } else {
                    if (msg.arg2 == WifiAwareStateMachine.this.mCurrentTransactionId) {
                        WifiAwareStateMachine.this.processTimeout(msg);
                        WifiAwareStateMachine wifiAwareStateMachine2 = WifiAwareStateMachine.this;
                        wifiAwareStateMachine2.transitionTo(wifiAwareStateMachine2.mWaitState);
                    } else {
                        Log.w(WifiAwareStateManager.TAG, "WaitForResponseState: processMessage: non-matching transaction ID on RESPONSE_TIMEOUT (either a non-cancelled timeout or a race condition with cancel) -- msg=" + msg);
                    }
                    return true;
                }
            }
        }

        /* access modifiers changed from: private */
        public void processNotification(Message msg) {
            WakeupMessage timeout;
            Message message = msg;
            switch (message.arg1) {
                case WifiAwareStateManager.NOTIFICATION_TYPE_INTERFACE_CHANGE /*301*/:
                    WifiAwareStateManager.this.onInterfaceAddressChangeLocal((byte[]) message.obj);
                    return;
                case WifiAwareStateManager.NOTIFICATION_TYPE_CLUSTER_CHANGE /*302*/:
                    WifiAwareStateManager.this.onClusterChangeLocal(message.arg2, (byte[]) message.obj);
                    return;
                case WifiAwareStateManager.NOTIFICATION_TYPE_MATCH /*303*/:
                    WifiAwareStateManager.this.onMatchLocal(message.arg2, msg.getData().getInt(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_REQ_INSTANCE_ID), msg.getData().getByteArray(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_MAC_ADDRESS), msg.getData().getByteArray(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_SSI_DATA), msg.getData().getByteArray(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_FILTER_DATA), msg.getData().getInt(WifiAwareStateManager.MESSAGE_RANGING_INDICATION), msg.getData().getInt(WifiAwareStateManager.MESSAGE_RANGE_MM));
                    return;
                case WifiAwareStateManager.NOTIFICATION_TYPE_SESSION_TERMINATED /*304*/:
                    int pubSubId = message.arg2;
                    int reason = ((Integer) message.obj).intValue();
                    WifiAwareStateManager.this.onSessionTerminatedLocal(pubSubId, msg.getData().getBoolean(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_SESSION_TYPE), reason);
                    return;
                case WifiAwareStateManager.NOTIFICATION_TYPE_MESSAGE_RECEIVED /*305*/:
                    WifiAwareStateManager.this.onMessageReceivedLocal(message.arg2, ((Integer) message.obj).intValue(), msg.getData().getByteArray(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_MAC_ADDRESS), msg.getData().getByteArray(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_MESSAGE_DATA));
                    return;
                case WifiAwareStateManager.NOTIFICATION_TYPE_AWARE_DOWN /*306*/:
                    int reason2 = message.arg2;
                    WifiAwareStateManager.this.onAwareDownLocal();
                    if (reason2 != 0) {
                        WifiAwareStateManager.this.sendAwareStateChangedBroadcast(false);
                        return;
                    }
                    return;
                case WifiAwareStateManager.NOTIFICATION_TYPE_ON_MESSAGE_SEND_SUCCESS /*307*/:
                    short transactionId = (short) message.arg2;
                    Message queuedSendCommand = this.mFwQueuedSendMessages.get(Short.valueOf(transactionId));
                    if (queuedSendCommand == null) {
                        Log.w(WifiAwareStateManager.TAG, "processNotification: NOTIFICATION_TYPE_ON_MESSAGE_SEND_SUCCESS: transactionId=" + transactionId + " - no such queued send command (timed-out?)");
                    } else {
                        this.mFwQueuedSendMessages.remove(Short.valueOf(transactionId));
                        updateSendMessageTimeout();
                        WifiAwareStateManager.this.onMessageSendSuccessLocal(queuedSendCommand);
                    }
                    this.mSendQueueBlocked = false;
                    WifiAwareStateManager.this.transmitNextMessage();
                    return;
                case WifiAwareStateManager.NOTIFICATION_TYPE_ON_MESSAGE_SEND_FAIL /*308*/:
                    short transactionId2 = (short) message.arg2;
                    int reason3 = ((Integer) message.obj).intValue();
                    Message sentMessage = this.mFwQueuedSendMessages.get(Short.valueOf(transactionId2));
                    if (sentMessage == null) {
                        Log.w(WifiAwareStateManager.TAG, "processNotification: NOTIFICATION_TYPE_ON_MESSAGE_SEND_FAIL: transactionId=" + transactionId2 + " - no such queued send command (timed-out?)");
                        return;
                    }
                    this.mFwQueuedSendMessages.remove(Short.valueOf(transactionId2));
                    updateSendMessageTimeout();
                    int retryCount = sentMessage.getData().getInt(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_RETRY_COUNT);
                    if (retryCount <= 0 || reason3 != 9) {
                        WifiAwareStateManager.this.onMessageSendFailLocal(sentMessage, reason3);
                    } else {
                        sentMessage.getData().putInt(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_RETRY_COUNT, retryCount - 1);
                        this.mHostQueuedSendMessages.put(sentMessage.getData().getInt(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_MESSAGE_ARRIVAL_SEQ), sentMessage);
                    }
                    this.mSendQueueBlocked = false;
                    WifiAwareStateManager.this.transmitNextMessage();
                    return;
                case WifiAwareStateManager.NOTIFICATION_TYPE_ON_DATA_PATH_REQUEST /*309*/:
                    WifiAwareNetworkSpecifier networkSpecifier = WifiAwareStateManager.this.mDataPathMgr.onDataPathRequest(message.arg2, msg.getData().getByteArray(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_MAC_ADDRESS), ((Integer) message.obj).intValue(), msg.getData().getByteArray("message"));
                    if (networkSpecifier != null) {
                        WakeupMessage wakeupMessage = new WakeupMessage(WifiAwareStateManager.this.mContext, getHandler(), WifiAwareStateManager.HAL_DATA_PATH_CONFIRM_TIMEOUT_TAG, 6, 0, 0, networkSpecifier);
                        this.mDataPathConfirmTimeoutMessages.put(networkSpecifier, wakeupMessage);
                        wakeupMessage.schedule(SystemClock.elapsedRealtime() + AWARE_WAIT_FOR_DP_CONFIRM_TIMEOUT);
                        return;
                    }
                    return;
                case WifiAwareStateManager.NOTIFICATION_TYPE_ON_DATA_PATH_CONFIRM /*310*/:
                    WifiAwareNetworkSpecifier networkSpecifier2 = WifiAwareStateManager.this.mDataPathMgr.onDataPathConfirm(message.arg2, msg.getData().getByteArray(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_MAC_ADDRESS), msg.getData().getBoolean(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_SUCCESS_FLAG), msg.getData().getInt(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_STATUS_CODE), msg.getData().getByteArray(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_MESSAGE_DATA), (List) message.obj);
                    if (networkSpecifier2 != null && (timeout = this.mDataPathConfirmTimeoutMessages.remove(networkSpecifier2)) != null) {
                        timeout.cancel();
                        return;
                    }
                    return;
                case WifiAwareStateManager.NOTIFICATION_TYPE_ON_DATA_PATH_END /*311*/:
                    WifiAwareStateManager.this.mDataPathMgr.onDataPathEnd(message.arg2);
                    return;
                case WifiAwareStateManager.NOTIFICATION_TYPE_ON_DATA_PATH_SCHED_UPDATE /*312*/:
                    WifiAwareStateManager.this.mDataPathMgr.onDataPathSchedUpdate(msg.getData().getByteArray(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_MAC_ADDRESS), msg.getData().getIntegerArrayList(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_NDP_IDS), (List) message.obj);
                    return;
                default:
                    Log.wtf(WifiAwareStateManager.TAG, "processNotification: this isn't a NOTIFICATION -- msg=" + message);
                    return;
            }
        }

        /* access modifiers changed from: private */
        public boolean processCommand(Message msg) {
            boolean waitForResponse;
            Message message = msg;
            if (this.mCurrentCommand != null) {
                Log.wtf(WifiAwareStateManager.TAG, "processCommand: receiving a command (msg=" + message + ") but current (previous) command isn't null (prev_msg=" + this.mCurrentCommand + ")");
                this.mCurrentCommand = null;
            }
            short s = this.mNextTransactionId;
            this.mNextTransactionId = (short) (s + 1);
            this.mCurrentTransactionId = s;
            switch (message.arg1) {
                case 100:
                    waitForResponse = WifiAwareStateManager.this.connectLocal(this.mCurrentTransactionId, message.arg2, msg.getData().getInt(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_UID), msg.getData().getInt("pid"), msg.getData().getString(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_CALLING_PACKAGE), (IWifiAwareEventCallback) message.obj, msg.getData().getParcelable(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_CONFIG), msg.getData().getBoolean(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_NOTIFY_IDENTITY_CHANGE));
                    break;
                case 101:
                    waitForResponse = WifiAwareStateManager.this.disconnectLocal(this.mCurrentTransactionId, message.arg2);
                    break;
                case 102:
                    WifiAwareStateManager.this.terminateSessionLocal(message.arg2, ((Integer) message.obj).intValue());
                    waitForResponse = false;
                    break;
                case 103:
                    waitForResponse = WifiAwareStateManager.this.publishLocal(this.mCurrentTransactionId, message.arg2, (PublishConfig) msg.getData().getParcelable(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_CONFIG), (IWifiAwareDiscoverySessionCallback) message.obj);
                    break;
                case 104:
                    waitForResponse = WifiAwareStateManager.this.updatePublishLocal(this.mCurrentTransactionId, message.arg2, msg.getData().getInt(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_SESSION_ID), (PublishConfig) message.obj);
                    break;
                case 105:
                    waitForResponse = WifiAwareStateManager.this.subscribeLocal(this.mCurrentTransactionId, message.arg2, (SubscribeConfig) msg.getData().getParcelable(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_CONFIG), (IWifiAwareDiscoverySessionCallback) message.obj);
                    break;
                case 106:
                    waitForResponse = WifiAwareStateManager.this.updateSubscribeLocal(this.mCurrentTransactionId, message.arg2, msg.getData().getInt(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_SESSION_ID), (SubscribeConfig) message.obj);
                    break;
                case 107:
                    Message sendMsg = obtainMessage(message.what);
                    sendMsg.copyFrom(message);
                    sendMsg.getData().putInt(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_MESSAGE_ARRIVAL_SEQ, this.mSendArrivalSequenceCounter);
                    this.mHostQueuedSendMessages.put(this.mSendArrivalSequenceCounter, sendMsg);
                    this.mSendArrivalSequenceCounter++;
                    waitForResponse = false;
                    if (!this.mSendQueueBlocked) {
                        WifiAwareStateManager.this.transmitNextMessage();
                        break;
                    }
                    break;
                case 108:
                    WifiAwareStateManager.this.enableUsageLocal();
                    waitForResponse = false;
                    break;
                case WifiAwareStateManager.COMMAND_TYPE_DISABLE_USAGE /*109*/:
                    waitForResponse = WifiAwareStateManager.this.disableUsageLocal(this.mCurrentTransactionId);
                    break;
                case WifiAwareStateManager.COMMAND_TYPE_GET_CAPABILITIES /*111*/:
                    if (WifiAwareStateManager.this.mCapabilities != null) {
                        waitForResponse = false;
                        break;
                    } else {
                        waitForResponse = WifiAwareStateManager.this.mWifiAwareNativeApi.getCapabilities(this.mCurrentTransactionId);
                        break;
                    }
                case 112:
                    WifiAwareStateManager.this.mDataPathMgr.createAllInterfaces();
                    waitForResponse = false;
                    break;
                case 113:
                    WifiAwareStateManager.this.mDataPathMgr.deleteAllInterfaces();
                    waitForResponse = false;
                    break;
                case WifiAwareStateManager.COMMAND_TYPE_CREATE_DATA_PATH_INTERFACE /*114*/:
                    waitForResponse = WifiAwareStateManager.this.mWifiAwareNativeApi.createAwareNetworkInterface(this.mCurrentTransactionId, (String) message.obj);
                    break;
                case WifiAwareStateManager.COMMAND_TYPE_DELETE_DATA_PATH_INTERFACE /*115*/:
                    waitForResponse = WifiAwareStateManager.this.mWifiAwareNativeApi.deleteAwareNetworkInterface(this.mCurrentTransactionId, (String) message.obj);
                    break;
                case WifiAwareStateManager.COMMAND_TYPE_INITIATE_DATA_PATH_SETUP /*116*/:
                    Bundle data = msg.getData();
                    WifiAwareNetworkSpecifier networkSpecifier = (WifiAwareNetworkSpecifier) message.obj;
                    waitForResponse = WifiAwareStateManager.this.initiateDataPathSetupLocal(this.mCurrentTransactionId, networkSpecifier, data.getInt(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_PEER_ID), data.getInt(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_CHANNEL_REQ_TYPE), data.getInt(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_CHANNEL), data.getByteArray(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_MAC_ADDRESS), data.getString(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_INTERFACE_NAME), data.getByteArray(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_PMK), data.getString(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_PASSPHRASE), data.getBoolean(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_OOB), data.getByteArray(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_APP_INFO));
                    if (waitForResponse) {
                        WakeupMessage timeout = new WakeupMessage(WifiAwareStateManager.this.mContext, getHandler(), WifiAwareStateManager.HAL_DATA_PATH_CONFIRM_TIMEOUT_TAG, 6, 0, 0, networkSpecifier);
                        this.mDataPathConfirmTimeoutMessages.put(networkSpecifier, timeout);
                        timeout.schedule(SystemClock.elapsedRealtime() + AWARE_WAIT_FOR_DP_CONFIRM_TIMEOUT);
                        break;
                    }
                    break;
                case WifiAwareStateManager.COMMAND_TYPE_RESPOND_TO_DATA_PATH_SETUP_REQUEST /*117*/:
                    Bundle data2 = msg.getData();
                    waitForResponse = WifiAwareStateManager.this.respondToDataPathRequestLocal(this.mCurrentTransactionId, ((Boolean) message.obj).booleanValue(), message.arg2, data2.getString(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_INTERFACE_NAME), data2.getByteArray(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_PMK), data2.getString(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_PASSPHRASE), data2.getByteArray(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_APP_INFO), data2.getBoolean(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_OOB));
                    break;
                case WifiAwareStateManager.COMMAND_TYPE_END_DATA_PATH /*118*/:
                    waitForResponse = WifiAwareStateManager.this.endDataPathLocal(this.mCurrentTransactionId, message.arg2);
                    break;
                case WifiAwareStateManager.COMMAND_TYPE_TRANSMIT_NEXT_MESSAGE /*119*/:
                    if (!this.mSendQueueBlocked && this.mHostQueuedSendMessages.size() != 0) {
                        Message sendMessage = this.mHostQueuedSendMessages.valueAt(0);
                        this.mHostQueuedSendMessages.removeAt(0);
                        Bundle data3 = sendMessage.getData();
                        int clientId = sendMessage.arg2;
                        int sessionId = sendMessage.getData().getInt(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_SESSION_ID);
                        int peerId = data3.getInt(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_MESSAGE_PEER_ID);
                        byte[] message2 = data3.getByteArray("message");
                        int messageId = data3.getInt(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_MESSAGE_ID);
                        msg.getData().putParcelable(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_SENT_MESSAGE, sendMessage);
                        waitForResponse = WifiAwareStateManager.this.sendFollowonMessageLocal(this.mCurrentTransactionId, clientId, sessionId, peerId, message2, messageId);
                        break;
                    } else {
                        waitForResponse = false;
                        break;
                    }
                    break;
                case 120:
                    waitForResponse = WifiAwareStateManager.this.reconfigureLocal(this.mCurrentTransactionId);
                    break;
                case WifiAwareStateManager.COMMAND_TYPE_DELAYED_INITIALIZATION /*121*/:
                    WifiAwareStateManager.this.mWifiAwareNativeManager.start(getHandler());
                    waitForResponse = false;
                    break;
                case WifiAwareStateManager.COMMAND_TYPE_GET_AWARE /*122*/:
                    WifiAwareStateManager.this.mWifiAwareNativeManager.tryToGetAware();
                    waitForResponse = false;
                    break;
                case WifiAwareStateManager.COMMAND_TYPE_RELEASE_AWARE /*123*/:
                    WifiAwareStateManager.this.mWifiAwareNativeManager.releaseAware();
                    waitForResponse = false;
                    break;
                default:
                    waitForResponse = false;
                    Log.wtf(WifiAwareStateManager.TAG, "processCommand: this isn't a COMMAND -- msg=" + message);
                    break;
            }
            if (!waitForResponse) {
                this.mCurrentTransactionId = 0;
            } else {
                this.mCurrentCommand = obtainMessage(message.what);
                this.mCurrentCommand.copyFrom(message);
            }
            return waitForResponse;
        }

        /* access modifiers changed from: private */
        public void processResponse(Message msg) {
            if (this.mCurrentCommand == null) {
                Log.wtf(WifiAwareStateManager.TAG, "processResponse: no existing command stored!? msg=" + msg);
                this.mCurrentTransactionId = 0;
                return;
            }
            switch (msg.arg1) {
                case 200:
                    WifiAwareStateManager.this.onConfigCompletedLocal(this.mCurrentCommand);
                    break;
                case WifiAwareStateManager.RESPONSE_TYPE_ON_CONFIG_FAIL /*201*/:
                    WifiAwareStateManager.this.onConfigFailedLocal(this.mCurrentCommand, ((Integer) msg.obj).intValue());
                    break;
                case WifiAwareStateManager.RESPONSE_TYPE_ON_SESSION_CONFIG_SUCCESS /*202*/:
                    WifiAwareStateManager.this.onSessionConfigSuccessLocal(this.mCurrentCommand, ((Byte) msg.obj).byteValue(), msg.getData().getBoolean(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_SESSION_TYPE));
                    break;
                case WifiAwareStateManager.RESPONSE_TYPE_ON_SESSION_CONFIG_FAIL /*203*/:
                    int reason = ((Integer) msg.obj).intValue();
                    WifiAwareStateManager.this.onSessionConfigFailLocal(this.mCurrentCommand, msg.getData().getBoolean(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_SESSION_TYPE), reason);
                    break;
                case WifiAwareStateManager.RESPONSE_TYPE_ON_MESSAGE_SEND_QUEUED_SUCCESS /*204*/:
                    Message sentMessage = (Message) this.mCurrentCommand.getData().getParcelable(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_SENT_MESSAGE);
                    sentMessage.getData().putLong(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_SEND_MESSAGE_ENQUEUE_TIME, SystemClock.elapsedRealtime());
                    this.mFwQueuedSendMessages.put(Short.valueOf(this.mCurrentTransactionId), sentMessage);
                    updateSendMessageTimeout();
                    if (!this.mSendQueueBlocked) {
                        WifiAwareStateManager.this.transmitNextMessage();
                        break;
                    }
                    break;
                case WifiAwareStateManager.RESPONSE_TYPE_ON_MESSAGE_SEND_QUEUED_FAIL /*205*/:
                    if (((Integer) msg.obj).intValue() != 11) {
                        WifiAwareStateManager.this.onMessageSendFailLocal((Message) this.mCurrentCommand.getData().getParcelable(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_SENT_MESSAGE), 1);
                        if (!this.mSendQueueBlocked) {
                            WifiAwareStateManager.this.transmitNextMessage();
                            break;
                        }
                    } else {
                        Message sentMessage2 = (Message) this.mCurrentCommand.getData().getParcelable(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_SENT_MESSAGE);
                        this.mHostQueuedSendMessages.put(sentMessage2.getData().getInt(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_MESSAGE_ARRIVAL_SEQ), sentMessage2);
                        this.mSendQueueBlocked = true;
                        break;
                    }
                    break;
                case WifiAwareStateManager.RESPONSE_TYPE_ON_CAPABILITIES_UPDATED /*206*/:
                    WifiAwareStateManager.this.onCapabilitiesUpdatedResponseLocal((Capabilities) msg.obj);
                    break;
                case WifiAwareStateManager.RESPONSE_TYPE_ON_CREATE_INTERFACE /*207*/:
                    WifiAwareStateManager.this.onCreateDataPathInterfaceResponseLocal(this.mCurrentCommand, msg.getData().getBoolean(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_SUCCESS_FLAG), msg.getData().getInt(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_STATUS_CODE));
                    break;
                case WifiAwareStateManager.RESPONSE_TYPE_ON_DELETE_INTERFACE /*208*/:
                    WifiAwareStateManager.this.onDeleteDataPathInterfaceResponseLocal(this.mCurrentCommand, msg.getData().getBoolean(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_SUCCESS_FLAG), msg.getData().getInt(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_STATUS_CODE));
                    break;
                case WifiAwareStateManager.RESPONSE_TYPE_ON_INITIATE_DATA_PATH_SUCCESS /*209*/:
                    WifiAwareStateManager.this.onInitiateDataPathResponseSuccessLocal(this.mCurrentCommand, ((Integer) msg.obj).intValue());
                    break;
                case WifiAwareStateManager.RESPONSE_TYPE_ON_INITIATE_DATA_PATH_FAIL /*210*/:
                    WifiAwareStateManager.this.onInitiateDataPathResponseFailLocal(this.mCurrentCommand, ((Integer) msg.obj).intValue());
                    break;
                case WifiAwareStateManager.RESPONSE_TYPE_ON_RESPOND_TO_DATA_PATH_SETUP_REQUEST /*211*/:
                    WifiAwareStateManager.this.onRespondToDataPathSetupRequestResponseLocal(this.mCurrentCommand, msg.getData().getBoolean(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_SUCCESS_FLAG), msg.getData().getInt(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_STATUS_CODE));
                    break;
                case WifiAwareStateManager.RESPONSE_TYPE_ON_END_DATA_PATH /*212*/:
                    WifiAwareStateManager.this.onEndPathEndResponseLocal(this.mCurrentCommand, msg.getData().getBoolean(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_SUCCESS_FLAG), msg.getData().getInt(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_STATUS_CODE));
                    break;
                case WifiAwareStateManager.RESPONSE_TYPE_ON_DISABLE /*213*/:
                    WifiAwareStateManager.this.onDisableResponseLocal(this.mCurrentCommand, ((Integer) msg.obj).intValue());
                    break;
                default:
                    Log.wtf(WifiAwareStateManager.TAG, "processResponse: this isn't a RESPONSE -- msg=" + msg);
                    this.mCurrentCommand = null;
                    this.mCurrentTransactionId = 0;
                    return;
            }
            this.mCurrentCommand = null;
            this.mCurrentTransactionId = 0;
        }

        /* access modifiers changed from: private */
        public void processTimeout(Message msg) {
            if (WifiAwareStateManager.this.mDbg) {
                Log.v(WifiAwareStateManager.TAG, "processTimeout: msg=" + msg);
            }
            if (this.mCurrentCommand == null) {
                Log.wtf(WifiAwareStateManager.TAG, "processTimeout: no existing command stored!? msg=" + msg);
                this.mCurrentTransactionId = 0;
                return;
            }
            switch (msg.arg1) {
                case 100:
                    WifiAwareStateManager.this.onConfigFailedLocal(this.mCurrentCommand, 1);
                    break;
                case 101:
                    WifiAwareStateManager.this.onConfigFailedLocal(this.mCurrentCommand, 1);
                    break;
                case 102:
                    Log.wtf(WifiAwareStateManager.TAG, "processTimeout: TERMINATE_SESSION - shouldn't be waiting!");
                    break;
                case 103:
                    WifiAwareStateManager.this.onSessionConfigFailLocal(this.mCurrentCommand, true, 1);
                    break;
                case 104:
                    WifiAwareStateManager.this.onSessionConfigFailLocal(this.mCurrentCommand, true, 1);
                    break;
                case 105:
                    WifiAwareStateManager.this.onSessionConfigFailLocal(this.mCurrentCommand, false, 1);
                    break;
                case 106:
                    WifiAwareStateManager.this.onSessionConfigFailLocal(this.mCurrentCommand, false, 1);
                    break;
                case 107:
                    Log.wtf(WifiAwareStateManager.TAG, "processTimeout: ENQUEUE_SEND_MESSAGE - shouldn't be waiting!");
                    break;
                case 108:
                    Log.wtf(WifiAwareStateManager.TAG, "processTimeout: ENABLE_USAGE - shouldn't be waiting!");
                    break;
                case WifiAwareStateManager.COMMAND_TYPE_DISABLE_USAGE /*109*/:
                    Log.wtf(WifiAwareStateManager.TAG, "processTimeout: DISABLE_USAGE - shouldn't be waiting!");
                    break;
                case WifiAwareStateManager.COMMAND_TYPE_GET_CAPABILITIES /*111*/:
                    Log.e(WifiAwareStateManager.TAG, "processTimeout: GET_CAPABILITIES timed-out - strange, will try again when next enabled!?");
                    break;
                case 112:
                    Log.wtf(WifiAwareStateManager.TAG, "processTimeout: CREATE_ALL_DATA_PATH_INTERFACES - shouldn't be waiting!");
                    break;
                case 113:
                    Log.wtf(WifiAwareStateManager.TAG, "processTimeout: DELETE_ALL_DATA_PATH_INTERFACES - shouldn't be waiting!");
                    break;
                case WifiAwareStateManager.COMMAND_TYPE_CREATE_DATA_PATH_INTERFACE /*114*/:
                    WifiAwareStateManager.this.onCreateDataPathInterfaceResponseLocal(this.mCurrentCommand, false, 0);
                    break;
                case WifiAwareStateManager.COMMAND_TYPE_DELETE_DATA_PATH_INTERFACE /*115*/:
                    WifiAwareStateManager.this.onDeleteDataPathInterfaceResponseLocal(this.mCurrentCommand, false, 0);
                    break;
                case WifiAwareStateManager.COMMAND_TYPE_INITIATE_DATA_PATH_SETUP /*116*/:
                    WifiAwareStateManager.this.onInitiateDataPathResponseFailLocal(this.mCurrentCommand, 0);
                    break;
                case WifiAwareStateManager.COMMAND_TYPE_RESPOND_TO_DATA_PATH_SETUP_REQUEST /*117*/:
                    WifiAwareStateManager.this.onRespondToDataPathSetupRequestResponseLocal(this.mCurrentCommand, false, 0);
                    break;
                case WifiAwareStateManager.COMMAND_TYPE_END_DATA_PATH /*118*/:
                    WifiAwareStateManager.this.onEndPathEndResponseLocal(this.mCurrentCommand, false, 0);
                    break;
                case WifiAwareStateManager.COMMAND_TYPE_TRANSMIT_NEXT_MESSAGE /*119*/:
                    WifiAwareStateManager.this.onMessageSendFailLocal((Message) this.mCurrentCommand.getData().getParcelable(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_SENT_MESSAGE), 1);
                    this.mSendQueueBlocked = false;
                    WifiAwareStateManager.this.transmitNextMessage();
                    break;
                case 120:
                    WifiAwareStateManager.this.onConfigFailedLocal(this.mCurrentCommand, 1);
                    break;
                case WifiAwareStateManager.COMMAND_TYPE_DELAYED_INITIALIZATION /*121*/:
                    Log.wtf(WifiAwareStateManager.TAG, "processTimeout: COMMAND_TYPE_DELAYED_INITIALIZATION - shouldn't be waiting!");
                    break;
                case WifiAwareStateManager.COMMAND_TYPE_GET_AWARE /*122*/:
                    Log.wtf(WifiAwareStateManager.TAG, "processTimeout: COMMAND_TYPE_GET_AWARE - shouldn't be waiting!");
                    break;
                case WifiAwareStateManager.COMMAND_TYPE_RELEASE_AWARE /*123*/:
                    Log.wtf(WifiAwareStateManager.TAG, "processTimeout: COMMAND_TYPE_RELEASE_AWARE - shouldn't be waiting!");
                    break;
                default:
                    Log.wtf(WifiAwareStateManager.TAG, "processTimeout: this isn't a COMMAND -- msg=" + msg);
                    break;
            }
            this.mCurrentCommand = null;
            this.mCurrentTransactionId = 0;
        }

        private void updateSendMessageTimeout() {
            Iterator<Message> it = this.mFwQueuedSendMessages.values().iterator();
            if (it.hasNext()) {
                this.mSendMessageTimeoutMessage.schedule(it.next().getData().getLong(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_SEND_MESSAGE_ENQUEUE_TIME) + 10000);
            } else {
                this.mSendMessageTimeoutMessage.cancel();
            }
        }

        /* access modifiers changed from: private */
        public void processSendMessageTimeout() {
            if (WifiAwareStateManager.this.mDbg) {
                Log.v(WifiAwareStateManager.TAG, "processSendMessageTimeout: mHostQueuedSendMessages.size()=" + this.mHostQueuedSendMessages.size() + ", mFwQueuedSendMessages.size()=" + this.mFwQueuedSendMessages.size() + ", mSendQueueBlocked=" + this.mSendQueueBlocked);
            }
            boolean first = true;
            long currentTime = SystemClock.elapsedRealtime();
            Iterator<Map.Entry<Short, Message>> it = this.mFwQueuedSendMessages.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<Short, Message> entry = it.next();
                short transactionId = entry.getKey().shortValue();
                Message message = entry.getValue();
                long messageEnqueueTime = message.getData().getLong(WifiAwareStateManager.MESSAGE_BUNDLE_KEY_SEND_MESSAGE_ENQUEUE_TIME);
                if (!first && 10000 + messageEnqueueTime > currentTime) {
                    break;
                }
                if (WifiAwareStateManager.this.mDbg) {
                    Log.v(WifiAwareStateManager.TAG, "processSendMessageTimeout: expiring - transactionId=" + transactionId + ", message=" + message + ", due to messageEnqueueTime=" + messageEnqueueTime + ", currentTime=" + currentTime);
                }
                WifiAwareStateManager.this.onMessageSendFailLocal(message, 1);
                it.remove();
                first = false;
            }
            updateSendMessageTimeout();
            this.mSendQueueBlocked = false;
            WifiAwareStateManager.this.transmitNextMessage();
        }

        /* access modifiers changed from: protected */
        public String getLogRecString(Message msg) {
            StringBuilder sb = new StringBuilder(WifiAwareStateManager.messageToString(msg));
            if (msg.what == 1 && this.mCurrentTransactionId != 0) {
                sb.append(" (Transaction ID=");
                sb.append(this.mCurrentTransactionId);
                sb.append(")");
            }
            return sb.toString();
        }

        public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
            pw.println("WifiAwareStateMachine:");
            pw.println("  mNextTransactionId: " + this.mNextTransactionId);
            pw.println("  mNextSessionId: " + this.mNextSessionId);
            pw.println("  mCurrentCommand: " + this.mCurrentCommand);
            pw.println("  mCurrentTransaction: " + this.mCurrentTransactionId);
            pw.println("  mSendQueueBlocked: " + this.mSendQueueBlocked);
            pw.println("  mSendArrivalSequenceCounter: " + this.mSendArrivalSequenceCounter);
            pw.println("  mHostQueuedSendMessages: [" + this.mHostQueuedSendMessages + "]");
            pw.println("  mFwQueuedSendMessages: [" + this.mFwQueuedSendMessages + "]");
            WifiAwareStateManager.super.dump(fd, pw, args);
        }
    }

    /* access modifiers changed from: private */
    public void sendAwareStateChangedBroadcast(boolean enabled) {
        Intent intent = new Intent("android.net.wifi.aware.action.WIFI_AWARE_STATE_CHANGED");
        intent.addFlags(1073741824);
        this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL);
    }

    /* access modifiers changed from: private */
    public boolean connectLocal(short transactionId, int clientId, int uid, int pid, String callingPackage, IWifiAwareEventCallback callback, ConfigRequest configRequest, boolean notifyIdentityChange) {
        ConfigRequest merged;
        boolean z;
        int i = clientId;
        IWifiAwareEventCallback iWifiAwareEventCallback = callback;
        ConfigRequest configRequest2 = configRequest;
        boolean z2 = notifyIdentityChange;
        if (!this.mUsageEnabled) {
            Log.w(TAG, "connect(): called with mUsageEnabled=false");
            try {
                iWifiAwareEventCallback.onConnectFail(1);
                this.mAwareMetrics.recordAttachStatus(1);
            } catch (RemoteException e) {
                Log.w(TAG, "connectLocal onConnectFail(): RemoteException (FYI): " + e);
            }
            return false;
        }
        if (this.mClients.get(i) != null) {
            Log.e(TAG, "connectLocal: entry already exists for clientId=" + i);
        }
        ConfigRequest merged2 = mergeConfigRequests(configRequest2);
        if (merged2 == null) {
            Log.e(TAG, "connectLocal: requested configRequest=" + configRequest2 + ", incompatible with current configurations");
            try {
                iWifiAwareEventCallback.onConnectFail(1);
                this.mAwareMetrics.recordAttachStatus(1);
            } catch (RemoteException e2) {
                Log.w(TAG, "connectLocal onConnectFail(): RemoteException (FYI): " + e2);
            }
            return false;
        }
        ConfigRequest configRequest3 = this.mCurrentAwareConfiguration;
        if (configRequest3 == null || !configRequest3.equals(merged2)) {
            z = z2;
            merged = merged2;
            int i2 = uid;
        } else if (this.mCurrentIdentityNotification || !z2) {
            try {
                iWifiAwareEventCallback.onConnectSuccess(i);
            } catch (RemoteException e3) {
                Log.w(TAG, "connectLocal onConnectSuccess(): RemoteException (FYI): " + e3);
            }
            ConfigRequest configRequest4 = merged2;
            WifiAwareClientState wifiAwareClientState = new WifiAwareClientState(this.mContext, clientId, uid, pid, callingPackage, callback, configRequest, notifyIdentityChange, SystemClock.elapsedRealtime(), this.mWifiPermissionsUtil);
            wifiAwareClientState.mDbg = this.mDbg;
            wifiAwareClientState.onInterfaceAddressChange(this.mCurrentDiscoveryInterfaceMac);
            this.mClients.append(i, wifiAwareClientState);
            this.mAwareMetrics.recordAttachSession(uid, z2, this.mClients);
            return false;
        } else {
            z = z2;
            merged = merged2;
            int i3 = uid;
        }
        boolean notificationRequired = doesAnyClientNeedIdentityChangeNotifications() || z;
        if (this.mCurrentAwareConfiguration == null) {
            this.mWifiAwareNativeManager.tryToGetAware();
        }
        boolean success = this.mWifiAwareNativeApi.enableAndConfigure(transactionId, merged, notificationRequired, this.mCurrentAwareConfiguration == null, this.mPowerManager.isInteractive(), this.mPowerManager.isDeviceIdleMode());
        if (!success) {
            try {
                callback.onConnectFail(1);
                this.mAwareMetrics.recordAttachStatus(1);
            } catch (RemoteException e4) {
                Log.w(TAG, "connectLocal onConnectFail(): RemoteException (FYI):  " + e4);
            }
        } else {
            IWifiAwareEventCallback iWifiAwareEventCallback2 = callback;
        }
        return success;
    }

    /* access modifiers changed from: private */
    public boolean disconnectLocal(short transactionId, int clientId) {
        WifiAwareClientState client = this.mClients.get(clientId);
        if (client == null) {
            Log.e(TAG, "disconnectLocal: no entry for clientId=" + clientId);
            return false;
        }
        this.mClients.delete(clientId);
        this.mAwareMetrics.recordAttachSessionDuration(client.getCreationTime());
        SparseArray<WifiAwareDiscoverySessionState> sessions = client.getSessions();
        for (int i = 0; i < sessions.size(); i++) {
            this.mAwareMetrics.recordDiscoverySessionDuration(sessions.valueAt(i).getCreationTime(), sessions.valueAt(i).isPublishSession());
        }
        client.destroy();
        if (this.mClients.size() == 0) {
            this.mCurrentAwareConfiguration = null;
            deleteAllDataPathInterfaces();
            return this.mWifiAwareNativeApi.disable(transactionId);
        }
        ConfigRequest merged = mergeConfigRequests((ConfigRequest) null);
        if (merged == null) {
            Log.wtf(TAG, "disconnectLocal: got an incompatible merge on remaining configs!?");
            return false;
        }
        boolean notificationReqs = doesAnyClientNeedIdentityChangeNotifications();
        if (merged.equals(this.mCurrentAwareConfiguration) && this.mCurrentIdentityNotification == notificationReqs) {
            return false;
        }
        return this.mWifiAwareNativeApi.enableAndConfigure(transactionId, merged, notificationReqs, false, this.mPowerManager.isInteractive(), this.mPowerManager.isDeviceIdleMode());
    }

    /* access modifiers changed from: private */
    public boolean reconfigureLocal(short transactionId) {
        if (this.mClients.size() == 0) {
            return false;
        }
        boolean notificationReqs = doesAnyClientNeedIdentityChangeNotifications();
        return this.mWifiAwareNativeApi.enableAndConfigure(transactionId, this.mCurrentAwareConfiguration, notificationReqs, false, this.mPowerManager.isInteractive(), this.mPowerManager.isDeviceIdleMode());
    }

    /* access modifiers changed from: private */
    public void terminateSessionLocal(int clientId, int sessionId) {
        WifiAwareClientState client = this.mClients.get(clientId);
        if (client == null) {
            Log.e(TAG, "terminateSession: no client exists for clientId=" + clientId);
            return;
        }
        WifiAwareDiscoverySessionState session = client.terminateSession(sessionId);
        if (session != null) {
            this.mAwareMetrics.recordDiscoverySessionDuration(session.getCreationTime(), session.isPublishSession());
        }
    }

    /* access modifiers changed from: private */
    public boolean publishLocal(short transactionId, int clientId, PublishConfig publishConfig, IWifiAwareDiscoverySessionCallback callback) {
        WifiAwareClientState client = this.mClients.get(clientId);
        if (client == null) {
            Log.e(TAG, "publishLocal: no client exists for clientId=" + clientId);
            return false;
        }
        boolean success = this.mWifiAwareNativeApi.publish(transactionId, (byte) 0, publishConfig);
        if (!success) {
            try {
                callback.onSessionConfigFail(1);
            } catch (RemoteException e) {
                Log.w(TAG, "publishLocal onSessionConfigFail(): RemoteException (FYI): " + e);
            }
            this.mAwareMetrics.recordDiscoveryStatus(client.getUid(), 1, true);
        }
        return success;
    }

    /* access modifiers changed from: private */
    public boolean updatePublishLocal(short transactionId, int clientId, int sessionId, PublishConfig publishConfig) {
        WifiAwareClientState client = this.mClients.get(clientId);
        if (client == null) {
            Log.e(TAG, "updatePublishLocal: no client exists for clientId=" + clientId);
            return false;
        }
        WifiAwareDiscoverySessionState session = client.getSession(sessionId);
        if (session == null) {
            Log.e(TAG, "updatePublishLocal: no session exists for clientId=" + clientId + ", sessionId=" + sessionId);
            return false;
        }
        boolean status = session.updatePublish(transactionId, publishConfig);
        if (!status) {
            this.mAwareMetrics.recordDiscoveryStatus(client.getUid(), 1, true);
        }
        return status;
    }

    /* access modifiers changed from: private */
    public boolean subscribeLocal(short transactionId, int clientId, SubscribeConfig subscribeConfig, IWifiAwareDiscoverySessionCallback callback) {
        WifiAwareClientState client = this.mClients.get(clientId);
        if (client == null) {
            Log.e(TAG, "subscribeLocal: no client exists for clientId=" + clientId);
            return false;
        }
        boolean success = this.mWifiAwareNativeApi.subscribe(transactionId, (byte) 0, subscribeConfig);
        if (!success) {
            try {
                callback.onSessionConfigFail(1);
            } catch (RemoteException e) {
                Log.w(TAG, "subscribeLocal onSessionConfigFail(): RemoteException (FYI): " + e);
            }
            this.mAwareMetrics.recordDiscoveryStatus(client.getUid(), 1, false);
        }
        return success;
    }

    /* access modifiers changed from: private */
    public boolean updateSubscribeLocal(short transactionId, int clientId, int sessionId, SubscribeConfig subscribeConfig) {
        WifiAwareClientState client = this.mClients.get(clientId);
        if (client == null) {
            Log.e(TAG, "updateSubscribeLocal: no client exists for clientId=" + clientId);
            return false;
        }
        WifiAwareDiscoverySessionState session = client.getSession(sessionId);
        if (session == null) {
            Log.e(TAG, "updateSubscribeLocal: no session exists for clientId=" + clientId + ", sessionId=" + sessionId);
            return false;
        }
        boolean status = session.updateSubscribe(transactionId, subscribeConfig);
        if (!status) {
            this.mAwareMetrics.recordDiscoveryStatus(client.getUid(), 1, false);
        }
        return status;
    }

    /* access modifiers changed from: private */
    public boolean sendFollowonMessageLocal(short transactionId, int clientId, int sessionId, int peerId, byte[] message, int messageId) {
        WifiAwareClientState client = this.mClients.get(clientId);
        if (client == null) {
            Log.e(TAG, "sendFollowonMessageLocal: no client exists for clientId=" + clientId);
            return false;
        }
        WifiAwareDiscoverySessionState session = client.getSession(sessionId);
        if (session != null) {
            return session.sendMessage(transactionId, peerId, message, messageId);
        }
        Log.e(TAG, "sendFollowonMessageLocal: no session exists for clientId=" + clientId + ", sessionId=" + sessionId);
        return false;
    }

    /* access modifiers changed from: private */
    public void enableUsageLocal() {
        if (this.mCapabilities == null) {
            getAwareInterface();
            queryCapabilities();
            releaseAwareInterface();
        }
        if (!this.mUsageEnabled) {
            this.mUsageEnabled = true;
            sendAwareStateChangedBroadcast(true);
            this.mAwareMetrics.recordEnableUsage();
        }
    }

    /* access modifiers changed from: private */
    public boolean disableUsageLocal(short transactionId) {
        if (!this.mUsageEnabled) {
            return false;
        }
        onAwareDownLocal();
        this.mUsageEnabled = false;
        boolean callDispatched = this.mWifiAwareNativeApi.disable(transactionId);
        sendAwareStateChangedBroadcast(false);
        this.mAwareMetrics.recordDisableUsage();
        return callDispatched;
    }

    /* access modifiers changed from: private */
    public boolean initiateDataPathSetupLocal(short transactionId, WifiAwareNetworkSpecifier networkSpecifier, int peerId, int channelRequestType, int channel, byte[] peer, String interfaceName, byte[] pmk, String passphrase, boolean isOutOfBand, byte[] appInfo) {
        boolean success = this.mWifiAwareNativeApi.initiateDataPath(transactionId, peerId, channelRequestType, channel, peer, interfaceName, pmk, passphrase, isOutOfBand, appInfo, this.mCapabilities);
        if (!success) {
            WifiAwareNetworkSpecifier wifiAwareNetworkSpecifier = networkSpecifier;
            this.mDataPathMgr.onDataPathInitiateFail(networkSpecifier, 1);
        } else {
            WifiAwareNetworkSpecifier wifiAwareNetworkSpecifier2 = networkSpecifier;
        }
        return success;
    }

    /* access modifiers changed from: private */
    public boolean respondToDataPathRequestLocal(short transactionId, boolean accept, int ndpId, String interfaceName, byte[] pmk, String passphrase, byte[] appInfo, boolean isOutOfBand) {
        boolean success = this.mWifiAwareNativeApi.respondToDataPathRequest(transactionId, accept, ndpId, interfaceName, pmk, passphrase, appInfo, isOutOfBand, this.mCapabilities);
        if (!success) {
            int i = ndpId;
            this.mDataPathMgr.onRespondToDataPathRequest(ndpId, false, 1);
        } else {
            int i2 = ndpId;
        }
        return success;
    }

    /* access modifiers changed from: private */
    public boolean endDataPathLocal(short transactionId, int ndpId) {
        return this.mWifiAwareNativeApi.endDataPath(transactionId, ndpId);
    }

    /* access modifiers changed from: private */
    public void onConfigCompletedLocal(Message completedCommand) {
        String str;
        Message message = completedCommand;
        if (message.arg1 == 100) {
            Bundle data = completedCommand.getData();
            int clientId = message.arg2;
            IWifiAwareEventCallback callback = (IWifiAwareEventCallback) message.obj;
            int uid = data.getInt(MESSAGE_BUNDLE_KEY_UID);
            int pid = data.getInt("pid");
            boolean notifyIdentityChange = data.getBoolean(MESSAGE_BUNDLE_KEY_NOTIFY_IDENTITY_CHANGE);
            String callingPackage = data.getString(MESSAGE_BUNDLE_KEY_CALLING_PACKAGE);
            Context context = this.mContext;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            WifiPermissionsUtil wifiPermissionsUtil = this.mWifiPermissionsUtil;
            boolean notifyIdentityChange2 = notifyIdentityChange;
            Bundle bundle = data;
            String str2 = TAG;
            int clientId2 = clientId;
            IWifiAwareEventCallback callback2 = callback;
            WifiAwareClientState client = new WifiAwareClientState(context, clientId, uid, pid, callingPackage, callback, data.getParcelable(MESSAGE_BUNDLE_KEY_CONFIG), notifyIdentityChange2, elapsedRealtime, wifiPermissionsUtil);
            client.mDbg = this.mDbg;
            this.mClients.put(clientId2, client);
            this.mAwareMetrics.recordAttachSession(uid, notifyIdentityChange2, this.mClients);
            try {
                callback2.onConnectSuccess(clientId2);
                str = str2;
            } catch (RemoteException e) {
                str = str2;
                Log.w(str, "onConfigCompletedLocal onConnectSuccess(): RemoteException (FYI): " + e);
            }
            client.onInterfaceAddressChange(this.mCurrentDiscoveryInterfaceMac);
            Message message2 = completedCommand;
        } else {
            str = TAG;
            Message message3 = completedCommand;
            if (!(message3.arg1 == 101 || message3.arg1 == 120)) {
                Log.wtf(str, "onConfigCompletedLocal: unexpected completedCommand=" + message3);
                return;
            }
        }
        if (this.mCurrentAwareConfiguration == null) {
            createAllDataPathInterfaces();
        }
        this.mCurrentAwareConfiguration = mergeConfigRequests((ConfigRequest) null);
        if (this.mCurrentAwareConfiguration == null) {
            Log.wtf(str, "onConfigCompletedLocal: got a null merged configuration after config!?");
        }
        this.mCurrentIdentityNotification = doesAnyClientNeedIdentityChangeNotifications();
    }

    /* access modifiers changed from: private */
    public void onConfigFailedLocal(Message failedCommand, int reason) {
        if (failedCommand.arg1 == 100) {
            try {
                ((IWifiAwareEventCallback) failedCommand.obj).onConnectFail(reason);
                this.mAwareMetrics.recordAttachStatus(reason);
            } catch (RemoteException e) {
                Log.w(TAG, "onConfigFailedLocal onConnectFail(): RemoteException (FYI): " + e);
            }
        } else if (failedCommand.arg1 != 101 && failedCommand.arg1 != 120) {
            Log.wtf(TAG, "onConfigFailedLocal: unexpected failedCommand=" + failedCommand);
        }
    }

    /* access modifiers changed from: private */
    public void onDisableResponseLocal(Message command, int reason) {
        if (reason != 0) {
            Log.e(TAG, "onDisableResponseLocal: FAILED!? command=" + command + ", reason=" + reason);
        }
        this.mAwareMetrics.recordDisableAware();
    }

    /* access modifiers changed from: private */
    public void onSessionConfigSuccessLocal(Message completedCommand, byte pubSubId, boolean isPublish) {
        int maxRange;
        boolean isRangingEnabled;
        Message message = completedCommand;
        if (message.arg1 == 103 || message.arg1 == 105) {
            int clientId = message.arg2;
            IWifiAwareDiscoverySessionCallback callback = (IWifiAwareDiscoverySessionCallback) message.obj;
            WifiAwareClientState client = this.mClients.get(clientId);
            if (client == null) {
                Log.e(TAG, "onSessionConfigSuccessLocal: no client exists for clientId=" + clientId);
                return;
            }
            WifiAwareStateMachine wifiAwareStateMachine = this.mSm;
            int sessionId = wifiAwareStateMachine.mNextSessionId;
            wifiAwareStateMachine.mNextSessionId = sessionId + 1;
            try {
                callback.onSessionStarted(sessionId);
                int minRange = -1;
                if (message.arg1 == 103) {
                    isRangingEnabled = ((PublishConfig) completedCommand.getData().getParcelable(MESSAGE_BUNDLE_KEY_CONFIG)).mEnableRanging;
                    maxRange = -1;
                } else {
                    SubscribeConfig subscribeConfig = (SubscribeConfig) completedCommand.getData().getParcelable(MESSAGE_BUNDLE_KEY_CONFIG);
                    isRangingEnabled = subscribeConfig.mMinDistanceMmSet || subscribeConfig.mMaxDistanceMmSet;
                    if (subscribeConfig.mMinDistanceMmSet) {
                        minRange = subscribeConfig.mMinDistanceMm;
                    }
                    if (subscribeConfig.mMaxDistanceMmSet) {
                        maxRange = subscribeConfig.mMaxDistanceMm;
                    } else {
                        maxRange = -1;
                    }
                }
                WifiAwareClientState client2 = client;
                IWifiAwareDiscoverySessionCallback iWifiAwareDiscoverySessionCallback = callback;
                WifiAwareDiscoverySessionState session = new WifiAwareDiscoverySessionState(this.mWifiAwareNativeApi, sessionId, pubSubId, callback, isPublish, isRangingEnabled, SystemClock.elapsedRealtime());
                session.mDbg = this.mDbg;
                client2.addSession(session);
                if (isRangingEnabled) {
                    this.mAwareMetrics.recordDiscoverySessionWithRanging(client2.getUid(), message.arg1 != 103, minRange, maxRange, this.mClients);
                } else {
                    this.mAwareMetrics.recordDiscoverySession(client2.getUid(), this.mClients);
                }
                this.mAwareMetrics.recordDiscoveryStatus(client2.getUid(), 0, message.arg1 == 103);
            } catch (RemoteException e) {
                WifiAwareClientState wifiAwareClientState = client;
                IWifiAwareDiscoverySessionCallback iWifiAwareDiscoverySessionCallback2 = callback;
                Log.e(TAG, "onSessionConfigSuccessLocal: onSessionStarted() RemoteException=" + e);
            }
        } else if (message.arg1 == 104 || message.arg1 == 106) {
            int clientId2 = message.arg2;
            int sessionId2 = completedCommand.getData().getInt(MESSAGE_BUNDLE_KEY_SESSION_ID);
            WifiAwareClientState client3 = this.mClients.get(clientId2);
            if (client3 == null) {
                Log.e(TAG, "onSessionConfigSuccessLocal: no client exists for clientId=" + clientId2);
                return;
            }
            WifiAwareDiscoverySessionState session2 = client3.getSession(sessionId2);
            if (session2 == null) {
                Log.e(TAG, "onSessionConfigSuccessLocal: no session exists for clientId=" + clientId2 + ", sessionId=" + sessionId2);
                return;
            }
            try {
                session2.getCallback().onSessionConfigSuccess();
            } catch (RemoteException e2) {
                Log.e(TAG, "onSessionConfigSuccessLocal: onSessionConfigSuccess() RemoteException=" + e2);
            }
            this.mAwareMetrics.recordDiscoveryStatus(client3.getUid(), 0, message.arg1 == 104);
        } else {
            Log.wtf(TAG, "onSessionConfigSuccessLocal: unexpected completedCommand=" + message);
        }
    }

    /* access modifiers changed from: private */
    public void onSessionConfigFailLocal(Message failedCommand, boolean isPublish, int reason) {
        boolean z = true;
        if (failedCommand.arg1 == 103 || failedCommand.arg1 == 105) {
            int clientId = failedCommand.arg2;
            IWifiAwareDiscoverySessionCallback callback = (IWifiAwareDiscoverySessionCallback) failedCommand.obj;
            WifiAwareClientState client = this.mClients.get(clientId);
            if (client == null) {
                Log.e(TAG, "onSessionConfigFailLocal: no client exists for clientId=" + clientId);
                return;
            }
            try {
                callback.onSessionConfigFail(reason);
            } catch (RemoteException e) {
                Log.w(TAG, "onSessionConfigFailLocal onSessionConfigFail(): RemoteException (FYI): " + e);
            }
            WifiAwareMetrics wifiAwareMetrics = this.mAwareMetrics;
            int uid = client.getUid();
            if (failedCommand.arg1 != 103) {
                z = false;
            }
            wifiAwareMetrics.recordDiscoveryStatus(uid, reason, z);
        } else if (failedCommand.arg1 == 104 || failedCommand.arg1 == 106) {
            int clientId2 = failedCommand.arg2;
            int sessionId = failedCommand.getData().getInt(MESSAGE_BUNDLE_KEY_SESSION_ID);
            WifiAwareClientState client2 = this.mClients.get(clientId2);
            if (client2 == null) {
                Log.e(TAG, "onSessionConfigFailLocal: no client exists for clientId=" + clientId2);
                return;
            }
            WifiAwareDiscoverySessionState session = client2.getSession(sessionId);
            if (session == null) {
                Log.e(TAG, "onSessionConfigFailLocal: no session exists for clientId=" + clientId2 + ", sessionId=" + sessionId);
                return;
            }
            try {
                session.getCallback().onSessionConfigFail(reason);
            } catch (RemoteException e2) {
                Log.e(TAG, "onSessionConfigFailLocal: onSessionConfigFail() RemoteException=" + e2);
            }
            WifiAwareMetrics wifiAwareMetrics2 = this.mAwareMetrics;
            int uid2 = client2.getUid();
            if (failedCommand.arg1 != 104) {
                z = false;
            }
            wifiAwareMetrics2.recordDiscoveryStatus(uid2, reason, z);
            if (reason == 3) {
                client2.removeSession(sessionId);
            }
        } else {
            Log.wtf(TAG, "onSessionConfigFailLocal: unexpected failedCommand=" + failedCommand);
        }
    }

    /* access modifiers changed from: private */
    public void onMessageSendSuccessLocal(Message completedCommand) {
        int clientId = completedCommand.arg2;
        int sessionId = completedCommand.getData().getInt(MESSAGE_BUNDLE_KEY_SESSION_ID);
        int messageId = completedCommand.getData().getInt(MESSAGE_BUNDLE_KEY_MESSAGE_ID);
        WifiAwareClientState client = this.mClients.get(clientId);
        if (client == null) {
            Log.e(TAG, "onMessageSendSuccessLocal: no client exists for clientId=" + clientId);
            return;
        }
        WifiAwareDiscoverySessionState session = client.getSession(sessionId);
        if (session == null) {
            Log.e(TAG, "onMessageSendSuccessLocal: no session exists for clientId=" + clientId + ", sessionId=" + sessionId);
            return;
        }
        try {
            session.getCallback().onMessageSendSuccess(messageId);
        } catch (RemoteException e) {
            Log.w(TAG, "onMessageSendSuccessLocal: RemoteException (FYI): " + e);
        }
    }

    /* access modifiers changed from: private */
    public void onMessageSendFailLocal(Message failedCommand, int reason) {
        int clientId = failedCommand.arg2;
        int sessionId = failedCommand.getData().getInt(MESSAGE_BUNDLE_KEY_SESSION_ID);
        int messageId = failedCommand.getData().getInt(MESSAGE_BUNDLE_KEY_MESSAGE_ID);
        WifiAwareClientState client = this.mClients.get(clientId);
        if (client == null) {
            Log.e(TAG, "onMessageSendFailLocal: no client exists for clientId=" + clientId);
            return;
        }
        WifiAwareDiscoverySessionState session = client.getSession(sessionId);
        if (session == null) {
            Log.e(TAG, "onMessageSendFailLocal: no session exists for clientId=" + clientId + ", sessionId=" + sessionId);
            return;
        }
        try {
            session.getCallback().onMessageSendFail(messageId, reason);
        } catch (RemoteException e) {
            Log.e(TAG, "onMessageSendFailLocal: onMessageSendFail RemoteException=" + e);
        }
    }

    /* access modifiers changed from: private */
    public void onCapabilitiesUpdatedResponseLocal(Capabilities capabilities) {
        this.mCapabilities = capabilities;
        this.mCharacteristics = null;
    }

    /* access modifiers changed from: private */
    public void onCreateDataPathInterfaceResponseLocal(Message command, boolean success, int reasonOnFailure) {
        if (success) {
            this.mDataPathMgr.onInterfaceCreated((String) command.obj);
            return;
        }
        Log.e(TAG, "onCreateDataPathInterfaceResponseLocal: failed when trying to create interface " + command.obj + ". Reason code=" + reasonOnFailure);
    }

    /* access modifiers changed from: private */
    public void onDeleteDataPathInterfaceResponseLocal(Message command, boolean success, int reasonOnFailure) {
        if (success) {
            this.mDataPathMgr.onInterfaceDeleted((String) command.obj);
            return;
        }
        Log.e(TAG, "onDeleteDataPathInterfaceResponseLocal: failed when trying to delete interface " + command.obj + ". Reason code=" + reasonOnFailure);
    }

    /* access modifiers changed from: private */
    public void onInitiateDataPathResponseSuccessLocal(Message command, int ndpId) {
        this.mDataPathMgr.onDataPathInitiateSuccess((WifiAwareNetworkSpecifier) command.obj, ndpId);
    }

    /* access modifiers changed from: private */
    public void onInitiateDataPathResponseFailLocal(Message command, int reason) {
        this.mDataPathMgr.onDataPathInitiateFail((WifiAwareNetworkSpecifier) command.obj, reason);
    }

    /* access modifiers changed from: private */
    public void onRespondToDataPathSetupRequestResponseLocal(Message command, boolean success, int reasonOnFailure) {
        this.mDataPathMgr.onRespondToDataPathRequest(command.arg2, success, reasonOnFailure);
    }

    /* access modifiers changed from: private */
    public void onEndPathEndResponseLocal(Message command, boolean success, int reasonOnFailure) {
    }

    /* access modifiers changed from: private */
    public void onInterfaceAddressChangeLocal(byte[] mac) {
        this.mCurrentDiscoveryInterfaceMac = mac;
        for (int i = 0; i < this.mClients.size(); i++) {
            this.mClients.valueAt(i).onInterfaceAddressChange(mac);
        }
        this.mAwareMetrics.recordEnableAware();
    }

    /* access modifiers changed from: private */
    public void onClusterChangeLocal(int flag, byte[] clusterId) {
        for (int i = 0; i < this.mClients.size(); i++) {
            this.mClients.valueAt(i).onClusterChange(flag, clusterId, this.mCurrentDiscoveryInterfaceMac);
        }
        this.mAwareMetrics.recordEnableAware();
    }

    /* access modifiers changed from: private */
    public void onMatchLocal(int pubSubId, int requestorInstanceId, byte[] peerMac, byte[] serviceSpecificInfo, byte[] matchFilter, int rangingIndication, int rangeMm) {
        Pair<WifiAwareClientState, WifiAwareDiscoverySessionState> data = getClientSessionForPubSubId(pubSubId);
        if (data == null) {
            StringBuilder sb = new StringBuilder();
            sb.append("onMatch: no session found for pubSubId=");
            int i = pubSubId;
            sb.append(pubSubId);
            Log.e(TAG, sb.toString());
            return;
        }
        int i2 = pubSubId;
        if (((WifiAwareDiscoverySessionState) data.second).isRangingEnabled()) {
            this.mAwareMetrics.recordMatchIndicationForRangeEnabledSubscribe(rangingIndication != 0);
        }
        ((WifiAwareDiscoverySessionState) data.second).onMatch(requestorInstanceId, peerMac, serviceSpecificInfo, matchFilter, rangingIndication, rangeMm);
    }

    /* access modifiers changed from: private */
    public void onSessionTerminatedLocal(int pubSubId, boolean isPublish, int reason) {
        Pair<WifiAwareClientState, WifiAwareDiscoverySessionState> data = getClientSessionForPubSubId(pubSubId);
        if (data == null) {
            Log.e(TAG, "onSessionTerminatedLocal: no session found for pubSubId=" + pubSubId);
            return;
        }
        try {
            ((WifiAwareDiscoverySessionState) data.second).getCallback().onSessionTerminated(reason);
        } catch (RemoteException e) {
            Log.w(TAG, "onSessionTerminatedLocal onSessionTerminated(): RemoteException (FYI): " + e);
        }
        ((WifiAwareClientState) data.first).removeSession(((WifiAwareDiscoverySessionState) data.second).getSessionId());
        this.mAwareMetrics.recordDiscoverySessionDuration(((WifiAwareDiscoverySessionState) data.second).getCreationTime(), ((WifiAwareDiscoverySessionState) data.second).isPublishSession());
    }

    /* access modifiers changed from: private */
    public void onMessageReceivedLocal(int pubSubId, int requestorInstanceId, byte[] peerMac, byte[] message) {
        Pair<WifiAwareClientState, WifiAwareDiscoverySessionState> data = getClientSessionForPubSubId(pubSubId);
        if (data == null) {
            Log.e(TAG, "onMessageReceivedLocal: no session found for pubSubId=" + pubSubId);
            return;
        }
        ((WifiAwareDiscoverySessionState) data.second).onMessageReceived(requestorInstanceId, peerMac, message);
    }

    /* access modifiers changed from: private */
    public void onAwareDownLocal() {
        if (this.mCurrentAwareConfiguration != null) {
            for (int i = 0; i < this.mClients.size(); i++) {
                this.mAwareMetrics.recordAttachSessionDuration(this.mClients.valueAt(i).getCreationTime());
                SparseArray<WifiAwareDiscoverySessionState> sessions = this.mClients.valueAt(i).getSessions();
                for (int j = 0; j < sessions.size(); j++) {
                    this.mAwareMetrics.recordDiscoverySessionDuration(sessions.valueAt(j).getCreationTime(), sessions.valueAt(j).isPublishSession());
                }
            }
            this.mAwareMetrics.recordDisableAware();
            this.mClients.clear();
            this.mCurrentAwareConfiguration = null;
            this.mSm.onAwareDownCleanupSendQueueState();
            this.mDataPathMgr.onAwareDownCleanupDataPaths();
            this.mCurrentDiscoveryInterfaceMac = ALL_ZERO_MAC;
            deleteAllDataPathInterfaces();
        }
    }

    private Pair<WifiAwareClientState, WifiAwareDiscoverySessionState> getClientSessionForPubSubId(int pubSubId) {
        for (int i = 0; i < this.mClients.size(); i++) {
            WifiAwareClientState client = this.mClients.valueAt(i);
            WifiAwareDiscoverySessionState session = client.getAwareSessionStateForPubSubId(pubSubId);
            if (session != null) {
                return new Pair<>(client, session);
            }
        }
        return null;
    }

    private ConfigRequest mergeConfigRequests(ConfigRequest configRequest) {
        if (this.mClients.size() == 0 && configRequest == null) {
            Log.e(TAG, "mergeConfigRequests: invalid state - called with 0 clients registered!");
            return null;
        }
        boolean support5gBand = false;
        int masterPreference = 0;
        boolean clusterIdValid = false;
        int clusterLow = 0;
        int clusterHigh = Constants.SHORT_MASK;
        int[] discoveryWindowInterval = {-1, -1};
        if (configRequest != null) {
            support5gBand = configRequest.mSupport5gBand;
            masterPreference = configRequest.mMasterPreference;
            clusterIdValid = true;
            clusterLow = configRequest.mClusterLow;
            clusterHigh = configRequest.mClusterHigh;
            discoveryWindowInterval = configRequest.mDiscoveryWindowInterval;
        }
        for (int i = 0; i < this.mClients.size(); i++) {
            ConfigRequest cr = this.mClients.valueAt(i).getConfigRequest();
            if (cr.mSupport5gBand) {
                support5gBand = true;
            }
            masterPreference = Math.max(masterPreference, cr.mMasterPreference);
            if (!clusterIdValid) {
                clusterIdValid = true;
                clusterLow = cr.mClusterLow;
                clusterHigh = cr.mClusterHigh;
            } else if (!(clusterLow == cr.mClusterLow && clusterHigh == cr.mClusterHigh)) {
                return null;
            }
            for (int band = 0; band <= 1; band++) {
                if (discoveryWindowInterval[band] == -1) {
                    discoveryWindowInterval[band] = cr.mDiscoveryWindowInterval[band];
                } else if (cr.mDiscoveryWindowInterval[band] != -1) {
                    if (discoveryWindowInterval[band] == 0) {
                        discoveryWindowInterval[band] = cr.mDiscoveryWindowInterval[band];
                    } else if (cr.mDiscoveryWindowInterval[band] != 0) {
                        discoveryWindowInterval[band] = Math.min(discoveryWindowInterval[band], cr.mDiscoveryWindowInterval[band]);
                    }
                }
            }
        }
        ConfigRequest.Builder builder = new ConfigRequest.Builder().setSupport5gBand(support5gBand).setMasterPreference(masterPreference).setClusterLow(clusterLow).setClusterHigh(clusterHigh);
        for (int band2 = 0; band2 <= 1; band2++) {
            if (discoveryWindowInterval[band2] != -1) {
                builder.setDiscoveryWindowInterval(band2, discoveryWindowInterval[band2]);
            }
        }
        return builder.build();
    }

    private boolean doesAnyClientNeedIdentityChangeNotifications() {
        for (int i = 0; i < this.mClients.size(); i++) {
            if (this.mClients.valueAt(i).getNotifyIdentityChange()) {
                return true;
            }
        }
        return false;
    }

    /* access modifiers changed from: private */
    public static String messageToString(Message msg) {
        StringBuilder sb = new StringBuilder();
        String s = sSmToString.get(msg.what);
        if (s == null) {
            s = "<unknown>";
        }
        sb.append(s);
        sb.append("/");
        if (msg.what == 3 || msg.what == 1 || msg.what == 2) {
            String s2 = sSmToString.get(msg.arg1);
            if (s2 == null) {
                s2 = "<unknown>";
            }
            sb.append(s2);
        }
        if (msg.what == 2 || msg.what == 4) {
            sb.append(" (Transaction ID=");
            sb.append(msg.arg2);
            sb.append(")");
        }
        return sb.toString();
    }

    public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        pw.println("AwareStateManager:");
        pw.println("  mClients: [" + this.mClients + "]");
        StringBuilder sb = new StringBuilder();
        sb.append("  mUsageEnabled: ");
        sb.append(this.mUsageEnabled);
        pw.println(sb.toString());
        pw.println("  mCapabilities: [" + this.mCapabilities + "]");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("  mCurrentAwareConfiguration: ");
        sb2.append(this.mCurrentAwareConfiguration);
        pw.println(sb2.toString());
        pw.println("  mCurrentIdentityNotification: " + this.mCurrentIdentityNotification);
        for (int i = 0; i < this.mClients.size(); i++) {
            this.mClients.valueAt(i).dump(fd, pw, args);
        }
        pw.println("  mSettableParameters: " + this.mSettableParameters);
        this.mSm.dump(fd, pw, args);
        this.mDataPathMgr.dump(fd, pw, args);
        this.mWifiAwareNativeApi.dump(fd, pw, args);
        pw.println("mAwareMetrics:");
        this.mAwareMetrics.dump(fd, pw, args);
    }
}
