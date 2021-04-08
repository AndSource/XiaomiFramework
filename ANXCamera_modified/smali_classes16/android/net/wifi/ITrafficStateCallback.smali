.class public interface abstract Landroid/net/wifi/ITrafficStateCallback;
.super Ljava/lang/Object;
.source "ITrafficStateCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/ITrafficStateCallback$Stub;,
        Landroid/net/wifi/ITrafficStateCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onStateChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
