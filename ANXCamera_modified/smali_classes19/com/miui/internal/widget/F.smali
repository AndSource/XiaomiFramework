.class Lcom/miui/internal/widget/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/widget/GuidePopupView;->animateToShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic j:Lcom/miui/internal/widget/GuidePopupView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/GuidePopupView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/F;->j:Lcom/miui/internal/widget/GuidePopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    iget-object v0, p0, Lcom/miui/internal/widget/F;->j:Lcom/miui/internal/widget/GuidePopupView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/miui/internal/widget/F;->j:Lcom/miui/internal/widget/GuidePopupView;

    invoke-static {v0}, Lcom/miui/internal/widget/GuidePopupView;->a(Lcom/miui/internal/widget/GuidePopupView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/F;->j:Lcom/miui/internal/widget/GuidePopupView;

    invoke-static {v0}, Lcom/miui/internal/widget/GuidePopupView;->a(Lcom/miui/internal/widget/GuidePopupView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/F;->j:Lcom/miui/internal/widget/GuidePopupView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/internal/widget/GuidePopupView;->a(Lcom/miui/internal/widget/GuidePopupView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/miui/internal/widget/F;->j:Lcom/miui/internal/widget/GuidePopupView;

    invoke-static {v0}, Lcom/miui/internal/widget/GuidePopupView;->a(Lcom/miui/internal/widget/GuidePopupView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/miui/internal/widget/F;->j:Lcom/miui/internal/widget/GuidePopupView;

    invoke-static {v0}, Lcom/miui/internal/widget/GuidePopupView;->a(Lcom/miui/internal/widget/GuidePopupView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/F;->j:Lcom/miui/internal/widget/GuidePopupView;

    invoke-static {v1}, Lcom/miui/internal/widget/GuidePopupView;->c(Lcom/miui/internal/widget/GuidePopupView;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/miui/internal/widget/F;->j:Lcom/miui/internal/widget/GuidePopupView;

    invoke-static {p0}, Lcom/miui/internal/widget/GuidePopupView;->a(Lcom/miui/internal/widget/GuidePopupView;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return v2
.end method
