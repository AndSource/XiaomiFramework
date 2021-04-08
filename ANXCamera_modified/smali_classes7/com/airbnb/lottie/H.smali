.class Lcom/airbnb/lottie/H;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/Q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/Q;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/Q;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/H;->this$0:Lcom/airbnb/lottie/Q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p1, p0, Lcom/airbnb/lottie/H;->this$0:Lcom/airbnb/lottie/Q;

    invoke-static {p1}, Lcom/airbnb/lottie/Q;->a(Lcom/airbnb/lottie/Q;)Lcom/airbnb/lottie/model/layer/e;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/airbnb/lottie/H;->this$0:Lcom/airbnb/lottie/Q;

    invoke-static {p1}, Lcom/airbnb/lottie/Q;->a(Lcom/airbnb/lottie/Q;)Lcom/airbnb/lottie/model/layer/e;

    move-result-object p1

    iget-object p0, p0, Lcom/airbnb/lottie/H;->this$0:Lcom/airbnb/lottie/Q;

    invoke-static {p0}, Lcom/airbnb/lottie/Q;->b(Lcom/airbnb/lottie/Q;)Lcom/airbnb/lottie/d/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->M()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/model/layer/e;->setProgress(F)V

    :cond_0
    return-void
.end method
