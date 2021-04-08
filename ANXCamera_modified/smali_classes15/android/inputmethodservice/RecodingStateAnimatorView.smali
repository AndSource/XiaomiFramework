.class public Landroid/inputmethodservice/RecodingStateAnimatorView;
.super Landroid/view/View;
.source "RecodingStateAnimatorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;,
        Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;,
        Landroid/inputmethodservice/RecodingStateAnimatorView$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecodingStateAnimatorView"


# instance fields
.field private mAnimators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

.field private mHeight:I

.field private mLastInvalidTime:J

.field private mLoadingColor:[I

.field private mPaddingState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

.field private mResume:Z

.field private mState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    iput-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    sget-object v0, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->RECORDING_NO_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    iput-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mPaddingState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLoadingColor:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLastInvalidTime:J

    invoke-direct {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->checkSize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    iput-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    sget-object v0, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->RECORDING_NO_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    iput-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mPaddingState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLoadingColor:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLastInvalidTime:J

    invoke-direct {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->checkSize()V

    return-void
.end method

.method static synthetic access$000(Landroid/inputmethodservice/RecodingStateAnimatorView;)I
    .locals 1

    iget v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    return v0
.end method

.method static synthetic access$100(Landroid/inputmethodservice/RecodingStateAnimatorView;)I
    .locals 1

    iget v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mHeight:I

    return v0
.end method

.method static synthetic access$200(Landroid/inputmethodservice/RecodingStateAnimatorView;)[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    return-object v0
.end method

.method static synthetic access$300(Landroid/inputmethodservice/RecodingStateAnimatorView;)V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->updateValueOrUi()V

    return-void
.end method

.method static synthetic access$400(Landroid/inputmethodservice/RecodingStateAnimatorView;Landroid/inputmethodservice/RecodingStateAnimatorView$State;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/inputmethodservice/RecodingStateAnimatorView;->changeState(Landroid/inputmethodservice/RecodingStateAnimatorView$State;)V

    return-void
.end method

.method static synthetic access$500(Landroid/inputmethodservice/RecodingStateAnimatorView;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Landroid/inputmethodservice/RecodingStateAnimatorView;)V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->processStateChange()V

    return-void
.end method

.method static synthetic access$700(Landroid/inputmethodservice/RecodingStateAnimatorView;I)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/inputmethodservice/RecodingStateAnimatorView;->getNextLoadingColor(I)I

    move-result v0

    return v0
.end method

.method private cancelAnimators()V
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private changeState(Landroid/inputmethodservice/RecodingStateAnimatorView$State;)V
    .locals 8

    invoke-direct {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->cancelAnimators()V

    iput-object p1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mPaddingState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    sget-object v0, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->RECORDING_HAS_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v0, :cond_1

    new-array v0, v2, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v6, v5, v4

    aget-object v5, v5, v4

    iget v5, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->cty:F

    iput v5, v6, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->nowY:F

    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v6, v5, v4

    aget-object v5, v5, v4

    iget v5, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->ctx:F

    iput v5, v6, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->nowX:F

    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v6, v5, v4

    iput-boolean v3, v6, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->flag1:Z

    aget-object v6, v5, v4

    aget-object v5, v5, v4

    iget-object v5, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->gradientUtil:Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;

    invoke-virtual {v5}, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->getV()F

    move-result v5

    const/high16 v7, 0x3f000000    # 0.5f

    cmpg-float v5, v5, v7

    if-gez v5, :cond_0

    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->gradientUtil:Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;

    invoke-virtual {v5}, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->getStartColor()I

    move-result v5

    goto :goto_0

    :cond_0
    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->gradientUtil:Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;

    invoke-virtual {v5}, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->getEndColor()I

    move-result v5

    :goto_0
    iput v5, v6, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->paint:Landroid/graphics/Paint;

    iget-object v6, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v6, v6, v4

    iget v6, v6, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v5, v5, v4

    iget v5, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->rad:F

    iget-object v6, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v7, v6, v3

    aget-object v6, v6, v4

    iget v6, v6, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    iput v6, v7, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    iget-object v6, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v6, v6, v3

    iget-object v6, v6, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->paint:Landroid/graphics/Paint;

    iget-object v7, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v7, v7, v3

    iget v7, v7, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v6, v6, v3

    iget-object v6, v6, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->paint:Landroid/graphics/Paint;

    const/16 v7, 0x7d

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v6, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v7, v6, v3

    aget-object v6, v6, v3

    iget v6, v6, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->ctx:F

    iput v6, v7, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->nowX:F

    iget-object v6, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v7, v6, v3

    aget-object v6, v6, v3

    iget v6, v6, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->cty:F

    iput v6, v7, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->nowY:F

    iget-object v6, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v7, v6, v3

    iput-boolean v3, v7, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->flag1:Z

    aget-object v3, v6, v4

    iget v3, v3, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->rad:F

    const-wide/16 v6, 0x15e

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Landroid/inputmethodservice/RecodingStateAnimatorView$5;

    invoke-direct {v4, p0, v5}, Landroid/inputmethodservice/RecodingStateAnimatorView$5;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;F)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Landroid/inputmethodservice/RecodingStateAnimatorView$6;

    invoke-direct {v4, p0}, Landroid/inputmethodservice/RecodingStateAnimatorView$6;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    new-array v1, v2, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v6, 0x1f4

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Landroid/inputmethodservice/RecodingStateAnimatorView$7;

    invoke-direct {v2, p0, v3}, Landroid/inputmethodservice/RecodingStateAnimatorView$7;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Landroid/inputmethodservice/RecodingStateAnimatorView$8;

    invoke-direct {v2, p0, v1}, Landroid/inputmethodservice/RecodingStateAnimatorView$8;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_1

    :cond_1
    sget-object v0, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->RECORDING_NO_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v5, v0, v4

    iput v4, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->layer:I

    aget-object v5, v0, v4

    iget-object v6, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLoadingColor:[I

    aget v6, v6, v4

    iput v6, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    aget-object v0, v0, v4

    iget-object v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->paint:Landroid/graphics/Paint;

    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v5, v5, v4

    iget v5, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v5, v0, v4

    aget-object v0, v0, v4

    iget v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->ctx:F

    iput v0, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->nowX:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v5, v0, v4

    aget-object v0, v0, v4

    iget v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoiceMinRad:F

    iput v0, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->rad:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v4

    iget-object v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->gradientUtil:Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;

    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLoadingColor:[I

    aget v5, v5, v4

    invoke-virtual {v0, v5}, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->setStartColor(I)V

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v4

    iget-object v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->gradientUtil:Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;

    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLoadingColor:[I

    aget v4, v5, v4

    invoke-virtual {v0, v4}, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;->setEndColor(I)V

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v4, v0, v3

    iput v3, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->layer:I

    aget-object v4, v0, v3

    iput v1, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    aget-object v0, v0, v3

    iget-object v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->paint:Landroid/graphics/Paint;

    iget-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v4, v4, v3

    iget v4, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v4, v0, v3

    aget-object v0, v0, v3

    iget v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->ctx:F

    iput v0, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->nowX:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v4, v0, v3

    aget-object v0, v0, v3

    iget v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoiceMaxRad:F

    iput v0, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->rad:F

    new-array v0, v2, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x258

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/inputmethodservice/RecodingStateAnimatorView$9;

    invoke-direct {v3, p0}, Landroid/inputmethodservice/RecodingStateAnimatorView$9;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Landroid/inputmethodservice/RecodingStateAnimatorView$10;

    invoke-direct {v3, p0}, Landroid/inputmethodservice/RecodingStateAnimatorView$10;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_2
    :goto_1
    nop

    :goto_2
    invoke-virtual {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->invalidate()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private checkSize()V
    .locals 2

    invoke-virtual {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Landroid/inputmethodservice/RecodingStateAnimatorView$1;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/RecodingStateAnimatorView$1;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private getNextLoadingColor(I)I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLoadingColor:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    move v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    aget v1, v2, v0

    return v1
.end method

.method private processStateChange()V
    .locals 9

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mPaddingState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mResume:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    sget-object v1, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->RECORDING_NO_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mPaddingState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    sget-object v1, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->RECORDING_HAS_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    if-ne v0, v1, :cond_0

    iput-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mPaddingState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    invoke-direct {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->cancelAnimators()V

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->rad:F

    iget-object v3, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v1, v3, v1

    iget v1, v1, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoice2HasVoiceRad:F

    iget-object v3, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->rad:F

    iget-object v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v4, v5, v4

    iget v4, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoice2HasVoiceRad:F

    const/4 v5, 0x2

    new-array v6, v5, [F

    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    const-wide/16 v7, 0x12c

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v7, Landroid/inputmethodservice/RecodingStateAnimatorView$2;

    invoke-direct {v7, p0, v0, v1}, Landroid/inputmethodservice/RecodingStateAnimatorView$2;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;FF)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v7, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    new-instance v7, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v7, 0x15e

    invoke-virtual {v5, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v7, Landroid/inputmethodservice/RecodingStateAnimatorView$3;

    invoke-direct {v7, p0, v3, v4}, Landroid/inputmethodservice/RecodingStateAnimatorView$3;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;FF)V

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v7, Landroid/inputmethodservice/RecodingStateAnimatorView$4;

    invoke-direct {v7, p0}, Landroid/inputmethodservice/RecodingStateAnimatorView$4;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;)V

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v7, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->cancelAnimators()V

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mPaddingState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    invoke-direct {p0, v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->changeState(Landroid/inputmethodservice/RecodingStateAnimatorView$State;)V

    :goto_0
    iput-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mPaddingState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateValueOrUi()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLastInvalidTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->invalidate()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLastInvalidTime:J

    :cond_0
    return-void
.end method


# virtual methods
.method public getPaddingState()Landroid/inputmethodservice/RecodingStateAnimatorView$State;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mPaddingState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    return-object v0
.end method

.method public getState()Landroid/inputmethodservice/RecodingStateAnimatorView$State;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    return-object v0
.end method

.method public init()V
    .locals 14

    invoke-direct {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->cancelAnimators()V

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLoadingColor:[I

    const/4 v1, 0x0

    const v2, -0xcf320f

    aput v2, v0, v1

    const/4 v2, 0x1

    const v3, -0x136d1

    aput v3, v0, v2

    const/4 v3, 0x2

    const v4, -0x99789

    aput v4, v0, v3

    const/4 v4, 0x3

    const v5, -0xc06c04

    aput v5, v0, v4

    invoke-virtual {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    invoke-virtual {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mHeight:I

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    new-instance v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;Landroid/inputmethodservice/RecodingStateAnimatorView$1;)V

    aput-object v5, v0, v1

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v5, v0, v1

    iget v7, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    div-int/lit8 v8, v7, 0x2

    int-to-float v8, v8

    iput v8, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->ctx:F

    aget-object v5, v0, v1

    iget v8, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mHeight:I

    div-int/2addr v8, v3

    int-to-float v8, v8

    iput v8, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->cty:F

    aget-object v5, v0, v1

    div-int/lit8 v7, v7, 0x8

    int-to-float v7, v7

    iput v7, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->rad:F

    aget-object v0, v0, v1

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v5, v0, v1

    iget-object v7, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLoadingColor:[I

    aget v4, v7, v4

    iput v4, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->paint:Landroid/graphics/Paint;

    iget-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v4, v4, v1

    iget v4, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v4, v0, v1

    aget-object v0, v0, v1

    iget v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->ctx:F

    iput v0, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->nowX:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v4, v0, v1

    aget-object v0, v0, v1

    iget v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->cty:F

    iput v0, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->nowY:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v4, v0, v1

    iget v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    int-to-float v7, v5

    const/high16 v8, 0x41380000    # 11.5f

    div-float/2addr v7, v8

    iput v7, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->loadingMinRad:F

    aget-object v4, v0, v1

    int-to-float v7, v5

    const/high16 v9, 0x41180000    # 9.5f

    div-float/2addr v7, v9

    iput v7, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->loadingMaxRad:F

    aget-object v4, v0, v1

    div-int/lit8 v7, v5, 0x5

    int-to-float v7, v7

    iput v7, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoiceMaxRad:F

    aget-object v4, v0, v1

    div-int/lit8 v7, v5, 0x7

    int-to-float v7, v7

    iput v7, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoiceMinRad:F

    aget-object v4, v0, v1

    div-int/lit8 v7, v5, 0x9

    int-to-float v7, v7

    iput v7, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoice2HasVoiceRad:F

    aget-object v4, v0, v1

    iput v1, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->layer:I

    aget-object v4, v0, v1

    int-to-double v10, v5

    const-wide/high16 v12, 0x401e000000000000L    # 7.5

    div-double/2addr v10, v12

    double-to-float v7, v10

    iput v7, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->hasVoiceMaxRad:F

    aget-object v4, v0, v1

    div-int/lit8 v5, v5, 0x9

    int-to-float v5, v5

    iput v5, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->hasVoiceMinRad:F

    aget-object v0, v0, v1

    new-instance v4, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;

    invoke-direct {v4, p0, v1, v1}, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;II)V

    iput-object v4, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->gradientUtil:Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    new-instance v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    invoke-direct {v4, p0, v6}, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;Landroid/inputmethodservice/RecodingStateAnimatorView$1;)V

    aput-object v4, v0, v2

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v4, v0, v2

    iget v5, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    div-int/lit8 v6, v5, 0x2

    int-to-float v6, v6

    iput v6, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->ctx:F

    aget-object v4, v0, v2

    iget v6, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mHeight:I

    div-int/2addr v6, v3

    int-to-float v3, v6

    iput v3, v4, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->cty:F

    aget-object v3, v0, v2

    int-to-float v4, v5

    div-float/2addr v4, v8

    iput v4, v3, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->loadingMinRad:F

    aget-object v3, v0, v2

    int-to-float v4, v5

    div-float/2addr v4, v9

    iput v4, v3, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->loadingMaxRad:F

    aget-object v3, v0, v2

    div-int/lit8 v4, v5, 0xb

    int-to-float v4, v4

    iput v4, v3, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoiceMaxRad:F

    aget-object v3, v0, v2

    div-int/lit8 v4, v5, 0x10

    int-to-float v4, v4

    iput v4, v3, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoiceMinRad:F

    aget-object v3, v0, v2

    div-int/lit8 v4, v5, 0x8

    int-to-float v4, v4

    iput v4, v3, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->rad:F

    aget-object v3, v0, v2

    int-to-float v4, v5

    const/high16 v6, 0x40600000    # 3.5f

    div-float/2addr v4, v6

    iput v4, v3, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->hasVoiceMaxRad:F

    aget-object v3, v0, v2

    div-int/lit8 v5, v5, 0x5

    int-to-float v4, v5

    iput v4, v3, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->hasVoiceMinRad:F

    aget-object v0, v0, v2

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v0, v0, v2

    iget-object v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v3, v0, v2

    iget-object v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mLoadingColor:[I

    aget v4, v4, v1

    iput v4, v3, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    aget-object v0, v0, v2

    iget-object v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->paint:Landroid/graphics/Paint;

    iget-object v3, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v3, v3, v2

    iget v3, v3, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->color:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v3, v0, v2

    aget-object v0, v0, v2

    iget v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->ctx:F

    iput v0, v3, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->nowX:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v3, v0, v2

    aget-object v0, v0, v2

    iget v0, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->cty:F

    iput v0, v3, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->nowY:F

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    aget-object v3, v0, v2

    iget v4, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mWidth:I

    div-int/lit8 v4, v4, 0x1e

    int-to-float v4, v4

    iput v4, v3, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->noVoice2HasVoiceRad:F

    aget-object v3, v0, v2

    iput v2, v3, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->layer:I

    aget-object v0, v0, v2

    new-instance v3, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;

    invoke-direct {v3, p0, v1, v1}, Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;-><init>(Landroid/inputmethodservice/RecodingStateAnimatorView;II)V

    iput-object v3, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->gradientUtil:Landroid/inputmethodservice/RecodingStateAnimatorView$LinearGradientUtil;

    iput-boolean v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mResume:Z

    sget-object v0, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->RECORDING_NO_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->setPreState(Landroid/inputmethodservice/RecodingStateAnimatorView$State;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    iget v6, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->layer:I

    if-ne v1, v6, :cond_0

    iget v6, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->nowX:F

    iget v7, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->nowY:F

    iget v8, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->rad:F

    iget-object v9, v5, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->resume()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->pause()V

    :goto_0
    return-void
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->pause()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resume()V
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->resume()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setPreState(Landroid/inputmethodservice/RecodingStateAnimatorView$State;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mPaddingState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mAnimators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->processStateChange()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mPaddingState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    iput-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mState:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    invoke-direct {p0}, Landroid/inputmethodservice/RecodingStateAnimatorView;->cancelAnimators()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setVolume(F)V
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/RecodingStateAnimatorView;->mBallParams:[Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput p1, v0, Landroid/inputmethodservice/RecodingStateAnimatorView$BallParams;->scale:F

    :cond_0
    return-void
.end method
