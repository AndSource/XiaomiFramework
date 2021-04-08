.class public Landroid/os/statistics/PerfSupervisionSettings;
.super Ljava/lang/Object;
.source "PerfSupervisionSettings.java"


# static fields
.field private static final DEFAULT_AUTO_ANALYSIS_ON_STATE:Z

.field private static final DEFAULT_DIVISION_RATIO:I

.field private static final DEFAULT_GLOBAL_PERF_EVENT_QUEUE_LENGTH:I

.field private static final DEFAULT_LEVEL:I

.field private static final DEFAULT_SOFT_THRESHOLD_MS:I

.field public static final MAX_EVENT_THRESHOLD_MS:I = 0x10000

.field public static final MIN_HARD_THRESHOLD_MS:I = 0x1f4

.field public static final MIN_PEER_WAIT_TIME_RATIO_POWER:I = 0x5

.field public static final MIN_SOFT_THRESHOLD_MS:I = 0xa

.field public static final PERF_SUPERVISION_OFF:I = 0x0

.field public static final PERF_SUPERVISION_ON_HEAVY:I = 0x2

.field public static final PERF_SUPERVISION_ON_NORMAL:I = 0x1

.field public static final PERF_SUPERVISION_ON_TEST:I = 0x9

.field private static final TAG:Ljava/lang/String;

.field public static final sGlobalPerfEventQueueLength:I

.field public static final sIsAutoAnalysisOn:Z

.field private static sIsMiuiDaemon:Z

.field private static sIsSystemServer:Z

.field public static final sMinOverlappedDurationMillis:I

.field public static final sMinPerfEventDurationMillis:I

.field public static final sPerfSupervisionDivisionRatio:I

.field public static final sPerfSupervisionHardThreshold:I

.field private static final sPerfSupervisionLevel:I

.field public static final sPerfSupervisionSoftThreshold:I

