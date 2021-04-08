.class public Lmiui/imagefilters/EdgesFilter;
.super Lmiui/imagefilters/IImageFilter$AbstractImageFilter;
.source "EdgesFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public processData(Lmiui/imagefilters/ImageData;)V
    .locals 16

    move-object/from16 v0, p1

    iget v1, v0, Lmiui/imagefilters/ImageData;->width:I

    iget v2, v0, Lmiui/imagefilters/ImageData;->height:I

    iget-object v3, v0, Lmiui/imagefilters/ImageData;->pixels:[I

    const/4 v4, 0x3

    new-array v4, v4, [F

    filled-new-array {v1, v2}, [I

    move-result-object v5

    const-class v6, I

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v1, :cond_0

    mul-int v8, v6, v1

    add-int/2addr v8, v7

    aget v8, v3, v8

    aget-object v9, v5, v7

    invoke-static {v8}, Lmiui/imagefilters/ImageFilterUtils;->convertColorToGrayscale(I)I

    move-result v10

    aput v10, v9, v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x1

    :goto_2
    add-int/lit8 v7, v2, -0x1

    if-ge v6, v7, :cond_3

    const/4 v7, 0x1

    :goto_3
    add-int/lit8 v8, v1, -0x1

    if-ge v7, v8, :cond_2

    mul-int v8, v6, v1

    add-int/2addr v8, v7

    add-int/lit8 v9, v7, -0x1

    aget-object v9, v5, v9

    add-int/lit8 v10, v6, -0x1

    aget v9, v9, v10

    neg-int v9, v9

    add-int/lit8 v10, v7, -0x1

    aget-object v10, v5, v10

    add-int/lit8 v11, v6, -0x1

    const/4 v12, 0x2

    add-int/2addr v11, v12

    aget v10, v10, v11

    add-int/2addr v9, v10

    add-int/lit8 v10, v7, -0x1

    add-int/lit8 v10, v10, 0x1

    aget-object v10, v5, v10

    add-int/lit8 v11, v6, -0x1

    aget v10, v10, v11

    mul-int/2addr v10, v12

    sub-int/2addr v9, v10

    add-int/lit8 v10, v7, -0x1

    add-int/lit8 v10, v10, 0x1

    aget-object v10, v5, v10

    add-int/lit8 v11, v6, -0x1

    add-int/2addr v11, v12

    aget v10, v10, v11

    mul-int/2addr v10, v12

    add-int/2addr v9, v10

    add-int/lit8 v10, v7, -0x1

    add-int/2addr v10, v12

    aget-object v10, v5, v10

    add-int/lit8 v11, v6, -0x1

    aget v10, v10, v11

    sub-int/2addr v9, v10

    add-int/lit8 v10, v7, -0x1

    add-int/2addr v10, v12

    aget-object v10, v5, v10

    add-int/lit8 v11, v6, -0x1

    add-int/2addr v11, v12

    aget v10, v10, v11

    add-int/2addr v9, v10

    add-int/lit8 v10, v7, -0x1

    aget-object v10, v5, v10

    add-int/lit8 v11, v6, -0x1

    aget v10, v10, v11

    add-int/lit8 v11, v7, -0x1

    aget-object v11, v5, v11

    add-int/lit8 v13, v6, -0x1

    add-int/lit8 v13, v13, 0x1

    aget v11, v11, v13

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    add-int/lit8 v11, v7, -0x1

    aget-object v11, v5, v11

    add-int/lit8 v13, v6, -0x1

    add-int/2addr v13, v12

    aget v11, v11, v13

    add-int/2addr v10, v11

    add-int/lit8 v11, v7, -0x1

    add-int/2addr v11, v12

    aget-object v11, v5, v11

    add-int/lit8 v13, v6, -0x1

    aget v11, v11, v13

    sub-int/2addr v10, v11

    add-int/lit8 v11, v7, -0x1

    add-int/2addr v11, v12

    aget-object v11, v5, v11

    add-int/lit8 v13, v6, -0x1

    add-int/lit8 v13, v13, 0x1

    aget v11, v11, v13

    mul-int/2addr v11, v12

    sub-int/2addr v10, v11

    add-int/lit8 v11, v7, -0x1

    add-int/2addr v11, v12

    aget-object v11, v5, v11

    add-int/lit8 v13, v6, -0x1

    add-int/2addr v13, v12

    aget v11, v11, v13

    sub-int/2addr v10, v11

    const/4 v11, 0x0

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v13

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v14

    add-int/2addr v13, v14

    const/16 v14, 0xff

    invoke-static {v11, v13, v14}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v11

    sub-int/2addr v14, v11

    aget v11, v3, v8

    invoke-static {v11, v4}, Lmiui/imagefilters/ImageFilterUtils;->RgbToHsl(I[F)V

    int-to-float v11, v14

    const/high16 v13, 0x437f0000    # 255.0f

    div-float/2addr v11, v13

    aput v11, v4, v12

    invoke-static {v4}, Lmiui/imagefilters/ImageFilterUtils;->HslToRgb([F)I

    move-result v11

    const v12, 0xffffff

    and-int/2addr v12, v11

    aget v13, v3, v8

    const/high16 v15, -0x1000000

    and-int/2addr v13, v15

    or-int/2addr v12, v13

    aput v12, v3, v8

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_3
    return-void
.end method
