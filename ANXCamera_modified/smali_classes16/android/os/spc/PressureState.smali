.class public Landroid/os/spc/PressureState;
.super Ljava/lang/Object;
.source "PressureState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/spc/PressureState$PressureListener;,
        Landroid/os/spc/PressureState$State;
    }
.end annotation


# static fields
.field public static final NS_PER_MS:J = 0xf4240L


# instance fields
.field private mCurState:Landroid/os/spc/PressureState$State;

.field private mEventQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/os/spc/PSIEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Landroid/os/spc/PressureState$PressureListener;

.field private final mName:Ljava/lang/String;

.field private mPressureStallDurationMillis:J

.field private final mPressureThreshold:J

.field private final mQueueLock:Ljava/lang/Object;

.field private final mWindowNs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/spc/PressureState;->mListener:Landroid/os/spc/PressureState$PressureListener;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/spc/PressureState;->mQueueLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/os/spc/PressureState;->mEventQueue:Ljava/util/LinkedList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/spc/PressureState;->mPressureStallDurationMillis:J

    sget-object v0, Landroid/os/spc/PressureState$State;->NON_PRESSURE:Landroid/os/spc/PressureState$State;

    iput-object v0, p0, Landroid/os/spc/PressureState;->mCurState:Landroid/os/spc/PressureState$State;

    iput-object p1, p0, Landroid/os/spc/PressureState;->mName:Ljava/lang/String;

    iput-wide p2, p0, Landroid/os/spc/PressureState;->mWindowNs:J

    iput-wide p4, p0, Landroid/os/spc/PressureState;->mPressureThreshold:J

    return-void
.end method

.method private pruneLatencyEvents(J)V
    .locals 8

    iget-object v0, p0, Landroid/os/spc/PressureState;->mEventQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/os/spc/PressureState;->mEventQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/spc/PSIEvent;

    iget-wide v2, p0, Landroid/os/spc/PressureState;->mWindowNs:J

    sub-long v2, p1, v2

    iget-wide v4, v1, Landroid/os/spc/PSIEvent;->timeNs:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-wide v2, p0, Landroid/os/spc/PressureState;->mPressureStallDurationMillis:J

    iget-wide v4, v1, Landroid/os/spc/PSIEvent;->growthNs:J

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    iput-wide v2, p0, Landroid/os/spc/PressureState;->mPressureStallDurationMillis:J

    :cond_1
    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateCurrentState()V
    .locals 6

    sget-boolean v0, Landroid/os/spc/PSIMonitorSetting;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-wide v2, Landroid/os/spc/PressureStateSettings;->MEM_PRESSURE_WINDOW_NS:J

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/os/spc/PressureState;->mName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Landroid/os/spc/PressureState;->mPressureStallDurationMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%s last %s ms mPressureStallDurationMillis:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemPressureControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/os/spc/PressureState;->mCurState:Landroid/os/spc/PressureState$State;

    iget-wide v1, p0, Landroid/os/spc/PressureState;->mPressureStallDurationMillis:J

    iget-wide v3, p0, Landroid/os/spc/PressureState;->mPressureThreshold:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    sget-object v1, Landroid/os/spc/PressureState$State;->NON_PRESSURE:Landroid/os/spc/PressureState$State;

    iput-object v1, p0, Landroid/os/spc/PressureState;->mCurState:Landroid/os/spc/PressureState$State;

    goto :goto_0

    :cond_1
    sget-object v1, Landroid/os/spc/PressureState$State;->HIGH_PRESSURE:Landroid/os/spc/PressureState$State;

    iput-object v1, p0, Landroid/os/spc/PressureState;->mCurState:Landroid/os/spc/PressureState$State;

    :goto_0
    iget-object v1, p0, Landroid/os/spc/PressureState;->mCurState:Landroid/os/spc/PressureState$State;

    if-eq v1, v0, :cond_2

    iget-object v2, p0, Landroid/os/spc/PressureState;->mListener:Landroid/os/spc/PressureState$PressureListener;

    if-eqz v2, :cond_2

    invoke-interface {v2, v1, v0}, Landroid/os/spc/PressureState$PressureListener;->onStateChanged(Landroid/os/spc/PressureState$State;Landroid/os/spc/PressureState$State;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public addPSIEvent(Landroid/os/spc/PSIEvent;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/os/spc/PressureState;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/os/spc/PressureState;->mEventQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-wide v1, p0, Landroid/os/spc/PressureState;->mPressureStallDurationMillis:J

    iget-wide v3, p1, Landroid/os/spc/PSIEvent;->growthNs:J

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/os/spc/PressureState;->mPressureStallDurationMillis:J

    iget-wide v1, p1, Landroid/os/spc/PSIEvent;->timeNs:J

    invoke-direct {p0, v1, v2}, Landroid/os/spc/PressureState;->pruneLatencyEvents(J)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/os/spc/PressureState;->updateCurrentState()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public clearPSIEvents()V
    .locals 3

    iget-object v0, p0, Landroid/os/spc/PressureState;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x0

    :try_start_0
    iput-wide v1, p0, Landroid/os/spc/PressureState;->mPressureStallDurationMillis:J

    iget-object v1, p0, Landroid/os/spc/PressureState;->mEventQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/os/spc/PressureState;->updateCurrentState()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/spc/PressureState;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public setListener(Landroid/os/spc/PressureState$PressureListener;)V
    .locals 0

    iput-object p1, p0, Landroid/os/spc/PressureState;->mListener:Landroid/os/spc/PressureState$PressureListener;

    return-void
.end method
