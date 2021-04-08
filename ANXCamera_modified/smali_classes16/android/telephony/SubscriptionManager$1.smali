.class Landroid/telephony/SubscriptionManager$1;
.super Lcom/android/internal/telephony/ISetOpportunisticDataCallback$Stub;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/SubscriptionManager;->setPreferredDataSubscriptionId(IZLjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/SubscriptionManager;

.field final synthetic val$callback:Ljava/util/function/Consumer;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroid/telephony/SubscriptionManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/SubscriptionManager$1;->this$0:Landroid/telephony/SubscriptionManager;

    iput-object p2, p0, Landroid/telephony/SubscriptionManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/SubscriptionManager$1;->val$callback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Lcom/android/internal/telephony/ISetOpportunisticDataCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onComplete$0(Ljava/util/function/Consumer;I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onComplete$1(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/telephony/-$$Lambda$SubscriptionManager$1$oi86t06gqdSgTtWgRmCc5dJIfEs;

    invoke-direct {v0, p1, p2}, Landroid/telephony/-$$Lambda$SubscriptionManager$1$oi86t06gqdSgTtWgRmCc5dJIfEs;-><init>(Ljava/util/function/Consumer;I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 3

    iget-object v0, p0, Landroid/telephony/SubscriptionManager$1;->val$executor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/telephony/SubscriptionManager$1;->val$callback:Ljava/util/function/Consumer;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/telephony/-$$Lambda$SubscriptionManager$1$qFZ-q9KyfPAkHTrQPCRyO6OQ_pc;

    invoke-direct {v2, v0, v1, p1}, Landroid/telephony/-$$Lambda$SubscriptionManager$1$qFZ-q9KyfPAkHTrQPCRyO6OQ_pc;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;I)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
