.class Lcom/miui/internal/widget/SlidingButtonHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SlidingButtonHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/SlidingButtonHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lcom/miui/internal/widget/SlidingButtonHelper;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/SlidingButtonHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper$1;->this$0:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper$1;->mCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper$1;->mCanceled:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper$1;->this$0:Lcom/miui/internal/widget/SlidingButtonHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/internal/widget/SlidingButtonHelper;->access$002(Lcom/miui/internal/widget/SlidingButtonHelper;Landroid/animation/Animator;)Landroid/animation/Animator;

    iget-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper$1;->this$0:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-static {p1}, Lcom/miui/internal/widget/SlidingButtonHelper;->access$100(Lcom/miui/internal/widget/SlidingButtonHelper;)I

    move-result p1

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper$1;->this$0:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-static {v0}, Lcom/miui/internal/widget/SlidingButtonHelper;->access$200(Lcom/miui/internal/widget/SlidingButtonHelper;)I

    move-result v0

    if-lt p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper$1;->this$0:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-static {v0}, Lcom/miui/internal/widget/SlidingButtonHelper;->access$300(Lcom/miui/internal/widget/SlidingButtonHelper;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper$1;->this$0:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-static {v0}, Lcom/miui/internal/widget/SlidingButtonHelper;->access$300(Lcom/miui/internal/widget/SlidingButtonHelper;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper$1;->this$0:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-virtual {p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->notifyCheckedChangeListener()V

    :cond_2
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper$1;->mCanceled:Z

    return-void
.end method
