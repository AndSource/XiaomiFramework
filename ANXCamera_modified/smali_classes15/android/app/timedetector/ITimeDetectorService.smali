.class public interface abstract Landroid/app/timedetector/ITimeDetectorService;
.super Ljava/lang/Object;
.source "ITimeDetectorService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/timedetector/ITimeDetectorService$Stub;,
        Landroid/app/timedetector/ITimeDetectorService$Default;
    }
.end annotation


# virtual methods
.method public abstract suggestTime(Landroid/app/timedetector/TimeSignal;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
