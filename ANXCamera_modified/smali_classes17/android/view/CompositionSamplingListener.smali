.class public abstract Landroid/view/CompositionSamplingListener;
.super Ljava/lang/Object;
.source "CompositionSamplingListener.java"


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mNativeListener:J


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/CompositionSamplingListener;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-static {p0}, Landroid/view/CompositionSamplingListener;->nativeCreate(Landroid/view/CompositionSamplingListener;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/CompositionSamplingListener;->mNativeListener:J

    return-void
.end method

.method private static dispatchOnSampleCollected(Landroid/view/CompositionSamplingListener;F)V
    .locals 2

    iget-object v0, p0, Landroid/view/CompositionSamplingListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/view/-$$Lambda$CompositionSamplingListener$hrbPutjnKRv7VkkiY9eg32N6QA8;

    invoke-direct {v1, p0, p1}, Landroid/view/-$$Lambda$CompositionSamplingListener$hrbPutjnKRv7VkkiY9eg32N6QA8;-><init>(Landroid/view/CompositionSamplingListener;F)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$dispatchOnSampleCollected$0(Landroid/view/CompositionSamplingListener;F)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/CompositionSamplingListener;->onSampleCollected(F)V

    return-void
.end method

.method private static native nativeCreate(Landroid/view/CompositionSamplingListener;)J
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeRegister(JLandroid/os/IBinder;IIII)V
.end method

.method private static native nativeUnregister(J)V
.end method

.method public static register(Landroid/view/CompositionSamplingListener;ILandroid/os/IBinder;Landroid/graphics/Rect;)V
    .locals 9

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "default display only for now"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-wide v2, p0, Landroid/view/CompositionSamplingListener;->mNativeListener:J

    iget v5, p3, Landroid/graphics/Rect;->left:I

    iget v6, p3, Landroid/graphics/Rect;->top:I

    iget v7, p3, Landroid/graphics/Rect;->right:I

    iget v8, p3, Landroid/graphics/Rect;->bottom:I

    move-object v4, p2

    invoke-static/range {v2 .. v8}, Landroid/view/CompositionSamplingListener;->nativeRegister(JLandroid/os/IBinder;IIII)V

    return-void
.end method

.method public static unregister(Landroid/view/CompositionSamplingListener;)V
    .locals 2

    iget-wide v0, p0, Landroid/view/CompositionSamplingListener;->mNativeListener:J

    invoke-static {v0, v1}, Landroid/view/CompositionSamplingListener;->nativeUnregister(J)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-wide v0, p0, Landroid/view/CompositionSamplingListener;->mNativeListener:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/view/CompositionSamplingListener;->unregister(Landroid/view/CompositionSamplingListener;)V

    iget-wide v0, p0, Landroid/view/CompositionSamplingListener;->mNativeListener:J

    invoke-static {v0, v1}, Landroid/view/CompositionSamplingListener;->nativeDestroy(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public abstract onSampleCollected(F)V
.end method
