.class public Lcom/android/camera/doublevideo/render/RegionHelper;
.super Ljava/lang/Object;
.source "RegionHelper.java"


# static fields
.field private static final MARGIN:I

.field private static final MARGIN_BOTTOM:I

.field private static final TAG:Ljava/lang/String; = "RegionHelper"


# instance fields
.field private mFrameWidth:I

.field private mFrontScaleX:F

.field private mFrontScaleY:F

.field private mHeight:I

.field public mIsHovering:Z

.field private mMarginLeft:I

.field private mMarginTop:I

.field public mStartX:F

.field public mStartY:F

.field private mWidth:I

.field private mX:I

.field private mY:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v0, 0x41680000    # 14.5f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    sput v1, Lcom/android/camera/doublevideo/render/RegionHelper;->MARGIN:I

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/doublevideo/render/RegionHelper;->MARGIN_BOTTOM:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mFrontScaleX:F

    iput v0, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mFrontScaleY:F

    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mFrontScaleX:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    sget v1, Lcom/android/camera/doublevideo/render/RegionHelper;->MARGIN:I

    int-to-float v2, v1

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mMarginLeft:I

    iput v1, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mMarginTop:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mFrameWidth:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mIsHovering:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mStartX:F

    iput v0, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mStartY:F

    iput p1, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mX:I

    iput p2, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mY:I

    iput p3, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mWidth:I

    iput p4, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mHeight:I

    return-void
.end method


