.class public Lmiui/slide/SlideAnimationView;
.super Landroid/view/View;
.source "SlideAnimationView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SlideAnimationView"

.field public static final TYPE_ANIMATION_DOWN:I = 0x1

.field public static final TYPE_ANIMATION_TIP:I = 0x2

.field public static final TYPE_ANIMATION_UP:I = 0x0

.field public static final TYPE_BITMAP_SIDE:I = 0x1

.field public static final TYPE_BITMAP_TOP:I


# instance fields
.field private mEdgeAlpha:F

.field private mEdgeColor:Landroid/graphics/Bitmap;

.field private mEdgeColorAlpha:F

.field private mEdgeLeft:Landroid/graphics/Bitmap;

.field private mEdgeLeftOri:Landroid/graphics/Bitmap;

.field private mEdgeRight:Landroid/graphics/Bitmap;

.field private mEdgeRightOri:Landroid/graphics/Bitmap;

.field private mEdgeScaleX:F

.field private mEdgeY:F

.field private mFlowingAnimator:Landroid/animation/ValueAnimator;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPaint:Landroid/graphics/Paint;

.field private mTop:Landroid/graphics/Bitmap;

.field private mTopAlpha:F

.field private mTopOri:Landroid/graphics/Bitmap;

.field private mTopScaleY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/slide/SlideAnimationView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/slide/SlideAnimationView;->setBackgroundColor(I)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lmiui/slide/SlideAnimationView;->mMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/slide/SlideAnimationView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method static synthetic access$000(Lmiui/slide/SlideAnimationView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mFlowingAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/slide/SlideAnimationView;)F
    .locals 1

    iget v0, p0, Lmiui/slide/SlideAnimationView;->mTopAlpha:F

    return v0
.end method

