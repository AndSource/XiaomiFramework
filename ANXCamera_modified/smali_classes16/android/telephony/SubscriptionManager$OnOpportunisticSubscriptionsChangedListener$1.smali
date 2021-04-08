.class Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener$1;
.super Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;


# direct methods
.method constructor <init>(Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener$1;->this$0:Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;

    invoke-direct {p0}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onSubscriptionsChanged$0$SubscriptionManager$OnOpportunisticSubscriptionsChangedListener$1()V
    .locals 1

    iget-object v0, p0, Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener$1;->this$0:Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;->onOpportunisticSubscriptionsChanged()V

    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener$1;->this$0:Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;->access$100(Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroid/telephony/-$$Lambda$SubscriptionManager$OnOpportunisticSubscriptionsChangedListener$1$3LINuEtkXs3dEn49nQkzD0NIY3E;

    invoke-direct {v3, p0}, Landroid/telephony/-$$Lambda$SubscriptionManager$OnOpportunisticSubscriptionsChangedListener$1$3LINuEtkXs3dEn49nQkzD0NIY3E;-><init>(Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener$1;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
