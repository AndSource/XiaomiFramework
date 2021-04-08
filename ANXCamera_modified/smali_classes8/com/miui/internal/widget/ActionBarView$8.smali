.class Lcom/miui/internal/widget/ActionBarView$8;
.super Lmiui/animation/listener/TransitionListener;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/widget/ActionBarView;->onAnimatedExpandStateChanged(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/ActionBarView;

.field final synthetic val$newState:I


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ActionBarView;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView$8;->this$0:Lcom/miui/internal/widget/ActionBarView;

    iput p2, p0, Lcom/miui/internal/widget/ActionBarView$8;->val$newState:I

    invoke-direct {p0}, Lmiui/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1}, Lmiui/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$8;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarView;->isResizable()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/internal/widget/ActionBarView;->access$2102(Lcom/miui/internal/widget/ActionBarView;Z)Z

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$8;->this$0:Lcom/miui/internal/widget/ActionBarView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ActionBarView;->setResizable(Z)V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$8;->this$0:Lcom/miui/internal/widget/ActionBarView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ActionBarView;->setExpandState(I)V

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView$8;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p0}, Lcom/miui/internal/widget/ActionBarView;->access$2200(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1}, Lmiui/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$8;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$2200(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/AbsActionBarView$CollapseView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$8;->this$0:Lcom/miui/internal/widget/ActionBarView;

    iget v0, p0, Lcom/miui/internal/widget/ActionBarView$8;->val$newState:I

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ActionBarView;->setExpandState(I)V

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView$8;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p0}, Lcom/miui/internal/widget/ActionBarView;->access$2100(Lcom/miui/internal/widget/ActionBarView;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->setResizable(Z)V

    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Lmiui/animation/property/IIntValueProperty;IFZ)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lmiui/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Lmiui/animation/property/IIntValueProperty;IFZ)V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$8;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1, p3}, Lcom/miui/internal/widget/ActionBarView;->access$2302(Lcom/miui/internal/widget/ActionBarView;I)I

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView$8;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method
