.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiUsabilityStatsEntry"
.end annotation


# static fields
.field public static final NETWORK_TYPE_CDMA:I = 0x2

.field public static final NETWORK_TYPE_EVDO_0:I = 0x3

.field public static final NETWORK_TYPE_GSM:I = 0x1

.field public static final NETWORK_TYPE_LTE:I = 0x6

.field public static final NETWORK_TYPE_NR:I = 0x7

.field public static final NETWORK_TYPE_TD_SCDMA:I = 0x5

.field public static final NETWORK_TYPE_UMTS:I = 0x4

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final PROBE_STATUS_FAILURE:I = 0x3

.field public static final PROBE_STATUS_NO_PROBE:I = 0x1

.field public static final PROBE_STATUS_SUCCESS:I = 0x2

.field public static final PROBE_STATUS_UNKNOWN:I

.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;


# instance fields
.field public cellularDataNetworkType:I

.field public cellularSignalStrengthDb:I

.field public cellularSignalStrengthDbm:I

.field public deviceMobilityState:I

.field public isSameBssidAndFreq:Z

.field public isSameRegisteredCell:Z

.field public linkSpeedMbps:I

.field public predictionHorizonSec:I

.field public probeElapsedTimeSinceLastUpdateMs:I

.field public probeMcsRateSinceLastUpdate:I

.field public probeStatusSinceLastUpdate:I

.field public rssi:I

.field public rxLinkSpeedMbps:I

.field public seqNumInsideFramework:I

.field public seqNumToFramework:I

.field public timeStampMs:J

.field public totalBackgroundScanTimeMs:J

.field public totalBeaconRx:J

.field public totalCcaBusyFreqTimeMs:J

.field public totalHotspot2ScanTimeMs:J

.field public totalNanScanTimeMs:J

.field public totalPnoScanTimeMs:J

.field public totalRadioOnFreqTimeMs:J

.field public totalRadioOnTimeMs:J

.field public totalRadioRxTimeMs:J

.field public totalRadioTxTimeMs:J

.field public totalRoamScanTimeMs:J

.field public totalRxSuccess:J

.field public totalScanTimeMs:J

.field public totalTxBad:J

.field public totalTxRetries:J

.field public totalTxSuccess:J

.field public wifiScore:I

