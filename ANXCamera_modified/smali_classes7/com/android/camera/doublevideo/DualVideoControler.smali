.class public Lcom/android/camera/doublevideo/DualVideoControler;
.super Ljava/lang/Object;
.source "DualVideoControler.java"


# static fields
.field public static final LEFT_MARGIN:I

.field private static final TAG:Ljava/lang/String; = "DualVideoControler"


# instance fields
.field private mBottomControlView:Landroid/widget/ImageView;

.field private mFrontisTop:Z

.field mJpegCallback:Lcom/android/camera/module/VideoModule$JpegPictureCallback;

.field private mMainDrawAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

.field private mNeedRecording:Z

.field private mRegionHelper:Lcom/android/camera/doublevideo/render/RegionHelper;

.field private mRenderHandler:Lcom/android/camera/module/encoder/RenderHandler;

.field private mRenderHandler2:Lcom/android/camera/module/encoder/RenderHandler;

.field private mRenderableList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/doublevideo/render/IRenderable;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestSnap:Z

.field private mSnapAnimTimer:Lcom/android/camera/doublevideo/render/Timer;

.field private mSnapBuffer:Ljava/nio/ByteBuffer;

.field private mSnapOrientation:I

.field private mSnapReader:Landroid/media/ImageReader;

.field private mSubExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

.field private mSubFrameReady:Z

.field private mSubSurface:Landroid/view/Surface;

.field private mSubSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTopControlView:Landroid/widget/ImageView;

