.class public final synthetic Landroid/telephony/-$$Lambda$TelephonyManager$2$hWPf2raNadUBIhTQLEUpRhHWKoI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field private final synthetic f$0:Ljava/util/concurrent/Executor;

.field private final synthetic f$1:Landroid/telephony/TelephonyManager$CellInfoCallback;

.field private final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$TelephonyManager$2$hWPf2raNadUBIhTQLEUpRhHWKoI;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/telephony/-$$Lambda$TelephonyManager$2$hWPf2raNadUBIhTQLEUpRhHWKoI;->f$1:Landroid/telephony/TelephonyManager$CellInfoCallback;

    iput-object p3, p0, Landroid/telephony/-$$Lambda$TelephonyManager$2$hWPf2raNadUBIhTQLEUpRhHWKoI;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 3

    iget-object v0, p0, Landroid/telephony/-$$Lambda$TelephonyManager$2$hWPf2raNadUBIhTQLEUpRhHWKoI;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/-$$Lambda$TelephonyManager$2$hWPf2raNadUBIhTQLEUpRhHWKoI;->f$1:Landroid/telephony/TelephonyManager$CellInfoCallback;

    iget-object v2, p0, Landroid/telephony/-$$Lambda$TelephonyManager$2$hWPf2raNadUBIhTQLEUpRhHWKoI;->f$2:Ljava/util/List;

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager$2;->lambda$onCellInfo$1(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;Ljava/util/List;)V

    return-void
.end method
