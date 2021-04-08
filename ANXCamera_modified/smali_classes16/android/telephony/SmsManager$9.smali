.class Landroid/telephony/SmsManager$9;
.super Landroid/telephony/IFinancialSmsCallback$Stub;
.source "SmsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/SmsManager;->getSmsMessagesForFinancialApp(Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/telephony/SmsManager$FinancialSmsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/SmsManager;

.field final synthetic val$callback:Landroid/telephony/SmsManager$FinancialSmsCallback;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroid/telephony/SmsManager;Ljava/util/concurrent/Executor;Landroid/telephony/SmsManager$FinancialSmsCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/SmsManager$9;->this$0:Landroid/telephony/SmsManager;

    iput-object p2, p0, Landroid/telephony/SmsManager$9;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/SmsManager$9;->val$callback:Landroid/telephony/SmsManager$FinancialSmsCallback;

    invoke-direct {p0}, Landroid/telephony/IFinancialSmsCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onGetSmsMessagesForFinancialApp$0(Landroid/telephony/SmsManager$FinancialSmsCallback;Landroid/database/CursorWindow;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/SmsManager$FinancialSmsCallback;->onFinancialSmsMessages(Landroid/database/CursorWindow;)V

    return-void
.end method

.method static synthetic lambda$onGetSmsMessagesForFinancialApp$1(Ljava/util/concurrent/Executor;Landroid/telephony/SmsManager$FinancialSmsCallback;Landroid/database/CursorWindow;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/telephony/-$$Lambda$SmsManager$9$Ma-xGOTcrGGV8QvZI0NSA6WUbKA;

    invoke-direct {v0, p1, p2}, Landroid/telephony/-$$Lambda$SmsManager$9$Ma-xGOTcrGGV8QvZI0NSA6WUbKA;-><init>(Landroid/telephony/SmsManager$FinancialSmsCallback;Landroid/database/CursorWindow;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onGetSmsMessagesForFinancialApp(Landroid/database/CursorWindow;)V
    .locals 3

    iget-object v0, p0, Landroid/telephony/SmsManager$9;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/SmsManager$9;->val$callback:Landroid/telephony/SmsManager$FinancialSmsCallback;

    new-instance v2, Landroid/telephony/-$$Lambda$SmsManager$9$rvckWwRKQKxMC1PhWEkHayc_gf8;

    invoke-direct {v2, v0, v1, p1}, Landroid/telephony/-$$Lambda$SmsManager$9$rvckWwRKQKxMC1PhWEkHayc_gf8;-><init>(Ljava/util/concurrent/Executor;Landroid/telephony/SmsManager$FinancialSmsCallback;Landroid/database/CursorWindow;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
