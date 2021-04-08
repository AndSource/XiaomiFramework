.class public Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;
.super Ljava/lang/Object;
.source "UidAppBatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/UidAppBatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UidPackage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;,
        Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;,
        Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;
    }
.end annotation


# instance fields
.field protected mBsi:Lcom/android/internal/os/BatteryStatsImpl;

.field mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mCpuClusterTimesMs:Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;

.field mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

.field mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field public final mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

.field public final mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

.field final mPackageName:Ljava/lang/String;

.field mProcessState:I

.field final mProcessStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;",
            ">;"
        }
    .end annotation
.end field

.field final mSensorStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;",
            ">;"
        }
    .end annotation
.end field

.field mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field public mUbsi:Lcom/android/internal/os/UidAppBatteryStatsImpl;

.field mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field final mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<",
            "Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

.field mWifiScanStarted:Z

.field mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/UidAppBatteryStatsImpl;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x15

    iput v1, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessState:I

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessStats:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSensorStats:Landroid/util/SparseArray;

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mUbsi:Lcom/android/internal/os/UidAppBatteryStatsImpl;

    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mPackageName:Ljava/lang/String;

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v4, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v4, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v4, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v4, Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v4, v5}, Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v4, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterTimesMs:Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;

    new-instance v4, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$1;

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, -0x1

    invoke-direct {v4, v0, v5, v6}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$1;-><init>(Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;Lcom/android/internal/os/BatteryStatsImpl;I)V

    iput-object v4, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    iput-object v4, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v4, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v5}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    iget-object v9, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v9, v9, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v9}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v9

    mul-long/2addr v9, v7

    invoke-virtual {v4, v5, v6, v9, v10}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->init(JJ)V

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    iput-object v4, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v4, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v5}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v5

    mul-long/2addr v5, v7

    iget-object v9, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v9, v9, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v9}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v9

    mul-long/2addr v9, v7

    invoke-virtual {v4, v5, v6, v9, v10}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->init(JJ)V

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v12, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v6, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    move-object v11, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    invoke-direct/range {v11 .. v17}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v4, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return-void
.end method

