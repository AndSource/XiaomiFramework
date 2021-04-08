.class public interface abstract Lcom/xiaomi/joyose/IMiGameBoosterCallback;
.super Ljava/lang/Object;
.source "IMiGameBoosterCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/joyose/IMiGameBoosterCallback$Stub;,
        Lcom/xiaomi/joyose/IMiGameBoosterCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onEvent(ILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onEventSync(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
