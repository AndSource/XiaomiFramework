.class Landroid/view/InsetsController$1;
.super Ljava/lang/Object;
.source "InsetsController.java"

# interfaces
.implements Landroid/view/WindowInsetsAnimationControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/InsetsController;->applyAnimation(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mController:Landroid/view/WindowInsetsAnimationController;

.field final synthetic this$0:Landroid/view/InsetsController;

.field final synthetic val$show:Z

.field final synthetic val$types:I


# direct methods
.method constructor <init>(Landroid/view/InsetsController;ZI)V
    .locals 0

    iput-object p1, p0, Landroid/view/InsetsController$1;->this$0:Landroid/view/InsetsController;

    iput-boolean p2, p0, Landroid/view/InsetsController$1;->val$show:Z

    iput p3, p0, Landroid/view/InsetsController$1;->val$types:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400(Landroid/view/InsetsController$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/InsetsController$1;->onAnimationFinish()V

    return-void
.end method

.method private onAnimationFinish()V
    .locals 3

    iget-object v0, p0, Landroid/view/InsetsController$1;->this$0:Landroid/view/InsetsController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/InsetsController;->access$502(Landroid/view/InsetsController;I)I

    iget-object v0, p0, Landroid/view/InsetsController$1;->mController:Landroid/view/WindowInsetsAnimationController;

    iget-boolean v2, p0, Landroid/view/InsetsController$1;->val$show:Z

    if-eqz v2, :cond_0

    iget v1, p0, Landroid/view/InsetsController$1;->val$types:I

    :cond_0
    invoke-interface {v0, v1}, Landroid/view/WindowInsetsAnimationController;->finish(I)V

    return-void
.end method


# virtual methods
.method public onCancelled()V
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsController$1;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    return-void
.end method

.method public onReady(Landroid/view/WindowInsetsAnimationController;I)V
    .locals 5

    iput-object p1, p0, Landroid/view/InsetsController$1;->mController:Landroid/view/WindowInsetsAnimationController;

    iget-boolean v0, p0, Landroid/view/InsetsController$1;->val$show:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/InsetsController$1;->this$0:Landroid/view/InsetsController;

    invoke-static {v0, p2}, Landroid/view/InsetsController;->access$000(Landroid/view/InsetsController;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/InsetsController$1;->this$0:Landroid/view/InsetsController;

    invoke-static {v0, p2}, Landroid/view/InsetsController;->access$100(Landroid/view/InsetsController;I)V

    :goto_0
    new-instance v0, Landroid/view/InsetsController$InsetsProperty;

    invoke-direct {v0}, Landroid/view/InsetsController$InsetsProperty;-><init>()V

    invoke-static {}, Landroid/view/InsetsController;->access$200()Landroid/animation/TypeEvaluator;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/Insets;

    const/4 v3, 0x0

    iget-boolean v4, p0, Landroid/view/InsetsController$1;->val$show:Z

    if-eqz v4, :cond_1

    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->getHiddenStateInsets()Landroid/graphics/Insets;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    move-result-object v4

    :goto_1
    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-boolean v4, p0, Landroid/view/InsetsController$1;->val$show:Z

    if-eqz v4, :cond_2

    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    move-result-object v4

    goto :goto_2

    :cond_2
    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->getHiddenStateInsets()Landroid/graphics/Insets;

    move-result-object v4

    :goto_2
    aput-object v4, v2, v3

    invoke-static {p1, v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsController$1;->mAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Landroid/view/InsetsController$1;->mAnimator:Landroid/animation/ObjectAnimator;

    iget-boolean v1, p0, Landroid/view/InsetsController$1;->val$show:Z

    if-eqz v1, :cond_3

    const-wide/16 v1, 0x113

    goto :goto_3

    :cond_3
    const-wide/16 v1, 0x154

    :goto_3
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Landroid/view/InsetsController$1;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {}, Landroid/view/InsetsController;->access$300()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Landroid/view/InsetsController$1;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/InsetsController$1$1;

    invoke-direct {v1, p0}, Landroid/view/InsetsController$1$1;-><init>(Landroid/view/InsetsController$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Landroid/view/InsetsController$1;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