.method static synthetic access$1000(Lmiui/slide/SlideAnimationView;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mEdgeLeftOri:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$102(Lmiui/slide/SlideAnimationView;F)F
    .locals 0

    iput p1, p0, Lmiui/slide/SlideAnimationView;->mTopAlpha:F

    return p1
.end method

.method static synthetic access$1102(Lmiui/slide/SlideAnimationView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lmiui/slide/SlideAnimationView;->mEdgeLeft:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1200(Lmiui/slide/SlideAnimationView;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mEdgeRightOri:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1302(Lmiui/slide/SlideAnimationView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lmiui/slide/SlideAnimationView;->mEdgeRight:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1400(Lmiui/slide/SlideAnimationView;)F
    .locals 1

    iget v0, p0, Lmiui/slide/SlideAnimationView;->mEdgeColorAlpha:F

    return v0
.end method

.method static synthetic access$1402(Lmiui/slide/SlideAnimationView;F)F
    .locals 0

    iput p1, p0, Lmiui/slide/SlideAnimationView;->mEdgeColorAlpha:F

    return p1
.end method

.method static synthetic access$200(Lmiui/slide/SlideAnimationView;IIIII)F
    .locals 1

    invoke-direct/range {p0 .. p5}, Lmiui/slide/SlideAnimationView;->rangeAlpha(IIIII)F

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lmiui/slide/SlideAnimationView;)F
    .locals 1

    iget v0, p0, Lmiui/slide/SlideAnimationView;->mTopScaleY:F

    return v0
.end method

.method static synthetic access$302(Lmiui/slide/SlideAnimationView;F)F
    .locals 0

    iput p1, p0, Lmiui/slide/SlideAnimationView;->mTopScaleY:F

    return p1
.end method

.method static synthetic access$400(Lmiui/slide/SlideAnimationView;)Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$500(Lmiui/slide/SlideAnimationView;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mTopOri:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$602(Lmiui/slide/SlideAnimationView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lmiui/slide/SlideAnimationView;->mTop:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$702(Lmiui/slide/SlideAnimationView;F)F
    .locals 0

    iput p1, p0, Lmiui/slide/SlideAnimationView;->mEdgeY:F

    return p1
.end method

.method static synthetic access$800(Lmiui/slide/SlideAnimationView;)F
    .locals 1

    iget v0, p0, Lmiui/slide/SlideAnimationView;->mEdgeAlpha:F

    return v0
.end method

.method static synthetic access$802(Lmiui/slide/SlideAnimationView;F)F
    .locals 0

    iput p1, p0, Lmiui/slide/SlideAnimationView;->mEdgeAlpha:F

    return p1
.end method

.method static synthetic access$900(Lmiui/slide/SlideAnimationView;)F
    .locals 1

    iget v0, p0, Lmiui/slide/SlideAnimationView;->mEdgeScaleX:F

    return v0
.end method

.method static synthetic access$902(Lmiui/slide/SlideAnimationView;F)F
    .locals 0

    iput p1, p0, Lmiui/slide/SlideAnimationView;->mEdgeScaleX:F

    return p1
.end method

.method private getNavigationBarHeight()I
    .locals 4

    invoke-virtual {p0}, Lmiui/slide/SlideAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    return v2
.end method

.method private rangeAlpha(IIIII)F
    .locals 3

    if-ge p1, p3, :cond_0

    sub-int v0, p1, p2

    int-to-float v0, v0

    sub-int v1, p3, p2

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    if-lt p1, p4, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-int v1, p1, p4

    int-to-float v1, v1

    sub-int v2, p5, p4

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method


# virtual methods
.method public getDisplayHeight()I
    .locals 4

    invoke-virtual {p0}, Lmiui/slide/SlideAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0}, Lmiui/slide/SlideAnimationView;->getNavigationBarHeight()I

    move-result v3

    add-int/2addr v2, v3

    return v2
.end method

.method public getDisplayWidth()I
    .locals 3

    invoke-virtual {p0}, Lmiui/slide/SlideAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    return v2
.end method

.method public isPortrait()Z
    .locals 2

    invoke-virtual {p0}, Lmiui/slide/SlideAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lmiui/slide/SlideAnimationView;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lmiui/slide/SlideAnimationView;->mTopAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mTop:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mTop:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lmiui/slide/SlideAnimationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lmiui/slide/SlideAnimationView;->mEdgeAlpha:F

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mEdgeLeft:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mEdgeLeft:Landroid/graphics/Bitmap;

    iget v3, p0, Lmiui/slide/SlideAnimationView;->mEdgeY:F

    iget-object v4, p0, Lmiui/slide/SlideAnimationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mEdgeRight:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mEdgeRight:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lmiui/slide/SlideAnimationView;->getDisplayWidth()I

    move-result v3

    iget-object v4, p0, Lmiui/slide/SlideAnimationView;->mEdgeRight:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lmiui/slide/SlideAnimationView;->mEdgeY:F

    iget-object v5, p0, Lmiui/slide/SlideAnimationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2
    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lmiui/slide/SlideAnimationView;->mEdgeColorAlpha:F

    mul-float/2addr v3, v2

    float-to-int v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mEdgeColor:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mEdgeColor:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lmiui/slide/SlideAnimationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lmiui/slide/SlideAnimationView;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/slide/SlideAnimationView;->mEdgeLeft:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lmiui/slide/SlideAnimationView;->mEdgeRight:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lmiui/slide/SlideAnimationView;->mTop:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lmiui/slide/SlideAnimationView;->mEdgeColor:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lmiui/slide/SlideAnimationView;->mEdgeLeftOri:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lmiui/slide/SlideAnimationView;->mEdgeRightOri:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lmiui/slide/SlideAnimationView;->mTopOri:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setBitmap()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lmiui/slide/SlideAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11070181

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    move-object v0, v4

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lmiui/slide/SlideAnimationView;->mEdgeLeftOri:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lmiui/slide/SlideAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11070182

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    move-object v1, v4

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lmiui/slide/SlideAnimationView;->mEdgeRightOri:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lmiui/slide/SlideAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11070183

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    move-object v2, v4

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lmiui/slide/SlideAnimationView;->mTopOri:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lmiui/slide/SlideAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11070180

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    move-object v3, v4

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lmiui/slide/SlideAnimationView;->mEdgeColor:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :cond_3
    :goto_2
    nop

    :goto_3
    return-void

    :catchall_0
    move-exception v4

    if-eqz v0, :cond_4

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_4

    :catch_1
    move-exception v5

    goto :goto_5

    :cond_4
    :goto_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :goto_5
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :cond_7
    :goto_6
    nop

    :goto_7
    throw v4
.end method

.method public startAnimating(I)V
    .locals 3

    invoke-virtual {p0}, Lmiui/slide/SlideAnimationView;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/slide/SlideAnimationView;->setVisibility(I)V

    invoke-virtual {p0}, Lmiui/slide/SlideAnimationView;->setBitmap()V

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lmiui/slide/SlideAnimationView;->mFlowingAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mFlowingAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mFlowingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/view/animation/QuarticEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/QuarticEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_1
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lmiui/slide/SlideAnimationView;->mFlowingAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mFlowingAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mFlowingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/view/animation/SineEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/SineEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    nop

    :goto_0
    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mFlowingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/slide/SlideAnimationView$1;

    invoke-direct {v1, p0, p1}, Lmiui/slide/SlideAnimationView$1;-><init>(Lmiui/slide/SlideAnimationView;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mFlowingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/slide/SlideAnimationView$2;

    invoke-direct {v1, p0}, Lmiui/slide/SlideAnimationView$2;-><init>(Lmiui/slide/SlideAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mFlowingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x870
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x870
    .end array-data
.end method

.method public stopAnimator()V
    .locals 1

    iget-object v0, p0, Lmiui/slide/SlideAnimationView;->mFlowingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method