.field private static sReadySupervision:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-class v0, Landroid/os/statistics/PerfSupervisionSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/statistics/PerfSupervisionSettings;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/statistics/PerfSupervisionSettings;->sReadySupervision:Z

    sput-boolean v0, Landroid/os/statistics/PerfSupervisionSettings;->sIsSystemServer:Z

    sput-boolean v0, Landroid/os/statistics/PerfSupervisionSettings;->sIsMiuiDaemon:Z

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/dev/misysinfofreader"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    sget-boolean v2, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move v2, v3

    goto :goto_2

    :cond_1
    :goto_1
    move v2, v0

    :goto_2
    sput v2, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_LEVEL:I

    invoke-static {}, Lmiui/os/Environment;->getCpuCount()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    div-long/2addr v4, v6

    const/16 v8, 0x7d0

    const/4 v9, 0x4

    const/4 v10, 0x2

    if-gt v2, v10, :cond_2

    cmp-long v6, v4, v6

    if-gtz v6, :cond_2

    const/16 v6, 0x190

    sput v6, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_SOFT_THRESHOLD_MS:I

    sput v9, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_DIVISION_RATIO:I

    sput v8, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_GLOBAL_PERF_EVENT_QUEUE_LENGTH:I

    sput-boolean v0, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_AUTO_ANALYSIS_ON_STATE:Z

    goto :goto_4

    :cond_2
    if-gt v2, v9, :cond_3

    const/16 v6, 0xc8

    sput v6, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_SOFT_THRESHOLD_MS:I

    sput v10, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_DIVISION_RATIO:I

    goto :goto_3

    :cond_3
    const/16 v6, 0x64

    sput v6, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_SOFT_THRESHOLD_MS:I

    sput v3, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_DIVISION_RATIO:I

    :goto_3
    const-wide/16 v6, 0x1388

    mul-long/2addr v6, v4

    const-wide/16 v11, 0x708

    div-long/2addr v6, v11

    long-to-int v6, v6

    const/16 v7, 0x2710

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    sput v6, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_GLOBAL_PERF_EVENT_QUEUE_LENGTH:I

    sget-boolean v6, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    xor-int/2addr v6, v3

    sput-boolean v6, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_AUTO_ANALYSIS_ON_STATE:Z

    :goto_4
    const-string v6, ""

    const-string/jumbo v7, "persist.sys.perf_mistats_opt"

    invoke-static {v7, v6}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/16 v11, 0x3e8

    const/16 v12, 0xa

    if-eqz v8, :cond_4

    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_LEVEL:I

    sput v3, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionLevel:I

    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_SOFT_THRESHOLD_MS:I

    sput v3, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_DIVISION_RATIO:I

    sput v3, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionDivisionRatio:I

    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    sget v6, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionDivisionRatio:I

    div-int/2addr v3, v6

    sput v3, Landroid/os/statistics/PerfSupervisionSettings;->sMinPerfEventDurationMillis:I

    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->sMinPerfEventDurationMillis:I

    shl-int/lit8 v3, v3, 0x5

    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    sput v3, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionHardThreshold:I

    goto/16 :goto_8

    :cond_4
    const-string v8, " "

    invoke-virtual {v7, v8, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v8, v6

    if-lt v8, v3, :cond_5

    aget-object v8, v6, v0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    aget-object v8, v6, v0

    sget v13, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_LEVEL:I

    invoke-static {v8, v13}, Landroid/os/statistics/PerfSupervisionSettings;->parseIntWithDefault(Ljava/lang/String;I)I

    move-result v8

    sput v8, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionLevel:I

    goto :goto_5

    :cond_5
    sget v8, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_LEVEL:I

    sput v8, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionLevel:I

    :goto_5
    array-length v8, v6

    if-lt v8, v10, :cond_6

    aget-object v8, v6, v3

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    aget-object v8, v6, v3

    sget v13, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_SOFT_THRESHOLD_MS:I

    invoke-static {v8, v13}, Landroid/os/statistics/PerfSupervisionSettings;->parseIntWithDefault(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    sput v8, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    goto :goto_6

    :cond_6
    sget v8, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_SOFT_THRESHOLD_MS:I

    sput v8, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    :goto_6
    array-length v8, v6

    const/4 v13, 0x3

    if-lt v8, v13, :cond_7

    aget-object v8, v6, v10

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    aget-object v8, v6, v10

    sget v10, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_DIVISION_RATIO:I

    invoke-static {v8, v10}, Landroid/os/statistics/PerfSupervisionSettings;->parseIntWithDefault(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sget v8, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    div-int/2addr v8, v12

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    sput v3, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionDivisionRatio:I

    goto :goto_7

    :cond_7
    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_DIVISION_RATIO:I

    sget v8, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    div-int/2addr v8, v12

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    sput v3, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionDivisionRatio:I

    :goto_7
    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    sget v8, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionDivisionRatio:I

    div-int/2addr v3, v8

    sput v3, Landroid/os/statistics/PerfSupervisionSettings;->sMinPerfEventDurationMillis:I

    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->sMinPerfEventDurationMillis:I

    shl-int/lit8 v3, v3, 0x5

    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/16 v8, 0x1f4

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    array-length v10, v6

    if-lt v10, v9, :cond_8

    aget-object v10, v6, v13

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    aget-object v10, v6, v13

    invoke-static {v10, v3}, Landroid/os/statistics/PerfSupervisionSettings;->parseIntWithDefault(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    sput v8, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionHardThreshold:I

    goto :goto_8

    :cond_8
    sput v3, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionHardThreshold:I

    :goto_8
    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->sMinPerfEventDurationMillis:I

    mul-int/2addr v3, v9

    div-int/lit8 v3, v3, 0x5

    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    sput v3, Landroid/os/statistics/PerfSupervisionSettings;->sMinOverlappedDurationMillis:I

    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_GLOBAL_PERF_EVENT_QUEUE_LENGTH:I

    sput v3, Landroid/os/statistics/PerfSupervisionSettings;->sGlobalPerfEventQueueLength:I

    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_LEVEL:I

    if-nez v3, :cond_9

    goto :goto_9

    :cond_9
    sget-boolean v0, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_AUTO_ANALYSIS_ON_STATE:Z

    :goto_9
    sput-boolean v0, Landroid/os/statistics/PerfSupervisionSettings;->sIsAutoAnalysisOn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSupervisionLevel()I
    .locals 1

    sget-boolean v0, Landroid/os/statistics/PerfSupervisionSettings;->sReadySupervision:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionLevel:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static init()V
    .locals 4

    sget-object v0, Landroid/os/statistics/PerfSupervisionSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionLevel:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionDivisionRatio:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionHardThreshold:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->sGlobalPerfEventQueueLength:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Landroid/os/statistics/PerfSupervisionSettings;->sIsAutoAnalysisOn:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static isAboveHardThreshold(J)Z
    .locals 2

    sget v0, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionHardThreshold:I

    int-to-long v0, v0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isInHeavyMode()Z
    .locals 2

    sget-boolean v0, Landroid/os/statistics/PerfSupervisionSettings;->sReadySupervision:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isInTestMode()Z
    .locals 2

    sget-boolean v0, Landroid/os/statistics/PerfSupervisionSettings;->sReadySupervision:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionLevel:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPerfEventReportable()Z
    .locals 1

    sget-boolean v0, Landroid/os/statistics/PerfSupervisionSettings;->sIsMiuiDaemon:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isSupervisionOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSupervisionOn()Z
    .locals 2

    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->getSupervisionLevel()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isSystemServer()Z
    .locals 1

    sget-boolean v0, Landroid/os/statistics/PerfSupervisionSettings;->sIsSystemServer:Z

    return v0
.end method

.method public static notifySupervisionReady(ZZ)V
    .locals 1

    sput-boolean p0, Landroid/os/statistics/PerfSupervisionSettings;->sIsSystemServer:Z

    sput-boolean p1, Landroid/os/statistics/PerfSupervisionSettings;->sIsMiuiDaemon:Z

    const/4 v0, 0x1

    sput-boolean v0, Landroid/os/statistics/PerfSupervisionSettings;->sReadySupervision:Z

    return-void
.end method

.method static parseIntWithDefault(Ljava/lang/String;I)I
    .locals 2

    move v0, p1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0
.end method
