.class public final synthetic Landroid/telephony/-$$Lambda$TelephonyManager$3$TrNEDm6VsUgT1BQFiXGiPDtbxuA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field private final synthetic f$0:Ljava/util/concurrent/Executor;

.field private final synthetic f$1:Landroid/telephony/NumberVerificationCallback;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Landroid/telephony/NumberVerificationCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$TelephonyManager$3$TrNEDm6VsUgT1BQFiXGiPDtbxuA;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/telephony/-$$Lambda$TelephonyManager$3$TrNEDm6VsUgT1BQFiXGiPDtbxuA;->f$1:Landroid/telephony/NumberVerificationCallback;

    iput p3, p0, Landroid/telephony/-$$Lambda$TelephonyManager$3$TrNEDm6VsUgT1BQFiXGiPDtbxuA;->f$2:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 3

    iget-object v0, p0, Landroid/telephony/-$$Lambda$TelephonyManager$3$TrNEDm6VsUgT1BQFiXGiPDtbxuA;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/-$$Lambda$TelephonyManager$3$TrNEDm6VsUgT1BQFiXGiPDtbxuA;->f$1:Landroid/telephony/NumberVerificationCallback;

    iget v2, p0, Landroid/telephony/-$$Lambda$TelephonyManager$3$TrNEDm6VsUgT1BQFiXGiPDtbxuA;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager$3;->lambda$onVerificationFailed$3(Ljava/util/concurrent/Executor;Landroid/telephony/NumberVerificationCallback;I)V

    return-void
.end method
