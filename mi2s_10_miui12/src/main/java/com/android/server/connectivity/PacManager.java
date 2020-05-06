package com.android.server.connectivity;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.net.ProxyInfo;
import android.net.TrafficStats;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.provider.Settings;
import android.util.Log;
import com.android.internal.annotations.GuardedBy;
import com.android.net.IProxyCallback;
import com.android.net.IProxyPortListener;
import com.android.net.IProxyService;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;

public class PacManager {
    private static final String ACTION_PAC_REFRESH = "android.net.proxy.PAC_REFRESH";
    private static final String DEFAULT_DELAYS = "8 32 120 14400 43200";
    private static final int DELAY_1 = 0;
    private static final int DELAY_4 = 3;
    private static final int DELAY_LONG = 4;
    public static final boolean DONT_SEND_BROADCAST = false;
    public static final boolean DO_SEND_BROADCAST = true;
    private static final long MAX_PAC_SIZE = 20000000;
    private static final String PAC_PACKAGE = "com.android.pacprocessor";
    private static final String PAC_SERVICE = "com.android.pacprocessor.PacService";
    private static final String PAC_SERVICE_NAME = "com.android.net.IProxyService";
    private static final String PROXY_PACKAGE = "com.android.proxyhandler";
    private static final String PROXY_SERVICE = "com.android.proxyhandler.ProxyService";
    private static final String TAG = "PacManager";
    private AlarmManager mAlarmManager;
    private ServiceConnection mConnection;
    private Handler mConnectivityHandler;
    private Context mContext;
    private int mCurrentDelay;
    /* access modifiers changed from: private */
    public String mCurrentPac;
    /* access modifiers changed from: private */
    public volatile boolean mHasDownloaded;
    /* access modifiers changed from: private */
    public volatile boolean mHasSentBroadcast;
    /* access modifiers changed from: private */
    public int mLastPort;
    /* access modifiers changed from: private */
    public final Handler mNetThreadHandler;
    /* access modifiers changed from: private */
    public Runnable mPacDownloader = new Runnable() {
        /* JADX INFO: finally extract failed */
        public void run() {
            String file;
            Uri pacUrl = PacManager.this.mPacUrl;
            if (!Uri.EMPTY.equals(pacUrl)) {
                int oldTag = TrafficStats.getAndSetThreadStatsTag(-187);
                try {
                    file = PacManager.get(pacUrl);
                    TrafficStats.setThreadStatsTag(oldTag);
                } catch (IOException ioe) {
                    Log.w(PacManager.TAG, "Failed to load PAC file: " + ioe);
                    TrafficStats.setThreadStatsTag(oldTag);
                    file = null;
                } catch (Throwable th) {
                    TrafficStats.setThreadStatsTag(oldTag);
                    throw th;
                }
                if (file != null) {
                    synchronized (PacManager.this.mProxyLock) {
                        if (!file.equals(PacManager.this.mCurrentPac)) {
                            PacManager.this.setCurrentProxyScript(file);
                        }
                    }
                    boolean unused = PacManager.this.mHasDownloaded = true;
                    PacManager.this.sendProxyIfNeeded();
                    PacManager.this.longSchedule();
                    return;
                }
                PacManager.this.reschedule();
            }
        }
    };
    private PendingIntent mPacRefreshIntent;
    /* access modifiers changed from: private */
    @GuardedBy({"mProxyLock"})
    public volatile Uri mPacUrl = Uri.EMPTY;
    private ServiceConnection mProxyConnection;
    /* access modifiers changed from: private */
    public final Object mProxyLock = new Object();
    private final int mProxyMessage;
    /* access modifiers changed from: private */
    @GuardedBy({"mProxyLock"})
    public IProxyService mProxyService;

    class PacRefreshIntentReceiver extends BroadcastReceiver {
        PacRefreshIntentReceiver() {
        }

        public void onReceive(Context context, Intent intent) {
            PacManager.this.mNetThreadHandler.post(PacManager.this.mPacDownloader);
        }
    }

    public PacManager(Context context, Handler handler, int proxyMessage) {
        this.mContext = context;
        this.mLastPort = -1;
        HandlerThread netThread = new HandlerThread("android.pacmanager", 0);
        netThread.start();
        this.mNetThreadHandler = new Handler(netThread.getLooper());
        this.mPacRefreshIntent = PendingIntent.getBroadcast(context, 0, new Intent(ACTION_PAC_REFRESH), 0);
        context.registerReceiver(new PacRefreshIntentReceiver(), new IntentFilter(ACTION_PAC_REFRESH));
        this.mConnectivityHandler = handler;
        this.mProxyMessage = proxyMessage;
    }

