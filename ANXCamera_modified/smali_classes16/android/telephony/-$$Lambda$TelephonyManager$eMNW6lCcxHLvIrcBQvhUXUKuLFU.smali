.class public final synthetic Landroid/telephony/-$$Lambda$TelephonyManager$eMNW6lCcxHLvIrcBQvhUXUKuLFU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field private final synthetic f$0:Ljava/util/concurrent/Executor;

.field private final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$TelephonyManager$eMNW6lCcxHLvIrcBQvhUXUKuLFU;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/telephony/-$$Lambda$TelephonyManager$eMNW6lCcxHLvIrcBQvhUXUKuLFU;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 2

    iget-object v0, p0, Landroid/telephony/-$$Lambda$TelephonyManager$eMNW6lCcxHLvIrcBQvhUXUKuLFU;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/-$$Lambda$TelephonyManager$eMNW6lCcxHLvIrcBQvhUXUKuLFU;->f$1:Ljava/util/function/Consumer;

    invoke-static {v0, v1}, Landroid/telephony/TelephonyManager;->lambda$updateAvailableNetworks$2(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method
