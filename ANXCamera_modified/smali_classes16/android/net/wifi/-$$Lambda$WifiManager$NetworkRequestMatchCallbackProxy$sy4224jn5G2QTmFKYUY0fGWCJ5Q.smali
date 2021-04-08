.class public final synthetic Landroid/net/wifi/-$$Lambda$WifiManager$NetworkRequestMatchCallbackProxy$sy4224jn5G2QTmFKYUY0fGWCJ5Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;


# direct methods
.method public synthetic constructor <init>(Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/-$$Lambda$WifiManager$NetworkRequestMatchCallbackProxy$sy4224jn5G2QTmFKYUY0fGWCJ5Q;->f$0:Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/-$$Lambda$WifiManager$NetworkRequestMatchCallbackProxy$sy4224jn5G2QTmFKYUY0fGWCJ5Q;->f$0:Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->lambda$onAbort$1$WifiManager$NetworkRequestMatchCallbackProxy()V

    return-void
.end method
