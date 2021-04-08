.class public Lcom/airbnb/lottie/d/e;
.super Lcom/airbnb/lottie/d/a;
.source "LottieValueAnimator.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field private ca:Z

.field private da:J

.field private ea:F

.field private fa:F

.field private ga:F

.field private ha:Lcom/airbnb/lottie/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private repeatCount:I

.field protected running:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private speed:F


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/airbnb/lottie/d/a;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/airbnb/lottie/d/e;->speed:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/d/e;->ca:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/airbnb/lottie/d/e;->da:J

    const/4 v1, 0x0

    iput v1, p0, Lcom/airbnb/lottie/d/e;->ea:F

    iput v0, p0, Lcom/airbnb/lottie/d/e;->repeatCount:I

    const/high16 v1, -0x31000000

    iput v1, p0, Lcom/airbnb/lottie/d/e;->fa:F

    const/high16 v1, 0x4f000000

    iput v1, p0, Lcom/airbnb/lottie/d/e;->ga:F

    iput-boolean v0, p0, Lcom/airbnb/lottie/d/e;->running:Z

    return-void
.end method

.method private bn()F
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/d/e;->ha:Lcom/airbnb/lottie/m;

    if-nez v0, :cond_0

    const p0, 0x7f7fffff    # Float.MAX_VALUE

    return p0

    :cond_0
    const v1, 0x4e6e6b28    # 1.0E9f

    invoke-virtual {v0}, Lcom/airbnb/lottie/m;->getFrameRate()F

    move-result v0

    div-float/2addr v1, v0

    iget p0, p0, Lcom/airbnb/lottie/d/e;->speed:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    div-float/2addr v1, p0

    return v1
.end method

.method private cn()V
    .locals 4

    iget-object v0, p0, Lcom/airbnb/lottie/d/e;->ha:Lcom/airbnb/lottie/m;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/airbnb/lottie/d/e;->ea:F

    iget v1, p0, Lcom/airbnb/lottie/d/e;->fa:F

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/airbnb/lottie/d/e;->ga:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/airbnb/lottie/d/e;->fa:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/airbnb/lottie/d/e;->ga:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget p0, p0, Lcom/airbnb/lottie/d/e;->ea:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "Frame must be [%f,%f]. It is %f"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isReversed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->getSpeed()F

    move-result p0

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public L()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/d/e;->ha:Lcom/airbnb/lottie/m;

    const/high16 v0, -0x31000000

    iput v0, p0, Lcom/airbnb/lottie/d/e;->fa:F

    const/high16 v0, 0x4f000000

    iput v0, p0, Lcom/airbnb/lottie/d/e;->ga:F

    return-void
.end method

.method public M()F
    .locals 2
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/d/e;->ha:Lcom/airbnb/lottie/m;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v1, p0, Lcom/airbnb/lottie/d/e;->ea:F

    invoke-virtual {v0}, Lcom/airbnb/lottie/m;->db()F

    move-result v0

    sub-float/2addr v1, v0

    iget-object v0, p0, Lcom/airbnb/lottie/d/e;->ha:Lcom/airbnb/lottie/m;

    invoke-virtual {v0}, Lcom/airbnb/lottie/m;->Za()F

    move-result v0

    iget-object p0, p0, Lcom/airbnb/lottie/d/e;->ha:Lcom/airbnb/lottie/m;

    invoke-virtual {p0}, Lcom/airbnb/lottie/m;->db()F

    move-result p0

    sub-float/2addr v0, p0

    div-float/2addr v1, v0

    return v1
.end method

.method public N()F
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/d/e;->ha:Lcom/airbnb/lottie/m;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/airbnb/lottie/d/e;->ga:F

    const/high16 v1, 0x4f000000

    cmpl-float v1, p0, v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/airbnb/lottie/m;->Za()F

    move-result p0

    :cond_1
    return p0
.end method

.method public O()F
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/d/e;->ha:Lcom/airbnb/lottie/m;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/airbnb/lottie/d/e;->fa:F

    const/high16 v1, -0x31000000

    cmpl-float v1, p0, v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/airbnb/lottie/m;->db()F

    move-result p0

    :cond_1
    return p0
.end method

.method public P()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->R()V

    return-void
.end method

