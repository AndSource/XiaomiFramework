package com.android.server.location;

import android.content.Context;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.provider.Telephony;
import android.telephony.ServiceState;
import android.telephony.TelephonyManager;
import android.util.Log;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.HashMap;

class GnssNetworkConnectivityHandler {
    private static final int AGNSS_NET_CAPABILITY_NOT_METERED = 1;
    private static final int AGNSS_NET_CAPABILITY_NOT_ROAMING = 2;
    private static final int AGPS_DATA_CONNECTION_CLOSED = 0;
    private static final int AGPS_DATA_CONNECTION_OPEN = 2;
    private static final int AGPS_DATA_CONNECTION_OPENING = 1;
    public static final int AGPS_TYPE_C2K = 2;
    private static final int AGPS_TYPE_EIMS = 3;
    private static final int AGPS_TYPE_IMS = 4;
    public static final int AGPS_TYPE_SUPL = 1;
    private static final int APN_INVALID = 0;
    private static final int APN_IPV4 = 1;
    private static final int APN_IPV4V6 = 3;
    private static final int APN_IPV6 = 2;
    /* access modifiers changed from: private */
    public static final boolean DEBUG = Log.isLoggable("GnssNetworkConnectivityHandler", 3);
    private static final int GPS_AGPS_DATA_CONNECTED = 3;
    private static final int GPS_AGPS_DATA_CONN_DONE = 4;
    private static final int GPS_AGPS_DATA_CONN_FAILED = 5;
    private static final int GPS_RELEASE_AGPS_DATA_CONN = 2;
    private static final int GPS_REQUEST_AGPS_DATA_CONN = 1;
    private static final int HASH_MAP_INITIAL_CAPACITY_TO_TRACK_CONNECTED_NETWORKS = 5;
    private static final int SUPL_NETWORK_REQUEST_TIMEOUT_MILLIS = 10000;
    static final String TAG = "GnssNetworkConnectivityHandler";
    /* access modifiers changed from: private */
    public static final boolean VERBOSE = Log.isLoggable("GnssNetworkConnectivityHandler", 2);
    private static final String WAKELOCK_KEY = "GnssNetworkConnectivityHandler";
    private static final long WAKELOCK_TIMEOUT_MILLIS = 60000;
    private InetAddress mAGpsDataConnectionIpAddr;
    private int mAGpsDataConnectionState;
    private int mAGpsType;
    private HashMap<Network, NetworkAttributes> mAvailableNetworkAttributes = new HashMap<>(5);
    private final ConnectivityManager mConnMgr;
    private final Context mContext;
    /* access modifiers changed from: private */
    public final GnssNetworkListener mGnssNetworkListener;
    private final Handler mHandler;
    private ConnectivityManager.NetworkCallback mNetworkConnectivityCallback;
    private ConnectivityManager.NetworkCallback mSuplConnectivityCallback;
    private final PowerManager.WakeLock mWakeLock;

    interface GnssNetworkListener {
        void onNetworkAvailable();
    }

    private native void native_agps_data_conn_closed();

    private native void native_agps_data_conn_failed();

    private native void native_agps_data_conn_open(long j, String str, int i);

    private static native boolean native_is_agps_ril_supported();

    private native void native_update_network_state(boolean z, int i, boolean z2, boolean z3, String str, long j, short s);

    private static class NetworkAttributes {
        /* access modifiers changed from: private */
        public String mApn;
        /* access modifiers changed from: private */
        public NetworkCapabilities mCapabilities;
        /* access modifiers changed from: private */
        public int mType;

        private NetworkAttributes() {
            this.mType = -1;
        }

        /* access modifiers changed from: private */
        public static boolean hasCapabilitiesChanged(NetworkCapabilities curCapabilities, NetworkCapabilities newCapabilities) {
            if (curCapabilities == null || newCapabilities == null || hasCapabilityChanged(curCapabilities, newCapabilities, 18) || hasCapabilityChanged(curCapabilities, newCapabilities, 11)) {
                return true;
            }
            return false;
        }

        private static boolean hasCapabilityChanged(NetworkCapabilities curCapabilities, NetworkCapabilities newCapabilities, int capability) {
            return curCapabilities.hasCapability(capability) != newCapabilities.hasCapability(capability);
        }

