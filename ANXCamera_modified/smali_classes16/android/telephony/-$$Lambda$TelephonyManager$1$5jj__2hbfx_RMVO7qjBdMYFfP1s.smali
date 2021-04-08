.class public final synthetic Landroid/telephony/-$$Lambda$TelephonyManager$1$5jj__2hbfx_RMVO7qjBdMYFfP1s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field private final synthetic f$0:Ljava/util/concurrent/Executor;

.field private final synthetic f$1:Landroid/telephony/TelephonyManager$CellInfoCallback;

.field private final synthetic f$2:I

.field private final synthetic f$3:Landroid/os/ParcelableException;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;ILandroid/os/ParcelableException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$TelephonyManager$1$5jj__2hbfx_RMVO7qjBdMYFfP1s;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/telephony/-$$Lambda$TelephonyManager$1$5jj__2hbfx_RMVO7qjBdMYFfP1s;->f$1:Landroid/telephony/TelephonyManager$CellInfoCallback;

    iput p3, p0, Landroid/telephony/-$$Lambda$TelephonyManager$1$5jj__2hbfx_RMVO7qjBdMYFfP1s;->f$2:I

    iput-object p4, p0, Landroid/telephony/-$$Lambda$TelephonyManager$1$5jj__2hbfx_RMVO7qjBdMYFfP1s;->f$3:Landroid/os/ParcelableException;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 4

    iget-object v0, p0, Landroid/telephony/-$$Lambda$TelephonyManager$1$5jj__2hbfx_RMVO7qjBdMYFfP1s;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/-$$Lambda$TelephonyManager$1$5jj__2hbfx_RMVO7qjBdMYFfP1s;->f$1:Landroid/telephony/TelephonyManager$CellInfoCallback;

    iget v2, p0, Landroid/telephony/-$$Lambda$TelephonyManager$1$5jj__2hbfx_RMVO7qjBdMYFfP1s;->f$2:I

    iget-object v3, p0, Landroid/telephony/-$$Lambda$TelephonyManager$1$5jj__2hbfx_RMVO7qjBdMYFfP1s;->f$3:Landroid/os/ParcelableException;

    invoke-static {v0, v1, v2, v3}, Landroid/telephony/TelephonyManager$1;->lambda$onError$3(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;ILandroid/os/ParcelableException;)V

    return-void
.end method
