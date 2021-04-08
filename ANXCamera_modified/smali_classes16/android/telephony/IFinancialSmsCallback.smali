.class public interface abstract Landroid/telephony/IFinancialSmsCallback;
.super Ljava/lang/Object;
.source "IFinancialSmsCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/IFinancialSmsCallback$Stub;,
        Landroid/telephony/IFinancialSmsCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onGetSmsMessagesForFinancialApp(Landroid/database/CursorWindow;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
