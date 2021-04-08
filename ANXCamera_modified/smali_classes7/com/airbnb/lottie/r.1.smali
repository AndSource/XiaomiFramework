.class Lcom/airbnb/lottie/r;
.super Ljava/lang/Object;
.source "LottieCompositionFactory.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/y;->a(Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/Z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/airbnb/lottie/X<",
        "Lcom/airbnb/lottie/m;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic nb:Ljava/lang/ref/WeakReference;

.field final synthetic ob:I

.field final synthetic val$appContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/r;->nb:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/airbnb/lottie/r;->val$appContext:Landroid/content/Context;

    iput p3, p0, Lcom/airbnb/lottie/r;->ob:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/airbnb/lottie/X;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/X<",
            "Lcom/airbnb/lottie/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/r;->nb:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/r;->val$appContext:Landroid/content/Context;

    :goto_0
    iget p0, p0, Lcom/airbnb/lottie/r;->ob:I

    invoke-static {v0, p0}, Lcom/airbnb/lottie/y;->b(Landroid/content/Context;I)Lcom/airbnb/lottie/X;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/airbnb/lottie/r;->call()Lcom/airbnb/lottie/X;

    move-result-object p0

    return-object p0
.end method