.field public wifiUsabilityScore:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;

    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;
    .locals 2

    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;

    sput-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->timeStampMs:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->rssi:I

    iput v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->linkSpeedMbps:I

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalTxSuccess:J

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalTxRetries:J

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalTxBad:J

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalRxSuccess:J

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalRadioOnTimeMs:J

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalRadioTxTimeMs:J

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalRadioRxTimeMs:J

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalScanTimeMs:J

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalNanScanTimeMs:J

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalBackgroundScanTimeMs:J

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalRoamScanTimeMs:J

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalPnoScanTimeMs:J

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalHotspot2ScanTimeMs:J

    iput v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->wifiScore:I

    iput v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->wifiUsabilityScore:I

    iput v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->seqNumToFramework:I

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalCcaBusyFreqTimeMs:J

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalRadioOnFreqTimeMs:J

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalBeaconRx:J

    iput v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->predictionHorizonSec:I

    iput v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->probeStatusSinceLastUpdate:I

    iput v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->probeElapsedTimeSinceLastUpdateMs:I

    iput v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->probeMcsRateSinceLastUpdate:I

    iput v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->rxLinkSpeedMbps:I

    iput v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->seqNumInsideFramework:I

    iput-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->isSameBssidAndFreq:Z

    iput v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->cellularDataNetworkType:I

    iput v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->cellularSignalStrengthDbm:I

    iput v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->cellularSignalStrengthDb:I

    iput-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->isSameRegisteredCell:Z

    iput v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->deviceMobilityState:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->timeStampMs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->rssi:I

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->linkSpeedMbps:I

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalTxSuccess:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    const/4 v5, 0x4

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalTxRetries:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    const/4 v5, 0x5

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalTxBad:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_5

    const/4 v5, 0x6

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalRxSuccess:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_6

    const/4 v5, 0x7

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalRadioOnTimeMs:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_7

    const/16 v5, 0x8

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalRadioTxTimeMs:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_8

    const/16 v5, 0x9

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalRadioRxTimeMs:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_9

    const/16 v5, 0xa

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalScanTimeMs:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_a

    const/16 v5, 0xb

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalNanScanTimeMs:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_b

    const/16 v5, 0xc

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalBackgroundScanTimeMs:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_c

    const/16 v5, 0xd

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalRoamScanTimeMs:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_d

    const/16 v5, 0xe

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalPnoScanTimeMs:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_e

    const/16 v5, 0xf

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalHotspot2ScanTimeMs:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_f

    const/16 v5, 0x10

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->wifiScore:I

    if-eqz v1, :cond_10

    const/16 v2, 0x11

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->wifiUsabilityScore:I

    if-eqz v1, :cond_11

    const/16 v2, 0x12

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->seqNumToFramework:I

    if-eqz v1, :cond_12

    const/16 v2, 0x13

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalCcaBusyFreqTimeMs:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_13

    const/16 v5, 0x14

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalRadioOnFreqTimeMs:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_14

    const/16 v5, 0x15

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalBeaconRx:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_15

    const/16 v3, 0x16

    invoke-static {v3, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_15
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->predictionHorizonSec:I

    if-eqz v1, :cond_16

    const/16 v2, 0x17

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_16
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->probeStatusSinceLastUpdate:I

    if-eqz v1, :cond_17

    const/16 v2, 0x18

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_17
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->probeElapsedTimeSinceLastUpdateMs:I

    if-eqz v1, :cond_18

    const/16 v2, 0x19

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->probeMcsRateSinceLastUpdate:I

    if-eqz v1, :cond_19

    const/16 v2, 0x1a

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_19
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->rxLinkSpeedMbps:I

    if-eqz v1, :cond_1a

    const/16 v2, 0x1b

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1a
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->seqNumInsideFramework:I

    if-eqz v1, :cond_1b

    const/16 v2, 0x1c

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1b
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->isSameBssidAndFreq:Z

    if-eqz v1, :cond_1c

    const/16 v2, 0x1d

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->cellularDataNetworkType:I

    if-eqz v1, :cond_1d

    const/16 v2, 0x1e

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1d
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->cellularSignalStrengthDbm:I

    if-eqz v1, :cond_1e

    const/16 v2, 0x1f

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1e
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->cellularSignalStrengthDb:I

    if-eqz v1, :cond_1f

    const/16 v2, 0x20

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1f
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->isSameRegisteredCell:Z

    if-eqz v1, :cond_20

    const/16 v2, 0x21

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_20
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->deviceMobilityState:I

    if-eqz v1, :cond_21

    const/16 v2, 0x22

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_21
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_2

    return-object p0

    :sswitch_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    if-eqz v4, :cond_0

    if-eq v4, v3, :cond_0

    if-eq v4, v2, :cond_0

    if-eq v4, v1, :cond_0

    goto :goto_1

    :cond_0
    iput v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->deviceMobilityState:I

    :goto_1
    goto/16 :goto_4

    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->isSameRegisteredCell:Z

    goto/16 :goto_4

    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->cellularSignalStrengthDb:I

    goto/16 :goto_4

    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->cellularSignalStrengthDbm:I

    goto/16 :goto_4

    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->cellularDataNetworkType:I

    :goto_2
    goto/16 :goto_4

    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->isSameBssidAndFreq:Z

    goto/16 :goto_4

    :sswitch_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->seqNumInsideFramework:I

    goto/16 :goto_4

    :sswitch_7
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->rxLinkSpeedMbps:I

    goto/16 :goto_4

    :sswitch_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->probeMcsRateSinceLastUpdate:I

    goto/16 :goto_4

    :sswitch_9
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->probeElapsedTimeSinceLastUpdateMs:I

    goto/16 :goto_4

    :sswitch_a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    if-eqz v4, :cond_1

    if-eq v4, v3, :cond_1

    if-eq v4, v2, :cond_1

    if-eq v4, v1, :cond_1

    goto :goto_3

    :cond_1
    iput v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->probeStatusSinceLastUpdate:I

    :goto_3
    goto/16 :goto_4

    :sswitch_b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->predictionHorizonSec:I

    goto/16 :goto_4

    :sswitch_c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalBeaconRx:J

    goto/16 :goto_4

    :sswitch_d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalRadioOnFreqTimeMs:J

    goto/16 :goto_4

    :sswitch_e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalCcaBusyFreqTimeMs:J

    goto/16 :goto_4

    :sswitch_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->seqNumToFramework:I

    goto/16 :goto_4

    :sswitch_10
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->wifiUsabilityScore:I

    goto/16 :goto_4

    :sswitch_11
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->wifiScore:I

    goto/16 :goto_4

    :sswitch_12
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalHotspot2ScanTimeMs:J

    goto/16 :goto_4

    :sswitch_13
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalPnoScanTimeMs:J

    goto/16 :goto_4

    :sswitch_14
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalRoamScanTimeMs:J

    goto :goto_4

    :sswitch_15
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalBackgroundScanTimeMs:J

    goto :goto_4

    :sswitch_16
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalNanScanTimeMs:J

    goto :goto_4

    :sswitch_17
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalScanTimeMs:J

    goto :goto_4

    :sswitch_18
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalRadioRxTimeMs:J

    goto :goto_4

    :sswitch_19
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalRadioTxTimeMs:J

    goto :goto_4

    :sswitch_1a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalRadioOnTimeMs:J

    goto :goto_4

    :sswitch_1b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalRxSuccess:J

    goto :goto_4

    :sswitch_1c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalTxBad:J

    goto :goto_4

    :sswitch_1d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalTxRetries:J

    goto :goto_4

    :sswitch_1e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalTxSuccess:J

    goto :goto_4

    :sswitch_1f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->linkSpeedMbps:I

    goto :goto_4

    :sswitch_20
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->rssi:I

    goto :goto_4

    :sswitch_21
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->timeStampMs:J

    goto :goto_4

    :sswitch_22
    return-object p0

    :cond_2
    :goto_4
    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_22
        0x8 -> :sswitch_21
        0x10 -> :sswitch_20
        0x18 -> :sswitch_1f
        0x20 -> :sswitch_1e
        0x28 -> :sswitch_1d
        0x30 -> :sswitch_1c
        0x38 -> :sswitch_1b
        0x40 -> :sswitch_1a
        0x48 -> :sswitch_19
        0x50 -> :sswitch_18
        0x58 -> :sswitch_17
        0x60 -> :sswitch_16
        0x68 -> :sswitch_15
        0x70 -> :sswitch_14
        0x78 -> :sswitch_13
        0x80 -> :sswitch_12
        0x88 -> :sswitch_11
        0x90 -> :sswitch_10
        0x98 -> :sswitch_f
        0xa0 -> :sswitch_e
        0xa8 -> :sswitch_d
        0xb0 -> :sswitch_c
        0xb8 -> :sswitch_b
        0xc0 -> :sswitch_a
        0xc8 -> :sswitch_9
        0xd0 -> :sswitch_8
        0xd8 -> :sswitch_7
        0xe0 -> :sswitch_6
        0xe8 -> :sswitch_5
        0xf0 -> :sswitch_4
        0xf8 -> :sswitch_3
        0x100 -> :sswitch_2
        0x108 -> :sswitch_1
        0x110 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->timeStampMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_0
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->rssi:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->linkSpeedMbps:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalTxSuccess:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    const/4 v4, 0x4

    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_3
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalTxRetries:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    const/4 v4, 0x5

    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_4
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalTxBad:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    const/4 v4, 0x6

    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_5
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalRxSuccess:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6

    const/4 v4, 0x7

    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_6
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalRadioOnTimeMs:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_7

    const/16 v4, 0x8

    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_7
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalRadioTxTimeMs:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_8

    const/16 v4, 0x9

    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_8
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalRadioRxTimeMs:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_9

    const/16 v4, 0xa

    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_9
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalScanTimeMs:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_a

    const/16 v4, 0xb

    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_a
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalNanScanTimeMs:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_b

    const/16 v4, 0xc

    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_b
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalBackgroundScanTimeMs:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/16 v4, 0xd

    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_c
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalRoamScanTimeMs:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    const/16 v4, 0xe

    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_d
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalPnoScanTimeMs:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_e

    const/16 v4, 0xf

    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_e
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalHotspot2ScanTimeMs:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_f

    const/16 v4, 0x10

    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_f
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->wifiScore:I

    if-eqz v0, :cond_10

    const/16 v1, 0x11

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_10
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->wifiUsabilityScore:I

    if-eqz v0, :cond_11

    const/16 v1, 0x12

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_11
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->seqNumToFramework:I

    if-eqz v0, :cond_12

    const/16 v1, 0x13

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_12
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalCcaBusyFreqTimeMs:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_13

    const/16 v4, 0x14

    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_13
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalRadioOnFreqTimeMs:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_14

    const/16 v4, 0x15

    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_14
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->totalBeaconRx:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_15

    const/16 v2, 0x16

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_15
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->predictionHorizonSec:I

    if-eqz v0, :cond_16

    const/16 v1, 0x17

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_16
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->probeStatusSinceLastUpdate:I

    if-eqz v0, :cond_17

    const/16 v1, 0x18

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_17
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->probeElapsedTimeSinceLastUpdateMs:I

    if-eqz v0, :cond_18

    const/16 v1, 0x19

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_18
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->probeMcsRateSinceLastUpdate:I

    if-eqz v0, :cond_19

    const/16 v1, 0x1a

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_19
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->rxLinkSpeedMbps:I

    if-eqz v0, :cond_1a

    const/16 v1, 0x1b

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1a
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->seqNumInsideFramework:I

    if-eqz v0, :cond_1b

    const/16 v1, 0x1c

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1b
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->isSameBssidAndFreq:Z

    if-eqz v0, :cond_1c

    const/16 v1, 0x1d

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_1c
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->cellularDataNetworkType:I

    if-eqz v0, :cond_1d

    const/16 v1, 0x1e

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1d
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->cellularSignalStrengthDbm:I

    if-eqz v0, :cond_1e

    const/16 v1, 0x1f

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1e
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->cellularSignalStrengthDb:I

    if-eqz v0, :cond_1f

    const/16 v1, 0x20

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1f
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->isSameRegisteredCell:Z

    if-eqz v0, :cond_20

    const/16 v1, 0x21

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_20
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->deviceMobilityState:I

    if-eqz v0, :cond_21

    const/16 v1, 0x22

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_21
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
