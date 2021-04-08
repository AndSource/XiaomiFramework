.class public final Landroid/os/statistics/FilteringPerfEvent;
.super Landroid/os/statistics/FilteringPerfEventListNode;
.source "FilteringPerfEvent.java"


# instance fields
.field public beginUptimeMillis:J

.field public detailsPtr:J

.field public durationMillis:I

.field public endUptimeMillis:J

.field enoughPeerWaitDuration:I

.field public event:Landroid/os/statistics/PerfEvent;

.field public eventFlags:I

.field public eventSeq:J

.field public eventType:I

.field public inclusionId:J

.field volatile matchedPeerWaitDuration:I

.field sortingUptimeMillis:J

.field public synchronizationId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/statistics/FilteringPerfEventListNode;-><init>()V

    iput-object p0, p0, Landroid/os/statistics/FilteringPerfEvent;->value:Landroid/os/statistics/FilteringPerfEvent;

    return-void
.end method

.method private static native nativeDipose(JI)V
.end method

.method private static native nativeResolve(Landroid/os/statistics/PerfEvent;JILandroid/os/Parcel;J)V
.end method

.method private static native nativeWriteToParcel(Landroid/os/Parcel;JIIJJJJJJ)V
.end method


# virtual methods
.method public dispose()V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/statistics/FilteringPerfEvent;->event:Landroid/os/statistics/PerfEvent;

    iget-wide v0, p0, Landroid/os/statistics/FilteringPerfEvent;->detailsPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    invoke-static {v0, v1, v4}, Landroid/os/statistics/FilteringPerfEvent;->nativeDipose(JI)V

    iput-wide v2, p0, Landroid/os/statistics/FilteringPerfEvent;->detailsPtr:J

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/statistics/FilteringPerfEvent;->dispose()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public resolve(Landroid/os/Parcel;J)V
    .locals 11

    iget-wide v0, p0, Landroid/os/statistics/FilteringPerfEvent;->detailsPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/os/statistics/FilteringPerfEvent;->eventType:I

    invoke-static {v0}, Landroid/os/statistics/PerfEventFactory;->createPerfEvent(I)Landroid/os/statistics/PerfEvent;

    move-result-object v0

    iget v7, p0, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    iput v7, v0, Landroid/os/statistics/PerfEvent;->eventFlags:I

    iget-wide v4, p0, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    iput-wide v4, v0, Landroid/os/statistics/PerfEvent;->beginUptimeMillis:J

    iget-wide v4, p0, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    iput-wide v4, v0, Landroid/os/statistics/PerfEvent;->endUptimeMillis:J

    iget-wide v4, p0, Landroid/os/statistics/FilteringPerfEvent;->inclusionId:J

    iput-wide v4, v0, Landroid/os/statistics/PerfEvent;->inclusionId:J

    iget-wide v4, p0, Landroid/os/statistics/FilteringPerfEvent;->synchronizationId:J

    iput-wide v4, v0, Landroid/os/statistics/PerfEvent;->synchronizationId:J

    iget-wide v4, p0, Landroid/os/statistics/FilteringPerfEvent;->eventSeq:J

    iput-wide v4, v0, Landroid/os/statistics/PerfEvent;->eventSeq:J

    iget-wide v5, p0, Landroid/os/statistics/FilteringPerfEvent;->detailsPtr:J

    move-object v4, v0

    move-object v8, p1

    move-wide v9, p2

    invoke-static/range {v4 .. v10}, Landroid/os/statistics/FilteringPerfEvent;->nativeResolve(Landroid/os/statistics/PerfEvent;JILandroid/os/Parcel;J)V

    iget-wide v4, p0, Landroid/os/statistics/FilteringPerfEvent;->detailsPtr:J

    iget v1, p0, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    invoke-static {v4, v5, v1}, Landroid/os/statistics/FilteringPerfEvent;->nativeDipose(JI)V

    iput-wide v2, p0, Landroid/os/statistics/FilteringPerfEvent;->detailsPtr:J

    iput-object v0, p0, Landroid/os/statistics/FilteringPerfEvent;->event:Landroid/os/statistics/PerfEvent;

    :cond_0
    return-void
.end method

