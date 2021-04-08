.class public Lmiui/imagefilters/HslWrapFilter;
.super Lmiui/imagefilters/IImageFilter$AbstractImageFilter;
.source "HslWrapFilter.java"


# instance fields
.field private mHsl:Lmiui/imagefilters/HslFilter;

.field private mHsv:Lmiui/imagefilters/HslFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;-><init>()V

    return-void
.end method

.method private ensureHsl()V
    .locals 2

    iget-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsl:Lmiui/imagefilters/HslFilter;

    if-nez v0, :cond_0

    new-instance v0, Lmiui/imagefilters/HslFilter;

    invoke-direct {v0}, Lmiui/imagefilters/HslFilter;-><init>()V

    iput-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsl:Lmiui/imagefilters/HslFilter;

    iget-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsl:Lmiui/imagefilters/HslFilter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lmiui/imagefilters/HslFilter;->useHsv:Z

    :cond_0
    return-void
.end method

.method private ensureHsv()V
    .locals 2

    iget-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsv:Lmiui/imagefilters/HslFilter;

    if-nez v0, :cond_0

    new-instance v0, Lmiui/imagefilters/HslFilter;

    invoke-direct {v0}, Lmiui/imagefilters/HslFilter;-><init>()V

    iput-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsv:Lmiui/imagefilters/HslFilter;

    iget-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsv:Lmiui/imagefilters/HslFilter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmiui/imagefilters/HslFilter;->useHsv:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public processData(Lmiui/imagefilters/ImageData;)V
    .locals 1

    iget-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsl:Lmiui/imagefilters/HslFilter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmiui/imagefilters/HslFilter;->process(Lmiui/imagefilters/ImageData;)V

    :cond_0
    iget-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsv:Lmiui/imagefilters/HslFilter;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lmiui/imagefilters/HslFilter;->process(Lmiui/imagefilters/ImageData;)V

    :cond_1
    return-void
.end method

.method public setHueAdjust(F)V
    .locals 1

    invoke-direct {p0}, Lmiui/imagefilters/HslWrapFilter;->ensureHsl()V

    iget-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsl:Lmiui/imagefilters/HslFilter;

    invoke-virtual {v0, p1}, Lmiui/imagefilters/HslFilter;->setHueAdjust(F)V

    return-void
.end method

.method public setHueModify(F)V
    .locals 1

    invoke-direct {p0}, Lmiui/imagefilters/HslWrapFilter;->ensureHsl()V

    iget-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsl:Lmiui/imagefilters/HslFilter;

    invoke-virtual {v0, p1}, Lmiui/imagefilters/HslFilter;->setHueModify(F)V

    return-void
.end method

.method public setLightnessAdjust(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lmiui/imagefilters/HslWrapFilter;->ensureHsl()V

    iget-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsl:Lmiui/imagefilters/HslFilter;

    invoke-virtual {v0, p1}, Lmiui/imagefilters/HslFilter;->setLightnessAdjust(F)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lmiui/imagefilters/HslWrapFilter;->ensureHsv()V

    iget-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsv:Lmiui/imagefilters/HslFilter;

    invoke-virtual {v0, p1}, Lmiui/imagefilters/HslFilter;->setLightnessAdjust(F)V

    :goto_0
    return-void
.end method

.method public setLightnessModify(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lmiui/imagefilters/HslWrapFilter;->ensureHsl()V

    iget-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsl:Lmiui/imagefilters/HslFilter;

    invoke-virtual {v0, p1}, Lmiui/imagefilters/HslFilter;->setLightnessModify(F)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lmiui/imagefilters/HslWrapFilter;->ensureHsv()V

    iget-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsv:Lmiui/imagefilters/HslFilter;

    invoke-virtual {v0, p1}, Lmiui/imagefilters/HslFilter;->setLightnessModify(F)V

    :goto_0
    return-void
.end method

.method public setSaturationAdjust(F)V
    .locals 1

    invoke-direct {p0}, Lmiui/imagefilters/HslWrapFilter;->ensureHsl()V

    iget-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsl:Lmiui/imagefilters/HslFilter;

    invoke-virtual {v0, p1}, Lmiui/imagefilters/HslFilter;->setSaturationAdjust(F)V

    return-void
.end method

.method public setSaturationModify(F)V
    .locals 1

    invoke-direct {p0}, Lmiui/imagefilters/HslWrapFilter;->ensureHsl()V

    iget-object v0, p0, Lmiui/imagefilters/HslWrapFilter;->mHsl:Lmiui/imagefilters/HslFilter;

    invoke-virtual {v0, p1}, Lmiui/imagefilters/HslFilter;->setSaturationModify(F)V

    return-void
.end method