# virtual methods
.method public declared-synchronized getMargin()[I
    .locals 3

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mMarginLeft:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mMarginTop:I

    aput v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPreviewAreaFor(Lcom/android/camera/doublevideo/render/Compose;)Lcom/android/camera/doublevideo/render/Area;
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/camera/doublevideo/render/RegionHelper$1;->$SwitchMap$com$android$camera$doublevideo$render$Compose:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    new-instance p1, Lcom/android/camera/doublevideo/render/Area;

    iget v1, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mX:I

    iget v2, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mY:I

    iget v3, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mHeight:I

    iget v4, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mWidth:I

    div-int/2addr v4, v0

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/android/camera/doublevideo/render/Area;-><init>(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_2
    new-instance p1, Lcom/android/camera/doublevideo/render/Area;

    iget v1, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mX:I

    iget v2, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mY:I

    iget v3, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mWidth:I

    div-int/2addr v3, v0

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mHeight:I

    iget v4, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mWidth:I

    div-int/2addr v4, v0

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/android/camera/doublevideo/render/Area;-><init>(IIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    :try_start_3
    new-instance p1, Lcom/android/camera/doublevideo/render/Area;

    iget v0, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mX:I

    iget v1, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mMarginLeft:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mY:I

    iget v2, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mMarginTop:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mFrontScaleX:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mFrontScaleY:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/camera/doublevideo/render/Area;-><init>(IIII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_3
    :try_start_4
    new-instance p1, Lcom/android/camera/doublevideo/render/Area;

    iget v0, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mX:I

    iget v1, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mY:I

    iget v2, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mHeight:I

    iget v3, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mWidth:I

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/camera/doublevideo/render/Area;-><init>(IIII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getRecordAreaFor(Lcom/android/camera/doublevideo/render/Compose;)Lcom/android/camera/doublevideo/render/Area;
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/camera/doublevideo/render/RegionHelper$1;->$SwitchMap$com$android$camera$doublevideo$render$Compose:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    new-instance p1, Lcom/android/camera/doublevideo/render/Area;

    iget v2, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mWidth:I

    div-int/2addr v2, v0

    iget v0, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mHeight:I

    invoke-direct {p1, v1, v1, v2, v0}, Lcom/android/camera/doublevideo/render/Area;-><init>(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_2
    new-instance p1, Lcom/android/camera/doublevideo/render/Area;

    iget v2, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mWidth:I

    div-int/2addr v2, v0

    add-int/2addr v2, v1

    iget v3, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mWidth:I

    div-int/2addr v3, v0

    iget v0, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mHeight:I

    invoke-direct {p1, v2, v1, v3, v0}, Lcom/android/camera/doublevideo/render/Area;-><init>(IIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    :try_start_3
    new-instance p1, Lcom/android/camera/doublevideo/render/Area;

    iget v0, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mMarginTop:I

    iget v1, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mHeight:I

    iget v2, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mMarginLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mFrontScaleX:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mFrontScaleY:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mFrontScaleX:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/camera/doublevideo/render/Area;-><init>(IIII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_3
    :try_start_4
    new-instance p1, Lcom/android/camera/doublevideo/render/Area;

    iget v0, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mWidth:I

    iget v2, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mHeight:I

    invoke-direct {p1, v1, v1, v0, v2}, Lcom/android/camera/doublevideo/render/Area;-><init>(IIII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSize()[I
    .locals 3

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mWidth:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mHeight:I

    aput v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getmFrameWidth()I
    .locals 0

    iget p0, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mFrameWidth:I

    return p0
.end method

.method public moveToEdge(Z)V
    .locals 7

    iget v0, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mFrameWidth:I

    sget v1, Lcom/android/camera/doublevideo/render/RegionHelper;->MARGIN:I

    add-int v2, v0, v1

    iget v3, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mHeight:I

    int-to-float v4, v3

    iget v5, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mFrontScaleX:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    add-int/2addr v1, v0

    iget v4, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mWidth:I

    int-to-float v5, v4

    iget v6, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mFrontScaleY:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    sget v0, Lcom/android/camera/doublevideo/render/RegionHelper;->MARGIN_BOTTOM:I

    sub-int v0, v4, v0

    add-int v4, v2, v3

    div-int/lit8 v4, v4, 0x2

    add-int v5, v1, v0

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mMarginLeft:I

    if-ge v6, v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget v3, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mMarginTop:I

    if-ge v3, v5, :cond_1

    move v0, v1

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iput v2, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mMarginLeft:I

    iput v0, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mMarginTop:I

    :goto_1
    return-void
.end method

.method public declared-synchronized setMarginOffset(II)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mMarginLeft:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mMarginLeft:I

    iget p1, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mMarginTop:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mMarginTop:I

    iget p1, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mMarginLeft:I

    iget p2, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mFrameWidth:I

    sget v0, Lcom/android/camera/doublevideo/render/RegionHelper;->MARGIN:I

    add-int/2addr p2, v0

    if-ge p1, p2, :cond_0

    iget p1, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mFrameWidth:I

    sget p2, Lcom/android/camera/doublevideo/render/RegionHelper;->MARGIN:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mMarginLeft:I

    :cond_0
    iget p1, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mMarginTop:I

    iget p2, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mFrameWidth:I

    sget v0, Lcom/android/camera/doublevideo/render/RegionHelper;->MARGIN:I

    add-int/2addr p2, v0

    if-ge p1, p2, :cond_1

    iget p1, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mFrameWidth:I

    sget p2, Lcom/android/camera/doublevideo/render/RegionHelper;->MARGIN:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mMarginTop:I

    :cond_1
    iget p1, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mHeight:I

    iget p2, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mHeight:I

    int-to-float p2, p2

    iget v0, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mFrontScaleX:F

    mul-float/2addr p2, v0

    float-to-int p2, p2

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mFrameWidth:I

    sub-int/2addr p1, p2

    sget p2, Lcom/android/camera/doublevideo/render/RegionHelper;->MARGIN:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mWidth:I

    iget v0, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mFrontScaleY:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mFrameWidth:I

    sub-int/2addr p2, v0

    sget v0, Lcom/android/camera/doublevideo/render/RegionHelper;->MARGIN_BOTTOM:I

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mMarginLeft:I

    if-le v0, p1, :cond_2

    iput p1, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mMarginLeft:I

    :cond_2
    iget p1, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mMarginTop:I

    if-le p1, p2, :cond_3

    iput p2, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mMarginTop:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSize(II)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mWidth:I

    iput p2, p0, Lcom/android/camera/doublevideo/render/RegionHelper;->mHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
