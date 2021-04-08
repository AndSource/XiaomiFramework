.class Lcom/android/internal/app/PlatLogoActivity$BackslashDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PlatLogoActivity.java"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/PlatLogoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackslashDrawable"
.end annotation


# instance fields
.field mAnimator:Landroid/animation/TimeAnimator;

.field mMatrix:Landroid/graphics/Matrix;

.field mPaint:Landroid/graphics/Paint;

.field mShader:Landroid/graphics/BitmapShader;

.field mTile:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(I)V
    .locals 9

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$BackslashDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/animation/TimeAnimator;

    invoke-direct {v0}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$BackslashDrawable;->mAnimator:Landroid/animation/TimeAnimator;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$BackslashDrawable;->mMatrix:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$BackslashDrawable;->mTile:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$BackslashDrawable;->mAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$BackslashDrawable;->mTile:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v1, v5

    invoke-virtual {v3, v6, v4}, Landroid/graphics/Path;->lineTo(FF)V

    div-float v6, v2, v5

    invoke-virtual {v3, v1, v6}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    div-float v6, v2, v5

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    div-float v5, v1, v5

    invoke-virtual {v3, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    new-instance v5, Landroid/graphics/BitmapShader;

    iget-object v6, p0, Lcom/android/internal/app/PlatLogoActivity$BackslashDrawable;->mTile:Landroid/graphics/Bitmap;

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v8, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v5, v6, v7, v8}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v5, p0, Lcom/android/internal/app/PlatLogoActivity$BackslashDrawable;->mShader:Landroid/graphics/BitmapShader;

    iget-object v5, p0, Lcom/android/internal/app/PlatLogoActivity$BackslashDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/internal/app/PlatLogoActivity$BackslashDrawable;->mShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$BackslashDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$BackslashDrawable;->mShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$BackslashDrawable;->mMatrix:Landroid/graphics/Matrix;

    long-to-float v1, p4

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$BackslashDrawable;->mShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$BackslashDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity$BackslashDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$BackslashDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$BackslashDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public startAnimating()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$BackslashDrawable;->mAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$BackslashDrawable;->mAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->start()V

    :cond_0
    return-void
.end method

.method public stopAnimating()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$BackslashDrawable;->mAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$BackslashDrawable;->mAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->cancel()V

    :cond_0
    return-void
.end method