.method public Q()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/d/e;->running:Z

    invoke-direct {p0}, Lcom/airbnb/lottie/d/e;->isReversed()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/d/a;->n(Z)V

    invoke-direct {p0}, Lcom/airbnb/lottie/d/e;->isReversed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->N()F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->O()F

    move-result v0

    :goto_0
    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/d/e;->e(F)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/airbnb/lottie/d/e;->da:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/d/e;->repeatCount:I

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->postFrameCallback()V

    return-void
.end method

.method protected R()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/d/e;->o(Z)V

    return-void
.end method

.method public S()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/d/e;->running:Z

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->postFrameCallback()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/airbnb/lottie/d/e;->da:J

    invoke-direct {p0}, Lcom/airbnb/lottie/d/e;->isReversed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->getFrame()F

    move-result v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->O()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->N()F

    move-result v0

    iput v0, p0, Lcom/airbnb/lottie/d/e;->ea:F

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/d/e;->isReversed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->getFrame()F

    move-result v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->N()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->O()F

    move-result v0

    iput v0, p0, Lcom/airbnb/lottie/d/e;->ea:F

    :cond_1
    :goto_0
    return-void
.end method

.method public T()V
    .locals 1

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->getSpeed()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/d/e;->setSpeed(F)V

    return-void
.end method

.method public a(FF)V
    .locals 3

    cmpl-float v0, p1, p2

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/airbnb/lottie/d/e;->ha:Lcom/airbnb/lottie/m;

    if-nez v0, :cond_0

    const v0, -0x800001

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/m;->db()F

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/d/e;->ha:Lcom/airbnb/lottie/m;

    if-nez v1, :cond_1

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/airbnb/lottie/m;->Za()F

    move-result v1

    :goto_1
    invoke-static {p1, v0, v1}, Lcom/airbnb/lottie/d/g;->clamp(FFF)F

    move-result v2

    iput v2, p0, Lcom/airbnb/lottie/d/e;->fa:F

    invoke-static {p2, v0, v1}, Lcom/airbnb/lottie/d/g;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/airbnb/lottie/d/e;->ga:F

    iget v0, p0, Lcom/airbnb/lottie/d/e;->ea:F

    invoke-static {v0, p1, p2}, Lcom/airbnb/lottie/d/g;->clamp(FFF)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/d/e;->e(F)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "minFrame (%s) must be <= maxFrame (%s)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c(Lcom/airbnb/lottie/m;)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/d/e;->ha:Lcom/airbnb/lottie/m;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lcom/airbnb/lottie/d/e;->ha:Lcom/airbnb/lottie/m;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/airbnb/lottie/d/e;->fa:F

    invoke-virtual {p1}, Lcom/airbnb/lottie/m;->db()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/airbnb/lottie/d/e;->ga:F

    invoke-virtual {p1}, Lcom/airbnb/lottie/m;->Za()F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/airbnb/lottie/d/e;->a(FF)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/m;->db()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/airbnb/lottie/m;->Za()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/airbnb/lottie/d/e;->a(FF)V

    :goto_1
    iget p1, p0, Lcom/airbnb/lottie/d/e;->ea:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/d/e;->ea:F

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/d/e;->e(F)V

    return-void
.end method

.method public cancel()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/a;->I()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->R()V

    return-void
.end method

