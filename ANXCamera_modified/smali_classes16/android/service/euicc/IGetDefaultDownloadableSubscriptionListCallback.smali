.class public interface abstract Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;
.super Ljava/lang/Object;
.source "IGetDefaultDownloadableSubscriptionListCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback$Stub;,
        Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onComplete(Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;)V
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
