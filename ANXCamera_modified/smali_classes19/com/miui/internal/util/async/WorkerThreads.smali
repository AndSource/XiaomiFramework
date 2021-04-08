.class public Lcom/miui/internal/util/async/WorkerThreads;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/util/async/WorkerThreads$a;
    }
.end annotation


# static fields
.field public static final TAG_COMMON_WORK:Ljava/lang/String; = "common_work"

.field private static final zB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/internal/util/async/WorkerThreads$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmiui/util/ArrayMap;

    invoke-direct {v0}, Lmiui/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/miui/internal/util/async/WorkerThreads;->zB:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized aquireWorker(Ljava/lang/String;)Landroid/os/Looper;
    .locals 3

    const-class v0, Lcom/miui/internal/util/async/WorkerThreads;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/internal/util/async/WorkerThreads;->zB:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/util/async/WorkerThreads$a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/internal/util/async/WorkerThreads$a;

    invoke-direct {v1, p0}, Lcom/miui/internal/util/async/WorkerThreads$a;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/miui/internal/util/async/WorkerThreads;->zB:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget p0, v1, Lcom/miui/internal/util/async/WorkerThreads$a;->refCount:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v1, Lcom/miui/internal/util/async/WorkerThreads$a;->refCount:I

    :goto_0
    iget-object p0, v1, Lcom/miui/internal/util/async/WorkerThreads$a;->yB:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized releaseWorker(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/miui/internal/util/async/WorkerThreads;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/internal/util/async/WorkerThreads;->zB:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/util/async/WorkerThreads$a;

    if-eqz v1, :cond_0

    iget v2, v1, Lcom/miui/internal/util/async/WorkerThreads$a;->refCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/miui/internal/util/async/WorkerThreads$a;->refCount:I

    iget v2, v1, Lcom/miui/internal/util/async/WorkerThreads$a;->refCount:I

    if-nez v2, :cond_0

    sget-object v2, Lcom/miui/internal/util/async/WorkerThreads;->zB:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v1, Lcom/miui/internal/util/async/WorkerThreads$a;->yB:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
