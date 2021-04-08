.class public Lmiui/widget/TriggerViewDrawer;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/TriggerViewDrawer$FixedViewWrapper;,
        Lmiui/widget/TriggerViewDrawer$b;,
        Lmiui/widget/TriggerViewDrawer$a;,
        Lmiui/widget/TriggerViewDrawer$ScrollableView;,
        Lmiui/widget/TriggerViewDrawer$TriggerListener;,
        Lmiui/widget/TriggerViewDrawer$DrawerListener;
    }
.end annotation


# static fields
.field private static final FRICTION:F = 2.0f

.field private static final LOG_TAG:Ljava/lang/String; = "TriggerViewDrawer"

.field private static final TOUCH_MODE_NONE:I = 0x0

.field private static final TOUCH_MODE_SCROLL:I = 0x2

.field private static final do:I = 0x0

.field private static final eo:I = 0x1

.field private static final fo:I = 0x2

.field private static final go:I = 0x1

.field private static final nk:Z


# instance fields
.field private Pn:I

.field private Qn:Landroid/view/View;

.field private Rn:Landroid/view/View;

.field private Sf:I

.field private Sn:I

.field private Tn:I

.field private Un:Lmiui/widget/TriggerViewDrawer$TriggerListener;

.field private Vn:Z

.field private Wn:Landroid/view/View;

.field private Xn:I

.field private Yn:Z

.field private Ze:F

.field private Zj:I

.field private Zn:Z

.field private _j:I

.field private _n:F

.field private ak:Lmiui/widget/TriggerViewDrawer$ScrollableView;

