.class Landroid/telephony/TelephonyManager$3;
.super Lcom/android/internal/telephony/INumberVerificationCallback$Stub;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyManager;->requestNumberVerification(Landroid/telephony/PhoneNumberRange;JLjava/util/concurrent/Executor;Landroid/telephony/NumberVerificationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/TelephonyManager;

.field final synthetic val$callback:Landroid/telephony/NumberVerificationCallback;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Landroid/telephony/NumberVerificationCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/TelephonyManager$3;->this$0:Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Landroid/telephony/TelephonyManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/TelephonyManager$3;->val$callback:Landroid/telephony/NumberVerificationCallback;

    invoke-direct {p0}, Lcom/android/internal/telephony/INumberVerificationCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onCallReceived$0(Landroid/telephony/NumberVerificationCallback;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/telephony/NumberVerificationCallback;->onCallReceived(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onCallReceived$1(Ljava/util/concurrent/Executor;Landroid/telephony/NumberVerificationCallback;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/telephony/-$$Lambda$TelephonyManager$3$LPMNUsxM8QRYWmnzGtrEYPm5sAs;

    invoke-direct {v0, p1, p2}, Landroid/telephony/-$$Lambda$TelephonyManager$3$LPMNUsxM8QRYWmnzGtrEYPm5sAs;-><init>(Landroid/telephony/NumberVerificationCallback;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$onVerificationFailed$2(Landroid/telephony/NumberVerificationCallback;I)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/telephony/NumberVerificationCallback;->onVerificationFailed(I)V

    return-void
.end method

.method static synthetic lambda$onVerificationFailed$3(Ljava/util/concurrent/Executor;Landroid/telephony/NumberVerificationCallback;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/telephony/-$$Lambda$TelephonyManager$3$VM3y0XwyxZN6vR6ERQTngCQIICc;

    invoke-direct {v0, p1, p2}, Landroid/telephony/-$$Lambda$TelephonyManager$3$VM3y0XwyxZN6vR6ERQTngCQIICc;-><init>(Landroid/telephony/NumberVerificationCallback;I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onCallReceived(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/telephony/TelephonyManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/TelephonyManager$3;->val$callback:Landroid/telephony/NumberVerificationCallback;

    new-instance v2, Landroid/telephony/-$$Lambda$TelephonyManager$3$ue1tJSNmFJObWAJcaHRYIrfBRNg;

    invoke-direct {v2, v0, v1, p1}, Landroid/telephony/-$$Lambda$TelephonyManager$3$ue1tJSNmFJObWAJcaHRYIrfBRNg;-><init>(Ljava/util/concurrent/Executor;Landroid/telephony/NumberVerificationCallback;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onVerificationFailed(I)V
    .locals 3

    iget-object v0, p0, Landroid/telephony/TelephonyManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/TelephonyManager$3;->val$callback:Landroid/telephony/NumberVerificationCallback;

    new-instance v2, Landroid/telephony/-$$Lambda$TelephonyManager$3$TrNEDm6VsUgT1BQFiXGiPDtbxuA;

    invoke-direct {v2, v0, v1, p1}, Landroid/telephony/-$$Lambda$TelephonyManager$3$TrNEDm6VsUgT1BQFiXGiPDtbxuA;-><init>(Ljava/util/concurrent/Executor;Landroid/telephony/NumberVerificationCallback;I)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
