.class public interface abstract Landroid/os/IStatsPullerCallback;
.super Ljava/lang/Object;
.source "IStatsPullerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IStatsPullerCallback$Stub;,
        Landroid/os/IStatsPullerCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract pullData(IJJ)[Landroid/os/StatsLogEventWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