    private AlarmManager getAlarmManager() {
        if (this.mAlarmManager == null) {
            this.mAlarmManager = (AlarmManager) this.mContext.getSystemService("alarm");
        }
        return this.mAlarmManager;
    }

    /* Debug info: failed to restart local var, previous not found, register: 5 */
    /* access modifiers changed from: package-private */
    public synchronized boolean setCurrentProxyScriptUrl(ProxyInfo proxy) {
        if (Uri.EMPTY.equals(proxy.getPacFileUrl())) {
            getAlarmManager().cancel(this.mPacRefreshIntent);
            synchronized (this.mProxyLock) {
                try {
                    this.mPacUrl = Uri.EMPTY;
                    this.mCurrentPac = null;
                    if (this.mProxyService != null) {
                        try {
                            this.mProxyService.stopPacSystem();
                            unbind();
                        } catch (RemoteException e) {
                            Log.w(TAG, "Failed to stop PAC service", e);
                            unbind();
                            return true;
                        } catch (Throwable th) {
                            th = th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    throw th;
                }
            }
        } else if (proxy.getPacFileUrl().equals(this.mPacUrl) && proxy.getPort() > 0) {
            return true;
        } else {
            this.mPacUrl = proxy.getPacFileUrl();
            this.mCurrentDelay = 0;
            this.mHasSentBroadcast = false;
            this.mHasDownloaded = false;
            getAlarmManager().cancel(this.mPacRefreshIntent);
            bind();
            return false;
        }
    }

    /* access modifiers changed from: private */
    public static String get(Uri pacUri) throws IOException {
        URLConnection urlConnection = new URL(pacUri.toString()).openConnection(Proxy.NO_PROXY);
        long contentLength = -1;
        try {
            contentLength = Long.parseLong(urlConnection.getHeaderField("Content-Length"));
        } catch (NumberFormatException e) {
        }
        if (contentLength <= MAX_PAC_SIZE) {
            ByteArrayOutputStream bytes = new ByteArrayOutputStream();
            byte[] buffer = new byte[1024];
            do {
                int read = urlConnection.getInputStream().read(buffer);
                int count = read;
                if (read == -1) {
                    return bytes.toString();
                }
                bytes.write(buffer, 0, count);
            } while (((long) bytes.size()) <= MAX_PAC_SIZE);
            throw new IOException("PAC too big");
        }
        throw new IOException("PAC too big: " + contentLength + " bytes");
    }

    private int getNextDelay(int currentDelay) {
        int currentDelay2 = currentDelay + 1;
        if (currentDelay2 > 3) {
            return 3;
        }
        return currentDelay2;
    }

    /* access modifiers changed from: private */
    public void longSchedule() {
        this.mCurrentDelay = 0;
        setDownloadIn(4);
    }

    /* access modifiers changed from: private */
    public void reschedule() {
        this.mCurrentDelay = getNextDelay(this.mCurrentDelay);
        setDownloadIn(this.mCurrentDelay);
    }

    private String getPacChangeDelay() {
        ContentResolver cr = this.mContext.getContentResolver();
        String defaultDelay = SystemProperties.get("conn.pac_change_delay", DEFAULT_DELAYS);
        String val = Settings.Global.getString(cr, "pac_change_delay");
        return val == null ? defaultDelay : val;
    }

    private long getDownloadDelay(int delayIndex) {
        String[] list = getPacChangeDelay().split(" ");
        if (delayIndex < list.length) {
            return Long.parseLong(list[delayIndex]);
        }
        return 0;
    }

    private void setDownloadIn(int delayIndex) {
        getAlarmManager().set(3, (1000 * getDownloadDelay(delayIndex)) + SystemClock.elapsedRealtime(), this.mPacRefreshIntent);
    }

    /* access modifiers changed from: private */
    public void setCurrentProxyScript(String script) {
        IProxyService iProxyService = this.mProxyService;
        if (iProxyService == null) {
            Log.e(TAG, "setCurrentProxyScript: no proxy service");
            return;
        }
        try {
            iProxyService.setPacFile(script);
            this.mCurrentPac = script;
        } catch (RemoteException e) {
            Log.e(TAG, "Unable to set PAC file", e);
        }
    }

    private void bind() {
        if (this.mContext == null) {
            Log.e(TAG, "No context for binding");
            return;
        }
        Intent intent = new Intent();
        intent.setClassName(PAC_PACKAGE, PAC_SERVICE);
        if (this.mProxyConnection == null || this.mConnection == null) {
            this.mConnection = new ServiceConnection() {
                public void onServiceDisconnected(ComponentName component) {
                    synchronized (PacManager.this.mProxyLock) {
                        IProxyService unused = PacManager.this.mProxyService = null;
                    }
                }

                public void onServiceConnected(ComponentName component, IBinder binder) {
                    synchronized (PacManager.this.mProxyLock) {
                        try {
                            Log.d(PacManager.TAG, "Adding service com.android.net.IProxyService " + binder.getInterfaceDescriptor());
                        } catch (RemoteException e1) {
                            Log.e(PacManager.TAG, "Remote Exception", e1);
                        }
                        ServiceManager.addService(PacManager.PAC_SERVICE_NAME, binder);
                        IProxyService unused = PacManager.this.mProxyService = IProxyService.Stub.asInterface(binder);
                        if (PacManager.this.mProxyService == null) {
                            Log.e(PacManager.TAG, "No proxy service");
                        } else {
                            try {
                                PacManager.this.mProxyService.startPacSystem();
                            } catch (RemoteException e) {
                                Log.e(PacManager.TAG, "Unable to reach ProxyService - PAC will not be started", e);
                            }
                            PacManager.this.mNetThreadHandler.post(PacManager.this.mPacDownloader);
                        }
                    }
                }
            };
            this.mContext.bindService(intent, this.mConnection, 1073741829);
            Intent intent2 = new Intent();
            intent2.setClassName(PROXY_PACKAGE, PROXY_SERVICE);
            this.mProxyConnection = new ServiceConnection() {
                public void onServiceDisconnected(ComponentName component) {
                }

                /* JADX WARNING: type inference failed for: r1v1, types: [com.android.server.connectivity.PacManager$3$1, android.os.IBinder] */
                public void onServiceConnected(ComponentName component, IBinder binder) {
                    IProxyCallback callbackService = IProxyCallback.Stub.asInterface(binder);
                    if (callbackService != null) {
                        try {
                            callbackService.getProxyPort(new IProxyPortListener.Stub() {
                                public void setProxyPort(int port) {
                                    if (PacManager.this.mLastPort != -1) {
                                        boolean unused = PacManager.this.mHasSentBroadcast = false;
                                    }
                                    int unused2 = PacManager.this.mLastPort = port;
                                    if (port != -1) {
                                        Log.d(PacManager.TAG, "Local proxy is bound on " + port);
                                        PacManager.this.sendProxyIfNeeded();
                                        return;
                                    }
                                    Log.e(PacManager.TAG, "Received invalid port from Local Proxy, PAC will not be operational");
                                }
                            });
                        } catch (RemoteException e) {
                            e.printStackTrace();
                        }
                    }
                }
            };
            this.mContext.bindService(intent2, this.mProxyConnection, 1073741829);
            return;
        }
        this.mNetThreadHandler.post(this.mPacDownloader);
    }

    private void unbind() {
        ServiceConnection serviceConnection = this.mConnection;
        if (serviceConnection != null) {
            this.mContext.unbindService(serviceConnection);
            this.mConnection = null;
        }
        ServiceConnection serviceConnection2 = this.mProxyConnection;
        if (serviceConnection2 != null) {
            this.mContext.unbindService(serviceConnection2);
            this.mProxyConnection = null;
        }
        this.mProxyService = null;
        this.mLastPort = -1;
    }

    private void sendPacBroadcast(ProxyInfo proxy) {
        Handler handler = this.mConnectivityHandler;
        handler.sendMessage(handler.obtainMessage(this.mProxyMessage, proxy));
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x001f, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0021, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void sendProxyIfNeeded() {
        /*
            r3 = this;
            monitor-enter(r3)
            boolean r0 = r3.mHasDownloaded     // Catch:{ all -> 0x0022 }
            if (r0 == 0) goto L_0x0020
            int r0 = r3.mLastPort     // Catch:{ all -> 0x0022 }
            r1 = -1
            if (r0 != r1) goto L_0x000b
            goto L_0x0020
        L_0x000b:
            boolean r0 = r3.mHasSentBroadcast     // Catch:{ all -> 0x0022 }
            if (r0 != 0) goto L_0x001e
            android.net.ProxyInfo r0 = new android.net.ProxyInfo     // Catch:{ all -> 0x0022 }
            android.net.Uri r1 = r3.mPacUrl     // Catch:{ all -> 0x0022 }
            int r2 = r3.mLastPort     // Catch:{ all -> 0x0022 }
            r0.<init>(r1, r2)     // Catch:{ all -> 0x0022 }
            r3.sendPacBroadcast(r0)     // Catch:{ all -> 0x0022 }
            r0 = 1
            r3.mHasSentBroadcast = r0     // Catch:{ all -> 0x0022 }
        L_0x001e:
            monitor-exit(r3)
            return
        L_0x0020:
            monitor-exit(r3)
            return
        L_0x0022:
            r0 = move-exception
            monitor-exit(r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.connectivity.PacManager.sendProxyIfNeeded():void");
    }
}
