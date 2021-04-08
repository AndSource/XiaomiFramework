.class public Lmiui/smooth/SmoothFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SmoothFrameLayout.java"


# instance fields
.field private mClipPath:Landroid/graphics/Path;

.field private mLayer:Landroid/graphics/RectF;

.field private mPaint:Landroid/graphics/Paint;

.field private mPathProvider:Lcom/miui/internal/smooth/SmoothPathProvider;

.field private mRadii:[F

.field private mRadius:F

.field private mSmooth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/smooth/SmoothFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/smooth/SmoothFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lmiui/smooth/SmoothFrameLayout;->mPaint:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lmiui/smooth/SmoothFrameLayout;->mClipPath:Landroid/graphics/Path;

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lmiui/smooth/SmoothFrameLayout;->mLayer:Landroid/graphics/RectF;

    new-instance p3, Lcom/miui/internal/smooth/SmoothPathProvider;

    invoke-direct {p3}, Lcom/miui/internal/smooth/SmoothPathProvider;-><init>()V

    iput-object p3, p0, Lmiui/smooth/SmoothFrameLayout;->mPathProvider:Lcom/miui/internal/smooth/SmoothPathProvider;

    sget-object p3, Lmiui/R$styleable;->MiuiSmoothFrameLayout:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lmiui/R$styleable;->MiuiSmoothFrameLayout_android_radius:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Lmiui/smooth/SmoothFrameLayout;->setCornerRadius(F)V

    sget p2, Lmiui/R$styleable;->MiuiSmoothFrameLayout_android_topLeftRadius:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-nez p2, :cond_0

    sget p2, Lmiui/R$styleable;->MiuiSmoothFrameLayout_android_topRightRadius:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-nez p2, :cond_0

    sget p2, Lmiui/R$styleable;->MiuiSmoothFrameLayout_android_bottomRightRadius:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-nez p2, :cond_0

    sget p2, Lmiui/R$styleable;->MiuiSmoothFrameLayout_android_bottomLeftRadius:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    sget p2, Lmiui/R$styleable;->MiuiSmoothFrameLayout_android_topLeftRadius:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    sget v1, Lmiui/R$styleable;->MiuiSmoothFrameLayout_android_topRightRadius:I

    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    sget v2, Lmiui/R$styleable;->MiuiSmoothFrameLayout_android_bottomRightRadius:I

    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lmiui/R$styleable;->MiuiSmoothFrameLayout_android_bottomLeftRadius:I

    invoke-virtual {p1, v3, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    const/16 v4, 0x8

    new-array v4, v4, [F

    aput p2, v4, p3

    aput p2, v4, v0

    const/4 p2, 0x2

    aput v1, v4, p2

    const/4 p2, 0x3

    aput v1, v4, p2

    const/4 p2, 0x4

    aput v2, v4, p2

    const/4 p2, 0x5

    aput v2, v4, p2

    const/4 p2, 0x6

    aput v3, v4, p2

    const/4 p2, 0x7

    aput v3, v4, p2

    invoke-virtual {p0, v4}, Lmiui/smooth/SmoothFrameLayout;->setCornerRadii([F)V

    :cond_1
    sget p2, Lmiui/R$styleable;->MiuiSmoothFrameLayout_miui_smooth:I

    const p3, 0x3f333333    # 0.7f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lmiui/smooth/SmoothFrameLayout;->mSmooth:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getSmoothPathFromProvider(IIF)Landroid/graphics/Path;
    .locals 10

    invoke-virtual {p0}, Lmiui/smooth/SmoothFrameLayout;->getCornerRadii()[F

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v4, p0, Lmiui/smooth/SmoothFrameLayout;->mPathProvider:Lcom/miui/internal/smooth/SmoothPathProvider;

    invoke-virtual {p0}, Lmiui/smooth/SmoothFrameLayout;->getCornerRadius()F

    move-result v7

    float-to-double v8, p3

    move v5, p1

    move v6, p2

    invoke-virtual/range {v4 .. v9}, Lcom/miui/internal/smooth/SmoothPathProvider;->buildSmoothData(IIFD)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/smooth/SmoothFrameLayout;->mPathProvider:Lcom/miui/internal/smooth/SmoothPathProvider;

    float-to-double v4, p3

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/smooth/SmoothPathProvider;->buildSmoothData(II[FD)V

    :goto_0
    iget-object p0, p0, Lmiui/smooth/SmoothFrameLayout;->mPathProvider:Lcom/miui/internal/smooth/SmoothPathProvider;

    invoke-virtual {p0}, Lcom/miui/internal/smooth/SmoothPathProvider;->getSmoothPath()Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lmiui/smooth/SmoothFrameLayout;->mLayer:Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lmiui/smooth/SmoothFrameLayout;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v1, p0, Lmiui/smooth/SmoothFrameLayout;->mClipPath:Landroid/graphics/Path;

    iget-object p0, p0, Lmiui/smooth/SmoothFrameLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lmiui/smooth/SmoothFrameLayout;->mLayer:Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lmiui/smooth/SmoothFrameLayout;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v1, p0, Lmiui/smooth/SmoothFrameLayout;->mClipPath:Landroid/graphics/Path;

    iget-object p0, p0, Lmiui/smooth/SmoothFrameLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getCornerRadii()[F
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothFrameLayout;->mRadii:[F

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    :goto_0
    return-object p0
.end method

.method public getCornerRadius()F
    .locals 0

    iget p0, p0, Lmiui/smooth/SmoothFrameLayout;->mRadius:F

    return p0
.end method

.method public getSmooth()F
    .locals 0

    iget p0, p0, Lmiui/smooth/SmoothFrameLayout;->mSmooth:F

    return p0
.end method

.method protected onSizeChanged(IIII)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    iget-object p3, p0, Lmiui/smooth/SmoothFrameLayout;->mLayer:Landroid/graphics/RectF;

    int-to-float v3, p1

    int-to-float v4, p2

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget p3, p0, Lmiui/smooth/SmoothFrameLayout;->mSmooth:F

    invoke-direct {p0, p1, p2, p3}, Lmiui/smooth/SmoothFrameLayout;->getSmoothPathFromProvider(IIF)Landroid/graphics/Path;

    move-result-object p1

    iget-object p2, p0, Lmiui/smooth/SmoothFrameLayout;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lmiui/smooth/SmoothFrameLayout;->mClipPath:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    iget-object p0, p0, Lmiui/smooth/SmoothFrameLayout;->mClipPath:Landroid/graphics/Path;

    sget-object p2, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    return-void
.end method

.method public setCornerRadii([F)V
    .locals 0

    iput-object p1, p0, Lmiui/smooth/SmoothFrameLayout;->mRadii:[F

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lmiui/smooth/SmoothFrameLayout;->mRadius:F

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setCornerRadius(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    :cond_0
    iput p1, p0, Lmiui/smooth/SmoothFrameLayout;->mRadius:F

    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/smooth/SmoothFrameLayout;->mRadii:[F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setSmooth(F)V
    .locals 1

    iget v0, p0, Lmiui/smooth/SmoothFrameLayout;->mSmooth:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lmiui/smooth/SmoothFrameLayout;->mSmooth:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method