.field private mTouchEventView:Lcom/android/camera/doublevideo/TouchEventView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x41680000    # 14.5f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/doublevideo/DualVideoControler;->LEFT_MARGIN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSubFrameReady:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mFrontisTop:Z

    new-instance v1, Lcom/android/camera/doublevideo/render/Timer;

    invoke-direct {v1}, Lcom/android/camera/doublevideo/render/Timer;-><init>()V

    iput-object v1, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSnapAnimTimer:Lcom/android/camera/doublevideo/render/Timer;

    iput-boolean v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mNeedRecording:Z

    iput-boolean v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRequestSnap:Z

    iput v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSnapOrientation:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRenderableList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/android/camera/doublevideo/render/IRenderable;)Z
    .locals 1

    invoke-interface {p0}, Lcom/android/camera/doublevideo/render/IRenderable;->getComposeType()Lcom/android/camera/doublevideo/render/Compose;

    move-result-object p0

    sget-object v0, Lcom/android/camera/doublevideo/render/Compose;->MINI:Lcom/android/camera/doublevideo/render/Compose;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic access$000(Lcom/android/camera/doublevideo/DualVideoControler;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRenderableList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/doublevideo/DualVideoControler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/doublevideo/DualVideoControler;->updateRenderArea()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/doublevideo/DualVideoControler;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mBottomControlView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/doublevideo/DualVideoControler;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mTopControlView:Landroid/widget/ImageView;

    return-object p0
.end method

.method private addComposeTypeUI(Landroid/view/ViewGroup;)V
    .locals 6

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/Util;->getPreviewRect(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mTopControlView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mTopControlView:Landroid/widget/ImageView;

    sget v2, Lcom/android/camera/doublevideo/DualVideoControler;->LEFT_MARGIN:I

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mTopControlView:Landroid/widget/ImageView;

    const v2, 0x7f080100

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x0

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v4

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v5, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mTopControlView:Landroid/widget/ImageView;

    invoke-virtual {p1, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mBottomControlView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mBottomControlView:Landroid/widget/ImageView;

    sget v5, Lcom/android/camera/doublevideo/DualVideoControler;->LEFT_MARGIN:I

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mBottomControlView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v4

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mBottomControlView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mTopControlView:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/camera/doublevideo/DualVideoControler$1;

    invoke-direct {v0, p0}, Lcom/android/camera/doublevideo/DualVideoControler$1;-><init>(Lcom/android/camera/doublevideo/DualVideoControler;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mBottomControlView:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/camera/doublevideo/DualVideoControler$2;

    invoke-direct {v0, p0}, Lcom/android/camera/doublevideo/DualVideoControler$2;-><init>(Lcom/android/camera/doublevideo/DualVideoControler;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private addExif(Landroid/graphics/Bitmap;Ljava/io/OutputStream;)V
    .locals 8

    new-instance v0, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v0}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MODEL:I

    const-string v3, "xiaomi"

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    new-instance v3, Lcom/android/gallery3d/exif/Rational;

    const-wide/16 v4, 0x1

    invoke-direct {v3, v4, v5, v4, v5}, Lcom/android/gallery3d/exif/Rational;-><init>(JJ)V

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_F_NUMBER:I

    new-instance v3, Lcom/android/gallery3d/exif/Rational;

    const-wide/16 v6, 0x2

    invoke-direct {v3, v6, v7, v4, v5}, Lcom/android/gallery3d/exif/Rational;-><init>(JJ)V

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSnapOrientation:I

    if-eqz p0, :cond_3

    const/16 v2, 0x5a

    if-eq p0, v2, :cond_2

    const/16 v2, 0xb4

    if-eq p0, v2, :cond_1

    const/16 v2, 0x10e

    if-eq p0, v2, :cond_0

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget p0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget p0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    sget p0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->setExif(Ljava/util/Collection;)V

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->writeExif(Landroid/graphics/Bitmap;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private addTouchEventView(Landroid/view/ViewGroup;)V
    .locals 2

    new-instance v0, Lcom/android/camera/doublevideo/TouchEventView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/doublevideo/TouchEventView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mTouchEventView:Lcom/android/camera/doublevideo/TouchEventView;

    iget-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mTouchEventView:Lcom/android/camera/doublevideo/TouchEventView;

    new-instance v1, Lcom/android/camera/doublevideo/d;

    invoke-direct {v1, p0}, Lcom/android/camera/doublevideo/d;-><init>(Lcom/android/camera/doublevideo/DualVideoControler;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/doublevideo/TouchEventView;->setListener(Lcom/android/camera/doublevideo/TouchEventView$TouchEventListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object p0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mTouchEventView:Lcom/android/camera/doublevideo/TouchEventView;

    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private centerCropHorizontal([FF)V
    .locals 3

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float v0, p0, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    invoke-static {p1, v2, p2, p0, p0}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-void
.end method

.method private centerCropVertical([FF)V
    .locals 3

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float v0, p0, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v0, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    invoke-static {p1, v2, p0, p2, p0}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-void
.end method

.method private createAttrisForPreview()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/doublevideo/DualVideoControler;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/doublevideo/render/IRenderable;

    iget-object v3, v0, Lcom/android/camera/doublevideo/DualVideoControler;->mRegionHelper:Lcom/android/camera/doublevideo/render/RegionHelper;

    invoke-interface {v2}, Lcom/android/camera/doublevideo/render/IRenderable;->getComposeType()Lcom/android/camera/doublevideo/render/Compose;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/doublevideo/render/RegionHelper;->getPreviewAreaFor(Lcom/android/camera/doublevideo/render/Compose;)Lcom/android/camera/doublevideo/render/Area;

    move-result-object v3

    invoke-interface {v2}, Lcom/android/camera/doublevideo/render/IRenderable;->isFacingFront()Z

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v4, :cond_3

    const/16 v4, 0x10

    new-array v8, v4, [F

    iget-object v4, v0, Lcom/android/camera/doublevideo/DualVideoControler;->mSubSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v4, v8}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    invoke-interface {v2}, Lcom/android/camera/doublevideo/render/IRenderable;->getComposeType()Lcom/android/camera/doublevideo/render/Compose;

    move-result-object v4

    sget-object v6, Lcom/android/camera/doublevideo/render/Compose;->UP:Lcom/android/camera/doublevideo/render/Compose;

    if-eq v4, v6, :cond_1

    invoke-interface {v2}, Lcom/android/camera/doublevideo/render/IRenderable;->getComposeType()Lcom/android/camera/doublevideo/render/Compose;

    move-result-object v4

    sget-object v6, Lcom/android/camera/doublevideo/render/Compose;->DOWN:Lcom/android/camera/doublevideo/render/Compose;

    if-ne v4, v6, :cond_2

    :cond_1
    invoke-direct {v0, v8, v5}, Lcom/android/camera/doublevideo/DualVideoControler;->centerCropVertical([FF)V

    :cond_2
    new-instance v4, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v7, v0, Lcom/android/camera/doublevideo/DualVideoControler;->mSubExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget v9, v3, Lcom/android/camera/doublevideo/render/Area;->X:I

    iget v10, v3, Lcom/android/camera/doublevideo/render/Area;->Y:I

    iget v11, v3, Lcom/android/camera/doublevideo/render/Area;->W:I

    iget v12, v3, Lcom/android/camera/doublevideo/render/Area;->H:I

    move-object v6, v4

    invoke-direct/range {v6 .. v12}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)V

    invoke-interface {v2, v4}, Lcom/android/camera/doublevideo/render/IRenderable;->setPreviewDrawAttri(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V

    goto :goto_0

    :cond_3
    new-instance v4, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v6, v0, Lcom/android/camera/doublevideo/DualVideoControler;->mMainDrawAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v14, v6, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v6, v6, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mTextureTransform:[F

    invoke-virtual {v6}, [F->clone()Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, [F

    iget v6, v3, Lcom/android/camera/doublevideo/render/Area;->X:I

    iget v7, v3, Lcom/android/camera/doublevideo/render/Area;->Y:I

    iget v8, v3, Lcom/android/camera/doublevideo/render/Area;->W:I

    iget v3, v3, Lcom/android/camera/doublevideo/render/Area;->H:I

    move-object v13, v4

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v3

    invoke-direct/range {v13 .. v19}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)V

    invoke-interface {v2, v4}, Lcom/android/camera/doublevideo/render/IRenderable;->setPreviewDrawAttri(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V

    invoke-interface {v2}, Lcom/android/camera/doublevideo/render/IRenderable;->getComposeType()Lcom/android/camera/doublevideo/render/Compose;

    move-result-object v3

    sget-object v4, Lcom/android/camera/doublevideo/render/Compose;->UP:Lcom/android/camera/doublevideo/render/Compose;

    if-eq v3, v4, :cond_4

    invoke-interface {v2}, Lcom/android/camera/doublevideo/render/IRenderable;->getComposeType()Lcom/android/camera/doublevideo/render/Compose;

    move-result-object v3

    sget-object v4, Lcom/android/camera/doublevideo/render/Compose;->DOWN:Lcom/android/camera/doublevideo/render/Compose;

    if-ne v3, v4, :cond_0

    :cond_4
    invoke-interface {v2}, Lcom/android/camera/doublevideo/render/IRenderable;->getPreviewDrawAttri()Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mTextureTransform:[F

    invoke-direct {v0, v2, v5}, Lcom/android/camera/doublevideo/DualVideoControler;->centerCropVertical([FF)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private createAttrisForRecorder()V
    .locals 12

    iget-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/doublevideo/render/IRenderable;

    invoke-interface {v1}, Lcom/android/camera/doublevideo/render/IRenderable;->getPreviewDrawAttri()Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    move-result-object v2

    const/16 v3, 0x10

    new-array v3, v3, [F

    invoke-interface {v1}, Lcom/android/camera/doublevideo/render/IRenderable;->isFacingFront()Z

    move-result v4

    const/high16 v10, 0x3f000000    # 0.5f

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSubSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v4, v3}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    const/4 v5, 0x0

    const/high16 v6, -0x3d4c0000    # -90.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v4, v3

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    invoke-interface {v1}, Lcom/android/camera/doublevideo/render/IRenderable;->getComposeType()Lcom/android/camera/doublevideo/render/Compose;

    move-result-object v4

    sget-object v5, Lcom/android/camera/doublevideo/render/Compose;->UP:Lcom/android/camera/doublevideo/render/Compose;

    if-eq v4, v5, :cond_0

    invoke-interface {v1}, Lcom/android/camera/doublevideo/render/IRenderable;->getComposeType()Lcom/android/camera/doublevideo/render/Compose;

    move-result-object v4

    sget-object v5, Lcom/android/camera/doublevideo/render/Compose;->DOWN:Lcom/android/camera/doublevideo/render/Compose;

    if-ne v4, v5, :cond_3

    :cond_0
    invoke-direct {p0, v3, v10}, Lcom/android/camera/doublevideo/DualVideoControler;->centerCropHorizontal([FF)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSubSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v4, v3}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v6, v5, v6}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    const/4 v5, 0x0

    const/high16 v6, -0x3d4c0000    # -90.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v4, v3

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    invoke-interface {v1}, Lcom/android/camera/doublevideo/render/IRenderable;->getComposeType()Lcom/android/camera/doublevideo/render/Compose;

    move-result-object v4

    sget-object v5, Lcom/android/camera/doublevideo/render/Compose;->UP:Lcom/android/camera/doublevideo/render/Compose;

    if-eq v4, v5, :cond_2

    invoke-interface {v1}, Lcom/android/camera/doublevideo/render/IRenderable;->getComposeType()Lcom/android/camera/doublevideo/render/Compose;

    move-result-object v4

    sget-object v5, Lcom/android/camera/doublevideo/render/Compose;->DOWN:Lcom/android/camera/doublevideo/render/Compose;

    if-ne v4, v5, :cond_3

    :cond_2
    invoke-direct {p0, v3, v10}, Lcom/android/camera/doublevideo/DualVideoControler;->centerCropHorizontal([FF)V

    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRegionHelper:Lcom/android/camera/doublevideo/render/RegionHelper;

    invoke-interface {v1}, Lcom/android/camera/doublevideo/render/IRenderable;->getComposeType()Lcom/android/camera/doublevideo/render/Compose;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/doublevideo/render/RegionHelper;->getRecordAreaFor(Lcom/android/camera/doublevideo/render/Compose;)Lcom/android/camera/doublevideo/render/Area;

    move-result-object v4

    new-instance v11, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v5, v2, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget v7, v4, Lcom/android/camera/doublevideo/render/Area;->X:I

    iget v8, v4, Lcom/android/camera/doublevideo/render/Area;->Y:I

    iget v9, v4, Lcom/android/camera/doublevideo/render/Area;->W:I

    iget v10, v4, Lcom/android/camera/doublevideo/render/Area;->H:I

    move-object v4, v11

    move-object v6, v3

    invoke-direct/range {v4 .. v10}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)V

    invoke-interface {v1, v11}, Lcom/android/camera/doublevideo/render/IRenderable;->setRecordDrawAttri(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private drawDualVideo(Lcom/android/gallery3d/ui/GLCanvas;)Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSubFrameReady:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSubSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/doublevideo/DualVideoControler;->initSubSurfaceTexture()V

    iget-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRenderableList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/camera/doublevideo/render/RenderItem;

    sget-object v4, Lcom/android/camera/doublevideo/render/Compose;->UP:Lcom/android/camera/doublevideo/render/Compose;

    invoke-direct {v3, v4, v1}, Lcom/android/camera/doublevideo/render/RenderItem;-><init>(Lcom/android/camera/doublevideo/render/Compose;Z)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRenderableList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/doublevideo/render/RenderItem;

    sget-object v3, Lcom/android/camera/doublevideo/render/Compose;->DOWN:Lcom/android/camera/doublevideo/render/Compose;

    invoke-direct {v1, v3, v2}, Lcom/android/camera/doublevideo/render/RenderItem;-><init>(Lcom/android/camera/doublevideo/render/Compose;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/camera/doublevideo/DualVideoControler;->createAttrisForPreview()V

    invoke-direct {p0}, Lcom/android/camera/doublevideo/DualVideoControler;->createAttrisForRecorder()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/doublevideo/DualVideoControler;->drawForPreview(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-direct {p0}, Lcom/android/camera/doublevideo/DualVideoControler;->drawForRecording()V

    return v2

    :cond_1
    return v1
.end method

.method private drawForPreview(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSnapAnimTimer:Lcom/android/camera/doublevideo/render/Timer;

    invoke-virtual {v0}, Lcom/android/camera/doublevideo/render/Timer;->isValid()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/doublevideo/render/IRenderable;

    invoke-interface {v1}, Lcom/android/camera/doublevideo/render/IRenderable;->getComposeType()Lcom/android/camera/doublevideo/render/Compose;

    move-result-object v2

    sget-object v3, Lcom/android/camera/doublevideo/render/Compose;->FULL:Lcom/android/camera/doublevideo/render/Compose;

    if-ne v2, v3, :cond_0

    invoke-interface {v1}, Lcom/android/camera/doublevideo/render/IRenderable;->getPreviewDrawAttri()Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/doublevideo/render/IRenderable;

    invoke-interface {v0}, Lcom/android/camera/doublevideo/render/IRenderable;->getComposeType()Lcom/android/camera/doublevideo/render/Compose;

    move-result-object v1

    sget-object v2, Lcom/android/camera/doublevideo/render/Compose;->FULL:Lcom/android/camera/doublevideo/render/Compose;

    if-eq v1, v2, :cond_2

    invoke-interface {v0}, Lcom/android/camera/doublevideo/render/IRenderable;->getPreviewDrawAttri()Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private drawForRecording()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mNeedRecording:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/doublevideo/DualVideoControler;->TAG:Ljava/lang/String;

    const-string v1, "drawForRecording: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/doublevideo/render/IRenderable;

    invoke-interface {v2}, Lcom/android/camera/doublevideo/render/IRenderable;->getComposeType()Lcom/android/camera/doublevideo/render/Compose;

    move-result-object v3

    sget-object v4, Lcom/android/camera/doublevideo/render/Compose;->FULL:Lcom/android/camera/doublevideo/render/Compose;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lcom/android/camera/doublevideo/render/IRenderable;->getRecordDrawAttri()Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/doublevideo/render/IRenderable;

    invoke-interface {v2}, Lcom/android/camera/doublevideo/render/IRenderable;->getComposeType()Lcom/android/camera/doublevideo/render/Compose;

    move-result-object v3

    sget-object v4, Lcom/android/camera/doublevideo/render/Compose;->FULL:Lcom/android/camera/doublevideo/render/Compose;

    if-eq v3, v4, :cond_3

    invoke-interface {v2}, Lcom/android/camera/doublevideo/render/IRenderable;->getRecordDrawAttri()Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRenderHandler:Lcom/android/camera/module/encoder/RenderHandler;

    invoke-virtual {v1, v0}, Lcom/android/camera/module/encoder/RenderHandler;->draw(Ljava/util/List;)V

    iget-boolean v1, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRequestSnap:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRenderHandler2:Lcom/android/camera/module/encoder/RenderHandler;

    invoke-virtual {v1, v0}, Lcom/android/camera/module/encoder/RenderHandler;->draw(Ljava/util/List;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRequestSnap:Z

    :cond_5
    return-void
.end method

.method private initSnapBuffer()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSnapBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRegionHelper:Lcom/android/camera/doublevideo/render/RegionHelper;

    invoke-virtual {v0}, Lcom/android/camera/doublevideo/render/RegionHelper;->getSize()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    mul-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSnapBuffer:Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method private initSubSurfaceTexture()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSubExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/gallery3d/ui/ExtTexture;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/ExtTexture;-><init>()V

    iput-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSubExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSubExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ExtTexture;->onBind(Lcom/android/gallery3d/ui/GLCanvas;)Z

    iget-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSubExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/BasicTexture;->setSize(II)V

    invoke-virtual {p0}, Lcom/android/camera/doublevideo/DualVideoControler;->createSubCameraSurfaceIfNeed()Landroid/view/Surface;

    iget-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSubSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    iget-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSubSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object p0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSubExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    return-void
.end method

.method private releaseSurfaceTexture()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSubSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    iput-object v1, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSubSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSubSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSubSurface:Landroid/view/Surface;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSubExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->recycle()V

    iput-object v1, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSubExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    :cond_2
    return-void
.end method

.method private saveJpeg(Landroid/media/Image;)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    aget-object v5, v2, v3

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v2

    mul-int v3, v5, v0

    sub-int/2addr v2, v3

    div-int/2addr v2, v5

    add-int/2addr v0, v2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    const/16 p1, 0x5a

    invoke-static {v0, p1}, Lcom/android/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/camera/doublevideo/DualVideoControler;->addExif(Landroid/graphics/Bitmap;Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object p0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mJpegCallback:Lcom/android/camera/module/VideoModule$JpegPictureCallback;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/module/VideoModule$JpegPictureCallback;->onPictureTaken([BLandroid/hardware/camera2/CaptureResult;)V

    :cond_0
    return-void
.end method

.method private updateFrontTextureLocation(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRegionHelper:Lcom/android/camera/doublevideo/render/RegionHelper;

    iget-boolean v0, v0, Lcom/android/camera/doublevideo/render/RegionHelper;->mIsHovering:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRegionHelper:Lcom/android/camera/doublevideo/render/RegionHelper;

    iget v2, v2, Lcom/android/camera/doublevideo/render/RegionHelper;->mStartX:F

    sub-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRegionHelper:Lcom/android/camera/doublevideo/render/RegionHelper;

    iget v4, v3, Lcom/android/camera/doublevideo/render/RegionHelper;->mStartY:F

    sub-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, v3, Lcom/android/camera/doublevideo/render/RegionHelper;->mStartX:F

    iget-object v3, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRegionHelper:Lcom/android/camera/doublevideo/render/RegionHelper;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, v3, Lcom/android/camera/doublevideo/render/RegionHelper;->mStartY:F

    iget-object p1, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRegionHelper:Lcom/android/camera/doublevideo/render/RegionHelper;

    invoke-virtual {p1, v0, v2}, Lcom/android/camera/doublevideo/render/RegionHelper;->setMarginOffset(II)V

    invoke-direct {p0}, Lcom/android/camera/doublevideo/DualVideoControler;->updateRenderArea()V

    return v1

    :cond_1
    return v2

    :cond_2
    iget-object p1, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRegionHelper:Lcom/android/camera/doublevideo/render/RegionHelper;

    iget-boolean v0, p1, Lcom/android/camera/doublevideo/render/RegionHelper;->mIsHovering:Z

    if-eqz v0, :cond_3

    iput-boolean v2, p1, Lcom/android/camera/doublevideo/render/RegionHelper;->mIsHovering:Z

    invoke-virtual {p1, v2}, Lcom/android/camera/doublevideo/render/RegionHelper;->moveToEdge(Z)V

    invoke-direct {p0}, Lcom/android/camera/doublevideo/DualVideoControler;->updateRenderArea()V

    return v1

    :cond_3
    return v2

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v2}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v3

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_5

    iget v4, v3, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_5

    move v4, v1

    goto :goto_0

    :cond_5
    move v4, v2

    :goto_0
    iget v5, v3, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    cmpl-float v5, p1, v5

    if-lez v5, :cond_6

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_6

    move v3, v1

    goto :goto_1

    :cond_6
    move v3, v2

    :goto_1
    if-eqz v4, :cond_9

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRegionHelper:Lcom/android/camera/doublevideo/render/RegionHelper;

    sget-object v4, Lcom/android/camera/doublevideo/render/Compose;->MINI:Lcom/android/camera/doublevideo/render/Compose;

    invoke-virtual {v3, v4}, Lcom/android/camera/doublevideo/render/RegionHelper;->getPreviewAreaFor(Lcom/android/camera/doublevideo/render/Compose;)Lcom/android/camera/doublevideo/render/Area;

    move-result-object v3

    iget v4, v3, Lcom/android/camera/doublevideo/render/Area;->X:I

    int-to-float v5, v4

    cmpl-float v5, v0, v5

    if-lez v5, :cond_7

    iget v5, v3, Lcom/android/camera/doublevideo/render/Area;->W:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_7

    move v4, v1

    goto :goto_2

    :cond_7
    move v4, v2

    :goto_2
    iget v5, v3, Lcom/android/camera/doublevideo/render/Area;->Y:I

    int-to-float v6, v5

    cmpl-float v6, p1, v6

    if-lez v6, :cond_8

    iget v3, v3, Lcom/android/camera/doublevideo/render/Area;->H:I

    add-int/2addr v5, v3

    int-to-float v3, v5

    cmpg-float v3, p1, v3

    if-gez v3, :cond_8

    move v3, v1

    goto :goto_3

    :cond_8
    move v3, v2

    :goto_3
    if-eqz v4, :cond_9

    if-eqz v3, :cond_9

    iget-object v2, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRegionHelper:Lcom/android/camera/doublevideo/render/RegionHelper;

    iput-boolean v1, v2, Lcom/android/camera/doublevideo/render/RegionHelper;->mIsHovering:Z

    iput v0, v2, Lcom/android/camera/doublevideo/render/RegionHelper;->mStartX:F

    iput p1, v2, Lcom/android/camera/doublevideo/render/RegionHelper;->mStartY:F

    invoke-direct {p0}, Lcom/android/camera/doublevideo/DualVideoControler;->updateRenderArea()V

    return v1

    :cond_9
    return v2
.end method

.method private updateRenderArea()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRenderableList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/doublevideo/DualVideoControler;->createAttrisForPreview()V

    invoke-direct {p0}, Lcom/android/camera/doublevideo/DualVideoControler;->createAttrisForRecorder()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSubFrameReady:Z

    return-void
.end method

.method public synthetic a(Landroid/media/ImageReader;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRequestSnap:Z

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/doublevideo/DualVideoControler;->saveJpeg(Landroid/media/Image;)V

    sget-object p0, Lcom/android/camera/doublevideo/DualVideoControler;->TAG:Ljava/lang/String;

    const-string p1, "onImageAvailable: wq197 "

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic a(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/camera/doublevideo/DualVideoControler;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public addModuleView(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/doublevideo/DualVideoControler;->addTouchEventView(Landroid/view/ViewGroup;)V

    invoke-direct {p0, p1}, Lcom/android/camera/doublevideo/DualVideoControler;->addComposeTypeUI(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public captureVideoSnapshot(Lcom/android/camera/module/VideoModule$JpegPictureCallback;I)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRequestSnap:Z

    iput-object p1, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mJpegCallback:Lcom/android/camera/module/VideoModule$JpegPictureCallback;

    iget-object p1, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSnapAnimTimer:Lcom/android/camera/doublevideo/render/Timer;

    const-wide/16 v0, 0x3c

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/doublevideo/render/Timer;->init(J)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSnapOrientation:I

    goto :goto_0

    :cond_0
    iput p2, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSnapOrientation:I

    :goto_0
    return-void
.end method

.method public createSubCameraSurfaceIfNeed()Landroid/view/Surface;
    .locals 3

    iget-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSubSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSubSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSubSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSubSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSubSurface:Landroid/view/Surface;

    iget-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSubSurfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v1, Lcom/android/camera/doublevideo/b;

    invoke-direct {v1, p0}, Lcom/android/camera/doublevideo/b;-><init>(Lcom/android/camera/doublevideo/DualVideoControler;)V

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSubSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSubFrameReady:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/camera/doublevideo/a;->INSTANCE:Lcom/android/camera/doublevideo/a;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/doublevideo/DualVideoControler;->updateFrontTextureLocation(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isRecording()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mNeedRecording:Z

    return p0
.end method

.method public onSurfaceTextureUpdated(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)Z
    .locals 4

    iput-object p2, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mMainDrawAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRegionHelper:Lcom/android/camera/doublevideo/render/RegionHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/doublevideo/render/RegionHelper;

    iget v1, p2, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mX:I

    iget v2, p2, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mY:I

    iget-object v3, p2, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v3

    iget-object p2, p2, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {p2}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result p2

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/android/camera/doublevideo/render/RegionHelper;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRegionHelper:Lcom/android/camera/doublevideo/render/RegionHelper;

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/doublevideo/DualVideoControler;->drawDualVideo(Lcom/android/gallery3d/ui/GLCanvas;)Z

    move-result p0

    return p0
.end method

.method public release()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/doublevideo/DualVideoControler;->releaseSurfaceTexture()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSubFrameReady:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mJpegCallback:Lcom/android/camera/module/VideoModule$JpegPictureCallback;

    return-void
.end method

.method public startRecording(Landroid/opengl/EGLContext;Landroid/view/Surface;)V
    .locals 4

    sget-object v0, Lcom/android/camera/doublevideo/DualVideoControler;->TAG:Ljava/lang/String;

    const-string v1, "startRecording: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRenderHandler:Lcom/android/camera/module/encoder/RenderHandler;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/doublevideo/DualVideoControler;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSubExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSubExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/android/camera/module/encoder/RenderHandler;->createHandler(Ljava/lang/String;II)Lcom/android/camera/module/encoder/RenderHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRenderHandler:Lcom/android/camera/module/encoder/RenderHandler;

    iget-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRenderHandler:Lcom/android/camera/module/encoder/RenderHandler;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/camera/module/encoder/RenderHandler;->setEglContext(Landroid/opengl/EGLContext;Ljava/lang/Object;Z)V

    :cond_0
    iget-object p2, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSnapReader:Landroid/media/ImageReader;

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSubExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {p2}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result p2

    iget-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSubExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v0

    invoke-static {p2, v0, v1, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSnapReader:Landroid/media/ImageReader;

    iget-object p2, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSnapReader:Landroid/media/ImageReader;

    new-instance v0, Lcom/android/camera/doublevideo/c;

    invoke-direct {v0, p0}, Lcom/android/camera/doublevideo/c;-><init>(Lcom/android/camera/doublevideo/DualVideoControler;)V

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :cond_1
    iget-object p2, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRenderHandler2:Lcom/android/camera/module/encoder/RenderHandler;

    if-nez p2, :cond_2

    sget-object p2, Lcom/android/camera/doublevideo/DualVideoControler;->TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSubExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSubExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v2

    invoke-static {p2, v0, v2}, Lcom/android/camera/module/encoder/RenderHandler;->createHandler(Ljava/lang/String;II)Lcom/android/camera/module/encoder/RenderHandler;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRenderHandler2:Lcom/android/camera/module/encoder/RenderHandler;

    iget-object p2, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRenderHandler2:Lcom/android/camera/module/encoder/RenderHandler;

    iget-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSnapReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/camera/module/encoder/RenderHandler;->setEglContext(Landroid/opengl/EGLContext;Ljava/lang/Object;Z)V

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/doublevideo/DualVideoControler;->initSnapBuffer()V

    iput-boolean v1, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mNeedRecording:Z

    return-void
.end method

.method public stopRecording()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mNeedRecording:Z

    iget-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRenderHandler:Lcom/android/camera/module/encoder/RenderHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/module/encoder/RenderHandler;->release()V

    iput-object v1, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRenderHandler:Lcom/android/camera/module/encoder/RenderHandler;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSnapReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    iput-object v1, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mSnapReader:Landroid/media/ImageReader;

    iget-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRenderHandler2:Lcom/android/camera/module/encoder/RenderHandler;

    invoke-virtual {v0}, Lcom/android/camera/module/encoder/RenderHandler;->release()V

    iput-object v1, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRenderHandler2:Lcom/android/camera/module/encoder/RenderHandler;

    :cond_1
    iput-object v1, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mJpegCallback:Lcom/android/camera/module/VideoModule$JpegPictureCallback;

    return-void
.end method

.method public switchTopBottom()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/doublevideo/DualVideoControler;->mRenderableList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/doublevideo/render/IRenderable;

    sget-object v2, Lcom/android/camera/doublevideo/DualVideoControler$3;->$SwitchMap$com$android$camera$doublevideo$render$Compose:[I

    invoke-interface {v1}, Lcom/android/camera/doublevideo/render/IRenderable;->getComposeType()Lcom/android/camera/doublevideo/render/Compose;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/android/camera/doublevideo/render/Compose;->FULL:Lcom/android/camera/doublevideo/render/Compose;

    invoke-interface {v1, v2}, Lcom/android/camera/doublevideo/render/IRenderable;->setComPoseType(Lcom/android/camera/doublevideo/render/Compose;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/android/camera/doublevideo/render/Compose;->DOWN:Lcom/android/camera/doublevideo/render/Compose;

    invoke-interface {v1, v2}, Lcom/android/camera/doublevideo/render/IRenderable;->setComPoseType(Lcom/android/camera/doublevideo/render/Compose;)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/camera/doublevideo/render/Compose;->UP:Lcom/android/camera/doublevideo/render/Compose;

    invoke-interface {v1, v2}, Lcom/android/camera/doublevideo/render/IRenderable;->setComPoseType(Lcom/android/camera/doublevideo/render/Compose;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/camera/doublevideo/render/Compose;->MINI:Lcom/android/camera/doublevideo/render/Compose;

    invoke-interface {v1, v2}, Lcom/android/camera/doublevideo/render/IRenderable;->setComPoseType(Lcom/android/camera/doublevideo/render/Compose;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/doublevideo/DualVideoControler;->updateRenderArea()V

    return-void
.end method
