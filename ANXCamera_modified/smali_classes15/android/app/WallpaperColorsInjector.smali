.class Landroid/app/WallpaperColorsInjector;
.super Ljava/lang/Object;
.source "WallpaperColorsInjector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getGray(Landroid/graphics/Color;)F
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/Color;->red()F

    move-result v0

    const v1, 0x3e991687    # 0.299f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/Color;->green()F

    move-result v1

    const v2, 0x3f1645a2    # 0.587f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/Color;->blue()F

    move-result v1

    const v2, 0x3de978d5    # 0.114f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method static miuiCalculateDarkHints(Landroid/graphics/Bitmap;)I
    .locals 18

    if-eqz p0, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    const/4 v11, 0x2

    div-int/lit8 v12, v0, 0x2

    new-array v13, v12, [I

    new-array v14, v12, [I

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v7, v0, 0x2

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v7, v0, 0x2

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, v13

    const-wide v2, 0x3fe6666666666666L    # 0.7

    const/4 v4, 0x0

    if-ge v0, v1, :cond_2

    aget v1, v13, v0

    invoke-static {v1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v1

    invoke-static {v1}, Landroid/app/WallpaperColorsInjector;->getGray(Landroid/graphics/Color;)F

    move-result v1

    float-to-double v5, v1

    cmpl-double v1, v5, v2

    const/high16 v2, 0x40400000    # 3.0f

    if-ltz v1, :cond_1

    move v4, v2

    :cond_1
    add-float/2addr v10, v4

    add-float/2addr v9, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    array-length v1, v14

    if-ge v0, v1, :cond_4

    aget v1, v14, v0

    invoke-static {v1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v1

    invoke-static {v1}, Landroid/app/WallpaperColorsInjector;->getGray(Landroid/graphics/Color;)F

    move-result v1

    float-to-double v5, v1

    cmpl-double v1, v5, v2

    const/high16 v5, 0x3f800000    # 1.0f

    if-ltz v1, :cond_3

    move v1, v5

    goto :goto_2

    :cond_3
    move v1, v4

    :goto_2
    add-float/2addr v10, v1

    add-float/2addr v9, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    cmpl-float v0, v9, v4

    if-eqz v0, :cond_5

    div-float v0, v10, v9

    const v1, 0x3f19999a    # 0.6f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    const/4 v8, 0x1

    :cond_5
    const-wide/16 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v7, v0, [I

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v11, v7

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_3
    array-length v2, v11

    if-ge v1, v2, :cond_6

    aget v2, v11, v1

    invoke-static {v2, v0}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    const/4 v2, 0x2

    aget v3, v0, v2

    float-to-double v4, v3

    add-double/2addr v15, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    array-length v1, v11

    int-to-double v1, v1

    div-double v1, v15, v1

    const-wide/high16 v3, 0x3fd0000000000000L    # 0.25

    cmpg-double v3, v1, v3

    if-gez v3, :cond_7

    or-int/lit8 v8, v8, 0x2

    :cond_7
    return v8

    :cond_8
    :goto_4
    const/4 v0, 0x0

    return v0
.end method
