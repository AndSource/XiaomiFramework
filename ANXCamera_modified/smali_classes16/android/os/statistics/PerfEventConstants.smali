.class public Landroid/os/statistics/PerfEventConstants;
.super Ljava/lang/Object;
.source "PerfEventConstants.java"


# static fields
.field private static final EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final EVENT_TYPE_MAPPING:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final FIELD_BEGIN_TIME:Ljava/lang/String; = "beginTime"

.field public static final FIELD_END_REAL_TIME:Ljava/lang/String; = "endRealTime"

.field public static final FIELD_END_TIME:Ljava/lang/String; = "endTime"

.field public static final FIELD_EVENT_FLAGS:Ljava/lang/String; = "eventFlags"

.field public static final FIELD_EVENT_SEQ:Ljava/lang/String; = "seq"

.field public static final FIELD_EVENT_TYPE:Ljava/lang/String; = "eventType"

.field public static final FIELD_EVENT_TYPE_NAME:Ljava/lang/String; = "eventTypeName"

.field public static final FIELD_OCCUR_TIME:Ljava/lang/String; = "occurTime"

.field public static final FIELD_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final FIELD_PID:Ljava/lang/String; = "pid"

.field public static final FIELD_PROCESS_NAME:Ljava/lang/String; = "processName"

.field public static final FIELD_RUNNABLE_TIME:Ljava/lang/String; = "runnableTime"

.field public static final FIELD_RUNNING_TIME:Ljava/lang/String; = "runningTime"

.field public static final FIELD_SCHED_POLICY:Ljava/lang/String; = "policy"

.field public static final FIELD_SCHED_PRIORITY:Ljava/lang/String; = "priority"

.field public static final FIELD_SLEEPING_TIME:Ljava/lang/String; = "sleepingTime"

.field public static final FIELD_THREAD_ID:Ljava/lang/String; = "threadId"

.field public static final FIELD_THREAD_NAME:Ljava/lang/String; = "threadName"

.field public static final FLAG_BLOCKED:I = 0x100

.field public static final FLAG_BLOCKED_BY_CROSS_PROCESS:I = 0x400

.field public static final FLAG_BLOCKED_BY_MULTIBPLE_BLOCKER:I = 0x4000

.field public static final FLAG_BLOCKED_BY_ONE_COINCIDED_BLOCKER:I = 0x1000

.field public static final FLAG_BLOCKED_BY_ONE_INCLUSIVE_BLOCKER:I = 0x800

.field public static final FLAG_BLOCKED_BY_ONE_OVERLAPPED_BLOCKER:I = 0x2000

.field public static final FLAG_BLOCKED_BY_SAME_PROCESS:I = 0x200

.field public static final FLAG_BLOCKER:I = 0x10000

.field public static final FLAG_BLOCKER_TO_CROSS_PROCESS:I = 0x40000

.field public static final FLAG_BLOCKER_TO_SAME_PROCESS:I = 0x20000

.field public static final FLAG_DETAILS_SOURCE_MASK:I = 0xf000000

.field public static final FLAG_HAS_KERNEL_LAZYINFO:I = 0x40

.field public static final FLAG_HAS_PROC_LAZYINFO:I = 0x10

.field public static final FLAG_INITIATOR_POSITION_MASK:I = 0x6

.field public static final FLAG_INITIATOR_POSITION_MASTER:I = 0x4

.field public static final FLAG_INITIATOR_POSITION_SLAVE:I = 0x2

.field public static final FLAG_INITIATOR_POSITION_UNKNOWN:I = 0x0

.field public static final FLAG_KERNEL_LAZYINFO_RESOLVED:I = 0x80

.field public static final FLAG_NO_CHECK:I = 0x10000000

.field public static final FLAG_PROC_LAZYINFO_RESOLVED:I = 0x20

.field public static final FLAG_ROOT_EVENT:I = 0x1

.field public static final FLAG_USER_PERCEPTIBLE:I = 0x100000

.field public static final MACRO_EVENT_TYPE_COUNT:I = 0x7

.field public static final MACRO_EVENT_TYPE_START:I = 0x10000

.field public static final MAX_PERF_EVENT_PARCEL_SIZE:I = 0x1000

.field public static final MICRO_EVENT_TYPE_COUNT:I = 0x10

.field public static final MICRO_EVENT_TYPE_START:I = 0x0

.field public static final TYPE_BINDER_STARVATION:I = 0x10004

.field public static final TYPE_E2ESCENARIO_ONCE:I = 0x10005

.field public static final TYPE_LOOPER_CHECKPOINT:I = 0xc

.field public static final TYPE_LOOPER_ONCE:I = 0xb

