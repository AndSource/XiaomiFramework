package com.android.server.connectivity;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.net.ProxyInfo;
import android.net.Uri;
import android.os.Binder;
import android.os.Handler;
import android.os.UserHandle;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Slog;
import com.android.internal.annotations.GuardedBy;
import java.util.Objects;

public class ProxyTracker {
    private static final boolean DBG = true;
    private static final String TAG = ProxyTracker.class.getSimpleName();
    private final Context mContext;
    @GuardedBy({"mProxyLock"})
    private volatile ProxyInfo mDefaultProxy = null;
    @GuardedBy({"mProxyLock"})
    private boolean mDefaultProxyEnabled = true;
    @GuardedBy({"mProxyLock"})
    private ProxyInfo mGlobalProxy = null;
    private final PacManager mPacManager;
    private final Object mProxyLock = new Object();

    public ProxyTracker(Context context, Handler connectivityServiceInternalHandler, int pacChangedEvent) {
        this.mContext = context;
        this.mPacManager = new PacManager(context, connectivityServiceInternalHandler, pacChangedEvent);
    }

    private static ProxyInfo canonicalizeProxyInfo(ProxyInfo proxy) {
        if (proxy == null || !TextUtils.isEmpty(proxy.getHost()) || !Uri.EMPTY.equals(proxy.getPacFileUrl())) {
            return proxy;
        }
        return null;
    }

    public static boolean proxyInfoEqual(ProxyInfo a, ProxyInfo b) {
        ProxyInfo pa = canonicalizeProxyInfo(a);
        ProxyInfo pb = canonicalizeProxyInfo(b);
        return Objects.equals(pa, pb) && (pa == null || Objects.equals(pa.getHost(), pb.getHost()));
    }

    public ProxyInfo getDefaultProxy() {
        synchronized (this.mProxyLock) {
            if (this.mGlobalProxy != null) {
                ProxyInfo proxyInfo = this.mGlobalProxy;
                return proxyInfo;
            } else if (!this.mDefaultProxyEnabled) {
                return null;
            } else {
                ProxyInfo proxyInfo2 = this.mDefaultProxy;
                return proxyInfo2;
            }
        }
    }

    public ProxyInfo getGlobalProxy() {
        ProxyInfo proxyInfo;
        synchronized (this.mProxyLock) {
            proxyInfo = this.mGlobalProxy;
        }
        return proxyInfo;
    }

    public void loadGlobalProxy() {
        ProxyInfo proxyProperties;
        ContentResolver res = this.mContext.getContentResolver();
        String host = Settings.Global.getString(res, "global_http_proxy_host");
        int port = Settings.Global.getInt(res, "global_http_proxy_port", 0);
        String exclList = Settings.Global.getString(res, "global_http_proxy_exclusion_list");
        String pacFileUrl = Settings.Global.getString(res, "global_proxy_pac_url");
        if (!TextUtils.isEmpty(host) || !TextUtils.isEmpty(pacFileUrl)) {
            if (!TextUtils.isEmpty(pacFileUrl)) {
                proxyProperties = new ProxyInfo(pacFileUrl);
            } else {
                proxyProperties = new ProxyInfo(host, port, exclList);
            }
            if (!proxyProperties.isValid()) {
                String str = TAG;
                Slog.d(str, "Invalid proxy properties, ignoring: " + proxyProperties);
                return;
            }
            synchronized (this.mProxyLock) {
                this.mGlobalProxy = proxyProperties;
            }
        }
        loadDeprecatedGlobalHttpProxy();
    }

    public void loadDeprecatedGlobalHttpProxy() {
        String proxy = Settings.Global.getString(this.mContext.getContentResolver(), "http_proxy");
        if (!TextUtils.isEmpty(proxy)) {
            String[] data = proxy.split(":");
            if (data.length != 0) {
                String proxyHost = data[0];
                int proxyPort = 8080;
                if (data.length > 1) {
                    try {
                        proxyPort = Integer.parseInt(data[1]);
                    } catch (NumberFormatException e) {
                        return;
                    }
                }
                setGlobalProxy(new ProxyInfo(proxyHost, proxyPort, ""));
            }
        }
    }