        /* access modifiers changed from: private */
        public static short getCapabilityFlags(NetworkCapabilities capabilities) {
            short capabilityFlags = 0;
            if (capabilities.hasCapability(18)) {
                capabilityFlags = (short) (0 | 2);
            }
            if (capabilities.hasCapability(11)) {
                return (short) (capabilityFlags | 1);
            }
            return capabilityFlags;
        }
    }

    GnssNetworkConnectivityHandler(Context context, GnssNetworkListener gnssNetworkListener, Looper looper) {
        this.mContext = context;
        this.mGnssNetworkListener = gnssNetworkListener;
        this.mWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(1, "GnssNetworkConnectivityHandler");
        this.mHandler = new Handler(looper);
        this.mConnMgr = (ConnectivityManager) this.mContext.getSystemService("connectivity");
        this.mSuplConnectivityCallback = createSuplConnectivityCallback();
    }

    /* access modifiers changed from: package-private */
    public void registerNetworkCallbacks() {
        NetworkRequest.Builder networkRequestBuilder = new NetworkRequest.Builder();
        networkRequestBuilder.addCapability(12);
        networkRequestBuilder.addCapability(16);
        networkRequestBuilder.removeCapability(15);
        NetworkRequest networkRequest = networkRequestBuilder.build();
        this.mNetworkConnectivityCallback = createNetworkConnectivityCallback();
        this.mConnMgr.registerNetworkCallback(networkRequest, this.mNetworkConnectivityCallback, this.mHandler);
    }

