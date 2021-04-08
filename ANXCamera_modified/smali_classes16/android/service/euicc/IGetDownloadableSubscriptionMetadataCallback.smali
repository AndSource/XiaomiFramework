.class public interface abstract Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;
.super Ljava/lang/Object;
.source "IGetDownloadableSubscriptionMetadataCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback$Stub;,
        Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onComplete(Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;)V
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
