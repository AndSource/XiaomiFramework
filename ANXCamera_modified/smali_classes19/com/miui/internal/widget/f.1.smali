.class Lcom/miui/internal/widget/f;
.super Lmiui/animation/property/FloatProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/widget/ActionBarContextView;->makeInOutAnimator(Z)Lmiui/animation/physics/SpringAnimationSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/animation/property/FloatProperty<",
        "Lcom/miui/internal/widget/ActionBarOverlayLayout;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic j:Lcom/miui/internal/widget/ActionBarContextView;

.field final synthetic oe:Lcom/miui/internal/view/menu/ActionMenuView;

.field final synthetic pe:F

.field final synthetic qe:I

.field final synthetic re:Z

.field final synthetic se:I

.field final synthetic te:I


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ActionBarContextView;Ljava/lang/String;Lcom/miui/internal/view/menu/ActionMenuView;FIZII)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/f;->j:Lcom/miui/internal/widget/ActionBarContextView;

    iput-object p3, p0, Lcom/miui/internal/widget/f;->oe:Lcom/miui/internal/view/menu/ActionMenuView;

    iput p4, p0, Lcom/miui/internal/widget/f;->pe:F

    iput p5, p0, Lcom/miui/internal/widget/f;->qe:I

    iput-boolean p6, p0, Lcom/miui/internal/widget/f;->re:Z

    iput p7, p0, Lcom/miui/internal/widget/f;->se:I

    iput p8, p0, Lcom/miui/internal/widget/f;->te:I

    invoke-direct {p0, p2}, Lmiui/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/internal/widget/ActionBarOverlayLayout;)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public a(Lcom/miui/internal/widget/ActionBarOverlayLayout;F)V
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/widget/f;->oe:Lcom/miui/internal/view/menu/ActionMenuView;

    iget v1, p0, Lcom/miui/internal/widget/f;->pe:F

    iget v2, p0, Lcom/miui/internal/widget/f;->qe:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    sub-float/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    float-to-int v0, p2

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->animateContentMarginBottom(I)V

    iget-object p1, p0, Lcom/miui/internal/widget/f;->j:Lcom/miui/internal/widget/ActionBarContextView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarContextView;->e(Lcom/miui/internal/widget/ActionBarContextView;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/internal/widget/f;->j:Lcom/miui/internal/widget/ActionBarContextView;

    iget-boolean p2, p0, Lcom/miui/internal/widget/f;->re:Z

    invoke-virtual {p1, p2}, Lcom/miui/internal/widget/ActionBarContextView;->notifyAnimationStart(Z)V

    iget-object p0, p0, Lcom/miui/internal/widget/f;->j:Lcom/miui/internal/widget/ActionBarContextView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/miui/internal/widget/ActionBarContextView;->a(Lcom/miui/internal/widget/ActionBarContextView;Z)Z

    return-void

    :cond_0
    iget p1, p0, Lcom/miui/internal/widget/f;->se:I

    iget v0, p0, Lcom/miui/internal/widget/f;->te:I

    if-ne p1, v0, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    int-to-float v1, v0

    sub-float/2addr p2, v1

    sub-int/2addr p1, v0

    int-to-float p1, p1

    div-float p1, p2, p1

    :goto_0
    iget-object p2, p0, Lcom/miui/internal/widget/f;->j:Lcom/miui/internal/widget/ActionBarContextView;

    iget-boolean p0, p0, Lcom/miui/internal/widget/f;->re:Z

    invoke-virtual {p2, p0, p1}, Lcom/miui/internal/widget/ActionBarContextView;->notifyAnimationUpdate(ZF)V

    return-void
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/f;->a(Lcom/miui/internal/widget/ActionBarOverlayLayout;)F

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/widget/f;->a(Lcom/miui/internal/widget/ActionBarOverlayLayout;F)V

    return-void
.end method