.field public static final TYPE_MEMORY_SLOWPATH:I = 0x10006

.field public static final TYPE_MM_SLOWPATH:I = 0xf

.field public static final TYPE_PLACE_HOLDER_1:I = 0x10001

.field public static final TYPE_PLACE_HOLDER_2:I = 0x10003

.field public static final TYPE_SCHED_WAIT:I = 0xd

.field public static final TYPE_SCHED_WAKE:I = 0xe

.field public static final TYPE_SINGLE_BINDER_CALL:I = 0x4

.field public static final TYPE_SINGLE_BINDER_EXECUTION:I = 0x5

.field public static final TYPE_SINGLE_CONDITION_AWAKEN:I = 0x2

.field public static final TYPE_SINGLE_CONDITION_WAIT:I = 0x3

.field public static final TYPE_SINGLE_EVENT_LOG_ITEM:I = 0x10000

.field public static final TYPE_SINGLE_INPUT_EVENT:I = 0x9

.field public static final TYPE_SINGLE_JANK_RECORD:I = 0x10002

.field public static final TYPE_SINGLE_JNI_METHOD:I = 0xa

.field public static final TYPE_SINGLE_LOCK_HOLD:I = 0x0

.field public static final TYPE_SINGLE_LOCK_WAIT:I = 0x1

.field public static final TYPE_SINGLE_LOOPER_MESSAGE:I = 0x8

.field public static final TYPE_SINGLE_SYSTEM_TRACE_EVENT:I = 0x7

.field public static final TYPE_SINGLE_TRACE_POINT:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const-string v1, "LockHold"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const-string v3, "LockWait"

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const-string v5, "ConditionAwaken"

    const/4 v6, 0x2

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const-string v7, "ConditionWait"

    const/4 v8, 0x3

    invoke-virtual {v0, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const-string v9, "BinderCall"

    const/4 v10, 0x4

    invoke-virtual {v0, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const-string v11, "BinderExecution"

    const/4 v12, 0x5

    invoke-virtual {v0, v12, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const-string v13, "TracePoint"

    const/4 v14, 0x6

    invoke-virtual {v0, v14, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const/4 v15, 0x7

    const-string v14, "SystemTraceEvent"

    invoke-virtual {v0, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const/16 v14, 0x8

    const-string v15, "LooperMessage"

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const/16 v14, 0x9

    const-string v15, "InputEvent"

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const/16 v14, 0xa

    const-string v15, "JniMethod"

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const/16 v14, 0xb

    const-string v15, "LooperOnce"

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const/16 v14, 0xc

    const-string v15, "LooperCheckPoint"

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const/16 v14, 0xd

    const-string v15, "SchedWait"

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const/16 v14, 0xe

    const-string v15, "SchedWake"

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const/16 v14, 0xf

    const-string v15, "MMSlowpath"

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const/high16 v14, 0x10000

    const-string v15, "EventLog"

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const v14, 0x10002

    const-string v15, "JankRecord"

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const v14, 0x10004

    const-string v15, "BinderStarvation"

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const v14, 0x10005

    const-string v15, "E2EScenarioOnce"

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const v14, 0x10006

    const-string v15, "MemorySlowpath"

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SystemTraceEvent"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LooperMessage"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "InputEvent"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "JniMethod"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LooperOnce"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LooperCheckPoint"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SchedWait"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SchedWake"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MMSlowpath"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    const/high16 v1, 0x10000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "EventLog"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    const v1, 0x10002

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "JankRecord"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    const v1, 0x10004

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BinderStarvation"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    const v1, 0x10005

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "E2EScenarioOnce"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    const v1, 0x10006

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MemorySlowpath"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTypeCode(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_CODE_MAPPING:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static getTypeName(I)Ljava/lang/String;
    .locals 2

    sget-object v0, Landroid/os/statistics/PerfEventConstants;->EVENT_TYPE_MAPPING:Landroid/util/SparseArray;

    const-string v1, "UnKnown"

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static isBlockedBy(II)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_6

    const/16 v2, 0xd

    if-eq p0, v2, :cond_4

    const/4 v2, 0x3

    if-eq p0, v2, :cond_2

    const/4 v2, 0x4

    if-eq p0, v2, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x5

    if-ne p1, v2, :cond_1

    move v0, v1

    :cond_1
    return v0

    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    move v0, v1

    :cond_3
    return v0

    :cond_4
    const/16 v2, 0xe

    if-ne p1, v2, :cond_5

    move v0, v1

    :cond_5
    return v0

    :cond_6
    if-nez p1, :cond_7

    move v0, v1

    :cond_7
    return v0
.end method
