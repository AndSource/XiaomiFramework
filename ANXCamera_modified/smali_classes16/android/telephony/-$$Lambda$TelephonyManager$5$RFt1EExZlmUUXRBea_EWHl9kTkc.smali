.class public final synthetic Landroid/telephony/-$$Lambda$TelephonyManager$5$RFt1EExZlmUUXRBea_EWHl9kTkc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field private final synthetic f$0:Ljava/util/concurrent/Executor;

.field private final synthetic f$1:Ljava/util/function/Consumer;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$TelephonyManager$5$RFt1EExZlmUUXRBea_EWHl9kTkc;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/telephony/-$$Lambda$TelephonyManager$5$RFt1EExZlmUUXRBea_EWHl9kTkc;->f$1:Ljava/util/function/Consumer;

    iput p3, p0, Landroid/telephony/-$$Lambda$TelephonyManager$5$RFt1EExZlmUUXRBea_EWHl9kTkc;->f$2:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 3

    iget-object v0, p0, Landroid/telephony/-$$Lambda$TelephonyManager$5$RFt1EExZlmUUXRBea_EWHl9kTkc;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/-$$Lambda$TelephonyManager$5$RFt1EExZlmUUXRBea_EWHl9kTkc;->f$1:Ljava/util/function/Consumer;

    iget v2, p0, Landroid/telephony/-$$Lambda$TelephonyManager$5$RFt1EExZlmUUXRBea_EWHl9kTkc;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager$5;->lambda$onComplete$1(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;I)V

    return-void
.end method