.method public doFrame(J)V
    .locals 6

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->postFrameCallback()V

    iget-object v0, p0, Lcom/airbnb/lottie/d/e;->ha:Lcom/airbnb/lottie/m;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v0, "LottieValueAnimator#doFrame"

    invoke-static {v0}, Lcom/airbnb/lottie/e;->beginSection(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/airbnb/lottie/d/e;->da:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    sub-long v3, p1, v1

    :goto_0
    invoke-direct {p0}, Lcom/airbnb/lottie/d/e;->bn()F

    move-result v1

    long-to-float v2, v3

    div-float/2addr v2, v1

    iget v1, p0, Lcom/airbnb/lottie/d/e;->ea:F

    invoke-direct {p0}, Lcom/airbnb/lottie/d/e;->isReversed()Z

    move-result v3

    if-eqz v3, :cond_2

    neg-float v2, v2

    :cond_2
    add-float/2addr v1, v2

    iput v1, p0, Lcom/airbnb/lottie/d/e;->ea:F

    iget v1, p0, Lcom/airbnb/lottie/d/e;->ea:F

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->O()F

    move-result v2

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->N()F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/airbnb/lottie/d/g;->a(FFF)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/airbnb/lottie/d/e;->ea:F

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->O()F

    move-result v3

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->N()F

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/airbnb/lottie/d/g;->clamp(FFF)F

    move-result v2

    iput v2, p0, Lcom/airbnb/lottie/d/e;->ea:F

    iput-wide p1, p0, Lcom/airbnb/lottie/d/e;->da:J

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/a;->K()V

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/airbnb/lottie/d/e;->repeatCount:I

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v2

    if-lt v1, v2, :cond_4

    iget p1, p0, Lcom/airbnb/lottie/d/e;->speed:F

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_3

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->O()F

    move-result p1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->N()F

    move-result p1

    :goto_1
    iput p1, p0, Lcom/airbnb/lottie/d/e;->ea:F

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->R()V

    invoke-direct {p0}, Lcom/airbnb/lottie/d/e;->isReversed()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/d/a;->m(Z)V

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/d/a;->J()V

    iget v1, p0, Lcom/airbnb/lottie/d/e;->repeatCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/airbnb/lottie/d/e;->repeatCount:I

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    iget-boolean v1, p0, Lcom/airbnb/lottie/d/e;->ca:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/airbnb/lottie/d/e;->ca:Z

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->T()V

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lcom/airbnb/lottie/d/e;->isReversed()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->N()F

    move-result v1

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->O()F

    move-result v1

    :goto_2
    iput v1, p0, Lcom/airbnb/lottie/d/e;->ea:F

    :goto_3
    iput-wide p1, p0, Lcom/airbnb/lottie/d/e;->da:J

    :cond_7
    :goto_4
    invoke-direct {p0}, Lcom/airbnb/lottie/d/e;->cn()V

    invoke-static {v0}, Lcom/airbnb/lottie/e;->D(Ljava/lang/String;)F

    :cond_8
    :goto_5
    return-void
.end method

.method public e(F)V
    .locals 2

    iget v0, p0, Lcom/airbnb/lottie/d/e;->ea:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->O()F

    move-result v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->N()F

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/airbnb/lottie/d/g;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lcom/airbnb/lottie/d/e;->ea:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/airbnb/lottie/d/e;->da:J

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/a;->K()V

    return-void
.end method

.method public endAnimation()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->R()V

    invoke-direct {p0}, Lcom/airbnb/lottie/d/e;->isReversed()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/d/a;->m(Z)V

    return-void
.end method

.method public f(F)V
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/d/e;->fa:F

    invoke-virtual {p0, v0, p1}, Lcom/airbnb/lottie/d/e;->a(FF)V

    return-void
.end method

.method public f(I)V
    .locals 1

    int-to-float p1, p1

    iget v0, p0, Lcom/airbnb/lottie/d/e;->ga:F

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/d/e;->a(FF)V

    return-void
.end method

.method public getAnimatedFraction()F
    .locals 2
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/d/e;->ha:Lcom/airbnb/lottie/m;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/d/e;->isReversed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->N()F

    move-result v0

    iget v1, p0, Lcom/airbnb/lottie/d/e;->ea:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->N()F

    move-result v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->O()F

    move-result p0

    :goto_0
    sub-float/2addr v1, p0

    div-float/2addr v0, v1

    return v0

    :cond_1
    iget v0, p0, Lcom/airbnb/lottie/d/e;->ea:F

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->O()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->N()F

    move-result v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->O()F

    move-result p0

    goto :goto_0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->M()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public getDuration()J
    .locals 2

    iget-object p0, p0, Lcom/airbnb/lottie/d/e;->ha:Lcom/airbnb/lottie/m;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/m;->getDuration()F

    move-result p0

    float-to-long v0, p0

    :goto_0
    return-wide v0
.end method

.method public getFrame()F
    .locals 0

    iget p0, p0, Lcom/airbnb/lottie/d/e;->ea:F

    return p0
.end method

.method public getSpeed()F
    .locals 0

    iget p0, p0, Lcom/airbnb/lottie/d/e;->speed:F

    return p0
.end method

.method public isRunning()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/d/e;->running:Z

    return p0
.end method

.method protected o(Z)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/airbnb/lottie/d/e;->running:Z

    :cond_0
    return-void
.end method

.method protected postFrameCallback()V
    .locals 1

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/d/e;->o(Z)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/airbnb/lottie/d/e;->ca:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/airbnb/lottie/d/e;->ca:Z

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->T()V

    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/airbnb/lottie/d/e;->speed:F

    return-void
.end method
