.class final Landroid/service/sms/FinancialSmsService$FinancialSmsServiceWrapper;
.super Landroid/service/sms/IFinancialSmsService$Stub;
.source "FinancialSmsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/sms/FinancialSmsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FinancialSmsServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/sms/FinancialSmsService;


# direct methods
.method private constructor <init>(Landroid/service/sms/FinancialSmsService;)V
    .locals 0

    iput-object p1, p0, Landroid/service/sms/FinancialSmsService$FinancialSmsServiceWrapper;->this$0:Landroid/service/sms/FinancialSmsService;

    invoke-direct {p0}, Landroid/service/sms/IFinancialSmsService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/sms/FinancialSmsService;Landroid/service/sms/FinancialSmsService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/sms/FinancialSmsService$FinancialSmsServiceWrapper;-><init>(Landroid/service/sms/FinancialSmsService;)V

    return-void
.end method

.method static synthetic lambda$getSmsMessages$0(Ljava/lang/Object;Landroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .locals 1

    move-object v0, p0

    check-cast v0, Landroid/service/sms/FinancialSmsService;

    invoke-static {v0, p1, p2}, Landroid/service/sms/FinancialSmsService;->access$200(Landroid/service/sms/FinancialSmsService;Landroid/os/RemoteCallback;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public getSmsMessages(Landroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/sms/FinancialSmsService$FinancialSmsServiceWrapper;->this$0:Landroid/service/sms/FinancialSmsService;

    invoke-static {v0}, Landroid/service/sms/FinancialSmsService;->access$100(Landroid/service/sms/FinancialSmsService;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/service/sms/-$$Lambda$FinancialSmsService$FinancialSmsServiceWrapper$XFtzKfY0m01I8W-d6pG7NlmdfiQ;->INSTANCE:Landroid/service/sms/-$$Lambda$FinancialSmsService$FinancialSmsServiceWrapper$XFtzKfY0m01I8W-d6pG7NlmdfiQ;

    iget-object v2, p0, Landroid/service/sms/FinancialSmsService$FinancialSmsServiceWrapper;->this$0:Landroid/service/sms/FinancialSmsService;

    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
