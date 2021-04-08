.class public abstract Landroid/service/sms/FinancialSmsService;
.super Landroid/app/Service;
.source "FinancialSmsService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/sms/FinancialSmsService$FinancialSmsServiceWrapper;
    }
.end annotation


# static fields
.field public static final ACTION_FINANCIAL_SERVICE_INTENT:Ljava/lang/String; = "android.service.sms.action.FINANCIAL_SERVICE_INTENT"

.field public static final EXTRA_SMS_MSGS:Ljava/lang/String; = "sms_messages"

.field private static final TAG:Ljava/lang/String; = "FinancialSmsService"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mWrapper:Landroid/service/sms/FinancialSmsService$FinancialSmsServiceWrapper;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/service/sms/FinancialSmsService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Landroid/service/sms/FinancialSmsService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/service/sms/FinancialSmsService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/service/sms/FinancialSmsService;Landroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/sms/FinancialSmsService;->getSmsMessages(Landroid/os/RemoteCallback;Landroid/os/Bundle;)V

    return-void
.end method

.method private getSmsMessages(Landroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p2}, Landroid/service/sms/FinancialSmsService;->onGetSmsMessages(Landroid/os/Bundle;)Landroid/database/CursorWindow;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "sms_messages"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/service/sms/FinancialSmsService;->mWrapper:Landroid/service/sms/FinancialSmsService$FinancialSmsServiceWrapper;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/service/sms/FinancialSmsService$FinancialSmsServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/sms/FinancialSmsService$FinancialSmsServiceWrapper;-><init>(Landroid/service/sms/FinancialSmsService;Landroid/service/sms/FinancialSmsService$1;)V

    iput-object v0, p0, Landroid/service/sms/FinancialSmsService;->mWrapper:Landroid/service/sms/FinancialSmsService$FinancialSmsServiceWrapper;

    return-void
.end method

.method public abstract onGetSmsMessages(Landroid/os/Bundle;)Landroid/database/CursorWindow;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method
