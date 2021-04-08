.class public Lmiui/imagefilters/LevelsFilter;
.super Lmiui/imagefilters/IImageFilter$AbstractImageFilter;
.source "LevelsFilter.java"


# instance fields
.field private mInputMax:F

.field private mInputMiddle:F

.field private mInputMin:F

.field private mIsFilterB:Z

.field private mIsFilterG:Z

.field private mIsFilterR:Z

.field private mOutputMax:F

.field private mOutputMin:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/imagefilters/LevelsFilter;->mInputMin:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lmiui/imagefilters/LevelsFilter;->mInputMiddle:F

    const/high16 v1, 0x437f0000    # 255.0f

    iput v1, p0, Lmiui/imagefilters/LevelsFilter;->mInputMax:F

    iput v0, p0, Lmiui/imagefilters/LevelsFilter;->mOutputMin:F

    iput v1, p0, Lmiui/imagefilters/LevelsFilter;->mOutputMax:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/imagefilters/LevelsFilter;->mIsFilterR:Z

    iput-boolean v0, p0, Lmiui/imagefilters/LevelsFilter;->mIsFilterG:Z

    iput-boolean v0, p0, Lmiui/imagefilters/LevelsFilter;->mIsFilterB:Z

    return-void
.end method

.method private static interpolate(FFFFFI)I
    .locals 8

    int-to-float v0, p5

    cmpg-float v0, v0, p0

    if-gtz v0, :cond_0

    float-to-int v0, p3

    return v0

    :cond_0
    int-to-float v0, p5

    cmpl-float v0, v0, p2

    if-ltz v0, :cond_1

    float-to-int v0, p4

    return v0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_2

    int-to-float v0, p5

    sub-float/2addr v0, p0

    sub-float v1, p4, p3

    mul-float/2addr v0, v1

    sub-float v1, p2, p0

    div-float/2addr v0, v1

    add-float/2addr v0, p3

    float-to-int v0, v0

    return v0

    :cond_2
    sub-float v1, p2, p0

    sub-float v2, p4, p3

    int-to-float v3, p5

    sub-float/2addr v3, p0

    div-float/2addr v3, v1

    sub-float v4, v0, v3

    float-to-double v4, v4

    float-to-double v6, p1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    sub-float/2addr v0, v4

    mul-float v3, v2, v0

    add-float/2addr v3, p3

    float-to-int v3, v3

    return v3
.end method


# virtual methods
.method public processData(Lmiui/imagefilters/ImageData;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Lmiui/imagefilters/ImageData;->width:I

    iget v3, v1, Lmiui/imagefilters/ImageData;->height:I

    iget-object v4, v1, Lmiui/imagefilters/ImageData;->pixels:[I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_3

    mul-int v7, v6, v2

    add-int/2addr v7, v5

    aget v8, v4, v7

    const/high16 v9, 0xff0000

    and-int/2addr v9, v8

    ushr-int/lit8 v9, v9, 0x10

    const v10, 0xff00

    and-int/2addr v10, v8

    ushr-int/lit8 v17, v10, 0x8

    and-int/lit16 v15, v8, 0xff

    iget-boolean v10, v0, Lmiui/imagefilters/LevelsFilter;->mIsFilterR:Z

    if-eqz v10, :cond_0

    iget v10, v0, Lmiui/imagefilters/LevelsFilter;->mInputMin:F

    iget v11, v0, Lmiui/imagefilters/LevelsFilter;->mInputMiddle:F

    iget v12, v0, Lmiui/imagefilters/LevelsFilter;->mInputMax:F

    iget v13, v0, Lmiui/imagefilters/LevelsFilter;->mOutputMin:F

    iget v14, v0, Lmiui/imagefilters/LevelsFilter;->mOutputMax:F

    move/from16 v18, v15

    move v15, v9

    invoke-static/range {v10 .. v15}, Lmiui/imagefilters/LevelsFilter;->interpolate(FFFFFI)I

    move-result v9

    goto :goto_2

    :cond_0
    move/from16 v18, v15

    :goto_2
    iget-boolean v10, v0, Lmiui/imagefilters/LevelsFilter;->mIsFilterG:Z

    if-eqz v10, :cond_1

    iget v11, v0, Lmiui/imagefilters/LevelsFilter;->mInputMin:F

    iget v12, v0, Lmiui/imagefilters/LevelsFilter;->mInputMiddle:F

    iget v13, v0, Lmiui/imagefilters/LevelsFilter;->mInputMax:F

    iget v14, v0, Lmiui/imagefilters/LevelsFilter;->mOutputMin:F

    iget v15, v0, Lmiui/imagefilters/LevelsFilter;->mOutputMax:F

    move/from16 v16, v17

    invoke-static/range {v11 .. v16}, Lmiui/imagefilters/LevelsFilter;->interpolate(FFFFFI)I

    move-result v17

    :cond_1
    iget-boolean v10, v0, Lmiui/imagefilters/LevelsFilter;->mIsFilterB:Z

    if-eqz v10, :cond_2

    iget v10, v0, Lmiui/imagefilters/LevelsFilter;->mInputMin:F

    iget v11, v0, Lmiui/imagefilters/LevelsFilter;->mInputMiddle:F

    iget v12, v0, Lmiui/imagefilters/LevelsFilter;->mInputMax:F

    iget v13, v0, Lmiui/imagefilters/LevelsFilter;->mOutputMin:F

    iget v14, v0, Lmiui/imagefilters/LevelsFilter;->mOutputMax:F

    move/from16 v15, v18

    invoke-static/range {v10 .. v15}, Lmiui/imagefilters/LevelsFilter;->interpolate(FFFFFI)I

    move-result v15

    goto :goto_3

    :cond_2
    move/from16 v15, v18

    :goto_3
    shl-int/lit8 v10, v9, 0x10

    shl-int/lit8 v11, v17, 0x8

    or-int/2addr v10, v11

    or-int/2addr v10, v15

    const/high16 v11, -0x1000000

    and-int/2addr v11, v8

    or-int/2addr v10, v11

    aput v10, v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Z

    invoke-static {p1, v0}, Lmiui/imagefilters/ImageFilterUtils;->checkChannelParam(Ljava/lang/String;[Z)V

    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lmiui/imagefilters/LevelsFilter;->mIsFilterR:Z

    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lmiui/imagefilters/LevelsFilter;->mIsFilterG:Z

    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lmiui/imagefilters/LevelsFilter;->mIsFilterB:Z

    return-void
.end method

.method public setInputMax(F)V
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/LevelsFilter;->mInputMax:F

    return-void
.end method

.method public setInputMiddle(F)V
    .locals 2

    const v0, 0x38d1b717    # 1.0E-4f

    const v1, 0x411fff97    # 9.9999f

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/LevelsFilter;->mInputMiddle:F

    return-void
.end method

.method public setInputMin(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x437d0000    # 253.0f

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/LevelsFilter;->mInputMin:F

    return-void
.end method

.method public setOutputMax(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/LevelsFilter;->mOutputMax:F

    return-void
.end method

.method public setOutputMin(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-static {v0, p1, v1}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lmiui/imagefilters/LevelsFilter;->mOutputMin:F

    return-void
.end method
