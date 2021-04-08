.class Lmiui/widget/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DropDownPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic j:Lmiui/widget/DropDownPopupWindow;


# direct methods
.method constructor <init>(Lmiui/widget/DropDownPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/o;->j:Lmiui/widget/DropDownPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object p1, p0, Lmiui/widget/o;->j:Lmiui/widget/DropDownPopupWindow;

    invoke-static {p1}, Lmiui/widget/DropDownPopupWindow;->a(Lmiui/widget/DropDownPopupWindow;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lmiui/widget/o;->j:Lmiui/widget/DropDownPopupWindow;

    invoke-static {v0}, Lmiui/widget/DropDownPopupWindow;->b(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$ContainerController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/o;->j:Lmiui/widget/DropDownPopupWindow;

    invoke-static {v0}, Lmiui/widget/DropDownPopupWindow;->b(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$ContainerController;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/o;->j:Lmiui/widget/DropDownPopupWindow;

    invoke-static {v1}, Lmiui/widget/DropDownPopupWindow;->c(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$a;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lmiui/widget/DropDownPopupWindow$Controller;->onAniamtionUpdate(Landroid/view/View;F)V

    :cond_0
    iget-object v0, p0, Lmiui/widget/o;->j:Lmiui/widget/DropDownPopupWindow;

    invoke-static {v0}, Lmiui/widget/DropDownPopupWindow;->d(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$ContentController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/widget/o;->j:Lmiui/widget/DropDownPopupWindow;

    invoke-static {v0}, Lmiui/widget/DropDownPopupWindow;->d(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$ContentController;

    move-result-object v0

    iget-object p0, p0, Lmiui/widget/o;->j:Lmiui/widget/DropDownPopupWindow;

    invoke-static {p0}, Lmiui/widget/DropDownPopupWindow;->e(Lmiui/widget/DropDownPopupWindow;)Landroid/view/View;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lmiui/widget/DropDownPopupWindow$Controller;->onAniamtionUpdate(Landroid/view/View;F)V

    :cond_1
    return-void
.end method
