.class public Lcom/android/internal/os/UidAppMobileRadioPowerCalculator;
.super Ljava/lang/Object;
.source "UidAppMobileRadioPowerCalculator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "UidAppMobileRadioPowerCalculator"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPowerBins:[D

.field private final mPowerRadioOn:D

.field private mStats:Landroid/os/BatteryStats;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/BatteryStats;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/internal/os/UidAppMobileRadioPowerCalculator;->mPowerBins:[D

    iput-object p1, p0, Lcom/android/internal/os/UidAppMobileRadioPowerCalculator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/os/UidAppMobileRadioPowerCalculator;->mStats:Landroid/os/BatteryStats;

    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, Lcom/android/internal/os/UidAppMobileRadioPowerCalculator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    const-string/jumbo v3, "radio.active"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v3

    cmpl-double v1, v3, v1

    if-eqz v1, :cond_0

    iput-wide v3, p0, Lcom/android/internal/os/UidAppMobileRadioPowerCalculator;->mPowerRadioOn:D

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x0

    const-string/jumbo v5, "modem.controller.rx"

    invoke-virtual {v0, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    add-double/2addr v1, v5

    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/internal/os/UidAppMobileRadioPowerCalculator;->mPowerBins:[D

    array-length v7, v6

    if-ge v5, v7, :cond_1

    const-string/jumbo v6, "modem.controller.tx"

    invoke-virtual {v0, v6, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v6

    add-double/2addr v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    array-length v5, v6

    add-int/lit8 v5, v5, 0x1

    int-to-double v5, v5

    div-double v5, v1, v5

    iput-wide v5, p0, Lcom/android/internal/os/UidAppMobileRadioPowerCalculator;->mPowerRadioOn:D

    :goto_1
    return-void
.end method

.method private getMobilePowerPerPacket(JI)D
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p3

    const-wide/32 v2, 0x30d40

    iget-wide v4, v0, Lcom/android/internal/os/UidAppMobileRadioPowerCalculator;->mPowerRadioOn:D

    const-wide v6, 0x40ac200000000000L    # 3600.0

    div-double/2addr v4, v6

    iget-object v8, v0, Lcom/android/internal/os/UidAppMobileRadioPowerCalculator;->mStats:Landroid/os/BatteryStats;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v8

    iget-object v10, v0, Lcom/android/internal/os/UidAppMobileRadioPowerCalculator;->mStats:Landroid/os/BatteryStats;

    const/4 v11, 0x1

    invoke-virtual {v10, v11, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v10

    add-long v12, v8, v10

    iget-object v14, v0, Lcom/android/internal/os/UidAppMobileRadioPowerCalculator;->mStats:Landroid/os/BatteryStats;

    move-wide/from16 v6, p1

    invoke-virtual {v14, v6, v7, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v0, v16, v18

    const-wide/16 v16, 0x0

    cmp-long v14, v12, v16

    if-eqz v14, :cond_0

    cmp-long v14, v0, v16

    if-eqz v14, :cond_0

    move-wide/from16 v16, v2

    long-to-double v2, v12

    long-to-double v6, v0

    div-double/2addr v2, v6

    goto :goto_0

    :cond_0
    move-wide/from16 v16, v2

    const-wide v2, 0x40286a0000000000L    # 12.20703125

    :goto_0
    nop

    div-double v6, v4, v2

    const-wide v14, 0x40ac200000000000L    # 3600.0

    div-double/2addr v6, v14

    return-wide v6
.end method


# virtual methods
.method public calculateUidApp(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;JI)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p5}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->getNetworkActivityPackets(II)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    const/4 v1, 0x1

    invoke-virtual {p2, v1, p5}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->getNetworkActivityPackets(II)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    invoke-virtual {p2, p5}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->getMobileRadioActiveTime(I)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    invoke-virtual {p2, p5}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->getMobileRadioActiveCount(I)I

    move-result v2

    iput v2, p1, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    invoke-virtual {p2, v0, p5}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->getNetworkActivityBytes(II)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    invoke-virtual {p2, v1, p5}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->getNetworkActivityBytes(II)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "UidAppMobileRadioPowerCalculator"

    if-lez v0, :cond_0

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    long-to-double v2, v2

    iget-wide v4, p0, Lcom/android/internal/os/UidAppMobileRadioPowerCalculator;->mPowerRadioOn:D

    mul-double/2addr v2, v4

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mobile active power: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    add-long/2addr v2, v4

    long-to-double v2, v2

    invoke-direct {p0, p3, p4, p5}, Lcom/android/internal/os/UidAppMobileRadioPowerCalculator;->getMobilePowerPerPacket(JI)D

    move-result-wide v4

    mul-double/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mobile not active power: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
