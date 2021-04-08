.class Lcom/miui/internal/widget/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/view/ActionModeAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/EditableListViewDelegate$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic q:Lcom/miui/internal/widget/EditableListViewDelegate$b;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/EditableListViewDelegate$b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/B;->q:Lcom/miui/internal/widget/EditableListViewDelegate$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .locals 0

    return-void
.end method

.method public onStop(Z)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/miui/internal/widget/B;->q:Lcom/miui/internal/widget/EditableListViewDelegate$b;

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->j:Lcom/miui/internal/widget/EditableListViewDelegate;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->a(Lcom/miui/internal/widget/EditableListViewDelegate;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    :cond_0
    return-void
.end method

.method public onUpdate(ZF)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    sub-float p2, v0, p2

    :cond_0
    if-eqz p1, :cond_1

    cmpl-float p1, p2, v0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/internal/widget/B;->q:Lcom/miui/internal/widget/EditableListViewDelegate$b;

    iget-object p1, p1, Lcom/miui/internal/widget/EditableListViewDelegate$b;->j:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->a(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getHeight()I

    move-result p1

    iget-object p2, p0, Lcom/miui/internal/widget/B;->q:Lcom/miui/internal/widget/EditableListViewDelegate$b;

    iget-object p2, p2, Lcom/miui/internal/widget/EditableListViewDelegate$b;->j:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {p2}, Lcom/miui/internal/widget/EditableListViewDelegate;->b(Lcom/miui/internal/widget/EditableListViewDelegate;)I

    move-result p2

    if-le p2, p1, :cond_1

    iget-object p2, p0, Lcom/miui/internal/widget/B;->q:Lcom/miui/internal/widget/EditableListViewDelegate$b;

    iget-object p2, p2, Lcom/miui/internal/widget/EditableListViewDelegate$b;->j:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {p2}, Lcom/miui/internal/widget/EditableListViewDelegate;->a(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object p2

    iget-object p0, p0, Lcom/miui/internal/widget/B;->q:Lcom/miui/internal/widget/EditableListViewDelegate$b;

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$b;->j:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->b(Lcom/miui/internal/widget/EditableListViewDelegate;)I

    move-result p0

    sub-int/2addr p0, p1

    const/16 p1, 0x64

    invoke-virtual {p2, p0, p1}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    :cond_1
    return-void
.end method
