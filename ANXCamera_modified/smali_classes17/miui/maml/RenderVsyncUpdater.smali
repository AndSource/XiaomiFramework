.class public abstract Lmiui/maml/RenderVsyncUpdater;
.super Ljava/lang/Object;
.source "RenderVsyncUpdater.java"

# interfaces
.implements Lmiui/maml/RendererController$ISelfUpdateRenderable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;
    }
.end annotation


# instance fields
.field private mAutoCleanup:Z

.field private mCreateTime:J

.field private mDelay:J

.field private mDisplayEventReceiver:Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;

.field private mHandler:Landroid/os/Handler;

.field protected mLastUpdateTime:J

.field protected mNextUpdateInterval:J

.field private mPaused:Z

.field protected mPendingRender:Z

.field private mRoot:Lmiui/maml/ScreenElementRoot;

.field private mRunUpdater:Ljava/lang/Runnable;

.field private mScheduleFrame:Ljava/lang/Runnable;

.field private mStarted:Z

.field private mStopRefresh:Z

.field private mSyncInterval:I

.field private mVsyncLeft:J


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/maml/RenderVsyncUpdater;-><init>(Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;Z)V

    return-void
.end method

.method public constructor <init>(Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lmiui/maml/RenderVsyncUpdater;->mSyncInterval:I

    new-instance v0, Lmiui/maml/RenderVsyncUpdater$1;

    invoke-direct {v0, p0}, Lmiui/maml/RenderVsyncUpdater$1;-><init>(Lmiui/maml/RenderVsyncUpdater;)V

    iput-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mRunUpdater:Ljava/lang/Runnable;

    new-instance v0, Lmiui/maml/RenderVsyncUpdater$2;

    invoke-direct {v0, p0}, Lmiui/maml/RenderVsyncUpdater$2;-><init>(Lmiui/maml/RenderVsyncUpdater;)V

    iput-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mScheduleFrame:Ljava/lang/Runnable;

    iput-object p1, p0, Lmiui/maml/RenderVsyncUpdater;->mRoot:Lmiui/maml/ScreenElementRoot;

    iput-object p2, p0, Lmiui/maml/RenderVsyncUpdater;->mHandler:Landroid/os/Handler;

    iput-boolean p3, p0, Lmiui/maml/RenderVsyncUpdater;->mAutoCleanup:Z

    new-instance v0, Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;-><init>(Lmiui/maml/RenderVsyncUpdater;Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mDisplayEventReceiver:Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;

    return-void
.end method

.method static synthetic access$000(Lmiui/maml/RenderVsyncUpdater;)V
    .locals 0

    invoke-direct {p0}, Lmiui/maml/RenderVsyncUpdater;->doRunUpdater()V

    return-void
.end method

.method static synthetic access$102(Lmiui/maml/RenderVsyncUpdater;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/maml/RenderVsyncUpdater;->mStarted:Z

    return p1
.end method

.method static synthetic access$200(Lmiui/maml/RenderVsyncUpdater;)V
    .locals 0

    invoke-direct {p0}, Lmiui/maml/RenderVsyncUpdater;->scheduleFrame()V

    return-void
.end method

.method static synthetic access$300(Lmiui/maml/RenderVsyncUpdater;)J
    .locals 2

    iget-wide v0, p0, Lmiui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    return-wide v0
.end method

.method static synthetic access$322(Lmiui/maml/RenderVsyncUpdater;J)J
    .locals 2

    iget-wide v0, p0, Lmiui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lmiui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    return-wide v0
.end method

.method static synthetic access$400(Lmiui/maml/RenderVsyncUpdater;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lmiui/maml/RenderVsyncUpdater;)Z
    .locals 1

    iget-boolean v0, p0, Lmiui/maml/RenderVsyncUpdater;->mPaused:Z

    return v0
.end method

.method static synthetic access$600(Lmiui/maml/RenderVsyncUpdater;)Z
    .locals 1

    iget-boolean v0, p0, Lmiui/maml/RenderVsyncUpdater;->mStopRefresh:Z

    return v0
.end method

.method private checkDelay()J
    .locals 7

    iget-wide v0, p0, Lmiui/maml/RenderVsyncUpdater;->mDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-wide v2

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lmiui/maml/RenderVsyncUpdater;->mCreateTime:J

    sub-long/2addr v0, v4

    iget-wide v4, p0, Lmiui/maml/RenderVsyncUpdater;->mDelay:J

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    sub-long v2, v4, v0

    :cond_1
    return-wide v2
.end method

.method private doRunUpdater()V
    .locals 4

    iget-wide v0, p0, Lmiui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mDisplayEventReceiver:Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;

    invoke-virtual {v0}, Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->scheduleVsync()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/RenderVsyncUpdater;->mScheduleFrame:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/RenderVsyncUpdater;->mScheduleFrame:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private scheduleFrame()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lmiui/maml/RenderVsyncUpdater;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2, v0, v1}, Lmiui/maml/ScreenElementRoot;->update(J)J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/maml/RenderVsyncUpdater;->mNextUpdateInterval:J

    iget-wide v2, p0, Lmiui/maml/RenderVsyncUpdater;->mNextUpdateInterval:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/maml/RenderVsyncUpdater;->mStopRefresh:Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lmiui/maml/RenderVsyncUpdater;->mStopRefresh:Z

    :goto_0
    iget-wide v2, p0, Lmiui/maml/RenderVsyncUpdater;->mNextUpdateInterval:J

    iget v4, p0, Lmiui/maml/RenderVsyncUpdater;->mSyncInterval:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    iput-wide v2, p0, Lmiui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    iget-wide v2, p0, Lmiui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lmiui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    :cond_1
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RenderVsyncUpdater;->mPaused:Z

    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfFinish()V

    return-void
.end method

.method public final doRender()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RenderVsyncUpdater;->mPendingRender:Z

    invoke-virtual {p0}, Lmiui/maml/RenderVsyncUpdater;->doRenderImp()V

    return-void
.end method

.method protected abstract doRenderImp()V
.end method

.method public doneRender()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/RenderVsyncUpdater;->mPendingRender:Z

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-boolean v0, p0, Lmiui/maml/RenderVsyncUpdater;->mAutoCleanup:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiui/maml/RenderVsyncUpdater;->cleanUp()V

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public forceUpdate()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    invoke-virtual {p0}, Lmiui/maml/RenderVsyncUpdater;->runUpdater()V

    return-void
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/RenderVsyncUpdater;->mPaused:Z

    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p0}, Lmiui/maml/ScreenElementRoot;->setRenderControllerRenderable(Lmiui/maml/RendererController$IRenderable;)V

    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfInit()V

    return-void
.end method

.method public isStarted()Z
    .locals 1

    iget-boolean v0, p0, Lmiui/maml/RenderVsyncUpdater;->mStarted:Z

    return v0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RenderVsyncUpdater;->mPaused:Z

    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/RenderVsyncUpdater;->mPaused:Z

    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfResume()V

    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getSystemFrameRate()F

    move-result v0

    float-to-int v0, v0

    if-eqz v0, :cond_0

    const/16 v1, 0x3e8

    div-int/2addr v1, v0

    iput v1, p0, Lmiui/maml/RenderVsyncUpdater;->mSyncInterval:I

    :cond_0
    iget v1, p0, Lmiui/maml/RenderVsyncUpdater;->mSyncInterval:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    iput v2, p0, Lmiui/maml/RenderVsyncUpdater;->mSyncInterval:I

    :cond_1
    invoke-virtual {p0}, Lmiui/maml/RenderVsyncUpdater;->runUpdater()V

    return-void
.end method

.method public runUpdater()V
    .locals 4

    invoke-direct {p0}, Lmiui/maml/RenderVsyncUpdater;->checkDelay()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lmiui/maml/RenderVsyncUpdater;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmiui/maml/RenderVsyncUpdater;->mRunUpdater:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lmiui/maml/RenderVsyncUpdater;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmiui/maml/RenderVsyncUpdater;->mRunUpdater:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lmiui/maml/RenderVsyncUpdater;->doRunUpdater()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/maml/RenderVsyncUpdater;->mStarted:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setAutoCleanup(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiui/maml/RenderVsyncUpdater;->mAutoCleanup:Z

    return-void
.end method

.method public setStartDelay(JJ)V
    .locals 4

    iput-wide p1, p0, Lmiui/maml/RenderVsyncUpdater;->mCreateTime:J

    iput-wide p3, p0, Lmiui/maml/RenderVsyncUpdater;->mDelay:J

    iget-wide v0, p0, Lmiui/maml/RenderVsyncUpdater;->mDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RenderVsyncUpdater;->mStarted:Z

    :cond_0
    return-void
.end method

.method public triggerUpdate()V
    .locals 0

    invoke-virtual {p0}, Lmiui/maml/RenderVsyncUpdater;->runUpdater()V

    return-void
.end method
