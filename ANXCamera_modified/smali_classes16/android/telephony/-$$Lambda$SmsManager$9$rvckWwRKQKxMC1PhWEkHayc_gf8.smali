.class public final synthetic Landroid/telephony/-$$Lambda$SmsManager$9$rvckWwRKQKxMC1PhWEkHayc_gf8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field private final synthetic f$0:Ljava/util/concurrent/Executor;

.field private final synthetic f$1:Landroid/telephony/SmsManager$FinancialSmsCallback;

.field private final synthetic f$2:Landroid/database/CursorWindow;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Landroid/telephony/SmsManager$FinancialSmsCallback;Landroid/database/CursorWindow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$SmsManager$9$rvckWwRKQKxMC1PhWEkHayc_gf8;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/telephony/-$$Lambda$SmsManager$9$rvckWwRKQKxMC1PhWEkHayc_gf8;->f$1:Landroid/telephony/SmsManager$FinancialSmsCallback;

    iput-object p3, p0, Landroid/telephony/-$$Lambda$SmsManager$9$rvckWwRKQKxMC1PhWEkHayc_gf8;->f$2:Landroid/database/CursorWindow;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 3

    iget-object v0, p0, Landroid/telephony/-$$Lambda$SmsManager$9$rvckWwRKQKxMC1PhWEkHayc_gf8;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/-$$Lambda$SmsManager$9$rvckWwRKQKxMC1PhWEkHayc_gf8;->f$1:Landroid/telephony/SmsManager$FinancialSmsCallback;

    iget-object v2, p0, Landroid/telephony/-$$Lambda$SmsManager$9$rvckWwRKQKxMC1PhWEkHayc_gf8;->f$2:Landroid/database/CursorWindow;

    invoke-static {v0, v1, v2}, Landroid/telephony/SmsManager$9;->lambda$onGetSmsMessagesForFinancialApp$1(Ljava/util/concurrent/Executor;Landroid/telephony/SmsManager$FinancialSmsCallback;Landroid/database/CursorWindow;)V

    return-void
.end method
