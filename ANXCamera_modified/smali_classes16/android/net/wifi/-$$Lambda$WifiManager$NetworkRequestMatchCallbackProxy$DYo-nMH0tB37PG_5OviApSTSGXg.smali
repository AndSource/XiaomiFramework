.class public final synthetic Landroid/net/wifi/-$$Lambda$WifiManager$NetworkRequestMatchCallbackProxy$DYo-nMH0tB37PG_5OviApSTSGXg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;

.field private final synthetic f$1:Landroid/net/wifi/INetworkRequestUserSelectionCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;Landroid/net/wifi/INetworkRequestUserSelectionCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/-$$Lambda$WifiManager$NetworkRequestMatchCallbackProxy$DYo-nMH0tB37PG_5OviApSTSGXg;->f$0:Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;

    iput-object p2, p0, Landroid/net/wifi/-$$Lambda$WifiManager$NetworkRequestMatchCallbackProxy$DYo-nMH0tB37PG_5OviApSTSGXg;->f$1:Landroid/net/wifi/INetworkRequestUserSelectionCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/-$$Lambda$WifiManager$NetworkRequestMatchCallbackProxy$DYo-nMH0tB37PG_5OviApSTSGXg;->f$0:Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;

    iget-object v1, p0, Landroid/net/wifi/-$$Lambda$WifiManager$NetworkRequestMatchCallbackProxy$DYo-nMH0tB37PG_5OviApSTSGXg;->f$1:Landroid/net/wifi/INetworkRequestUserSelectionCallback;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->lambda$onUserSelectionCallbackRegistration$0$WifiManager$NetworkRequestMatchCallbackProxy(Landroid/net/wifi/INetworkRequestUserSelectionCallback;)V

    return-void
.end method