    /* access modifiers changed from: package-private */
    public boolean isDataNetworkConnected() {
        NetworkInfo activeNetworkInfo = this.mConnMgr.getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    /* access modifiers changed from: package-private */
    public void onReportAGpsStatus(int agpsType, int agpsStatus, byte[] suplIpAddr) {
        if (DEBUG) {
            Log.d("GnssNetworkConnectivityHandler", "AGPS_DATA_CONNECTION: " + agpsDataConnStatusAsString(agpsStatus));
        }
        if (agpsStatus == 1) {
            runOnHandler(new Runnable(agpsType, suplIpAddr) {
                private final /* synthetic */ int f$1;
                private final /* synthetic */ byte[] f$2;

                {
                    this.f$1 = r2;
                    this.f$2 = r3;
                }

                public final void run() {
                    GnssNetworkConnectivityHandler.this.lambda$onReportAGpsStatus$0$GnssNetworkConnectivityHandler(this.f$1, this.f$2);
                }
            });
        } else if (agpsStatus == 2) {
            runOnHandler(new Runnable() {
                public final void run() {
                    GnssNetworkConnectivityHandler.this.lambda$onReportAGpsStatus$1$GnssNetworkConnectivityHandler();
                }
            });
        } else if (agpsStatus != 3 && agpsStatus != 4 && agpsStatus != 5) {
            Log.w("GnssNetworkConnectivityHandler", "Received unknown AGPS status: " + agpsStatus);
        }
    }

    public /* synthetic */ void lambda$onReportAGpsStatus$1$GnssNetworkConnectivityHandler() {
        handleReleaseSuplConnection(2);
    }

    private ConnectivityManager.NetworkCallback createNetworkConnectivityCallback() {
        return new ConnectivityManager.NetworkCallback() {
            private HashMap<Network, NetworkCapabilities> mAvailableNetworkCapabilities = new HashMap<>(5);

            public void onCapabilitiesChanged(Network network, NetworkCapabilities capabilities) {
                if (NetworkAttributes.hasCapabilitiesChanged(this.mAvailableNetworkCapabilities.get(network), capabilities)) {
                    this.mAvailableNetworkCapabilities.put(network, capabilities);
                    if (GnssNetworkConnectivityHandler.DEBUG) {
                        Log.d("GnssNetworkConnectivityHandler", "Network connected/capabilities updated. Available networks count: " + this.mAvailableNetworkCapabilities.size());
                    }
                    GnssNetworkConnectivityHandler.this.mGnssNetworkListener.onNetworkAvailable();
                    GnssNetworkConnectivityHandler.this.handleUpdateNetworkState(network, true, capabilities);
                } else if (GnssNetworkConnectivityHandler.VERBOSE) {
                    Log.v("GnssNetworkConnectivityHandler", "Relevant network capabilities unchanged. Capabilities: " + capabilities);
                }
            }

            public void onLost(Network network) {
                if (this.mAvailableNetworkCapabilities.remove(network) == null) {
                    Log.w("GnssNetworkConnectivityHandler", "Incorrectly received network callback onLost() before onCapabilitiesChanged() for network: " + network);
                    return;
                }
                Log.i("GnssNetworkConnectivityHandler", "Network connection lost. Available networks count: " + this.mAvailableNetworkCapabilities.size());
                GnssNetworkConnectivityHandler.this.handleUpdateNetworkState(network, false, (NetworkCapabilities) null);
            }
        };
    }

    private ConnectivityManager.NetworkCallback createSuplConnectivityCallback() {
        return new ConnectivityManager.NetworkCallback() {
            public void onAvailable(Network network) {
                if (GnssNetworkConnectivityHandler.DEBUG) {
                    Log.d("GnssNetworkConnectivityHandler", "SUPL network connection available.");
                }
                GnssNetworkConnectivityHandler.this.handleSuplConnectionAvailable(network);
            }

            public void onLost(Network network) {
                Log.i("GnssNetworkConnectivityHandler", "SUPL network connection lost.");
                GnssNetworkConnectivityHandler.this.handleReleaseSuplConnection(2);
            }

            public void onUnavailable() {
                Log.i("GnssNetworkConnectivityHandler", "SUPL network connection request timed out.");
                GnssNetworkConnectivityHandler.this.handleReleaseSuplConnection(5);
            }
        };
    }

    private void runOnHandler(Runnable event) {
        this.mWakeLock.acquire(60000);
        if (!this.mHandler.post(runEventAndReleaseWakeLock(event))) {
            this.mWakeLock.release();
        }
    }

    private Runnable runEventAndReleaseWakeLock(Runnable event) {
        return new Runnable(event) {
            private final /* synthetic */ Runnable f$1;

            {
                this.f$1 = r2;
            }

            public final void run() {
                GnssNetworkConnectivityHandler.this.lambda$runEventAndReleaseWakeLock$2$GnssNetworkConnectivityHandler(this.f$1);
            }
        };
    }

    public /* synthetic */ void lambda$runEventAndReleaseWakeLock$2$GnssNetworkConnectivityHandler(Runnable event) {
        try {
            event.run();
        } finally {
            this.mWakeLock.release();
        }
    }

    /* access modifiers changed from: private */
    public void handleUpdateNetworkState(Network network, boolean isConnected, NetworkCapabilities capabilities) {
        Network network2 = network;
        boolean z = isConnected;
        boolean networkAvailable = z && TelephonyManager.getDefault().getDataEnabled();
        NetworkAttributes networkAttributes = updateTrackedNetworksState(z, network2, capabilities);
        String apn = networkAttributes.mApn;
        int type = networkAttributes.mType;
        NetworkCapabilities capabilities2 = networkAttributes.mCapabilities;
        Log.i("GnssNetworkConnectivityHandler", String.format("updateNetworkState, state=%s, connected=%s, network=%s, capabilities=%s, apn: %s, availableNetworkCount: %d", new Object[]{agpsDataConnStateAsString(), Boolean.valueOf(isConnected), network2, capabilities2, apn, Integer.valueOf(this.mAvailableNetworkAttributes.size())}));
        if (native_is_agps_ril_supported()) {
            native_update_network_state(isConnected, type, !capabilities2.hasTransport(18), networkAvailable, apn != null ? apn : "", network.getNetworkHandle(), NetworkAttributes.getCapabilityFlags(capabilities2));
        } else if (DEBUG) {
            Log.d("GnssNetworkConnectivityHandler", "Skipped network state update because GPS HAL AGPS-RIL is not  supported");
        }
    }

    private NetworkAttributes updateTrackedNetworksState(boolean isConnected, Network network, NetworkCapabilities capabilities) {
        if (!isConnected) {
            return this.mAvailableNetworkAttributes.remove(network);
        }
        NetworkAttributes networkAttributes = this.mAvailableNetworkAttributes.get(network);
        if (networkAttributes != null) {
            NetworkCapabilities unused = networkAttributes.mCapabilities = capabilities;
            return networkAttributes;
        }
        NetworkAttributes networkAttributes2 = new NetworkAttributes();
        NetworkCapabilities unused2 = networkAttributes2.mCapabilities = capabilities;
        NetworkInfo info = this.mConnMgr.getNetworkInfo(network);
        if (info != null) {
            String unused3 = networkAttributes2.mApn = info.getExtraInfo();
            int unused4 = networkAttributes2.mType = info.getType();
        }
        this.mAvailableNetworkAttributes.put(network, networkAttributes2);
        return networkAttributes2;
    }

    /* access modifiers changed from: private */
    public void handleSuplConnectionAvailable(Network network) {
        NetworkInfo info = this.mConnMgr.getNetworkInfo(network);
        String apn = null;
        if (info != null) {
            apn = info.getExtraInfo();
        }
        if (DEBUG) {
            Log.d("GnssNetworkConnectivityHandler", String.format("handleSuplConnectionAvailable: state=%s, suplNetwork=%s, info=%s", new Object[]{agpsDataConnStateAsString(), network, info}));
        }
        if (this.mAGpsDataConnectionState == 1) {
            if (apn == null) {
                apn = "dummy-apn";
            }
            if (this.mAGpsDataConnectionIpAddr != null) {
                setRouting();
            }
            int apnIpType = getApnIpType(apn);
            if (DEBUG) {
                Log.d("GnssNetworkConnectivityHandler", String.format("native_agps_data_conn_open: mAgpsApn=%s, mApnIpType=%s", new Object[]{apn, Integer.valueOf(apnIpType)}));
            }
            native_agps_data_conn_open(network.getNetworkHandle(), apn, apnIpType);
            this.mAGpsDataConnectionState = 2;
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: handleRequestSuplConnection */
    public void lambda$onReportAGpsStatus$0$GnssNetworkConnectivityHandler(int agpsType, byte[] suplIpAddr) {
        this.mAGpsDataConnectionIpAddr = null;
        this.mAGpsType = agpsType;
        if (suplIpAddr != null) {
            if (VERBOSE) {
                Log.v("GnssNetworkConnectivityHandler", "Received SUPL IP addr[]: " + Arrays.toString(suplIpAddr));
            }
            try {
                this.mAGpsDataConnectionIpAddr = InetAddress.getByAddress(suplIpAddr);
                if (DEBUG) {
                    Log.d("GnssNetworkConnectivityHandler", "IP address converted to: " + this.mAGpsDataConnectionIpAddr);
                }
            } catch (UnknownHostException e) {
                Log.e("GnssNetworkConnectivityHandler", "Bad IP Address: " + suplIpAddr, e);
            }
        }
        if (DEBUG) {
            Log.d("GnssNetworkConnectivityHandler", String.format("requestSuplConnection, state=%s, agpsType=%s, address=%s", new Object[]{agpsDataConnStateAsString(), agpsTypeAsString(agpsType), this.mAGpsDataConnectionIpAddr}));
        }
        if (this.mAGpsDataConnectionState == 0) {
            this.mAGpsDataConnectionState = 1;
            NetworkRequest.Builder networkRequestBuilder = new NetworkRequest.Builder();
            networkRequestBuilder.addCapability(getNetworkCapability(this.mAGpsType));
            networkRequestBuilder.addTransportType(0);
            this.mConnMgr.requestNetwork(networkRequestBuilder.build(), this.mSuplConnectivityCallback, this.mHandler, 10000);
        }
    }

    private int getNetworkCapability(int agpsType) {
        if (agpsType == 1 || agpsType == 2) {
            return 1;
        }
        if (agpsType == 3) {
            return 10;
        }
        if (agpsType == 4) {
            return 4;
        }
        throw new IllegalArgumentException("agpsType: " + agpsType);
    }

    /* access modifiers changed from: private */
    public void handleReleaseSuplConnection(int agpsDataConnStatus) {
        if (DEBUG) {
            Log.d("GnssNetworkConnectivityHandler", String.format("releaseSuplConnection, state=%s, status=%s", new Object[]{agpsDataConnStateAsString(), agpsDataConnStatusAsString(agpsDataConnStatus)}));
        }
        if (this.mAGpsDataConnectionState != 0) {
            this.mAGpsDataConnectionState = 0;
            this.mConnMgr.unregisterNetworkCallback(this.mSuplConnectivityCallback);
            if (agpsDataConnStatus == 2) {
                native_agps_data_conn_closed();
            } else if (agpsDataConnStatus != 5) {
                Log.e("GnssNetworkConnectivityHandler", "Invalid status to release SUPL connection: " + agpsDataConnStatus);
            } else {
                native_agps_data_conn_failed();
            }
        }
    }

    private void setRouting() {
        if (!this.mConnMgr.requestRouteToHostAddress(3, this.mAGpsDataConnectionIpAddr)) {
            Log.e("GnssNetworkConnectivityHandler", "Error requesting route to host: " + this.mAGpsDataConnectionIpAddr);
        } else if (DEBUG) {
            Log.d("GnssNetworkConnectivityHandler", "Successfully requested route to host: " + this.mAGpsDataConnectionIpAddr);
        }
    }

    private void ensureInHandlerThread() {
        if (this.mHandler == null || Looper.myLooper() != this.mHandler.getLooper()) {
            throw new IllegalStateException("This method must run on the Handler thread.");
        }
    }

    private String agpsDataConnStateAsString() {
        int i = this.mAGpsDataConnectionState;
        if (i == 0) {
            return "CLOSED";
        }
        if (i == 1) {
            return "OPENING";
        }
        if (i == 2) {
            return "OPEN";
        }
        return "<Unknown>(" + this.mAGpsDataConnectionState + ")";
    }

    private String agpsDataConnStatusAsString(int agpsDataConnStatus) {
        if (agpsDataConnStatus == 1) {
            return "REQUEST";
        }
        if (agpsDataConnStatus == 2) {
            return "RELEASE";
        }
        if (agpsDataConnStatus == 3) {
            return "CONNECTED";
        }
        if (agpsDataConnStatus == 4) {
            return "DONE";
        }
        if (agpsDataConnStatus == 5) {
            return "FAILED";
        }
        return "<Unknown>(" + agpsDataConnStatus + ")";
    }

    private String agpsTypeAsString(int agpsType) {
        if (agpsType == 1) {
            return "SUPL";
        }
        if (agpsType == 2) {
            return "C2K";
        }
        if (agpsType == 3) {
            return "EIMS";
        }
        if (agpsType == 4) {
            return "IMS";
        }
        return "<Unknown>(" + agpsType + ")";
    }

    /* Debug info: failed to restart local var, previous not found, register: 17 */
    private int getApnIpType(String apn) {
        String projection;
        String selection;
        Throwable th;
        String str = apn;
        ensureInHandlerThread();
        if (str == null) {
            return 0;
        }
        TelephonyManager phone = (TelephonyManager) this.mContext.getSystemService("phone");
        ServiceState serviceState = phone.getServiceState();
        if (serviceState == null || !serviceState.getDataRoamingFromRegistration()) {
            projection = "protocol";
        } else {
            projection = "roaming_protocol";
        }
        if (phone.getNetworkType() == 0 && 3 == this.mAGpsType) {
            selection = String.format("type like '%%emergency%%' and apn = '%s' and carrier_enabled = 1", new Object[]{str});
        } else {
            selection = String.format("current = 1 and apn = '%s' and carrier_enabled = 1", new Object[]{str});
        }
        try {
            Cursor cursor = this.mContext.getContentResolver().query(Telephony.Carriers.CONTENT_URI, new String[]{projection}, selection, (String[]) null, "name ASC");
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        int translateToApnIpType = translateToApnIpType(cursor.getString(0), str);
                        cursor.close();
                        return translateToApnIpType;
                    }
                } catch (Throwable th2) {
                    Throwable th3 = th2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th3;
                }
            }
            Log.e("GnssNetworkConnectivityHandler", "No entry found in query for APN: " + str);
            if (cursor != null) {
                cursor.close();
            }
        } catch (Exception e) {
            Log.e("GnssNetworkConnectivityHandler", "Error encountered on APN query for: " + str, e);
        } catch (Throwable th4) {
            th.addSuppressed(th4);
        }
        return 3;
    }

    private int translateToApnIpType(String ipProtocol, String apn) {
        if ("IP".equals(ipProtocol)) {
            return 1;
        }
        if ("IPV6".equals(ipProtocol)) {
            return 2;
        }
        if ("IPV4V6".equals(ipProtocol)) {
            return 3;
        }
        Log.e("GnssNetworkConnectivityHandler", String.format("Unknown IP Protocol: %s, for APN: %s", new Object[]{ipProtocol, apn}));
        return 3;
    }
}
