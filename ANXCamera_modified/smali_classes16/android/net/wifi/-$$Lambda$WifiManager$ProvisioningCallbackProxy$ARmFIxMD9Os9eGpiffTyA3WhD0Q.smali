.class public final synthetic Landroid/net/wifi/-$$Lambda$WifiManager$ProvisioningCallbackProxy$ARmFIxMD9Os9eGpiffTyA3WhD0Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;


# direct methods
.method public synthetic constructor <init>(Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/-$$Lambda$WifiManager$ProvisioningCallbackProxy$ARmFIxMD9Os9eGpiffTyA3WhD0Q;->f$0:Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/-$$Lambda$WifiManager$ProvisioningCallbackProxy$ARmFIxMD9Os9eGpiffTyA3WhD0Q;->f$0:Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;->lambda$onProvisioningComplete$2$WifiManager$ProvisioningCallbackProxy()V

    return-void
.end method