.method public resolveTo(Landroid/os/statistics/PerfEvent;Landroid/os/Parcel;J)V
    .locals 9

    iget-wide v1, p0, Landroid/os/statistics/FilteringPerfEvent;->detailsPtr:J

    const-wide/16 v7, 0x0

    cmp-long v0, v1, v7

    if-eqz v0, :cond_0

    iget v3, p0, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    iput v3, p1, Landroid/os/statistics/PerfEvent;->eventFlags:I

    iget-wide v4, p0, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    iput-wide v4, p1, Landroid/os/statistics/PerfEvent;->beginUptimeMillis:J

    iget-wide v4, p0, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    iput-wide v4, p1, Landroid/os/statistics/PerfEvent;->endUptimeMillis:J

    iget-wide v4, p0, Landroid/os/statistics/FilteringPerfEvent;->inclusionId:J

    iput-wide v4, p1, Landroid/os/statistics/PerfEvent;->inclusionId:J

    iget-wide v4, p0, Landroid/os/statistics/FilteringPerfEvent;->synchronizationId:J

    iput-wide v4, p1, Landroid/os/statistics/PerfEvent;->synchronizationId:J

    iget-wide v4, p0, Landroid/os/statistics/FilteringPerfEvent;->eventSeq:J

    iput-wide v4, p1, Landroid/os/statistics/PerfEvent;->eventSeq:J

    move-object v0, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Landroid/os/statistics/FilteringPerfEvent;->nativeResolve(Landroid/os/statistics/PerfEvent;JILandroid/os/Parcel;J)V

    iget-wide v0, p0, Landroid/os/statistics/FilteringPerfEvent;->detailsPtr:J

    iget v2, p0, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    invoke-static {v0, v1, v2}, Landroid/os/statistics/FilteringPerfEvent;->nativeDipose(JI)V

    iput-wide v7, p0, Landroid/os/statistics/FilteringPerfEvent;->detailsPtr:J

    :cond_0
    return-void
.end method

.method public set(Landroid/os/statistics/PerfEvent;)V
    .locals 4

    iget v0, p1, Landroid/os/statistics/PerfEvent;->eventType:I

    iput v0, p0, Landroid/os/statistics/FilteringPerfEvent;->eventType:I

    iget v0, p1, Landroid/os/statistics/PerfEvent;->eventFlags:I

    iput v0, p0, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    iget-wide v0, p1, Landroid/os/statistics/PerfEvent;->beginUptimeMillis:J

    iput-wide v0, p0, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    iget-wide v0, p1, Landroid/os/statistics/PerfEvent;->endUptimeMillis:J

    iput-wide v0, p0, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    iget-wide v0, p1, Landroid/os/statistics/PerfEvent;->inclusionId:J

    iput-wide v0, p0, Landroid/os/statistics/FilteringPerfEvent;->inclusionId:J

    iget-wide v0, p1, Landroid/os/statistics/PerfEvent;->synchronizationId:J

    iput-wide v0, p0, Landroid/os/statistics/FilteringPerfEvent;->synchronizationId:J

    iget-wide v0, p1, Landroid/os/statistics/PerfEvent;->eventSeq:J

    iput-wide v0, p0, Landroid/os/statistics/FilteringPerfEvent;->eventSeq:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/statistics/FilteringPerfEvent;->detailsPtr:J

    iput-object p1, p0, Landroid/os/statistics/FilteringPerfEvent;->event:Landroid/os/statistics/PerfEvent;

    iget-wide v0, p0, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    iget-wide v2, p0, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    iget v4, v0, Landroid/os/statistics/FilteringPerfEvent;->eventType:I

    iget v5, v0, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    iget-wide v6, v0, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    iget-wide v8, v0, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    iget-wide v10, v0, Landroid/os/statistics/FilteringPerfEvent;->inclusionId:J

    iget-wide v12, v0, Landroid/os/statistics/FilteringPerfEvent;->synchronizationId:J

    iget-wide v14, v0, Landroid/os/statistics/FilteringPerfEvent;->eventSeq:J

    move-object/from16 v18, v1

    move-wide/from16 v19, v2

    iget-wide v1, v0, Landroid/os/statistics/FilteringPerfEvent;->detailsPtr:J

    move-wide/from16 v16, v1

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-static/range {v1 .. v17}, Landroid/os/statistics/FilteringPerfEvent;->nativeWriteToParcel(Landroid/os/Parcel;JIIJJJJJJ)V

    return-void
.end method
