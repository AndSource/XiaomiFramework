.class public interface abstract Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NetworkRequestMatchCallback"
.end annotation


# virtual methods
.method public abstract onAbort()V
.end method

.method public abstract onMatch(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onUserSelectionCallbackRegistration(Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;)V
.end method

.method public abstract onUserSelectionConnectFailure(Landroid/net/wifi/WifiConfiguration;)V
.end method

.method public abstract onUserSelectionConnectSuccess(Landroid/net/wifi/WifiConfiguration;)V
.end method