    public void sendProxyBroadcast() {
        ProxyInfo defaultProxy = getDefaultProxy();
        ProxyInfo proxyInfo = defaultProxy != null ? defaultProxy : new ProxyInfo("", 0, "");
        if (this.mPacManager.setCurrentProxyScriptUrl(proxyInfo)) {
            String str = TAG;
            Slog.d(str, "sending Proxy Broadcast for " + proxyInfo);
            Intent intent = new Intent("android.intent.action.PROXY_CHANGE");
            intent.addFlags(603979776);
            intent.putExtra("android.intent.extra.PROXY_INFO", proxyInfo);
            long ident = Binder.clearCallingIdentity();
            try {
                this.mContext.sendStickyBroadcastAsUser(intent, UserHandle.ALL);
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }
    }

    /* Debug info: failed to restart local var, previous not found, register: 9 */
    /* JADX INFO: finally extract failed */
    public void setGlobalProxy(ProxyInfo proxyInfo) {
        String pacFileUrl;
        String exclList;
        int port;
        String host;
        synchronized (this.mProxyLock) {
            if (proxyInfo != this.mGlobalProxy) {
                if (proxyInfo != null && proxyInfo.equals(this.mGlobalProxy)) {
                    return;
                }
                if (this.mGlobalProxy == null || !this.mGlobalProxy.equals(proxyInfo)) {
                    if (proxyInfo == null || (TextUtils.isEmpty(proxyInfo.getHost()) && Uri.EMPTY.equals(proxyInfo.getPacFileUrl()))) {
                        host = "";
                        port = 0;
                        exclList = "";
                        pacFileUrl = "";
                        this.mGlobalProxy = null;
                    } else if (!proxyInfo.isValid()) {
                        String str = TAG;
                        Slog.d(str, "Invalid proxy properties, ignoring: " + proxyInfo);
                        return;
                    } else {
                        this.mGlobalProxy = new ProxyInfo(proxyInfo);
                        host = this.mGlobalProxy.getHost();
                        port = this.mGlobalProxy.getPort();
                        exclList = this.mGlobalProxy.getExclusionListAsString();
                        pacFileUrl = Uri.EMPTY.equals(proxyInfo.getPacFileUrl()) ? "" : proxyInfo.getPacFileUrl().toString();
                    }
                    ContentResolver res = this.mContext.getContentResolver();
                    long token = Binder.clearCallingIdentity();
                    try {
                        Settings.Global.putString(res, "global_http_proxy_host", host);
                        Settings.Global.putInt(res, "global_http_proxy_port", port);
                        Settings.Global.putString(res, "global_http_proxy_exclusion_list", exclList);
                        Settings.Global.putString(res, "global_proxy_pac_url", pacFileUrl);
                        Binder.restoreCallingIdentity(token);
                        sendProxyBroadcast();
                    } catch (Throwable th) {
                        Binder.restoreCallingIdentity(token);
                        throw th;
                    }
                }
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:31:0x0066, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void setDefaultProxy(android.net.ProxyInfo r5) {
        /*
            r4 = this;
            java.lang.Object r0 = r4.mProxyLock
            monitor-enter(r0)
            android.net.ProxyInfo r1 = r4.mDefaultProxy     // Catch:{ all -> 0x0067 }
            boolean r1 = java.util.Objects.equals(r1, r5)     // Catch:{ all -> 0x0067 }
            if (r1 == 0) goto L_0x000d
            monitor-exit(r0)     // Catch:{ all -> 0x0067 }
            return
        L_0x000d:
            if (r5 == 0) goto L_0x002d
            boolean r1 = r5.isValid()     // Catch:{ all -> 0x0067 }
            if (r1 != 0) goto L_0x002d
            java.lang.String r1 = TAG     // Catch:{ all -> 0x0067 }
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ all -> 0x0067 }
            r2.<init>()     // Catch:{ all -> 0x0067 }
            java.lang.String r3 = "Invalid proxy properties, ignoring: "
            r2.append(r3)     // Catch:{ all -> 0x0067 }
            r2.append(r5)     // Catch:{ all -> 0x0067 }
            java.lang.String r2 = r2.toString()     // Catch:{ all -> 0x0067 }
            android.util.Slog.d(r1, r2)     // Catch:{ all -> 0x0067 }
            monitor-exit(r0)     // Catch:{ all -> 0x0067 }
            return
        L_0x002d:
            android.net.ProxyInfo r1 = r4.mGlobalProxy     // Catch:{ all -> 0x0067 }
            if (r1 == 0) goto L_0x0056
            if (r5 == 0) goto L_0x0056
            android.net.Uri r1 = android.net.Uri.EMPTY     // Catch:{ all -> 0x0067 }
            android.net.Uri r2 = r5.getPacFileUrl()     // Catch:{ all -> 0x0067 }
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x0067 }
            if (r1 != 0) goto L_0x0056
            android.net.Uri r1 = r5.getPacFileUrl()     // Catch:{ all -> 0x0067 }
            android.net.ProxyInfo r2 = r4.mGlobalProxy     // Catch:{ all -> 0x0067 }
            android.net.Uri r2 = r2.getPacFileUrl()     // Catch:{ all -> 0x0067 }
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x0067 }
            if (r1 == 0) goto L_0x0056
            r4.mGlobalProxy = r5     // Catch:{ all -> 0x0067 }
            r4.sendProxyBroadcast()     // Catch:{ all -> 0x0067 }
            monitor-exit(r0)     // Catch:{ all -> 0x0067 }
            return
        L_0x0056:
            r4.mDefaultProxy = r5     // Catch:{ all -> 0x0067 }
            android.net.ProxyInfo r1 = r4.mGlobalProxy     // Catch:{ all -> 0x0067 }
            if (r1 == 0) goto L_0x005e
            monitor-exit(r0)     // Catch:{ all -> 0x0067 }
            return
        L_0x005e:
            boolean r1 = r4.mDefaultProxyEnabled     // Catch:{ all -> 0x0067 }
            if (r1 == 0) goto L_0x0065
            r4.sendProxyBroadcast()     // Catch:{ all -> 0x0067 }
        L_0x0065:
            monitor-exit(r0)     // Catch:{ all -> 0x0067 }
            return
        L_0x0067:
            r1 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x0067 }
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.connectivity.ProxyTracker.setDefaultProxy(android.net.ProxyInfo):void");
    }
}
