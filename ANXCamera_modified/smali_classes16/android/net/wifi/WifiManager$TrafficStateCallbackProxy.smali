.class Landroid/net/wifi/WifiManager$TrafficStateCallbackProxy;
.super Landroid/net/wifi/ITrafficStateCallback$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrafficStateCallbackProxy"
.end annotation


# instance fields
.field private final mCallback:Landroid/net/wifi/WifiManager$TrafficStateCallback;

.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiManager;Landroid/os/Looper;Landroid/net/wifi/WifiManager$TrafficStateCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiManager$TrafficStateCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Landroid/net/wifi/ITrafficStateCallback$Stub;-><init>()V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/net/wifi/WifiManager$TrafficStateCallbackProxy;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Landroid/net/wifi/WifiManager$TrafficStateCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$TrafficStateCallback;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onStateChanged$0$WifiManager$TrafficStateCallbackProxy(I)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiManager$TrafficStateCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$TrafficStateCallback;

    invoke-interface {v0, p1}, Landroid/net/wifi/WifiManager$TrafficStateCallback;->onStateChanged(I)V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/WifiManager$TrafficStateCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->access$000(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrafficStateCallbackProxy: onStateChanged state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager$TrafficStateCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/wifi/-$$Lambda$WifiManager$TrafficStateCallbackProxy$zQoZBZ4jRXbcyDZer28skV_T0jI;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/-$$Lambda$WifiManager$TrafficStateCallbackProxy$zQoZBZ4jRXbcyDZer28skV_T0jI;-><init>(Landroid/net/wifi/WifiManager$TrafficStateCallbackProxy;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
