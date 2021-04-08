.class public final synthetic Landroid/telephony/-$$Lambda$SubscriptionManager$OS3WICha4HbZhTnWrKCxeu6dr6g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/telephony/SubscriptionManager$CallISubMethodHelper;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$SubscriptionManager$OS3WICha4HbZhTnWrKCxeu6dr6g;->f$0:Ljava/lang/String;

    iput p2, p0, Landroid/telephony/-$$Lambda$SubscriptionManager$OS3WICha4HbZhTnWrKCxeu6dr6g;->f$1:I

    iput p3, p0, Landroid/telephony/-$$Lambda$SubscriptionManager$OS3WICha4HbZhTnWrKCxeu6dr6g;->f$2:I

    return-void
.end method


# virtual methods
.method public final callMethod(Lcom/android/internal/telephony/ISub;)I
    .locals 3

    iget-object v0, p0, Landroid/telephony/-$$Lambda$SubscriptionManager$OS3WICha4HbZhTnWrKCxeu6dr6g;->f$0:Ljava/lang/String;

    iget v1, p0, Landroid/telephony/-$$Lambda$SubscriptionManager$OS3WICha4HbZhTnWrKCxeu6dr6g;->f$1:I

    iget v2, p0, Landroid/telephony/-$$Lambda$SubscriptionManager$OS3WICha4HbZhTnWrKCxeu6dr6g;->f$2:I

    invoke-static {v0, v1, v2, p1}, Landroid/telephony/SubscriptionManager;->lambda$setDisplayName$2(Ljava/lang/String;IILcom/android/internal/telephony/ISub;)I

    move-result p1

    return p1
.end method
