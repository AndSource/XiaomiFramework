.class public interface abstract Landroid/service/sms/IFinancialSmsService;
.super Ljava/lang/Object;
.source "IFinancialSmsService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/sms/IFinancialSmsService$Stub;,
        Landroid/service/sms/IFinancialSmsService$Default;
    }
.end annotation


# virtual methods
.method public abstract getSmsMessages(Landroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
