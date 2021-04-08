.class public Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SubscriptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnOpportunisticSubscriptionsChangedListener"
.end annotation


# instance fields
.field callback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

.field private mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener$1;

    invoke-direct {v0, p0}, Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener$1;-><init>(Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;)V

    iput-object v0, p0, Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;->callback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    return-void
.end method

.method static synthetic access$100(Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;)Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$200(Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;->setExecutor(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SubscriptionManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public onOpportunisticSubscriptionsChanged()V
    .locals 0

    return-void
.end method
