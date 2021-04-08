.class public interface abstract Landroid/net/ITetheringEventCallback;
.super Ljava/lang/Object;
.source "ITetheringEventCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ITetheringEventCallback$Stub;,
        Landroid/net/ITetheringEventCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onUpstreamChanged(Landroid/net/Network;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
