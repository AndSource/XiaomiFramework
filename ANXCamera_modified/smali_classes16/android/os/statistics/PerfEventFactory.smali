.class public Landroid/os/statistics/PerfEventFactory;
.super Ljava/lang/Object;
.source "PerfEventFactory.java"


# static fields
.field private static final MACRO_EVENT_TYPE_INDEX_OFFSET:I = -0xfff0


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPerfEvent(I)Landroid/os/statistics/PerfEvent;
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x10000

    if-ge p0, v1, :cond_0

    move v1, p0

    goto :goto_0

    :cond_0
    const v1, -0xfff0

    add-int/2addr v1, p0

    :goto_0
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    const/4 v0, 0x0

    goto/16 :goto_1

    :pswitch_2
    new-instance v2, Landroid/os/statistics/E2EScenarioOnce;

    invoke-direct {v2}, Landroid/os/statistics/E2EScenarioOnce;-><init>()V

    move-object v0, v2

    goto/16 :goto_1

    :pswitch_3
    new-instance v2, Landroid/os/statistics/BinderSuperviser$BinderStarvation;

    invoke-direct {v2}, Landroid/os/statistics/BinderSuperviser$BinderStarvation;-><init>()V

    move-object v0, v2

    goto/16 :goto_1

    :pswitch_4
    new-instance v2, Landroid/os/statistics/SingleJankRecord;

    invoke-direct {v2}, Landroid/os/statistics/SingleJankRecord;-><init>()V

    move-object v0, v2

    goto/16 :goto_1

    :pswitch_5
    new-instance v2, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;

    invoke-direct {v2}, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;-><init>()V

    move-object v0, v2

    goto/16 :goto_1

    :pswitch_6
    new-instance v2, Landroid/os/statistics/MemorySuperviser$Slowpath;

    invoke-direct {v2}, Landroid/os/statistics/MemorySuperviser$Slowpath;-><init>()V

    move-object v0, v2

    goto/16 :goto_1

    :pswitch_7
    new-instance v2, Landroid/os/statistics/SchedSuperviser$SchedWake;

    invoke-direct {v2}, Landroid/os/statistics/SchedSuperviser$SchedWake;-><init>()V

    move-object v0, v2

    goto/16 :goto_1

    :pswitch_8
    new-instance v2, Landroid/os/statistics/SchedSuperviser$SchedWait;

    invoke-direct {v2}, Landroid/os/statistics/SchedSuperviser$SchedWait;-><init>()V

    move-object v0, v2

    goto :goto_1

    :pswitch_9
    new-instance v2, Landroid/os/statistics/LooperCheckPoint;

    invoke-direct {v2}, Landroid/os/statistics/LooperCheckPoint;-><init>()V

    move-object v0, v2

    goto :goto_1

    :pswitch_a
    new-instance v2, Landroid/os/statistics/LooperOnce;

    invoke-direct {v2}, Landroid/os/statistics/LooperOnce;-><init>()V

    move-object v0, v2

    goto :goto_1

    :pswitch_b
    new-instance v2, Landroid/os/statistics/SingleJniMethod;

    invoke-direct {v2}, Landroid/os/statistics/SingleJniMethod;-><init>()V

    move-object v0, v2

    goto :goto_1

    :pswitch_c
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_d
    new-instance v2, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;

    invoke-direct {v2}, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;-><init>()V

    move-object v0, v2

    goto :goto_1

    :pswitch_e
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_f
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_10
    new-instance v2, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;

    invoke-direct {v2}, Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;-><init>()V

    move-object v0, v2

    goto :goto_1

    :pswitch_11
    new-instance v2, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;

    invoke-direct {v2}, Landroid/os/statistics/BinderSuperviser$SingleBinderCall;-><init>()V

    move-object v0, v2

    goto :goto_1

    :pswitch_12
    new-instance v2, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;

    invoke-direct {v2}, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;-><init>()V

    move-object v0, v2

    goto :goto_1

    :pswitch_13
    new-instance v2, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwaken;

    invoke-direct {v2}, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwaken;-><init>()V

    move-object v0, v2

    goto :goto_1

    :pswitch_14
    new-instance v2, Landroid/os/statistics/MonitorSuperviser$SingleLockWait;

    invoke-direct {v2}, Landroid/os/statistics/MonitorSuperviser$SingleLockWait;-><init>()V

    move-object v0, v2

    goto :goto_1

    :pswitch_15
    new-instance v2, Landroid/os/statistics/MonitorSuperviser$SingleLockHold;

    invoke-direct {v2}, Landroid/os/statistics/MonitorSuperviser$SingleLockHold;-><init>()V

    move-object v0, v2

    nop

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static createPerfEvent(IIJJJJJ)Landroid/os/statistics/PerfEvent;
    .locals 1

    invoke-static {p0}, Landroid/os/statistics/PerfEventFactory;->createPerfEvent(I)Landroid/os/statistics/PerfEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    iput p1, v0, Landroid/os/statistics/PerfEvent;->eventFlags:I

    iput-wide p2, v0, Landroid/os/statistics/PerfEvent;->beginUptimeMillis:J

    iput-wide p4, v0, Landroid/os/statistics/PerfEvent;->endUptimeMillis:J

    iput-wide p6, v0, Landroid/os/statistics/PerfEvent;->inclusionId:J

    iput-wide p8, v0, Landroid/os/statistics/PerfEvent;->synchronizationId:J

    iput-wide p10, v0, Landroid/os/statistics/PerfEvent;->eventSeq:J

    :cond_0
    return-object v0
.end method

.method public static createPerfEvent(IIJJJJJLandroid/os/statistics/JniParcel;[Ljava/lang/Class;[Ljava/lang/StackTraceElement;Landroid/os/statistics/NativeBackTrace;)Landroid/os/statistics/PerfEvent;
    .locals 17

    invoke-static/range {p0 .. p0}, Landroid/os/statistics/PerfEventFactory;->createPerfEvent(I)Landroid/os/statistics/PerfEvent;

    move-result-object v16

    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    invoke-virtual/range {v0 .. v15}, Landroid/os/statistics/PerfEvent;->fillIn(IJJJJJLandroid/os/statistics/JniParcel;[Ljava/lang/Class;[Ljava/lang/StackTraceElement;Landroid/os/statistics/NativeBackTrace;)V

    :cond_0
    return-object v16
.end method
