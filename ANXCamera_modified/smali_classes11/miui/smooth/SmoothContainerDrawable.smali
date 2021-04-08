.class public Lmiui/smooth/SmoothContainerDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SmoothContainerDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/smooth/SmoothContainerDrawable$ContainerState;,
        Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;
    }
.end annotation


# instance fields
.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mPathProvider:Lcom/miui/internal/smooth/SmoothPathProvider;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mPath:Landroid/graphics/Path;

    new-instance v0, Lcom/miui/internal/smooth/SmoothPathProvider;

    invoke-direct {v0}, Lcom/miui/internal/smooth/SmoothPathProvider;-><init>()V

    iput-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mPathProvider:Lcom/miui/internal/smooth/SmoothPathProvider;

    new-instance v0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    invoke-direct {v0}, Lmiui/smooth/SmoothContainerDrawable$ContainerState;-><init>()V

    iput-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiui/smooth/SmoothContainerDrawable$ContainerState;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mPath:Landroid/graphics/Path;

    new-instance v0, Lcom/miui/internal/smooth/SmoothPathProvider;

    invoke-direct {v0}, Lcom/miui/internal/smooth/SmoothPathProvider;-><init>()V

    iput-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mPathProvider:Lcom/miui/internal/smooth/SmoothPathProvider;

    new-instance v0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    invoke-direct {v0, p3, p0, p1, p2}, Lmiui/smooth/SmoothContainerDrawable$ContainerState;-><init>(Lmiui/smooth/SmoothContainerDrawable$ContainerState;Lmiui/smooth/SmoothContainerDrawable;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    iput-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiui/smooth/SmoothContainerDrawable$ContainerState;Lmiui/smooth/SmoothContainerDrawable$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmiui/smooth/SmoothContainerDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiui/smooth/SmoothContainerDrawable$ContainerState;)V

    return-void
.end method

.method private getBitmapShaderFromDrawable()Landroid/graphics/BitmapShader;
    .locals 4

    invoke-virtual {p0}, Lmiui/smooth/SmoothContainerDrawable;->getBoundsInner()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lmiui/smooth/SmoothContainerDrawable;->getBoundsInner()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lmiui/smooth/SmoothContainerDrawable;->getBoundsInner()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lmiui/smooth/SmoothContainerDrawable;->getBoundsInner()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    new-instance p0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p0, v0, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    return-object p0
.end method

