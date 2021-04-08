.class public final synthetic Landroid/telephony/-$$Lambda$SubscriptionManager$R_uORt9bKcmEo6JnjiGP2KgjIOQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Landroid/telephony/SubscriptionManager;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/SubscriptionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$SubscriptionManager$R_uORt9bKcmEo6JnjiGP2KgjIOQ;->f$0:Landroid/telephony/SubscriptionManager;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroid/telephony/-$$Lambda$SubscriptionManager$R_uORt9bKcmEo6JnjiGP2KgjIOQ;->f$0:Landroid/telephony/SubscriptionManager;

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->lambda$getActiveSubscriptionInfoList$0$SubscriptionManager(Landroid/telephony/SubscriptionInfo;)Z

    move-result p1

    return p1
.end method
