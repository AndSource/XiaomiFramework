.class Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;
.super Landroid/net/wifi/IDppCallback$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EasyConnectCallbackProxy"
.end annotation


# instance fields
.field private final mEasyConnectStatusCallback:Landroid/net/wifi/EasyConnectStatusCallback;

.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Landroid/net/wifi/EasyConnectStatusCallback;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/wifi/IDppCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->mEasyConnectStatusCallback:Landroid/net/wifi/EasyConnectStatusCallback;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onFailure$2$WifiManager$EasyConnectCallbackProxy(I)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->mEasyConnectStatusCallback:Landroid/net/wifi/EasyConnectStatusCallback;

    invoke-virtual {v0, p1}, Landroid/net/wifi/EasyConnectStatusCallback;->onFailure(I)V

    return-void
.end method

.method public synthetic lambda$onProgress$3$WifiManager$EasyConnectCallbackProxy(I)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->mEasyConnectStatusCallback:Landroid/net/wifi/EasyConnectStatusCallback;

    invoke-virtual {v0, p1}, Landroid/net/wifi/EasyConnectStatusCallback;->onProgress(I)V

    return-void
.end method

.method public synthetic lambda$onSuccess$1$WifiManager$EasyConnectCallbackProxy(I)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->mEasyConnectStatusCallback:Landroid/net/wifi/EasyConnectStatusCallback;

    invoke-virtual {v0, p1}, Landroid/net/wifi/EasyConnectStatusCallback;->onConfiguratorSuccess(I)V

    return-void
.end method

.method public synthetic lambda$onSuccessConfigReceived$0$WifiManager$EasyConnectCallbackProxy(I)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->mEasyConnectStatusCallback:Landroid/net/wifi/EasyConnectStatusCallback;

    invoke-virtual {v0, p1}, Landroid/net/wifi/EasyConnectStatusCallback;->onEnrolleeSuccess(I)V

    return-void
.end method

.method public onFailure(I)V
    .locals 2

    const-string v0, "WifiManager"

    const-string v1, "Easy Connect onFailure callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/-$$Lambda$WifiManager$EasyConnectCallbackProxy$fmVMj2ImIgtBYa9roBT0GyOubTI;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/-$$Lambda$WifiManager$EasyConnectCallbackProxy$fmVMj2ImIgtBYa9roBT0GyOubTI;-><init>(Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProgress(I)V
    .locals 2

    const-string v0, "WifiManager"

    const-string v1, "Easy Connect onProgress callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/-$$Lambda$WifiManager$EasyConnectCallbackProxy$YV1XBtKl8L8u8zCEX4lzLkOT6LQ;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/-$$Lambda$WifiManager$EasyConnectCallbackProxy$YV1XBtKl8L8u8zCEX4lzLkOT6LQ;-><init>(Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(I)V
    .locals 2

    const-string v0, "WifiManager"

    const-string v1, "Easy Connect onSuccess callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/-$$Lambda$WifiManager$EasyConnectCallbackProxy$wTsmN4734yyutavZxcKa2TZ-4Cc;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/-$$Lambda$WifiManager$EasyConnectCallbackProxy$wTsmN4734yyutavZxcKa2TZ-4Cc;-><init>(Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccessConfigReceived(I)V
    .locals 2

    const-string v0, "WifiManager"

    const-string v1, "Easy Connect onSuccessConfigReceived callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/-$$Lambda$WifiManager$EasyConnectCallbackProxy$ObU39aoKguVIx_qQTyZyomhDAAg;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/-$$Lambda$WifiManager$EasyConnectCallbackProxy$ObU39aoKguVIx_qQTyZyomhDAAg;-><init>(Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
