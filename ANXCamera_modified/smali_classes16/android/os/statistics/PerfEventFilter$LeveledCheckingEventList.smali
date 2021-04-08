.class final Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;
.super Ljava/lang/Object;
.source "PerfEventFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/PerfEventFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LeveledCheckingEventList"
.end annotation


# instance fields
.field public final longLevelCount:I

.field public final longLevelDeltaMillis:I

.field public final longLevelDeltaMillisPower:I

.field public final longLevelFloorMillis:I

.field public final longPerfEventsByLevel:[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

.field public perfEventCount:I

.field public final shortLevelCount:I

.field public final shortLevelDeltaMillis:I

.field public final shortLevelDeltaMillisPower:I

.field public final shortPerfEventsByLevel:[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;


# direct methods
.method public constructor <init>(ZIIIJ)V
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static/range {p2 .. p2}, Landroid/os/statistics/PerfEventFilter;->access$000(I)I

    move-result v1

    iput v1, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelDeltaMillisPower:I

    iget v1, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelDeltaMillisPower:I

    const/4 v2, 0x1

    shl-int v1, v2, v1

    iput v1, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelDeltaMillis:I

    iget v1, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelDeltaMillis:I

    const/16 v3, 0x400

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelFloorMillis:I

    iget v1, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelFloorMillis:I

    iget v3, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelDeltaMillis:I

    div-int/2addr v1, v3

    iput v1, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelCount:I

    invoke-static/range {p3 .. p3}, Landroid/os/statistics/PerfEventFilter;->access$000(I)I

    move-result v1

    iput v1, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelDeltaMillisPower:I

    iget v1, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelDeltaMillisPower:I

    shl-int v1, v2, v1

    iput v1, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelDeltaMillis:I

    iget v1, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelDeltaMillis:I

    const/high16 v3, 0x10000

    div-int v1, v3, v1

    iput v1, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelCount:I

    iget v1, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelCount:I

    new-array v1, v1, [Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    iput-object v1, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortPerfEventsByLevel:[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    const/4 v1, 0x0

    :goto_0
    iget v4, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelCount:I

    if-ge v1, v4, :cond_3

    if-nez v1, :cond_0

    sget v4, Landroid/os/statistics/PerfSupervisionSettings;->sMinPerfEventDurationMillis:I

    iget v5, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelDeltaMillis:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_1

    :cond_0
    iget v4, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelDeltaMillis:I

    mul-int/2addr v4, v1

    :goto_1
    move v10, v4

    add-int/lit8 v4, v1, 0x1

    iget v5, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelDeltaMillis:I

    mul-int/2addr v4, v5

    add-int v5, p4, v4

    if-eqz p1, :cond_1

    shl-int/lit8 v6, v4, 0x2

    goto :goto_2

    :cond_1
    shl-int/lit8 v6, v4, 0x5

    :goto_2
    add-int/2addr v5, v6

    if-le v5, v3, :cond_2

    const/high16 v5, 0x10000

    move v12, v5

    goto :goto_3

    :cond_2
    move v12, v5

    :goto_3
    iget-object v13, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortPerfEventsByLevel:[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    new-instance v14, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    move-object v5, v14

    move v6, v4

    move v7, v12

    move-wide/from16 v8, p5

    move v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;-><init>(IIJII)V

    aput-object v14, v13, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget v1, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelCount:I

    new-array v1, v1, [Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    iput-object v1, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longPerfEventsByLevel:[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    const/4 v1, 0x0

    :goto_4
    iget v4, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelCount:I

    if-ge v1, v4, :cond_7

    iget v4, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelDeltaMillis:I

    mul-int v5, v1, v4

    iget v6, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelFloorMillis:I

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    if-le v4, v3, :cond_4

    const/high16 v4, 0x10000

    :cond_4
    add-int v6, p4, v4

    if-eqz p1, :cond_5

    shl-int/lit8 v7, v4, 0x2

    goto :goto_5

    :cond_5
    shl-int/lit8 v7, v4, 0x5

    :goto_5
    add-int/2addr v6, v7

    if-le v6, v3, :cond_6

    const/high16 v6, 0x10000

    :cond_6
    invoke-static {v4}, Landroid/os/statistics/PerfEventFilter;->access$000(I)I

    move-result v7

    shl-int v14, v2, v7

    iget-object v15, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longPerfEventsByLevel:[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    new-instance v16, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    move-object/from16 v7, v16

    move v8, v14

    move v9, v6

    move-wide/from16 v10, p5

    move v12, v5

    move v13, v4

    invoke-direct/range {v7 .. v13}, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;-><init>(IIJII)V

    aput-object v16, v15, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    return-void
.end method


# virtual methods
.method public final add(Landroid/os/statistics/FilteringPerfEvent;)V
    .locals 2

    iget v0, p1, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    iget v1, p0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelFloorMillis:I

    if-ge v0, v1, :cond_0

    iget v0, p1, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    iget v1, p0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelDeltaMillisPower:I

    shr-int/2addr v0, v1

    iget v1, p0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->perfEventCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->perfEventCount:I

    iget-object v1, p0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortPerfEventsByLevel:[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->add(Landroid/os/statistics/FilteringPerfEvent;)V

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    iget v1, p0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelFloorMillis:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelDeltaMillisPower:I

    shr-int/2addr v0, v1

    iget v1, p0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelCount:I

    if-ge v0, v1, :cond_1

    iget v1, p0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->perfEventCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->perfEventCount:I

    iget-object v1, p0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longPerfEventsByLevel:[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->add(Landroid/os/statistics/FilteringPerfEvent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final remove(Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/FilteringPerfEvent;)V
    .locals 1

    invoke-virtual {p1, p2, p3}, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->remove(Landroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/FilteringPerfEvent;)V

    iget v0, p0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->perfEventCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->perfEventCount:I

    return-void
.end method
