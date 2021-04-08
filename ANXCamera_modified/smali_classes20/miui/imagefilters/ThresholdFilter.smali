.class public Lmiui/imagefilters/ThresholdFilter;
.super Lmiui/imagefilters/IImageFilter$AbstractImageFilter;
.source "ThresholdFilter.java"


# instance fields
.field private mThresholdLevel:I

.field private mUniform:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;-><init>()V

    const/16 v0, 0x80

    iput v0, p0, Lmiui/imagefilters/ThresholdFilter;->mThresholdLevel:I

    return-void
.end method


# virtual methods
.method public processData(Lmiui/imagefilters/ImageData;)V
    .locals 13

    iget v0, p1, Lmiui/imagefilters/ImageData;->width:I

    iget v1, p1, Lmiui/imagefilters/ImageData;->height:I

    iget-object v2, p1, Lmiui/imagefilters/ImageData;->pixels:[I

    const/4 v3, 0x0

    iget-boolean v4, p0, Lmiui/imagefilters/ThresholdFilter;->mUniform:Z

    if-nez v4, :cond_0

    iget v3, p0, Lmiui/imagefilters/ThresholdFilter;->mThresholdLevel:I

    goto :goto_4

    :cond_0
    array-length v4, v2

    const/16 v5, 0x100

    new-array v6, v5, [I

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v1, :cond_3

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v0, :cond_2

    mul-int v9, v7, v0

    add-int/2addr v9, v8

    aget v10, v2, v9

    ushr-int/lit8 v11, v10, 0x18

    and-int/lit16 v11, v11, 0xff

    const/16 v12, 0xa

    if-ge v11, v12, :cond_1

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_1
    invoke-static {v10}, Lmiui/imagefilters/ImageFilterUtils;->convertColorToGrayscale(I)I

    move-result v11

    aget v12, v6, v11

    add-int/lit8 v12, v12, 0x1

    aput v12, v6, v11

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    iget v7, p0, Lmiui/imagefilters/ThresholdFilter;->mThresholdLevel:I

    mul-int/2addr v7, v4

    div-int/lit16 v7, v7, 0xff

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v5, :cond_5

    aget v10, v6, v9

    add-int/2addr v8, v10

    if-lt v8, v7, :cond_4

    move v3, v9

    goto :goto_4

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v1, :cond_8

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v0, :cond_7

    mul-int v6, v4, v0

    add-int/2addr v6, v5

    aget v7, v2, v6

    invoke-static {v7}, Lmiui/imagefilters/ImageFilterUtils;->convertColorToGrayscale(I)I

    move-result v8

    const/high16 v9, -0x1000000

    if-lt v8, v3, :cond_6

    and-int/2addr v9, v7

    const v10, 0xffffff

    or-int/2addr v9, v10

    aput v9, v2, v6

    goto :goto_7

    :cond_6
    and-int/2addr v9, v7

    aput v9, v2, v6

    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    return-void
.end method

.method public setThresholdLevel(I)V
    .locals 0

    iput p1, p0, Lmiui/imagefilters/ThresholdFilter;->mThresholdLevel:I

    return-void
.end method

.method public setUniform(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiui/imagefilters/ThresholdFilter;->mUniform:Z

    return-void
.end method
