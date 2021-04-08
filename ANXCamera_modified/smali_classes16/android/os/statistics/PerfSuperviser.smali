.class public Landroid/os/statistics/PerfSuperviser;
.super Ljava/lang/Object;
.source "PerfSuperviser.java"


# static fields
.field public static final DEBUGGING:Z = false

.field public static MY_PID:I = 0x0

.field public static final TAG:Ljava/lang/String; = "MiuiPerfSuperviser"

.field public static packageName:Ljava/lang/String;

.field public static processName:Ljava/lang/String;

.field private static volatile sInitialized:Z

.field private static volatile sStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Landroid/os/statistics/PerfSuperviser;->MY_PID:I

    const-string v0, ""

    sput-object v0, Landroid/os/statistics/PerfSuperviser;->processName:Ljava/lang/String;

    sput-object v0, Landroid/os/statistics/PerfSuperviser;->packageName:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/statistics/PerfSuperviser;->sInitialized:Z

    sput-boolean v0, Landroid/os/statistics/PerfSuperviser;->sStarted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized init(ZZ)V
    .locals 10

    const-class v0, Landroid/os/statistics/PerfSuperviser;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPpid()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    sget-boolean v1, Landroid/os/statistics/PerfSuperviser;->sInitialized:Z

    if-nez v1, :cond_1

    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->init()V

    sget v5, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    sget v6, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionHardThreshold:I

    const/16 v7, 0xa

    const/high16 v8, 0x10000

    sget v9, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionDivisionRatio:I

    move v3, p0

    move v4, p1

    invoke-static/range {v3 .. v9}, Landroid/os/statistics/PerfSuperviser;->nativeInit(ZZIIIII)V

    sput-boolean v2, Landroid/os/statistics/PerfSuperviser;->sInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static native nativeInit(ZZIIIII)V
.end method

.method private static native nativeStart(ZZI)V
.end method

.method private static native nativeUpdateProcessInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native setThreadPerfSupervisionOn(Z)V
.end method

.method public static declared-synchronized start(Z)V
    .locals 2

    const-class v0, Landroid/os/statistics/PerfSuperviser;

    monitor-enter v0

    :try_start_0
    const-string v1, ""

    invoke-static {p0, v1}, Landroid/os/statistics/PerfSuperviser;->start(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized start(ZLjava/lang/String;)V
    .locals 4

    const-class v0, Landroid/os/statistics/PerfSuperviser;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Landroid/os/statistics/PerfSuperviser;->sInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myPpid()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    :try_start_2
    sget-boolean v1, Landroid/os/statistics/PerfSuperviser;->sStarted:Z

    if-nez v1, :cond_7

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    sput v1, Landroid/os/statistics/PerfSuperviser;->MY_PID:I

    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "system_server"

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    const-string v1, ""

    goto :goto_0

    :cond_3
    move-object v1, p1

    :goto_0
    sput-object v1, Landroid/os/statistics/PerfSuperviser;->processName:Ljava/lang/String;

    if-nez p0, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    goto :goto_2

    :cond_5
    :goto_1
    const-string v1, ""

    :goto_2
    sput-object v1, Landroid/os/statistics/PerfSuperviser;->packageName:Ljava/lang/String;

    sget-object v1, Landroid/os/statistics/PerfSuperviser;->processName:Ljava/lang/String;

    sget-object v3, Landroid/os/statistics/PerfSuperviser;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/os/statistics/PerfSuperviser;->nativeUpdateProcessInfo(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/statistics/OsUtils;->isIsolatedProcess()Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "com.miui.daemon"

    sget-object v3, Landroid/os/statistics/PerfSuperviser;->processName:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {p0, v1}, Landroid/os/statistics/PerfSupervisionSettings;->notifySupervisionReady(ZZ)V

    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->getSupervisionLevel()I

    move-result v3

    invoke-static {p0, v1, v3}, Landroid/os/statistics/PerfSuperviser;->nativeStart(ZZI)V

    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isPerfEventReportable()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Landroid/os/statistics/PerfEventReporter;->start()V

    :cond_6
    sput-boolean v2, Landroid/os/statistics/PerfSuperviser;->sStarted:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static updateProcessInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Landroid/os/statistics/PerfSuperviser;->sStarted:Z

    if-eqz v0, :cond_0

    sput-object p0, Landroid/os/statistics/PerfSuperviser;->processName:Ljava/lang/String;

    sput-object p1, Landroid/os/statistics/PerfSuperviser;->packageName:Ljava/lang/String;

    sget-object v0, Landroid/os/statistics/PerfSuperviser;->processName:Ljava/lang/String;

    sget-object v1, Landroid/os/statistics/PerfSuperviser;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/statistics/PerfSuperviser;->nativeUpdateProcessInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
