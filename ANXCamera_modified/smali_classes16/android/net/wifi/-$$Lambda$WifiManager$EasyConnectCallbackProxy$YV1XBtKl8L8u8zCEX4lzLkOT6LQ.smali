.class public final synthetic Landroid/net/wifi/-$$Lambda$WifiManager$EasyConnectCallbackProxy$YV1XBtKl8L8u8zCEX4lzLkOT6LQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/-$$Lambda$WifiManager$EasyConnectCallbackProxy$YV1XBtKl8L8u8zCEX4lzLkOT6LQ;->f$0:Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;

    iput p2, p0, Landroid/net/wifi/-$$Lambda$WifiManager$EasyConnectCallbackProxy$YV1XBtKl8L8u8zCEX4lzLkOT6LQ;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/-$$Lambda$WifiManager$EasyConnectCallbackProxy$YV1XBtKl8L8u8zCEX4lzLkOT6LQ;->f$0:Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;

    iget v1, p0, Landroid/net/wifi/-$$Lambda$WifiManager$EasyConnectCallbackProxy$YV1XBtKl8L8u8zCEX4lzLkOT6LQ;->f$1:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->lambda$onProgress$3$WifiManager$EasyConnectCallbackProxy(I)V

    return-void
.end method
