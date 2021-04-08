.class public final synthetic Landroid/service/sms/-$$Lambda$FinancialSmsService$FinancialSmsServiceWrapper$XFtzKfY0m01I8W-d6pG7NlmdfiQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/service/sms/-$$Lambda$FinancialSmsService$FinancialSmsServiceWrapper$XFtzKfY0m01I8W-d6pG7NlmdfiQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/sms/-$$Lambda$FinancialSmsService$FinancialSmsServiceWrapper$XFtzKfY0m01I8W-d6pG7NlmdfiQ;

    invoke-direct {v0}, Landroid/service/sms/-$$Lambda$FinancialSmsService$FinancialSmsServiceWrapper$XFtzKfY0m01I8W-d6pG7NlmdfiQ;-><init>()V

    sput-object v0, Landroid/service/sms/-$$Lambda$FinancialSmsService$FinancialSmsServiceWrapper$XFtzKfY0m01I8W-d6pG7NlmdfiQ;->INSTANCE:Landroid/service/sms/-$$Lambda$FinancialSmsService$FinancialSmsServiceWrapper$XFtzKfY0m01I8W-d6pG7NlmdfiQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/service/sms/FinancialSmsService;

    check-cast p2, Landroid/os/RemoteCallback;

    check-cast p3, Landroid/os/Bundle;

    invoke-static {p1, p2, p3}, Landroid/service/sms/FinancialSmsService$FinancialSmsServiceWrapper;->lambda$getSmsMessages$0(Ljava/lang/Object;Landroid/os/RemoteCallback;Landroid/os/Bundle;)V

    return-void
.end method
