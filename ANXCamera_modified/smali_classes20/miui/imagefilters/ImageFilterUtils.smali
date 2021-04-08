.class public Lmiui/imagefilters/ImageFilterUtils;
.super Ljava/lang/Object;
.source "ImageFilterUtils.java"


# static fields
.field static final COLOR_TO_GRAYSCALE_FACTOR_B:F = 0.114f

.field static final COLOR_TO_GRAYSCALE_FACTOR_G:F = 0.587f

.field static final COLOR_TO_GRAYSCALE_FACTOR_R:F = 0.299f

.field static final TAG:Ljava/lang/String; = "ImageFilterUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HslToRgb(FFF)I
    .locals 18

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v0, v0, p2

    float-to-int v0, v0

    move v1, v0

    move v3, v0

    goto/16 :goto_4

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v1, p2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-gez v1, :cond_1

    add-float v1, p1, v3

    mul-float v1, v1, p2

    goto :goto_0

    :cond_1
    add-float v1, p2, p1

    mul-float v4, p2, p1

    sub-float/2addr v1, v4

    :goto_0
    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, p2

    sub-float/2addr v4, v1

    const/high16 v5, 0x43b40000    # 360.0f

    div-float v5, p0, v5

    const/4 v6, 0x3

    new-array v7, v6, [F

    const v8, 0x3eaaaaab

    add-float v9, v5, v8

    aput v9, v7, v2

    const/4 v9, 0x1

    aput v5, v7, v9

    sub-float v8, v5, v8

    const/4 v10, 0x2

    aput v8, v7, v10

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_7

    aget v11, v7, v8

    cmpg-float v11, v11, v0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    if-gez v11, :cond_2

    aget v11, v7, v8

    float-to-double v14, v11

    add-double/2addr v14, v12

    double-to-float v11, v14

    aput v11, v7, v8

    goto :goto_2

    :cond_2
    aget v11, v7, v8

    cmpl-float v11, v11, v3

    if-lez v11, :cond_3

    aget v11, v7, v8

    float-to-double v14, v11

    sub-double/2addr v14, v12

    double-to-float v11, v14

    aput v11, v7, v8

    :cond_3
    :goto_2
    aget v11, v7, v8

    const/high16 v14, 0x40c00000    # 6.0f

    mul-float/2addr v11, v14

    cmpg-float v11, v11, v3

    if-gez v11, :cond_4

    sub-float v11, v1, v4

    mul-float/2addr v11, v14

    aget v12, v7, v8

    mul-float/2addr v11, v12

    add-float/2addr v11, v4

    aput v11, v7, v8

    goto :goto_3

    :cond_4
    aget v11, v7, v8

    float-to-double v10, v11

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v10, v10, v16

    cmpg-double v10, v10, v12

    if-gez v10, :cond_5

    aput v1, v7, v8

    goto :goto_3

    :cond_5
    aget v10, v7, v8

    float-to-double v10, v10

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    mul-double/2addr v10, v12

    cmpg-double v10, v10, v16

    if-gez v10, :cond_6

    sub-float v10, v1, v4

    const v11, 0x3f2aaaab

    aget v12, v7, v8

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    mul-float/2addr v10, v14

    add-float/2addr v10, v4

    aput v10, v7, v8

    goto :goto_3

    :cond_6
    aput v4, v7, v8

    :goto_3
    add-int/lit8 v8, v8, 0x1

    const/4 v10, 0x2

    goto :goto_1

    :cond_7
    aget v0, v7, v2

    float-to-double v10, v0

    const-wide v12, 0x406fe00000000000L    # 255.0

    mul-double/2addr v10, v12

    double-to-int v0, v10

    aget v3, v7, v9

    float-to-double v8, v3

    mul-double/2addr v8, v12

    double-to-int v3, v8

    const/4 v6, 0x2

    aget v6, v7, v6

    float-to-double v8, v6

    mul-double/2addr v8, v12

    double-to-int v1, v8

    :goto_4
    const/16 v4, 0xff

    invoke-static {v2, v0, v4}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v0

    invoke-static {v2, v3, v4}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v3

    invoke-static {v2, v1, v4}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v1

    const/high16 v2, -0x1000000

    shl-int/lit8 v4, v0, 0x10

    or-int/2addr v2, v4

    shl-int/lit8 v4, v3, 0x8

    or-int/2addr v2, v4

    or-int/2addr v2, v1

    return v2
.end method

.method public static HslToRgb([F)I
    .locals 3

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget v2, p0, v2

    invoke-static {v0, v1, v2}, Lmiui/imagefilters/ImageFilterUtils;->HslToRgb(FFF)I

    move-result v0

    return v0
.end method

.method public static HsvToRgb(FFF)I
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    cmpl-float v4, p1, v3

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v4, :cond_0

    move v2, p2

    move v1, p2

    move v0, p2

    goto :goto_0

    :cond_0
    const/high16 v4, 0x42700000    # 60.0f

    div-float v4, p0, v4

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    int-to-float v7, v6

    sub-float v7, v4, v7

    sub-float v8, v5, p1

    mul-float/2addr v8, p2

    mul-float v9, p1, v7

    sub-float v9, v5, v9

    mul-float/2addr v9, p2

    sub-float v10, v5, v7

    mul-float/2addr v10, p1

    sub-float v10, v5, v10

    mul-float/2addr v10, p2

    if-eqz v6, :cond_6

    const/4 v11, 0x1

    if-eq v6, v11, :cond_5

    const/4 v11, 0x2

    if-eq v6, v11, :cond_4

    const/4 v11, 0x3

    if-eq v6, v11, :cond_3

    const/4 v11, 0x4

    if-eq v6, v11, :cond_2

    const/4 v11, 0x5

    if-eq v6, v11, :cond_1

    goto :goto_0

    :cond_1
    move v0, p2

    move v1, v8

    move v2, v9

    goto :goto_0

    :cond_2
    move v0, v10

    move v1, v8

    move v2, p2

    goto :goto_0

    :cond_3
    move v0, v8

    move v1, v9

    move v2, p2

    goto :goto_0

    :cond_4
    move v0, v8

    move v1, p2

    move v2, v10

    goto :goto_0

    :cond_5
    move v0, v9

    move v1, p2

    move v2, v8

    goto :goto_0

    :cond_6
    move v0, p2

    move v1, v10

    move v2, v8

    nop

    :goto_0
    invoke-static {v3, v0, v5}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    invoke-static {v3, v1, v5}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v1

    invoke-static {v3, v2, v5}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v4, v0, v3

    float-to-int v4, v4

    mul-float v5, v1, v3

    float-to-int v5, v5

    mul-float/2addr v3, v2

    float-to-int v3, v3

    const/high16 v6, -0x1000000

    shl-int/lit8 v7, v4, 0x10

    or-int/2addr v6, v7

    shl-int/lit8 v7, v5, 0x8

    or-int/2addr v6, v7

    or-int/2addr v6, v3

    return v6
.end method

.method public static RgbToHsl(III[F)V
    .locals 17

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move/from16 v3, p0

    int-to-float v4, v3

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    move/from16 v6, p1

    int-to-float v7, v6

    div-float/2addr v7, v5

    move/from16 v8, p2

    int-to-float v9, v8

    div-float/2addr v9, v5

    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v4, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    cmpl-float v11, v5, v10

    const/high16 v12, 0x43b40000    # 360.0f

    if-nez v11, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    cmpl-float v11, v5, v4

    const/high16 v13, 0x42700000    # 60.0f

    if-nez v11, :cond_1

    cmpl-float v11, v7, v9

    if-ltz v11, :cond_1

    sub-float v11, v7, v9

    mul-float/2addr v11, v13

    sub-float v13, v5, v10

    div-float v0, v11, v13

    goto :goto_0

    :cond_1
    cmpl-float v11, v5, v4

    if-nez v11, :cond_2

    cmpg-float v11, v7, v9

    if-gez v11, :cond_2

    sub-float v11, v7, v9

    mul-float/2addr v11, v13

    sub-float v13, v5, v10

    div-float/2addr v11, v13

    add-float v0, v11, v12

    goto :goto_0

    :cond_2
    cmpl-float v11, v5, v7

    if-nez v11, :cond_3

    sub-float v11, v9, v4

    mul-float/2addr v11, v13

    sub-float v13, v5, v10

    div-float/2addr v11, v13

    const/high16 v13, 0x42f00000    # 120.0f

    add-float v0, v11, v13

    goto :goto_0

    :cond_3
    cmpl-float v11, v5, v9

    if-nez v11, :cond_4

    sub-float v11, v4, v7

    mul-float/2addr v11, v13

    sub-float v13, v5, v10

    div-float/2addr v11, v13

    const/high16 v13, 0x43700000    # 240.0f

    add-float v0, v11, v13

    :cond_4
    :goto_0
    add-float v11, v5, v10

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v11, v13

    const/4 v2, 0x0

    cmpl-float v14, v11, v2

    if-eqz v14, :cond_7

    cmpl-float v14, v5, v10

    if-nez v14, :cond_5

    goto :goto_1

    :cond_5
    cmpg-float v14, v2, v11

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    if-gez v14, :cond_6

    float-to-double v2, v11

    cmpg-double v2, v2, v15

    if-gtz v2, :cond_6

    sub-float v2, v5, v10

    add-float v3, v5, v10

    div-float v1, v2, v3

    goto :goto_2

    :cond_6
    float-to-double v2, v11

    cmpl-double v2, v2, v15

    if-lez v2, :cond_8

    sub-float v2, v5, v10

    add-float v3, v5, v10

    sub-float/2addr v13, v3

    div-float v1, v2, v13

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v1, 0x0

    :cond_8
    :goto_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3, v0, v12}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v12

    aput v12, p3, v2

    const/4 v2, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v3, v1, v12}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v13

    aput v13, p3, v2

    const/4 v2, 0x2

    invoke-static {v3, v11, v12}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v3

    aput v3, p3, v2

    return-void
.end method

.method public static RgbToHsl(I[F)V
    .locals 3

    ushr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, p0, 0xff

    invoke-static {v0, v1, v2, p1}, Lmiui/imagefilters/ImageFilterUtils;->RgbToHsl(III[F)V

    return-void
.end method

.method public static RgbToHsv(III[F)V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, p0

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    int-to-float v5, p1

    div-float/2addr v5, v4

    int-to-float v6, p2

    div-float/2addr v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    cmpl-float v8, v4, v7

    const/high16 v9, 0x43b40000    # 360.0f

    if-nez v8, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    cmpl-float v8, v4, v3

    const/high16 v10, 0x42700000    # 60.0f

    if-nez v8, :cond_1

    cmpl-float v8, v5, v6

    if-ltz v8, :cond_1

    sub-float v8, v5, v6

    mul-float/2addr v8, v10

    sub-float v10, v4, v7

    div-float v0, v8, v10

    goto :goto_0

    :cond_1
    cmpl-float v8, v4, v3

    if-nez v8, :cond_2

    cmpg-float v8, v5, v6

    if-gez v8, :cond_2

    sub-float v8, v5, v6

    mul-float/2addr v8, v10

    sub-float v10, v4, v7

    div-float/2addr v8, v10

    add-float v0, v8, v9

    goto :goto_0

    :cond_2
    cmpl-float v8, v4, v5

    if-nez v8, :cond_3

    sub-float v8, v6, v3

    mul-float/2addr v8, v10

    sub-float v10, v4, v7

    div-float/2addr v8, v10

    const/high16 v10, 0x42f00000    # 120.0f

    add-float v0, v8, v10

    goto :goto_0

    :cond_3
    cmpl-float v8, v4, v6

    if-nez v8, :cond_4

    sub-float v8, v3, v5

    mul-float/2addr v8, v10

    sub-float v10, v4, v7

    div-float/2addr v8, v10

    const/high16 v10, 0x43700000    # 240.0f

    add-float v0, v8, v10

    :cond_4
    :goto_0
    move v2, v4

    const/4 v8, 0x0

    cmpl-float v10, v4, v8

    if-nez v10, :cond_5

    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    sub-float v10, v4, v7

    div-float v1, v10, v4

    :goto_1
    const/4 v10, 0x0

    invoke-static {v8, v0, v9}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v9

    aput v9, p3, v10

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v8, v1, v10}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v11

    aput v11, p3, v9

    const/4 v9, 0x2

    invoke-static {v8, v2, v10}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v8

    aput v8, p3, v9

    return-void
.end method

.method public static RgbToHsv(I[F)V
    .locals 3

    ushr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, p0, 0xff

    invoke-static {v0, v1, v2, p1}, Lmiui/imagefilters/ImageFilterUtils;->RgbToHsv(III[F)V

    return-void
.end method

.method public static checkChannelParam(Ljava/lang/String;[Z)V
    .locals 3

    const-string v0, "r"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_7

    const-string v0, "red"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    :cond_0
    const-string v0, "g"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "green"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    const-string v0, "b"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "blue"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "alpha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_8

    aput-boolean v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    array-length v0, p1

    const/4 v2, 0x4

    if-lt v0, v2, :cond_8

    const/4 v0, 0x3

    aput-boolean v1, p1, v0

    goto :goto_5

    :cond_5
    :goto_2
    const/4 v0, 0x2

    aput-boolean v1, p1, v0

    goto :goto_5

    :cond_6
    :goto_3
    aput-boolean v1, p1, v1

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v0, 0x0

    aput-boolean v1, p1, v0

    :cond_8
    :goto_5
    return-void
.end method

.method public static clamp(FFF)F
    .locals 1

    cmpg-float v0, p1, p0

    if-gtz v0, :cond_0

    return p0

    :cond_0
    cmpl-float v0, p1, p2

    if-ltz v0, :cond_1

    return p2

    :cond_1
    return p1
.end method

.method public static clamp(III)I
    .locals 0

    if-gt p1, p0, :cond_0

    return p0

    :cond_0
    if-lt p1, p2, :cond_1

    return p2

    :cond_1
    return p1
.end method

.method public static convertColorToGrayscale(I)I
    .locals 3

    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    const v1, 0x3e991687    # 0.299f

    mul-float/2addr v0, v1

    const v1, 0xff00

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    const v2, 0x3f1645a2    # 0.587f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    and-int/lit16 v1, p0, 0xff

    int-to-float v1, v1

    const v2, 0x3de978d5    # 0.114f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static interpolate(IIIII)I
    .locals 3

    int-to-float v0, p2

    int-to-float v1, p4

    sub-int v2, p3, p2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-int v2, p1, p0

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static interpolate([F[FF[F)V
    .locals 5

    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    aget v3, p1, v1

    aget v4, p0, v1

    sub-float/2addr v3, v4

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    aput v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, ",property:"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    const/4 v10, 0x1

    if-ge v9, v7, :cond_1

    aget-object v11, v6, v9

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    array-length v12, v12

    if-ne v12, v10, :cond_0

    move-object v0, v11

    move-object v7, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    move-object v7, v0

    :goto_1
    const-string v0, ",obj:"

    const-string v9, "ImageFilterUtils"

    if-nez v7, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unknown property:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_2
    const-class v11, Lmiui/imagefilters/FilterParamType;

    invoke-virtual {v7, v11}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    check-cast v11, Lmiui/imagefilters/FilterParamType;

    if-nez v11, :cond_3

    sget-object v12, Lmiui/imagefilters/FilterParamType$ParamType;->DEFAULT:Lmiui/imagefilters/FilterParamType$ParamType;

    goto :goto_2

    :cond_3
    invoke-interface {v11}, Lmiui/imagefilters/FilterParamType;->value()Lmiui/imagefilters/FilterParamType$ParamType;

    move-result-object v12

    :goto_2
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    aget-object v13, v13, v8

    const/4 v14, 0x0

    :try_start_0
    instance-of v15, v3, Ljava/lang/String;

    if-eqz v15, :cond_18

    move-object v15, v3

    check-cast v15, Ljava/lang/String;

    const-class v10, Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v0, v15

    move-object v14, v0

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v11

    goto/16 :goto_7

    :cond_4
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v10, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    if-eqz v10, :cond_6

    :try_start_1
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v10, Lmiui/imagefilters/FilterParamType$ParamType;->ICON_SIZE:Lmiui/imagefilters/FilterParamType$ParamType;

    if-ne v12, v10, :cond_5

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(I)I

    move-result v10

    move v0, v10

    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v10

    move-object v14, v0

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v11

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v11

    goto/16 :goto_9

    :cond_6
    :try_start_2
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v10, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    if-eqz v10, :cond_8

    :try_start_3
    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sget-object v10, Lmiui/imagefilters/FilterParamType$ParamType;->ICON_SIZE:Lmiui/imagefilters/FilterParamType$ParamType;

    if-ne v12, v10, :cond_7

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v10

    move v0, v10

    :cond_7
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v0, v10

    move-object v14, v0

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v11

    goto/16 :goto_7

    :cond_8
    :try_start_4
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v10, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    if-eqz v10, :cond_a

    :try_start_5
    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    sget-object v0, Lmiui/imagefilters/FilterParamType$ParamType;->ICON_SIZE:Lmiui/imagefilters/FilterParamType$ParamType;

    if-ne v12, v0, :cond_9

    invoke-static/range {v16 .. v17}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(D)D

    move-result-wide v18

    move-wide/from16 v16, v18

    :cond_9
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object v14, v0

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v11

    goto/16 :goto_7

    :cond_a
    :try_start_6
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v10, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    if-eqz v10, :cond_b

    :try_start_7
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-object v14, v0

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v11

    goto/16 :goto_7

    :cond_b
    :try_start_8
    const-class v10, Landroid/graphics/Bitmap;

    invoke-virtual {v10, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    if-eqz v10, :cond_c

    :try_start_9
    invoke-static {v15}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    move-object v14, v0

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v11

    goto/16 :goto_7

    :cond_c
    :try_start_a
    invoke-virtual {v13}, Ljava/lang/Class;->isEnum()Z

    move-result v10
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    if-eqz v10, :cond_d

    :try_start_b
    invoke-static {v13, v15}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    move-object v14, v0

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v11

    goto/16 :goto_7

    :cond_d
    :try_start_c
    invoke-virtual {v13}, Ljava/lang/Class;->isArray()Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-virtual {v13}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    const-string v10, ","

    invoke-virtual {v15, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    if-eqz v8, :cond_10

    :try_start_d
    array-length v8, v10

    new-array v8, v8, [I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    const/16 v16, 0x0

    move/from16 v17, v16

    move-object/from16 v18, v5

    move/from16 v5, v17

    :goto_3
    move-object/from16 v17, v6

    :try_start_e
    array-length v6, v8

    if-ge v5, v6, :cond_f

    aget-object v6, v10, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v8, v5

    sget-object v6, Lmiui/imagefilters/FilterParamType$ParamType;->ICON_SIZE:Lmiui/imagefilters/FilterParamType$ParamType;

    if-ne v12, v6, :cond_e

    aget v6, v8, v5

    invoke-static {v6}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(I)I

    move-result v6

    aput v6, v8, v5
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    :cond_e
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v6, v17

    goto :goto_3

    :cond_f
    move-object v14, v8

    move-object/from16 v19, v11

    goto/16 :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v11

    goto/16 :goto_9

    :cond_10
    move-object/from16 v18, v5

    move-object/from16 v17, v6

    :try_start_f
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    if-eqz v5, :cond_13

    :try_start_10
    array-length v5, v10

    new-array v5, v5, [F

    const/4 v6, 0x0

    move v8, v6

    :goto_4
    array-length v6, v5

    if-ge v8, v6, :cond_12

    aget-object v6, v10, v8

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aput v6, v5, v8

    sget-object v6, Lmiui/imagefilters/FilterParamType$ParamType;->ICON_SIZE:Lmiui/imagefilters/FilterParamType$ParamType;

    if-ne v12, v6, :cond_11

    aget v6, v5, v8

    invoke-static {v6}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v6

    aput v6, v5, v8
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_12
    move-object v14, v5

    move-object/from16 v19, v11

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v19, v11

    goto/16 :goto_9

    :cond_13
    :try_start_11
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    array-length v5, v10

    new-array v5, v5, [D

    const/4 v6, 0x0

    move v8, v6

    :goto_5
    array-length v6, v5

    if-ge v8, v6, :cond_15

    aget-object v6, v10, v8

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3

    move-object/from16 v20, v10

    move-object/from16 v19, v11

    float-to-double v10, v6

    :try_start_12
    aput-wide v10, v5, v8

    sget-object v6, Lmiui/imagefilters/FilterParamType$ParamType;->ICON_SIZE:Lmiui/imagefilters/FilterParamType$ParamType;

    if-ne v12, v6, :cond_14

    aget-wide v10, v5, v8

    invoke-static {v10, v11}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(D)D

    move-result-wide v10

    aput-wide v10, v5, v8

    :cond_14
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v11, v19

    move-object/from16 v10, v20

    goto :goto_5

    :cond_15
    move-object/from16 v20, v10

    move-object/from16 v19, v11

    move-object v14, v5

    goto :goto_6

    :cond_16
    move-object/from16 v20, v10

    move-object/from16 v19, v11

    :goto_6
    goto :goto_7

    :catch_3
    move-exception v0

    move-object/from16 v19, v11

    goto :goto_9

    :cond_17
    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v11

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown param type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return v4

    :cond_18
    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v11

    instance-of v0, v3, Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

    if-eqz v0, :cond_19

    move-object/from16 v14, p2

    goto :goto_8

    :cond_19
    :goto_7
    nop

    :goto_8
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v14, v5, v6

    invoke-virtual {v7, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4

    nop

    const/4 v0, 0x1

    return v0

    :catch_4
    move-exception v0

    goto :goto_9

    :catch_5
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v11

    :goto_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set property fail. obj:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",value:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x0

    return v4
.end method
