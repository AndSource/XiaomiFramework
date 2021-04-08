.class public Lmiui/securitycenter/powercenter/BatteryHistoryHelper;
.super Ljava/lang/Object;
.source "BatteryHistoryHelper.java"


# instance fields
.field private mStats:Landroid/os/BatteryStats;

.field private rec:Landroid/os/BatteryStats$HistoryItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    return-void
.end method


# virtual methods
.method public finishIterate()V
    .locals 1

    iget-object v0, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->mStats:Landroid/os/BatteryStats;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    return-void
.end method

.method public getBatteryUsageRealtime()J
    .locals 5

    iget-object v0, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->mStats:Landroid/os/BatteryStats;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextHistoryItem(Lmiui/securitycenter/powercenter/HistoryItemWrapper;)Z
    .locals 5

    iget-object v0, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->mStats:Landroid/os/BatteryStats;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0, v2}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v2, v2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    iput-byte v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->cmd:B

    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v2, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->time:J

    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v2, v2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput-byte v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryLevel:B

    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v2, v2, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iput-byte v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryStatus:B

    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v2, v2, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iput-byte v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryHealth:B

    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v2, v2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iput-byte v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryPlugType:B

    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget-short v2, v2, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    iput-short v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryTemperature:S

    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget-char v2, v2, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    iput-char v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryVoltage:C

    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v3, 0x20000000

    and-int/2addr v2, v3

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    iput-boolean v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->wifiOn:Z

    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    move v2, v4

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    iput-boolean v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->gpsOn:Z

    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    iput-boolean v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->charging:Z

    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    if-eqz v2, :cond_5

    move v2, v4

    goto :goto_3

    :cond_5
    move v2, v1

    :goto_3
    iput-boolean v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->screenOn:Z

    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    if-eqz v2, :cond_6

    move v2, v4

    goto :goto_4

    :cond_6
    move v2, v1

    :goto_4
    iput-boolean v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->wakelockOn:Z

    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_7

    move v1, v4

    :cond_7
    iput-boolean v1, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->cpuRunning:Z

    iget-object v1, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit16 v1, v1, 0x1c0

    shr-int/lit8 v1, v1, 0x6

    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    const/4 v1, 0x0

    goto :goto_5

    :cond_8
    iget-object v1, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x200000

    and-int/2addr v1, v3

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_5

    :cond_9
    iget-object v1, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget v1, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit8 v1, v1, 0x38

    shr-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    :goto_5
    iput v1, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->phoneSignalStrength:I

    return v4
.end method

.method public getScreenOnTime()J
    .locals 6

    iget-object v0, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->mStats:Landroid/os/BatteryStats;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v2, v0, v1}, Landroid/os/BatteryStats;->getBatteryRealtime(J)J

    move-result-wide v2

    iget-object v4, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->mStats:Landroid/os/BatteryStats;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v3, v5}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v4

    return-wide v4
.end method

.method public refreshHistory()V
    .locals 1

    invoke-static {}, Lmiui/securitycenter/powercenter/BatteryStatsUtils;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    iput-object v0, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->mStats:Landroid/os/BatteryStats;

    return-void
.end method

.method public startIterate()Z
    .locals 1

    iget-object v0, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->mStats:Landroid/os/BatteryStats;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v0

    return v0
.end method
