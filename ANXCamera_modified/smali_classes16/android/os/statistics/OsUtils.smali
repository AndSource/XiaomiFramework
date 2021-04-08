.class public Landroid/os/statistics/OsUtils;
.super Ljava/lang/Object;
.source "OsUtils.java"


# static fields
.field public static final SCHED_GROUP_UNKNOWN:I = 0x7fffffff

.field private static sDoneFindIsRenderThreadMethod:Z

.field private static sIsRenderThreadMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/statistics/OsUtils;->sDoneFindIsRenderThreadMethod:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeThreadSchedulePolicy(I)I
    .locals 1

    if-gez p0, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    const v0, -0x40000001    # -1.9999999f

    and-int/2addr v0, p0

    :goto_0
    return v0
.end method

.method public static native getCoarseUptimeMillisFast()J
.end method

.method public static native getDeltaToUptimeMillis()J
.end method

.method public static native getRunningTimeMs()J
.end method

.method public static getSchedGroup(I)I
    .locals 2

    :try_start_0
    invoke-static {p0}, Landroid/os/Process;->getProcessGroup(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const v1, 0x7fffffff

    return v1
.end method

.method public static native getThreadSchedStat([J)V
.end method

.method public static getThreadSchedulePolicy(I)I
    .locals 2

    :try_start_0
    invoke-static {p0}, Landroid/os/statistics/OsUtils;->getThreadScheduler(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method private static final native getThreadScheduler(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public static isHighPriority(II)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v1, :cond_4

    if-ne p0, v2, :cond_1

    goto :goto_0

    :cond_1
    if-nez p0, :cond_3

    const/4 v1, -0x2

    if-gt p1, v1, :cond_2

    move v0, v2

    :cond_2
    return v0

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v2
.end method

.method public static isHighSchedGroup(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/16 v1, 0x9

    if-eq p0, v1, :cond_1

    const/16 v1, 0xa

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static native isIsolatedProcess()Z
.end method

.method public static isLowPriority(II)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    if-eq p0, v1, :cond_4

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    if-nez p0, :cond_3

    const/16 v2, 0xa

    if-lt p1, v2, :cond_2

    move v0, v1

    :cond_2
    return v0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v0
.end method

.method public static isRenderThread(I)Z
    .locals 5

    sget-boolean v0, Landroid/os/statistics/OsUtils;->sDoneFindIsRenderThreadMethod:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-class v0, Landroid/view/ThreadedRenderer;

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Integer;

    aput-object v4, v3, v2

    const-string/jumbo v4, "isRenderThread"

    invoke-static {v0, v4, v3}, Lmiui/util/ReflectionUtils;->tryFindMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/os/statistics/OsUtils;->sIsRenderThreadMethod:Ljava/lang/reflect/Method;

    sput-boolean v1, Landroid/os/statistics/OsUtils;->sDoneFindIsRenderThreadMethod:Z

    :cond_0
    sget-object v0, Landroid/os/statistics/OsUtils;->sIsRenderThreadMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    return v2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    return v2

    :cond_1
    return v2
.end method

.method public static native setThreadPriorityUnconditonally(II)V
.end method

.method public static native translateKernelAddress(J)Ljava/lang/String;
.end method
