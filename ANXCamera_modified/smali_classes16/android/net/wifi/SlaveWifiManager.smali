.class public Landroid/net/wifi/SlaveWifiManager;
.super Ljava/lang/Object;
.source "SlaveWifiManager.java"


# static fields
.field public static final ACTION_WIFI_CONNECTION_FAILURE:Ljava/lang/String; = "miui.intent.action.wifi.WIFI_SLAVE_CONNECTION_FAILURE"

.field private static final BASE:I = 0x25ff0

.field public static final CMD_CONNECT_TO_SLAVE_AP:I = 0x25ff6

.field public static final CMD_DISCONNECT_SLAVE_WIFI:I = 0x25ff4

.field public static final CMD_GET_SLAVE_WIFIINFO:I = 0x25ff1

.field public static final CMD_GET_SLAVE_WIFI_CURRENT_NETWORK:I = 0x25ff2

.field public static final CMD_GET_SLAVE_WIFI_ENABLED_STATE:I = 0x25ff5

.field public static final CMD_RECONNECT_SLAVE_WIFI:I = 0x25ff3

.field public static final CMD_SET_WIFI_SLAVE_ENABLED:I = 0x25ff0

.field public static final ENABLE_AUTO_DISABLE:Ljava/lang/String; = "wifi_slave_auto_disable"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_NEW_RSSI:Ljava/lang/String; = "newRssi"

.field public static final EXTRA_PREVIOUS_WIFI_STATE:Ljava/lang/String; = "previous_wifi_state"

.field public static final EXTRA_WIFI_CURRENT_NETWORK:Ljava/lang/String; = "wifi_current_network"

.field public static final EXTRA_WIFI_INFO:Ljava/lang/String; = "wifiInfo"

.field public static final EXTRA_WIFI_NETWORK_INFO:Ljava/lang/String; = "wifi_network_info"

.field public static final EXTRA_WIFI_STATE:Ljava/lang/String; = "wifi_state"

.field public static final FAILED:I = 0x2

.field public static final LINK_CONFIGURATION_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.SLAVE_LINK_CONFIGURATION_CHANGED"
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final NETWORK_SLAVE_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.SLAVE_STATE_CHANGE"

.field public static final RSSI_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.SLAVE_RSSI_CHANGED"

.field public static final SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SlaveWifiManager"

.field public static final TENCENT_NETWORK_SLAVE_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.vicewifi.STATE_CHANGE"

.field public static final TENCENT_RSSI_CHANGED_ACTION:Ljava/lang/String; = "android.net.vicewifi.RSSI_CHANGED"

.field public static final WIFI_SLAVE_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_SLAVE_STATE_CHANGED"

.field public static final WIFI_SLAVE_STATE_DISABLED:I = 0xf

.field public static final WIFI_SLAVE_STATE_DISABLING:I = 0xe

.field public static final WIFI_SLAVE_STATE_ENABLED:I = 0x11

.field public static final WIFI_SLAVE_STATE_ENABLING:I = 0x10

.field public static final WIFI_SLAVE_STATE_UNKNOWN:I = 0x12

.field private static sInstance:Landroid/net/wifi/SlaveWifiManager;


# instance fields
.field private mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const-string v0, "SlaveWifiManager"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Landroid/net/wifi/SlaveWifiManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v2

    new-instance v3, Landroid/os/HandlerThread;

    invoke-direct {v3, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    new-instance v4, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v4}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/SlaveWifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v4, p0, Landroid/net/wifi/SlaveWifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const/4 v5, 0x0

    new-instance v6, Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v7, p0, Landroid/net/wifi/SlaveWifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Landroid/net/wifi/IWifiManager;->getWifiServiceMessenger(Ljava/lang/String;)Landroid/os/Messenger;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "build WifiConfigForSupplicant failed exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/net/wifi/SlaveWifiManager;
    .locals 1

    sget-object v0, Landroid/net/wifi/SlaveWifiManager;->sInstance:Landroid/net/wifi/SlaveWifiManager;

    if-nez v0, :cond_0

    new-instance v0, Landroid/net/wifi/SlaveWifiManager;

    invoke-direct {v0, p0}, Landroid/net/wifi/SlaveWifiManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/net/wifi/SlaveWifiManager;->sInstance:Landroid/net/wifi/SlaveWifiManager;

    :cond_0
    sget-object v0, Landroid/net/wifi/SlaveWifiManager;->sInstance:Landroid/net/wifi/SlaveWifiManager;

    return-object v0
.end method

.method private sendAsyncMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/SlaveWifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method private sendSyncMessage(Landroid/os/Message;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/SlaveWifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public connectToSlaveAp(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " as a slave wifi network"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SlaveWifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const v1, 0x25ff6

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Landroid/net/wifi/SlaveWifiManager;->sendAsyncMessage(Landroid/os/Message;)V

    return-void
.end method

.method public connectToSlaveAp(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2

    const-string v0, "SlaveWifiManager"

    const-string v1, "connectToSlaveAp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const v1, 0x25ff6

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroid/net/wifi/SlaveWifiManager;->sendAsyncMessage(Landroid/os/Message;)V

    return-void
.end method

.method public disconnectSlaveWifi()Z
    .locals 2

    const-string v0, "SlaveWifiManager"

    const-string v1, "disconnectSlaveWifi "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const v1, 0x25ff4

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-direct {p0, v0}, Landroid/net/wifi/SlaveWifiManager;->sendAsyncMessage(Landroid/os/Message;)V

    const/4 v1, 0x1

    return v1
.end method

.method public getSlaveWifiCurrentNetwork()Landroid/net/Network;
    .locals 5

    const-string v0, "SlaveWifiManager"

    const-string/jumbo v1, "getSlaveWifiCurrentNetwork"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const v1, 0x25ff2

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-direct {p0, v0}, Landroid/net/wifi/SlaveWifiManager;->sendSyncMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    iget v3, v1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    if-eqz v2, :cond_0

    const-string/jumbo v3, "wifi_current_network"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Network;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    return-object v3
.end method

.method public getSlaveWifiState()I
    .locals 3

    const-string v0, "SlaveWifiManager"

    const-string/jumbo v1, "getSlaveWifiState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const v1, 0x25ff5

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-direct {p0, v0}, Landroid/net/wifi/SlaveWifiManager;->sendSyncMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    iget v2, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    return v2
.end method

.method public getWifiSlaveConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 5

    const-string v0, "SlaveWifiManager"

    const-string/jumbo v1, "getWifiSlaveConnectionInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const v1, 0x25ff1

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-direct {p0, v0}, Landroid/net/wifi/SlaveWifiManager;->sendSyncMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    iget v3, v1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    if-eqz v2, :cond_0

    const-string/jumbo v3, "wifiInfo"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiInfo;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    return-object v3
.end method

.method public isSlaveWifiEnabled()Z
    .locals 2

    invoke-virtual {p0}, Landroid/net/wifi/SlaveWifiManager;->getSlaveWifiState()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reconnectSlaveWifi()Z
    .locals 2

    const-string v0, "SlaveWifiManager"

    const-string/jumbo v1, "reconnectSlaveWifi "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const v1, 0x25ff3

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-direct {p0, v0}, Landroid/net/wifi/SlaveWifiManager;->sendAsyncMessage(Landroid/os/Message;)V

    const/4 v1, 0x1

    return v1
.end method

.method public setWifiSlaveEnabled(Z)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set slave wifi enable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SlaveWifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const v1, 0x25ff0

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/net/wifi/SlaveWifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v2, v3

    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    return v2
.end method