.field private final ao:[I

.field private final bo:[I

.field private ck:Z

.field private co:Z

.field private dk:Landroid/graphics/drawable/Drawable;

.field private ek:Lmiui/widget/TriggerViewDrawer$DrawerListener;

.field private fk:I

.field private jk:F

.field private mContentView:Landroid/view/View;

.field private mDividerHeight:I

.field private mLastY:F

.field private mScroller:Landroid/widget/Scroller;

.field private mTargetView:Landroid/view/View;

.field private mTouchMode:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private rj:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/TriggerViewDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lmiui/R$attr;->triggerViewDrawerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/TriggerViewDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/TriggerViewDrawer;->fk:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lmiui/widget/TriggerViewDrawer;->_n:F

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lmiui/widget/TriggerViewDrawer;->ao:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lmiui/widget/TriggerViewDrawer;->bo:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/TriggerViewDrawer;->co:Z

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lmiui/widget/TriggerViewDrawer;->Sf:I

    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiui/widget/TriggerViewDrawer;->mScroller:Landroid/widget/Scroller;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/TriggerViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    sget-object v1, Lmiui/R$styleable;->TriggerViewDrawer:[I

    sget v2, Lmiui/R$style;->Widget_TriggerViewDrawer:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lmiui/R$styleable;->TriggerViewDrawer_contentView:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lmiui/widget/TriggerViewDrawer;->Zj:I

    sget p2, Lmiui/R$styleable;->TriggerViewDrawer_targetView:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lmiui/widget/TriggerViewDrawer;->_j:I

    iget p2, p0, Lmiui/widget/TriggerViewDrawer;->_j:I

    if-eqz p2, :cond_1

    sget p2, Lmiui/R$styleable;->TriggerViewDrawer_scrollableView:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lmiui/widget/TriggerViewDrawer;->rj:I

    sget p2, Lmiui/R$styleable;->TriggerViewDrawer_triggerView:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lmiui/widget/TriggerViewDrawer;->Pn:I

    sget p2, Lmiui/R$styleable;->TriggerViewDrawer_triggerDistance:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiui/widget/TriggerViewDrawer;->Tn:I

    sget p2, Lmiui/R$styleable;->TriggerViewDrawer_scrollDivider:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lmiui/widget/TriggerViewDrawer;->dk:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lmiui/widget/TriggerViewDrawer;->dk:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    iput p2, p0, Lmiui/widget/TriggerViewDrawer;->mDividerHeight:I

    :cond_0
    sget p2, Lmiui/R$styleable;->TriggerViewDrawer_dragEnabled:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiui/widget/TriggerViewDrawer;->ck:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The targetView attribute is required and must refer to a valid child."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private I(I)V
    .locals 1

    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->Tn:I

    if-gtz v0, :cond_0

    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->Sn:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_0
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mTargetView:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    invoke-direct {p0}, Lmiui/widget/TriggerViewDrawer;->hc()V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {p0, p1, p2, v0, v1}, Lmiui/widget/TriggerViewDrawer;->a(Landroid/view/View;Landroid/view/MotionEvent;FF)V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/MotionEvent;FF)V
    .locals 0

    invoke-virtual {p2, p3, p4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    neg-float p0, p3

    neg-float p1, p4

    invoke-virtual {p2, p0, p1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/MotionEvent;FFI)V
    .locals 0

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p2

    invoke-virtual {p2, p5}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/widget/TriggerViewDrawer;->a(Landroid/view/View;Landroid/view/MotionEvent;FF)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/MotionEvent;I)V
    .locals 0

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-direct {p0, p1, p2}, Lmiui/widget/TriggerViewDrawer;->a(Landroid/view/View;Landroid/view/MotionEvent;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->Sn:I

    if-le v0, v1, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    iget v2, p0, Lmiui/widget/TriggerViewDrawer;->mDividerHeight:I

    const/4 v3, 0x0

    if-lez v2, :cond_1

    iget-object v4, p0, Lmiui/widget/TriggerViewDrawer;->dk:Landroid/graphics/drawable/Drawable;

    sub-int v2, v0, v2

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lmiui/widget/TriggerViewDrawer;->dk:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v2, p0, Lmiui/widget/TriggerViewDrawer;->mDividerHeight:I

    sub-int/2addr v0, v2

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v3, v3, v1, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p0
.end method

.method private b(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->Tn:I

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->Tn:I

    if-le v0, v1, :cond_1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p0
.end method

.method private d(F)V
    .locals 4

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->Sn:I

    const/high16 v2, 0x40000000    # 2.0f

    if-le v0, v1, :cond_0

    int-to-float v3, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v2

    add-float/2addr v3, v0

    goto :goto_0

    :cond_0
    int-to-float v3, v0

    :goto_0
    add-float/2addr v3, p1

    iget p1, p0, Lmiui/widget/TriggerViewDrawer;->Sn:I

    int-to-float v0, p1

    cmpl-float v0, v3, v0

    if-lez v0, :cond_1

    int-to-float v0, p1

    sub-float/2addr v3, v0

    div-float/2addr v3, v2

    float-to-int v0, v3

    add-int/2addr p1, v0

    goto :goto_1

    :cond_1
    float-to-int p1, v3

    :goto_1
    invoke-direct {p0, p1}, Lmiui/widget/TriggerViewDrawer;->I(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method private ec()Z
    .locals 1

    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->Tn:I

    if-lez v0, :cond_0

    iget p0, p0, Lmiui/widget/TriggerViewDrawer;->Sn:I

    if-gt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private fc()V
    .locals 3

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->ek:Lmiui/widget/TriggerViewDrawer$DrawerListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->Xn:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->Sn:I

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lmiui/widget/TriggerViewDrawer;->ek:Lmiui/widget/TriggerViewDrawer$DrawerListener;

    int-to-float v0, v0

    iget v2, p0, Lmiui/widget/TriggerViewDrawer;->Sn:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-interface {v1, p0, v0}, Lmiui/widget/TriggerViewDrawer$DrawerListener;->onDrawerSlide(Lmiui/widget/TriggerViewDrawer;F)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->ek:Lmiui/widget/TriggerViewDrawer$DrawerListener;

    invoke-interface {v0, p0}, Lmiui/widget/TriggerViewDrawer$DrawerListener;->onDrawerClose(Lmiui/widget/TriggerViewDrawer;)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->Sn:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->ek:Lmiui/widget/TriggerViewDrawer$DrawerListener;

    invoke-interface {v0, p0}, Lmiui/widget/TriggerViewDrawer$DrawerListener;->onDrawerOpen(Lmiui/widget/TriggerViewDrawer;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lmiui/widget/TriggerViewDrawer;->ek:Lmiui/widget/TriggerViewDrawer$DrawerListener;

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-interface {v2, p0, v0}, Lmiui/widget/TriggerViewDrawer$DrawerListener;->onDrawerSlide(Lmiui/widget/TriggerViewDrawer;F)V

    :cond_3
    :goto_0
    return-void
.end method

.method private hc()V
    .locals 5

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Un:Lmiui/widget/TriggerViewDrawer$TriggerListener;

    if-eqz v0, :cond_1

    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->Tn:I

    if-lez v0, :cond_1

    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->Xn:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lmiui/widget/TriggerViewDrawer;->Sn:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lmiui/widget/TriggerViewDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lmiui/widget/TriggerViewDrawer;->Sn:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lmiui/widget/TriggerViewDrawer;->Un:Lmiui/widget/TriggerViewDrawer$TriggerListener;

    int-to-float v3, v1

    int-to-float v4, v0

    div-float/2addr v3, v4

    invoke-interface {v2, p0, v3}, Lmiui/widget/TriggerViewDrawer$TriggerListener;->onTriggerSlide(Lmiui/widget/TriggerViewDrawer;F)V

    if-lt v1, v0, :cond_0

    iget-boolean v0, p0, Lmiui/widget/TriggerViewDrawer;->Zn:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/TriggerViewDrawer;->Zn:Z

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Un:Lmiui/widget/TriggerViewDrawer$TriggerListener;

    invoke-interface {v0, p0}, Lmiui/widget/TriggerViewDrawer$TriggerListener;->onTriggerOpen(Lmiui/widget/TriggerViewDrawer;)V

    const v0, 0x1000000c

    invoke-static {v0}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->performHapticFeedback(I)Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lmiui/widget/TriggerViewDrawer;->Zn:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/TriggerViewDrawer;->Zn:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private n(II)Landroid/view/View;
    .locals 8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lmiui/widget/TriggerViewDrawer;->Qn:Landroid/view/View;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object p0, p0, Lmiui/widget/TriggerViewDrawer;->mContentView:Landroid/view/View;

    const/4 v2, 0x1

    aput-object p0, v1, v2

    array-length p0, v1

    :goto_0
    if-ge v3, p0, :cond_1

    aget-object v2, v1, v3

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private o(II)V
    .locals 2

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiui/widget/TriggerViewDrawer;->Yn:Z

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method public closeDrawer()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/widget/TriggerViewDrawer;->closeDrawer(Z)V

    return-void
.end method

.method public closeDrawer(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/widget/TriggerViewDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    float-to-int p1, p1

    neg-int v0, p1

    invoke-direct {p0, p1, v0}, Lmiui/widget/TriggerViewDrawer;->o(II)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lmiui/widget/TriggerViewDrawer;->I(I)V

    invoke-direct {p0}, Lmiui/widget/TriggerViewDrawer;->fc()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    :goto_0
    return-void
.end method

.method public computeScroll()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->computeScroll()V

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    invoke-direct {p0, v0}, Lmiui/widget/TriggerViewDrawer;->I(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->postInvalidateOnAnimation()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lmiui/widget/TriggerViewDrawer;->Yn:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/TriggerViewDrawer;->Yn:Z

    invoke-direct {p0}, Lmiui/widget/TriggerViewDrawer;->fc()V

    :cond_1
    :goto_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-boolean v0, v6, Lmiui/widget/TriggerViewDrawer;->ck:Z

    if-eqz v0, :cond_25

    invoke-direct/range {p0 .. p0}, Lmiui/widget/TriggerViewDrawer;->ec()Z

    move-result v0

    if-nez v0, :cond_25

    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->Sn:I

    if-gtz v0, :cond_0

    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->Tn:I

    if-lez v0, :cond_25

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->Xn:I

    if-nez v0, :cond_1

    goto/16 :goto_9

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/high16 v8, -0x40800000    # -1.0f

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v0, :cond_1f

    if-eq v0, v12, :cond_1b

    if-eq v0, v11, :cond_8

    if-eq v0, v9, :cond_5

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    goto/16 :goto_7

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, v6, Lmiui/widget/TriggerViewDrawer;->fk:I

    if-ne v1, v2, :cond_4

    if-nez v0, :cond_3

    move v0, v12

    goto :goto_0

    :cond_3
    move v0, v13

    :goto_0
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v6, Lmiui/widget/TriggerViewDrawer;->fk:I

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, v6, Lmiui/widget/TriggerViewDrawer;->jk:F

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, v6, Lmiui/widget/TriggerViewDrawer;->Ze:F

    iput v0, v6, Lmiui/widget/TriggerViewDrawer;->mLastY:F

    :cond_4
    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_7

    :cond_5
    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    if-eqz v0, :cond_7

    iget-boolean v1, v6, Lmiui/widget/TriggerViewDrawer;->Vn:Z

    if-nez v1, :cond_6

    iget v1, v6, Lmiui/widget/TriggerViewDrawer;->Sn:I

    if-eq v0, v1, :cond_7

    :cond_6
    neg-int v1, v0

    invoke-direct {v6, v0, v1}, Lmiui/widget/TriggerViewDrawer;->o(II)V

    :cond_7
    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    iput v12, v6, Lmiui/widget/TriggerViewDrawer;->Xn:I

    iput v13, v6, Lmiui/widget/TriggerViewDrawer;->mTouchMode:I

    iput-boolean v13, v6, Lmiui/widget/TriggerViewDrawer;->Zn:Z

    goto/16 :goto_7

    :cond_8
    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->fk:I

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    invoke-virtual {v7, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Lmiui/widget/TriggerViewDrawer;->fk:I

    move v0, v13

    :cond_9
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->jk:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, v6, Lmiui/widget/TriggerViewDrawer;->Ze:F

    sub-float v1, v14, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, v6, Lmiui/widget/TriggerViewDrawer;->Xn:I

    if-ne v2, v12, :cond_b

    iget v2, v6, Lmiui/widget/TriggerViewDrawer;->Sf:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_a

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    iput v13, v6, Lmiui/widget/TriggerViewDrawer;->Xn:I

    goto :goto_1

    :cond_a
    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->Sf:I

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_b

    iput v11, v6, Lmiui/widget/TriggerViewDrawer;->Xn:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v12}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v1, v6, Lmiui/widget/TriggerViewDrawer;->Wn:Landroid/view/View;

    if-ne v1, v0, :cond_b

    invoke-direct {v6, v0, v7, v9}, Lmiui/widget/TriggerViewDrawer;->a(Landroid/view/View;Landroid/view/MotionEvent;I)V

    :cond_b
    :goto_1
    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->mLastY:F

    sub-float v0, v14, v0

    iget v1, v6, Lmiui/widget/TriggerViewDrawer;->Xn:I

    if-ne v1, v11, :cond_1a

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-gez v1, :cond_c

    cmpg-float v1, v0, v8

    if-gtz v1, :cond_1a

    :cond_c
    iget-object v1, v6, Lmiui/widget/TriggerViewDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    cmpg-float v1, v1, v10

    if-gtz v1, :cond_d

    move v1, v12

    goto :goto_2

    :cond_d
    move v1, v13

    :goto_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_e

    if-eqz v1, :cond_e

    iget v1, v6, Lmiui/widget/TriggerViewDrawer;->mLastY:F

    sub-float/2addr v1, v14

    float-to-int v1, v1

    iget-object v2, v6, Lmiui/widget/TriggerViewDrawer;->bo:[I

    iget-object v3, v6, Lmiui/widget/TriggerViewDrawer;->ao:[I

    invoke-virtual {v6, v13, v1, v2, v3}, Landroid/widget/RelativeLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->ao:[I

    aget v0, v0, v12

    int-to-float v0, v0

    sub-float/2addr v14, v0

    iput v14, v6, Lmiui/widget/TriggerViewDrawer;->mLastY:F

    iput-boolean v12, v6, Lmiui/widget/TriggerViewDrawer;->co:Z

    iput v13, v6, Lmiui/widget/TriggerViewDrawer;->mTouchMode:I

    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->Qn:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->Qn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->Qn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->cancelPendingInputEvents()V

    goto/16 :goto_7

    :cond_e
    iput-boolean v13, v6, Lmiui/widget/TriggerViewDrawer;->co:Z

    iget v1, v6, Lmiui/widget/TriggerViewDrawer;->mTouchMode:I

    cmpl-float v2, v0, v10

    if-lez v2, :cond_11

    iget v1, v6, Lmiui/widget/TriggerViewDrawer;->Tn:I

    if-gtz v1, :cond_f

    iget-object v1, v6, Lmiui/widget/TriggerViewDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    iget v2, v6, Lmiui/widget/TriggerViewDrawer;->Sn:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gez v1, :cond_10

    :cond_f
    iget-object v1, v6, Lmiui/widget/TriggerViewDrawer;->ak:Lmiui/widget/TriggerViewDrawer$ScrollableView;

    if-eqz v1, :cond_12

    invoke-interface {v1}, Lmiui/widget/TriggerViewDrawer$ScrollableView;->canScrollDown()Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_10
    move v15, v11

    goto :goto_3

    :cond_11
    cmpg-float v2, v0, v10

    if-gez v2, :cond_13

    iget-object v1, v6, Lmiui/widget/TriggerViewDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    cmpl-float v1, v1, v10

    if-gtz v1, :cond_12

    iget-object v1, v6, Lmiui/widget/TriggerViewDrawer;->ak:Lmiui/widget/TriggerViewDrawer$ScrollableView;

    if-nez v1, :cond_10

    :cond_12
    move v15, v12

    goto :goto_3

    :cond_13
    move v15, v1

    :goto_3
    if-ne v15, v12, :cond_16

    iget v1, v6, Lmiui/widget/TriggerViewDrawer;->mTouchMode:I

    if-eq v1, v11, :cond_14

    iget-object v2, v6, Lmiui/widget/TriggerViewDrawer;->Wn:Landroid/view/View;

    iget-object v3, v6, Lmiui/widget/TriggerViewDrawer;->Qn:Landroid/view/View;

    if-ne v2, v3, :cond_15

    if-nez v1, :cond_15

    :cond_14
    iget-object v1, v6, Lmiui/widget/TriggerViewDrawer;->Qn:Landroid/view/View;

    invoke-direct {v6, v1, v7, v9}, Lmiui/widget/TriggerViewDrawer;->a(Landroid/view/View;Landroid/view/MotionEvent;I)V

    :cond_15
    invoke-direct {v6, v0}, Lmiui/widget/TriggerViewDrawer;->d(F)V

    invoke-direct/range {p0 .. p0}, Lmiui/widget/TriggerViewDrawer;->fc()V

    goto :goto_5

    :cond_16
    if-ne v15, v11, :cond_19

    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->mTouchMode:I

    if-eq v0, v12, :cond_18

    iget-object v1, v6, Lmiui/widget/TriggerViewDrawer;->Wn:Landroid/view/View;

    iget-object v2, v6, Lmiui/widget/TriggerViewDrawer;->Qn:Landroid/view/View;

    if-eq v1, v2, :cond_17

    if-nez v0, :cond_17

    goto :goto_4

    :cond_17
    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->Qn:Landroid/view/View;

    iget v1, v6, Lmiui/widget/TriggerViewDrawer;->jk:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-direct {v6, v0, v7, v1, v10}, Lmiui/widget/TriggerViewDrawer;->a(Landroid/view/View;Landroid/view/MotionEvent;FF)V

    goto :goto_5

    :cond_18
    :goto_4
    iget-object v1, v6, Lmiui/widget/TriggerViewDrawer;->Qn:Landroid/view/View;

    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->jk:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float v3, v0, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v5}, Lmiui/widget/TriggerViewDrawer;->a(Landroid/view/View;Landroid/view/MotionEvent;FFI)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Lmiui/widget/TriggerViewDrawer;->_n:F

    :cond_19
    :goto_5
    iput v15, v6, Lmiui/widget/TriggerViewDrawer;->mTouchMode:I

    iput v14, v6, Lmiui/widget/TriggerViewDrawer;->mLastY:F

    :cond_1a
    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_7

    :cond_1b
    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    iget-boolean v1, v6, Lmiui/widget/TriggerViewDrawer;->Vn:Z

    if-eqz v1, :cond_1c

    if-eqz v0, :cond_1c

    neg-int v1, v0

    invoke-direct {v6, v0, v1}, Lmiui/widget/TriggerViewDrawer;->o(II)V

    goto :goto_6

    :cond_1c
    if-eqz v0, :cond_1e

    iget v1, v6, Lmiui/widget/TriggerViewDrawer;->Sn:I

    if-eq v0, v1, :cond_1e

    iget-object v1, v6, Lmiui/widget/TriggerViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v1, v6, Lmiui/widget/TriggerViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v1, v6, Lmiui/widget/TriggerViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1d

    iget v1, v6, Lmiui/widget/TriggerViewDrawer;->Sn:I

    sub-int/2addr v1, v0

    invoke-direct {v6, v0, v1}, Lmiui/widget/TriggerViewDrawer;->o(II)V

    goto :goto_6

    :cond_1d
    neg-int v1, v0

    invoke-direct {v6, v0, v1}, Lmiui/widget/TriggerViewDrawer;->o(II)V

    :cond_1e
    :goto_6
    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    iput v12, v6, Lmiui/widget/TriggerViewDrawer;->Xn:I

    iput v13, v6, Lmiui/widget/TriggerViewDrawer;->mTouchMode:I

    iput-boolean v13, v6, Lmiui/widget/TriggerViewDrawer;->Zn:Z

    goto :goto_7

    :cond_1f
    invoke-virtual {v7, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Lmiui/widget/TriggerViewDrawer;->fk:I

    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {v7, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, v6, Lmiui/widget/TriggerViewDrawer;->jk:F

    invoke-virtual {v7, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, v6, Lmiui/widget/TriggerViewDrawer;->mLastY:F

    iput v0, v6, Lmiui/widget/TriggerViewDrawer;->Ze:F

    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->jk:F

    float-to-int v0, v0

    iget v1, v6, Lmiui/widget/TriggerViewDrawer;->Ze:F

    float-to-int v1, v1

    invoke-direct {v6, v0, v1}, Lmiui/widget/TriggerViewDrawer;->n(II)Landroid/view/View;

    move-result-object v0

    iput-object v0, v6, Lmiui/widget/TriggerViewDrawer;->Wn:Landroid/view/View;

    iput v12, v6, Lmiui/widget/TriggerViewDrawer;->Xn:I

    iput v13, v6, Lmiui/widget/TriggerViewDrawer;->mTouchMode:I

    iput-boolean v13, v6, Lmiui/widget/TriggerViewDrawer;->Zn:Z

    :goto_7
    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->_n:F

    cmpl-float v0, v0, v10

    if-lez v0, :cond_21

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v12, :cond_21

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, v6, Lmiui/widget/TriggerViewDrawer;->_n:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, v6, Lmiui/widget/TriggerViewDrawer;->Sf:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_20

    invoke-virtual {v7, v9}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_20
    iput v8, v6, Lmiui/widget/TriggerViewDrawer;->_n:F

    :cond_21
    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->Xn:I

    if-ne v0, v11, :cond_22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v11, :cond_24

    iget v0, v6, Lmiui/widget/TriggerViewDrawer;->mTouchMode:I

    if-ne v0, v11, :cond_24

    iget-object v0, v6, Lmiui/widget/TriggerViewDrawer;->Qn:Landroid/view/View;

    invoke-direct {v6, v0, v7}, Lmiui/widget/TriggerViewDrawer;->a(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_8

    :cond_22
    iget-boolean v0, v6, Lmiui/widget/TriggerViewDrawer;->co:Z

    if-eqz v0, :cond_23

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v12, :cond_23

    invoke-virtual {v7, v9}, Landroid/view/MotionEvent;->setAction(I)V

    iput-boolean v13, v6, Lmiui/widget/TriggerViewDrawer;->co:Z

    :cond_23
    invoke-super/range {p0 .. p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_24
    :goto_8
    return v12

    :cond_25
    :goto_9
    invoke-super/range {p0 .. p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mContentView:Landroid/view/View;

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/widget/TriggerViewDrawer;->a(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Rn:Landroid/view/View;

    if-ne p2, v0, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/widget/TriggerViewDrawer;->b(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->Zj:I

    if-lez v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mContentView:Landroid/view/View;

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The contentView attribute is must be a direct child of TriggerViewDrawer."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The contentView attribute is must refer to an existing child."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->_j:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mTargetView:Landroid/view/View;

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_c

    iput-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Qn:Landroid/view/View;

    :goto_1
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Qn:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_3

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Qn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Qn:Landroid/view/View;

    goto :goto_1

    :cond_3
    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->rj:I

    if-lez v0, :cond_8

    iget-object v1, p0, Lmiui/widget/TriggerViewDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    instance-of v1, v0, Lmiui/widget/TriggerViewDrawer$ScrollableView;

    if-eqz v1, :cond_4

    check-cast v0, Lmiui/widget/TriggerViewDrawer$ScrollableView;

    iput-object v0, p0, Lmiui/widget/TriggerViewDrawer;->ak:Lmiui/widget/TriggerViewDrawer$ScrollableView;

    goto :goto_2

    :cond_4
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_5

    new-instance v1, Lmiui/widget/TriggerViewDrawer$b;

    check-cast v0, Landroid/widget/ScrollView;

    invoke-direct {v1, v0}, Lmiui/widget/TriggerViewDrawer$b;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Lmiui/widget/TriggerViewDrawer;->ak:Lmiui/widget/TriggerViewDrawer$ScrollableView;

    goto :goto_2

    :cond_5
    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_6

    new-instance v1, Lmiui/widget/TriggerViewDrawer$a;

    check-cast v0, Landroid/widget/AdapterView;

    invoke-direct {v1, v0}, Lmiui/widget/TriggerViewDrawer$a;-><init>(Landroid/widget/AdapterView;)V

    iput-object v1, p0, Lmiui/widget/TriggerViewDrawer;->ak:Lmiui/widget/TriggerViewDrawer$ScrollableView;

    goto :goto_2

    :cond_6
    const-string v0, "TriggerViewDrawer"

    const-string v1, "The scrollableView is a fixed view that can\'t scroll all the time"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lmiui/widget/TriggerViewDrawer$FixedViewWrapper;

    invoke-direct {v0}, Lmiui/widget/TriggerViewDrawer$FixedViewWrapper;-><init>()V

    iput-object v0, p0, Lmiui/widget/TriggerViewDrawer;->ak:Lmiui/widget/TriggerViewDrawer$ScrollableView;

    goto :goto_2

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The scrollableView attribute is must refer to an existing child of targetView."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_2
    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->Pn:I

    if-lez v0, :cond_b

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Rn:Landroid/view/View;

    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer;->Rn:Landroid/view/View;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_9

    goto :goto_3

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The triggerView attribute is must be a direct child of TriggerViewDrawer."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The triggerView attribute is must refer to an existing child."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_3
    return-void

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The targetView attribute is must refer to an existing child."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lmiui/widget/TriggerViewDrawer;->mContentView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    float-to-int p1, p1

    iget-object p2, p0, Lmiui/widget/TriggerViewDrawer;->mContentView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lmiui/widget/TriggerViewDrawer;->Sn:I

    :cond_0
    iget-object p1, p0, Lmiui/widget/TriggerViewDrawer;->Rn:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    float-to-int p1, p1

    iget-object p2, p0, Lmiui/widget/TriggerViewDrawer;->Rn:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lmiui/widget/TriggerViewDrawer;->Tn:I

    :cond_1
    invoke-direct {p0}, Lmiui/widget/TriggerViewDrawer;->ec()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Height of trigger must bigger than height of content, mTriggerDistance="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lmiui/widget/TriggerViewDrawer;->Tn:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mContentDistance="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lmiui/widget/TriggerViewDrawer;->Sn:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TriggerViewDrawer"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->startNestedScroll(I)Z

    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    iget-object p0, p0, Lmiui/widget/TriggerViewDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p0

    const/4 p1, 0x0

    cmpg-float p0, p0, p1

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-gtz p0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    move p0, p2

    :goto_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move p1, p2

    :goto_1
    return p1
.end method

.method public openDrawer()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/widget/TriggerViewDrawer;->openDrawer(Z)V

    return-void
.end method

.method public openDrawer(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/widget/TriggerViewDrawer;->mTargetView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    float-to-int p1, p1

    iget v0, p0, Lmiui/widget/TriggerViewDrawer;->Sn:I

    sub-int/2addr v0, p1

    invoke-direct {p0, p1, v0}, Lmiui/widget/TriggerViewDrawer;->o(II)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lmiui/widget/TriggerViewDrawer;->Sn:I

    invoke-direct {p0, p1}, Lmiui/widget/TriggerViewDrawer;->I(I)V

    invoke-direct {p0}, Lmiui/widget/TriggerViewDrawer;->fc()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    :goto_0
    return-void
.end method

.method public setAutoClose(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiui/widget/TriggerViewDrawer;->Vn:Z

    return-void
.end method

.method public setDragEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiui/widget/TriggerViewDrawer;->ck:Z

    return-void
.end method

.method public setDrawerListener(Lmiui/widget/TriggerViewDrawer$DrawerListener;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/TriggerViewDrawer;->ek:Lmiui/widget/TriggerViewDrawer$DrawerListener;

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setNestedScrollingEnabled(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/widget/TriggerViewDrawer;->mTargetView:Landroid/view/View;

    iget p0, p0, Lmiui/widget/TriggerViewDrawer;->rj:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setTriggerDistance(I)V
    .locals 0

    iput p1, p0, Lmiui/widget/TriggerViewDrawer;->Tn:I

    return-void
.end method

.method public setTriggerListener(Lmiui/widget/TriggerViewDrawer$TriggerListener;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/TriggerViewDrawer;->Un:Lmiui/widget/TriggerViewDrawer$TriggerListener;

    return-void
.end method
