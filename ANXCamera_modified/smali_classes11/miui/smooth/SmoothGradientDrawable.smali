.class public Lmiui/smooth/SmoothGradientDrawable;
.super Landroid/graphics/drawable/GradientDrawable;
.source "SmoothGradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;
    }
.end annotation


# instance fields
.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mPaint:Landroid/graphics/Paint;

.field private mParentDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mPath:Landroid/graphics/Path;

.field private mPathProvider:Lcom/miui/internal/smooth/SmoothPathProvider;

.field protected mSmoothConstantState:Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    invoke-direct {v0}, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;-><init>()V

    invoke-direct {p0, v0}, Lmiui/smooth/SmoothGradientDrawable;-><init>(Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;)V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mPath:Landroid/graphics/Path;

    new-instance v1, Lcom/miui/internal/smooth/SmoothPathProvider;

    invoke-direct {v1}, Lcom/miui/internal/smooth/SmoothPathProvider;-><init>()V

    iput-object v1, p0, Lmiui/smooth/SmoothGradientDrawable;->mPathProvider:Lcom/miui/internal/smooth/SmoothPathProvider;

    if-nez p1, :cond_0

    iget-object p1, p3, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    iget-object p2, p3, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    iget-object v0, p3, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    iput-object p1, p3, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    :cond_3
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mParentDrawable:Landroid/graphics/drawable/GradientDrawable;

    iput-object p3, p0, Lmiui/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    iget-object p0, p0, Lmiui/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    iget-object p1, p3, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0, p1}, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->setConstantState(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;Lmiui/smooth/SmoothGradientDrawable$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmiui/smooth/SmoothGradientDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;)V

    return-void
.end method

.method private constructor <init>(Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mPath:Landroid/graphics/Path;

    new-instance v0, Lcom/miui/internal/smooth/SmoothPathProvider;

    invoke-direct {v0}, Lcom/miui/internal/smooth/SmoothPathProvider;-><init>()V

    iput-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mPathProvider:Lcom/miui/internal/smooth/SmoothPathProvider;

    iput-object p1, p0, Lmiui/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    iget-object p1, p0, Lmiui/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    invoke-super {p0}, Landroid/graphics/drawable/GradientDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    invoke-virtual {p1, p0}, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->setConstantState(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-void
.end method

.method private getBitmapFromDrawable()Landroid/graphics/Bitmap;
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    iget-object v2, p0, Lmiui/smooth/SmoothGradientDrawable;->mParentDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-object v0
.end method

.method private getBitmapShaderFromDrawable()Landroid/graphics/BitmapShader;
    .locals 2

    invoke-direct {p0}, Lmiui/smooth/SmoothGradientDrawable;->getBitmapFromDrawable()Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    return-object v0
.end method

.method private getCornerRadiiInner()[F
    .locals 1

    :try_start_0
    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mParentDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmiui/smooth/SmoothGradientDrawable;->mParentDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadii()[F

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadii()[F

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getCornerRadiusInner()F
    .locals 1

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mParentDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    move-result p0

    :goto_0
    return p0
.end method

.method private getSmoothPathFromProvider(Landroid/graphics/Rect;F)Landroid/graphics/Path;
    .locals 10

    invoke-direct {p0}, Lmiui/smooth/SmoothGradientDrawable;->getCornerRadiiInner()[F

    move-result-object v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lmiui/smooth/SmoothGradientDrawable;->getCornerRadiusInner()F

    move-result v7

    iget-object v4, p0, Lmiui/smooth/SmoothGradientDrawable;->mPathProvider:Lcom/miui/internal/smooth/SmoothPathProvider;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    float-to-double v8, p2

    invoke-virtual/range {v4 .. v9}, Lcom/miui/internal/smooth/SmoothPathProvider;->buildSmoothData(IIFD)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mPathProvider:Lcom/miui/internal/smooth/SmoothPathProvider;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    float-to-double v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/smooth/SmoothPathProvider;->buildSmoothData(II[FD)V

    :goto_0
    iget-object p0, p0, Lmiui/smooth/SmoothGradientDrawable;->mPathProvider:Lcom/miui/internal/smooth/SmoothPathProvider;

    invoke-virtual {p0}, Lcom/miui/internal/smooth/SmoothPathProvider;->getSmoothPath()Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method private obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 0

    if-nez p2, :cond_0

    invoke-virtual {p1, p3, p4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p2, p3, p4, p0, p0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lmiui/smooth/SmoothGradientDrawable;->getBitmapShaderFromDrawable()Landroid/graphics/BitmapShader;

    move-result-object v0

    iput-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lmiui/smooth/SmoothGradientDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_0
    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mPath:Landroid/graphics/Path;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/smooth/SmoothGradientDrawable;->getSmooth()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lmiui/smooth/SmoothGradientDrawable;->getSmoothPathFromProvider(Landroid/graphics/Rect;F)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mPath:Landroid/graphics/Path;

    :cond_1
    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lmiui/smooth/SmoothGradientDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    return-object p0
.end method

.method public getSmooth()F
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    iget p0, p0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mSmooth:F

    return p0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    sget-object v0, Lmiui/R$styleable;->MiuiSmoothGradientDrawable:[I

    invoke-direct {p0, p1, p4, p3, v0}, Lmiui/smooth/SmoothGradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    iget-object v1, p0, Lmiui/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    sget v2, Lmiui/R$styleable;->MiuiSmoothGradientDrawable_miui_smooth:I

    const v3, 0x3f333333    # 0.7f

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v1, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mSmooth:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mPath:Landroid/graphics/Path;

    iput-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lmiui/smooth/SmoothGradientDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object p0, p0, Lmiui/smooth/SmoothGradientDrawable;->mParentDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public setSmooth(F)V
    .locals 2

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable;->mSmoothConstantState:Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    iget v1, v0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mSmooth:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mSmooth:F

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
