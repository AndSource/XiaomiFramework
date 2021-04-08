.class Lcom/android/internal/os/ZygoteConnection$HiddenApiUsageLogger;
.super Ljava/lang/Object;
.source "ZygoteConnection.java"

# interfaces
.implements Ldalvik/system/VMRuntime$HiddenApiUsageLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/ZygoteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HiddenApiUsageLogger"
.end annotation


# static fields
.field private static sInstance:Lcom/android/internal/os/ZygoteConnection$HiddenApiUsageLogger;


# instance fields
.field private mHiddenApiAccessLogSampleRate:I

.field private mHiddenApiAccessStatslogSampleRate:I

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/os/ZygoteConnection$HiddenApiUsageLogger;

    invoke-direct {v0}, Lcom/android/internal/os/ZygoteConnection$HiddenApiUsageLogger;-><init>()V

    sput-object v0, Lcom/android/internal/os/ZygoteConnection$HiddenApiUsageLogger;->sInstance:Lcom/android/internal/os/ZygoteConnection$HiddenApiUsageLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ZygoteConnection$HiddenApiUsageLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$HiddenApiUsageLogger;->mHiddenApiAccessLogSampleRate:I

    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$HiddenApiUsageLogger;->mHiddenApiAccessStatslogSampleRate:I

    return-void
.end method

.method public static getInstance()Lcom/android/internal/os/ZygoteConnection$HiddenApiUsageLogger;
    .locals 1

    sget-object v0, Lcom/android/internal/os/ZygoteConnection$HiddenApiUsageLogger;->sInstance:Lcom/android/internal/os/ZygoteConnection$HiddenApiUsageLogger;

    return-object v0
.end method

.method private logUsage(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_3

    if-eq p3, v1, :cond_2

    const/4 v2, 0x2

    if-eq p3, v2, :cond_1

    const/4 v2, 0x3

    if-eq p3, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    nop

    :goto_0
    new-instance v2, Landroid/metrics/LogMaker;

    const/16 v3, 0x56f

    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-virtual {v2, p1}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x572

    invoke-virtual {v2, v3, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x570

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    if-eqz p4, :cond_4

    const/16 v3, 0x571

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_4
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$HiddenApiUsageLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method private newLogUsage(Ljava/lang/String;IZ)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    nop

    :goto_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0xb2

    invoke-static {v2, v1, p1, v0, p3}, Landroid/util/StatsLog;->write(IILjava/lang/String;IZ)I

    return-void
.end method

.method public static setHiddenApiAccessLogSampleRates(II)V
    .locals 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    sget-object v1, Lcom/android/internal/os/ZygoteConnection$HiddenApiUsageLogger;->sInstance:Lcom/android/internal/os/ZygoteConnection$HiddenApiUsageLogger;

    iput p0, v1, Lcom/android/internal/os/ZygoteConnection$HiddenApiUsageLogger;->mHiddenApiAccessLogSampleRate:I

    :cond_0
    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/internal/os/ZygoteConnection$HiddenApiUsageLogger;->sInstance:Lcom/android/internal/os/ZygoteConnection$HiddenApiUsageLogger;

    iput p1, v0, Lcom/android/internal/os/ZygoteConnection$HiddenApiUsageLogger;->mHiddenApiAccessStatslogSampleRate:I

    :cond_1
    return-void
.end method


# virtual methods
.method public hiddenApiUsed(ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 1

    iget v0, p0, Lcom/android/internal/os/ZygoteConnection$HiddenApiUsageLogger;->mHiddenApiAccessLogSampleRate:I

    if-ge p1, v0, :cond_0

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/internal/os/ZygoteConnection$HiddenApiUsageLogger;->logUsage(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_0
    iget v0, p0, Lcom/android/internal/os/ZygoteConnection$HiddenApiUsageLogger;->mHiddenApiAccessStatslogSampleRate:I

    if-ge p1, v0, :cond_1

    invoke-direct {p0, p3, p4, p5}, Lcom/android/internal/os/ZygoteConnection$HiddenApiUsageLogger;->newLogUsage(Ljava/lang/String;IZ)V

    :cond_1
    return-void
.end method
