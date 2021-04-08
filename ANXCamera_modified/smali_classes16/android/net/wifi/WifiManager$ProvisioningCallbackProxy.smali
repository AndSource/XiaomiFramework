.class Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;
.super Landroid/net/wifi/hotspot2/IProvisioningCallback$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProvisioningCallbackProxy"
.end annotation


# instance fields
.field private final mCallback:Landroid/net/wifi/hotspot2/ProvisioningCallback;

.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Landroid/net/wifi/hotspot2/ProvisioningCallback;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/wifi/hotspot2/IProvisioningCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;->mCallback:Landroid/net/wifi/hotspot2/ProvisioningCallback;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onProvisioningComplete$2$WifiManager$ProvisioningCallbackProxy()V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;->mCallback:Landroid/net/wifi/hotspot2/ProvisioningCallback;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/ProvisioningCallback;->onProvisioningComplete()V

    return-void
.end method

.method public synthetic lambda$onProvisioningFailure$1$WifiManager$ProvisioningCallbackProxy(I)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;->mCallback:Landroid/net/wifi/hotspot2/ProvisioningCallback;

    invoke-virtual {v0, p1}, Landroid/net/wifi/hotspot2/ProvisioningCallback;->onProvisioningFailure(I)V

    return-void
.end method

.method public synthetic lambda$onProvisioningStatus$0$WifiManager$ProvisioningCallbackProxy(I)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;->mCallback:Landroid/net/wifi/hotspot2/ProvisioningCallback;

    invoke-virtual {v0, p1}, Landroid/net/wifi/hotspot2/ProvisioningCallback;->onProvisioningStatus(I)V

    return-void
.end method

.method public onProvisioningComplete()V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/-$$Lambda$WifiManager$ProvisioningCallbackProxy$ARmFIxMD9Os9eGpiffTyA3WhD0Q;

    invoke-direct {v1, p0}, Landroid/net/wifi/-$$Lambda$WifiManager$ProvisioningCallbackProxy$ARmFIxMD9Os9eGpiffTyA3WhD0Q;-><init>(Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProvisioningFailure(I)V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/-$$Lambda$WifiManager$ProvisioningCallbackProxy$rgPeSRj_1qriYZtaCu57EZHtc_Q;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/-$$Lambda$WifiManager$ProvisioningCallbackProxy$rgPeSRj_1qriYZtaCu57EZHtc_Q;-><init>(Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProvisioningStatus(I)V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/-$$Lambda$WifiManager$ProvisioningCallbackProxy$0_NXiwyrbrT_579x-6QMO0y3rzc;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/-$$Lambda$WifiManager$ProvisioningCallbackProxy$0_NXiwyrbrT_579x-6QMO0y3rzc;-><init>(Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
