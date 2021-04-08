.class public interface abstract Landroid/app/IInstantAppResolver;
.super Ljava/lang/Object;
.source "IInstantAppResolver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IInstantAppResolver$Stub;,
        Landroid/app/IInstantAppResolver$Default;
    }
.end annotation


# virtual methods
.method public abstract getInstantAppIntentFilterList(Landroid/content/Intent;[IILjava/lang/String;Landroid/os/IRemoteCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInstantAppResolveInfoList(Landroid/content/Intent;[IILjava/lang/String;ILandroid/os/IRemoteCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
