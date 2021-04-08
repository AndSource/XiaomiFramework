.class public interface abstract Landroid/net/IMiuiNetworkManager;
.super Ljava/lang/Object;
.source "IMiuiNetworkManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IMiuiNetworkManager$Stub;,
        Landroid/net/IMiuiNetworkManager$Default;
    }
.end annotation


# virtual methods
.method public abstract setNetworkTrafficPolicy(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setRpsStatus(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