.method private nullIfAllZeros(Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;I)[J
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;->getCountsLocked(I)[J

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_3

    aget-wide v3, v1, v2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public createCameraTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 7

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v3, 0x0

    const/16 v4, 0x11

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public createFlashlightTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 7

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method detachFromTimeBase()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-static {v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$300(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$400([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$400([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$300(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$300(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-static {v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$500(Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;)V

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-static {v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$500(Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;)V

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$300(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$300(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$300(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterTimesMs:Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;

    invoke-static {v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$300(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$300(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$300(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;

    invoke-virtual {v2}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;->detachFromTimeBase()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;

    invoke-virtual {v2}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;->detachFromTimeBase()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;

    invoke-virtual {v2}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;->detach()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method public getCameraTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public getCpuActiveTime()J
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCpuClusterTimes()[J
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterTimesMs:Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->nullIfAllZeros(Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;I)[J

    move-result-object v0

    return-object v0
.end method

.method public getFlashlightTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public getMobileRadioActiveCount(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMobileRadioActiveTime(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object v0
.end method

.method public getNetworkActivityBytes(II)J
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNetworkActivityPackets(II)J
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getOrCreateModemControllerActivityLocked()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;I)V

    iput-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object v0
.end method

.method public getOrCreateWifiControllerActivityLocked()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;I)V

    iput-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessStats:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;

    iget-object v2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v1, v2, p1}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getSensorStats()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSensorStats:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    .locals 11

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v1, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;

    iget-object v2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v1, v2, p0, p1}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;I)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    iget-object v1, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    iget-object v2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mUbsi:Lcom/android/internal/os/UidAppBatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mSensorTimersSys:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    iget-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mUbsi:Lcom/android/internal/os/UidAppBatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mSensorTimersSys:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v4, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v6, 0x0

    const/4 v7, 0x3

    iget-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v9, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v10, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v4, v3

    move-object v8, v2

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    move-object v1, v3

    iput-object v1, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return-object v1
.end method

.method public getSystemCpuTimeUs(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeAtCpuSpeed(III)J
    .locals 4

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    if-ltz p2, :cond_0

    array-length v1, v0

    if-ge p2, v1, :cond_0

    aget-object v1, v0, p2

    if-eqz v1, :cond_0

    invoke-virtual {v1, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v2

    return-wide v2

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUserCpuTimeUs(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWakelockStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public getWakelockTimerLocked(Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 9

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_1

    new-instance v8, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mUbsi:Lcom/android/internal/os/UidAppBatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v7, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    move-object v0, v8

    iput-object v0, p1, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    :cond_1
    return-object v0
.end method

.method public getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object v0
.end method

.method public getWifiScanTime(JI)J
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasNetworkActivity()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method initNetworkActivityLocked()V
    .locals 5

    const/16 v0, 0xa

    new-array v1, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-array v1, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-void
.end method

.method public isInBackground()Z
    .locals 2

    iget v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessState:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public noteCameraTurnedOffLocked(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_0
    return-void
.end method

.method public noteCameraTurnedOnLocked(J)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->createCameraTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    return-void
.end method

.method public noteFlashlightTurnedOffLocked(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_0
    return-void
.end method

.method public noteFlashlightTurnedOnLocked(J)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->createFlashlightTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    return-void
.end method

.method noteMobileRadioActiveTimeLocked(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->initNetworkActivityLocked()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    return-void
.end method

.method noteNetworkActivityLocked(IJJ)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->initNetworkActivityLocked()V

    :cond_0
    if-ltz p1, :cond_1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown network activity type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " was specified."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "UidAppBatteryStatsImpl"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public noteResetCameraLocked(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    :cond_0
    return-void
.end method

.method public noteResetFlashlightLocked(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    :cond_0
    return-void
.end method

.method public noteStartSensor(IJ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    return-void
.end method

.method public noteStartWakeLocked(Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->startObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->getWakelockTimerLocked(Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    :cond_0
    return-void
.end method

.method public noteStopSensor(IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    :cond_0
    return-void
.end method

.method public noteStopWakeLocked(Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->stopObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->getWakelockTimerLocked(Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_0
    return-void
.end method

.method public noteWifiScanStartedLocked(J)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanStarted:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanStarted:Z

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v7, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    :cond_1
    return-void
.end method

.method public noteWifiScanStoppedLocked(J)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanStarted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanStarted:Z

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    :cond_0
    return-void
.end method

.method readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 13

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->readFromParcel(Landroid/os/Parcel;)V

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;

    iget-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v3, v4, p0}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;)V

    iget-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v3, p1, v4, p2}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;->readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iget-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v4, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    new-instance v4, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;

    iget-object v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v4, v5, p0, v3}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;I)V

    iget-object v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v6, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v4, v5, v6, p2}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;->readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iget-object v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;

    iget-object v6, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v5, v6, v4}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;->readFromParcelLocked(Landroid/os/Parcel;)V

    iget-object v6, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    const/16 v3, 0x15

    iput v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessState:I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanStarted:Z

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v10, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v11, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v5, v3

    move-object v12, p2

    invoke-direct/range {v5 .. v12}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    goto :goto_3

    :cond_3
    iput-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0xa

    new-array v5, v3, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-array v5, v3, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v3, :cond_4

    iget-object v6, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v8, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v8, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v7, v8, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v7, v6, v5

    iget-object v6, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v8, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v8, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v7, v8, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v5, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v5, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    goto :goto_5

    :cond_5
    iput-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x1

    invoke-direct {v3, v5, v6, p2}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;ILandroid/os/Parcel;)V

    iput-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    goto :goto_6

    :cond_6
    iput-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v6, 0x5

    invoke-direct {v3, v5, v6, p2}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;ILandroid/os/Parcel;)V

    iput-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    goto :goto_7

    :cond_7
    iput-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    :goto_7
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v5, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v5, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    sget-object v5, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    if-eqz v5, :cond_9

    sget-object v5, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v5}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v5

    if-ne v5, v3, :cond_8

    goto :goto_8

    :cond_8
    new-instance v4, Landroid/os/ParcelFormatException;

    const-string v5, "Incompatible number of cpu clusters"

    invoke-direct {v4, v5}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_9
    :goto_8
    new-array v5, v3, [[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v3, :cond_f

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    sget-object v7, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    if-eqz v7, :cond_b

    sget-object v7, Lcom/android/internal/os/UidAppBatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v7, v5}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v7

    if-ne v7, v6, :cond_a

    goto :goto_a

    :cond_a
    new-instance v4, Landroid/os/ParcelFormatException;

    const-string v7, "Incompatible number of cpu speeds"

    invoke-direct {v4, v7}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_b
    :goto_a
    new-array v7, v6, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v8, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aput-object v7, v8, v5

    const/4 v8, 0x0

    :goto_b
    if-ge v8, v6, :cond_d

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_c

    new-instance v9, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v10, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v10, v10, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v9, v10, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v9, v7, v8

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_d
    goto :goto_c

    :cond_e
    iget-object v6, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aput-object v4, v6, v5

    :goto_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_f
    goto :goto_d

    :cond_10
    iput-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    :goto_d
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v5, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v3, Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;

    iget-object v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v5, p2}, Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterTimesMs:Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v10, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v5, v3

    move-object v11, p2

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_e

    :cond_11
    iput-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_12

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v4, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/4 v7, 0x0

    const/16 v8, 0x11

    const/4 v9, 0x0

    iget-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v10, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v5, v3

    move-object v11, p2

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_f

    :cond_12
    iput-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    :goto_f
    return-void
.end method

.method public readWakeSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 2

    new-instance v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;)V

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->getWakelockTimerLocked(Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_0
    return-void
.end method

.method public reset(JJ)Z
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->init(JJ)V

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->init(JJ)V

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->reset(Z)Z

    move-result v1

    xor-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanStarted:Z

    or-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v1, v3}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$000(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z

    move-result v1

    xor-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v1, v3}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$000(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z

    move-result v1

    xor-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v1, v3}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$100([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v1, v3}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$100([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v1, v3}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$000(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v1, v3}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$000(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v1, v3}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$000(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v1, v3}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$000(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v1, v3}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$200([[Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v1, v3}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$000(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterTimesMs:Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;

    invoke-static {v1, v3}, Lcom/android/internal/os/UidAppBatteryStatsImpl;->access$000(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;Z)Z

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_0
    if-ltz v4, :cond_2

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;

    invoke-virtual {v5}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;->reset()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->cleanup()V

    iget-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_2
    if-ltz v4, :cond_4

    iget-object v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;

    invoke-virtual {v5}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;->reset()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_3

    :cond_3
    const/4 v0, 0x1

    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_4
    if-ltz v4, :cond_5

    iget-object v5, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;

    invoke-virtual {v5}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;->detach()V

    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    :cond_5
    iget-object v4, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    move v2, v3

    :goto_5
    return v2
.end method

.method public updateOnBatteryBgTimeBase(JJ)Z
    .locals 7

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->isInBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v2, v0

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->setRunning(ZJJ)Z

    move-result v0

    return v0
.end method

.method public updateOnBatteryScreenOffBgTimeBase(JJ)Z
    .locals 7

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->isInBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v2, v0

    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->setRunning(ZJJ)Z

    move-result v0

    return v0
.end method

.method public updateUidAppProcessStateLocked(I)V
    .locals 11

    const/16 v0, 0x15

    if-ne p1, v0, :cond_0

    const/16 v0, 0x15

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    if-gt p1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/16 v0, 0xd

    if-gt p1, v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x7

    if-gt p1, v0, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    const/16 v0, 0xc

    if-gt p1, v0, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    :cond_5
    const/4 v0, 0x6

    :goto_0
    iget v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessState:I

    if-ne v1, v0, :cond_6

    return-void

    :cond_6
    iget-object v1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v1}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v3}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->uptimeMillis()J

    move-result-wide v3

    iput v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessState:I

    const-wide/16 v5, 0x3e8

    mul-long v7, v3, v5

    mul-long v9, v1, v5

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->updateOnBatteryBgTimeBase(JJ)Z

    mul-long v7, v3, v5

    mul-long/2addr v5, v1

    invoke-virtual {p0, v7, v8, v5, v6}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->updateOnBatteryScreenOffBgTimeBase(JJ)Z

    return-void
.end method

.method writeToParcelLocked(Landroid/os/Parcel;JJ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p4

    iget-object v1, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->writeToParcel(Landroid/os/Parcel;JJ)V

    iget-object v1, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->writeToParcel(Landroid/os/Parcel;JJ)V

    iget-object v1, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;

    invoke-virtual {v4, v7, v8, v9}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Wakelock;->writeToParcelLocked(Landroid/os/Parcel;J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;

    invoke-virtual {v5, v7, v8, v9}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Sensor;->writeToParcelLocked(Landroid/os/Parcel;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iget-object v4, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    invoke-virtual {v7, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_2

    iget-object v6, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;

    invoke-virtual {v6, v7}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;->writeToParcelLocked(Landroid/os/Parcel;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    const/4 v6, 0x0

    const/4 v10, 0x1

    if-eqz v5, :cond_3

    invoke-virtual {v7, v10}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v5, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_3

    :cond_3
    invoke-virtual {v7, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v5, :cond_5

    invoke-virtual {v7, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x0

    :goto_4
    const/16 v11, 0xa

    if-ge v5, v11, :cond_4

    iget-object v11, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v11, v11, v5

    invoke-virtual {v11, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    iget-object v11, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v11, v11, v5

    invoke-virtual {v11, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v5, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v5, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_5

    :cond_5
    invoke-virtual {v7, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-eqz v5, :cond_6

    invoke-virtual {v7, v10}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual {v5, v7, v6}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    :cond_6
    invoke-virtual {v7, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-eqz v5, :cond_7

    invoke-virtual {v7, v10}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual {v5, v7, v6}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    :cond_7
    invoke-virtual {v7, v6}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v5, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v5, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v5, :cond_c

    invoke-virtual {v7, v10}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v5, v5

    invoke-virtual {v7, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v11, v5

    move v12, v6

    :goto_8
    if-ge v12, v11, :cond_b

    aget-object v13, v5, v12

    if-eqz v13, :cond_a

    invoke-virtual {v7, v10}, Landroid/os/Parcel;->writeInt(I)V

    array-length v14, v13

    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    array-length v14, v13

    move v15, v6

    :goto_9
    if-ge v15, v14, :cond_9

    aget-object v6, v13, v15

    if-eqz v6, :cond_8

    invoke-virtual {v7, v10}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    const/4 v10, 0x0

    goto :goto_a

    :cond_8
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/os/Parcel;->writeInt(I)V

    :goto_a
    add-int/lit8 v15, v15, 0x1

    move v6, v10

    const/4 v10, 0x1

    goto :goto_9

    :cond_9
    move v10, v6

    goto :goto_b

    :cond_a
    move v10, v6

    invoke-virtual {v7, v10}, Landroid/os/Parcel;->writeInt(I)V

    :goto_b
    add-int/lit8 v12, v12, 0x1

    move v6, v10

    const/4 v10, 0x1

    goto :goto_8

    :cond_b
    move v10, v6

    goto :goto_c

    :cond_c
    move v10, v6

    invoke-virtual {v7, v10}, Landroid/os/Parcel;->writeInt(I)V

    :goto_c
    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v5, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCpuClusterTimesMs:Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;

    invoke-virtual {v5, v7}, Lcom/android/internal/os/UidAppBatteryStatsImpl$SysAppCounterArray;->writeToParcel(Landroid/os/Parcel;)V

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v5, :cond_d

    const/4 v5, 0x1

    invoke-virtual {v7, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v5, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_d

    :cond_d
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroid/os/Parcel;->writeInt(I)V

    :goto_d
    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v5, :cond_e

    const/4 v5, 0x1

    invoke-virtual {v7, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v5, v0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v5, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_e

    :cond_e
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e
    return-void
.end method