.method private getSmoothPathFromProvider(Landroid/graphics/Rect;F)Landroid/graphics/Path;
    .locals 10

    invoke-virtual {p0}, Lmiui/smooth/SmoothContainerDrawable;->getCornerRadii()[F

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lmiui/smooth/SmoothContainerDrawable;->getCornerRadius()F

    move-result v7

    iget-object v4, p0, Lmiui/smooth/SmoothContainerDrawable;->mPathProvider:Lcom/miui/internal/smooth/SmoothPathProvider;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    float-to-double v8, p2

    invoke-virtual/range {v4 .. v9}, Lcom/miui/internal/smooth/SmoothPathProvider;->buildSmoothData(IIFD)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mPathProvider:Lcom/miui/internal/smooth/SmoothPathProvider;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    float-to-double v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/smooth/SmoothPathProvider;->buildSmoothData(II[FD)V

    :goto_0
    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable;->mPathProvider:Lcom/miui/internal/smooth/SmoothPathProvider;

    invoke-virtual {p0}, Lcom/miui/internal/smooth/SmoothPathProvider;->getSmoothPath()Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method private inflateInnerDrawable(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v1, :cond_6

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ge v3, v0, :cond_1

    const/4 v4, 0x3

    if-eq v2, v4, :cond_6

    :cond_1
    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    goto :goto_0

    :cond_2
    if-gt v3, v0, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "child"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    if-ne v0, v4, :cond_5

    new-instance v0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    invoke-direct {v0}, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;-><init>()V

    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p1, v0, Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    iput-object v0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mChildDrawable:Lmiui/smooth/SmoothContainerDrawable$ChildDrawable;

    return-void

    :cond_5
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": <child> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    return-void
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

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lmiui/smooth/SmoothContainerDrawable;->getBitmapShaderFromDrawable()Landroid/graphics/BitmapShader;

    move-result-object v0

    iput-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lmiui/smooth/SmoothContainerDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_0
    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mPath:Landroid/graphics/Path;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmiui/smooth/SmoothContainerDrawable;->getBoundsInner()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/smooth/SmoothContainerDrawable;->getSmooth()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lmiui/smooth/SmoothContainerDrawable;->getSmoothPathFromProvider(Landroid/graphics/Rect;F)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mPath:Landroid/graphics/Path;

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lmiui/smooth/SmoothContainerDrawable;->getBoundsInner()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lmiui/smooth/SmoothContainerDrawable;->getBoundsInner()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mPath:Landroid/graphics/Path;

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getAlpha()I
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {p0}, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->getAlpha()I

    move-result p0

    return p0
.end method

.method public final getBoundsInner()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {p0}, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    return-object p0
.end method

.method public getCornerRadii()[F
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mRadii:[F

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

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    iget p0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mRadius:F

    return p0
.end method

.method public getDirtyBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {p0}, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getIntrinsicHeight()I
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {p0}, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->getIntrinsicHeight()I

    move-result p0

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {p0}, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->getIntrinsicWidth()I

    move-result p0

    return p0
.end method

.method public getOpacity()I
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {p0}, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->getOpacity()I

    move-result p0

    return p0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {p0, p1}, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->getPadding(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public getSmooth()F
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    iget p0, p0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mSmooth:F

    return p0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    sget-object v0, Lmiui/R$styleable;->MiuiSmoothContainerDrawable:[I

    invoke-direct {p0, p1, p4, p3, v0}, Lmiui/smooth/SmoothContainerDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lmiui/R$styleable;->MiuiSmoothContainerDrawable_android_radius:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lmiui/smooth/SmoothContainerDrawable;->setCornerRadius(F)V

    sget v1, Lmiui/R$styleable;->MiuiSmoothContainerDrawable_android_topLeftRadius:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lmiui/R$styleable;->MiuiSmoothContainerDrawable_android_topRightRadius:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lmiui/R$styleable;->MiuiSmoothContainerDrawable_android_bottomRightRadius:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lmiui/R$styleable;->MiuiSmoothContainerDrawable_android_bottomLeftRadius:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget v1, Lmiui/R$styleable;->MiuiSmoothContainerDrawable_android_topLeftRadius:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    sget v3, Lmiui/R$styleable;->MiuiSmoothContainerDrawable_android_topRightRadius:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    sget v4, Lmiui/R$styleable;->MiuiSmoothContainerDrawable_android_bottomRightRadius:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    sget v5, Lmiui/R$styleable;->MiuiSmoothContainerDrawable_android_bottomLeftRadius:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    const/16 v6, 0x8

    new-array v6, v6, [F

    aput v1, v6, v2

    const/4 v2, 0x1

    aput v1, v6, v2

    const/4 v1, 0x2

    aput v3, v6, v1

    const/4 v1, 0x3

    aput v3, v6, v1

    const/4 v1, 0x4

    aput v4, v6, v1

    const/4 v1, 0x5

    aput v4, v6, v1

    const/4 v1, 0x6

    aput v5, v6, v1

    const/4 v1, 0x7

    aput v5, v6, v1

    invoke-virtual {p0, v6}, Lmiui/smooth/SmoothContainerDrawable;->setCornerRadii([F)V

    :cond_1
    sget v1, Lmiui/R$styleable;->MiuiSmoothContainerDrawable_miui_smooth:I

    const v2, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lmiui/smooth/SmoothContainerDrawable;->setSmooth(F)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/smooth/SmoothContainerDrawable;->inflateInnerDrawable(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/smooth/SmoothContainerDrawable;->mPath:Landroid/graphics/Path;

    iput-object p1, p0, Lmiui/smooth/SmoothContainerDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isStateful()Z
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {p0}, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->isStateful()Z

    move-result p0

    return p0
.end method

.method public jumpToCurrentState()V
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {p0}, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->jumpToCurrentState()V

    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mPath:Landroid/graphics/Path;

    iput-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lmiui/smooth/SmoothContainerDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {p0, p1}, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mPath:Landroid/graphics/Path;

    iput-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lmiui/smooth/SmoothContainerDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {p0, p1}, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->onStateChange([I)Z

    move-result p0

    return p0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    invoke-virtual {p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {p0, p1}, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->setAlpha(I)V

    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {p0, p1}, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->setChangingConfigurations(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {p0, p1}, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setCornerRadii([F)V
    .locals 1

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    iput-object p1, v0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mRadii:[F

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput p1, v0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mRadius:F

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setCornerRadius(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    :cond_0
    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    iput p1, v0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mRadius:F

    const/4 p1, 0x0

    iput-object p1, v0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mRadii:[F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setDither(Z)V
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {p0, p1}, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->setDither(Z)V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    invoke-virtual {p0, p1}, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->setFilterBitmap(Z)V

    return-void
.end method

.method public setSmooth(F)V
    .locals 2

    iget-object v0, p0, Lmiui/smooth/SmoothContainerDrawable;->mContainerState:Lmiui/smooth/SmoothContainerDrawable$ContainerState;

    iget v1, v0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mSmooth:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lmiui/smooth/SmoothContainerDrawable$ContainerState;->mSmooth:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
