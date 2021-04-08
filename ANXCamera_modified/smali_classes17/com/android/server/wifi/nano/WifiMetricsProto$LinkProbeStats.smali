.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LinkProbeStats"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats$ExperimentProbeCounts;,
        Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats$LinkProbeFailureReasonCount;
    }
.end annotation


# static fields
.field public static final LINK_PROBE_FAILURE_REASON_ALREADY_STARTED:I = 0x4

.field public static final LINK_PROBE_FAILURE_REASON_MCS_UNSUPPORTED:I = 0x1

.field public static final LINK_PROBE_FAILURE_REASON_NO_ACK:I = 0x2

.field public static final LINK_PROBE_FAILURE_REASON_TIMEOUT:I = 0x3

.field public static final LINK_PROBE_FAILURE_REASON_UNKNOWN:I

.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;


# instance fields
.field public experimentProbeCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats$ExperimentProbeCounts;

.field public failureLinkSpeedCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

.field public failureReasonCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats$LinkProbeFailureReasonCount;

.field public failureRssiCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

.field public failureSecondsSinceLastTxSuccessHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;

.field public successElapsedTimeMsHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;

.field public successLinkSpeedCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

.field public successRssiCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

.field public successSecondsSinceLastTxSuccessHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;

    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;
    .locals 2

    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;

    sput-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;

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
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;
    .locals 1

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->successRssiCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->failureRssiCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->successLinkSpeedCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->failureLinkSpeedCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->successSecondsSinceLastTxSuccessHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->failureSecondsSinceLastTxSuccessHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->successElapsedTimeMsHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats$LinkProbeFailureReasonCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats$LinkProbeFailureReasonCount;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->failureReasonCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats$LinkProbeFailureReasonCount;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats$ExperimentProbeCounts;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats$ExperimentProbeCounts;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->experimentProbeCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats$ExperimentProbeCounts;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->successRssiCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->successRssiCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    nop

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->failureRssiCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    if-eqz v1, :cond_3

    array-length v1, v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->failureRssiCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->successLinkSpeedCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    if-eqz v1, :cond_5

    array-length v1, v1

    if-lez v1, :cond_5

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->successLinkSpeedCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    array-length v3, v2

    if-ge v1, v3, :cond_5

    aget-object v2, v2, v1

    if-eqz v2, :cond_4

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->failureLinkSpeedCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    if-eqz v1, :cond_7

    array-length v1, v1

    if-lez v1, :cond_7

    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->failureLinkSpeedCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    array-length v3, v2

    if-ge v1, v3, :cond_7

    aget-object v2, v2, v1

    if-eqz v2, :cond_6

    const/4 v3, 0x4

    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->successSecondsSinceLastTxSuccessHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;

    if-eqz v1, :cond_9

    array-length v1, v1

    if-lez v1, :cond_9

    const/4 v1, 0x0

    :goto_4
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->successSecondsSinceLastTxSuccessHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;

    array-length v3, v2

    if-ge v1, v3, :cond_9

    aget-object v2, v2, v1

    if-eqz v2, :cond_8

    const/4 v3, 0x5

    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->failureSecondsSinceLastTxSuccessHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;

    if-eqz v1, :cond_b

    array-length v1, v1

    if-lez v1, :cond_b

    const/4 v1, 0x0

    :goto_5
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->failureSecondsSinceLastTxSuccessHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;

    array-length v3, v2

    if-ge v1, v3, :cond_b

    aget-object v2, v2, v1

    if-eqz v2, :cond_a

    const/4 v3, 0x6

    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_b
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->successElapsedTimeMsHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;

    if-eqz v1, :cond_d

    array-length v1, v1

    if-lez v1, :cond_d

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->successElapsedTimeMsHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;

    array-length v3, v2

    if-ge v1, v3, :cond_d

    aget-object v2, v2, v1

    if-eqz v2, :cond_c

    const/4 v3, 0x7

    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->failureReasonCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats$LinkProbeFailureReasonCount;

    if-eqz v1, :cond_f

    array-length v1, v1

    if-lez v1, :cond_f

    const/4 v1, 0x0

    :goto_7
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->failureReasonCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats$LinkProbeFailureReasonCount;

    array-length v3, v2

    if-ge v1, v3, :cond_f

    aget-object v2, v2, v1

    if-eqz v2, :cond_e

    const/16 v3, 0x8

    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_f
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->experimentProbeCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats$ExperimentProbeCounts;

    if-eqz v1, :cond_11

    array-length v1, v1

    if-lez v1, :cond_11

    const/4 v1, 0x0

    :goto_8
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->experimentProbeCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats$ExperimentProbeCounts;

    array-length v3, v2

    if-ge v1, v3, :cond_11

    aget-object v2, v2, v1

    if-eqz v2, :cond_10

    const/16 v3, 0x9

    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_11
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_25

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eq v0, v1, :cond_20

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_18

    const/16 v1, 0x22

    if-eq v0, v1, :cond_14

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_10

    const/16 v1, 0x32

    if-eq v0, v1, :cond_c

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_8

    const/16 v1, 0x42

    if-eq v0, v1, :cond_4

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_0

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_24

    return-object p0

    :cond_0
    nop

    invoke-static {p1, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->experimentProbeCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats$ExperimentProbeCounts;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    array-length v3, v3

    :goto_1
    add-int v4, v3, v1

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats$ExperimentProbeCounts;

    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->experimentProbeCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats$ExperimentProbeCounts;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_3

    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats$ExperimentProbeCounts;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats$ExperimentProbeCounts;-><init>()V

    aput-object v2, v4, v3

    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats$ExperimentProbeCounts;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats$ExperimentProbeCounts;-><init>()V

    aput-object v2, v4, v3

    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->experimentProbeCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats$ExperimentProbeCounts;

    goto/16 :goto_13

    :cond_4
    nop

    invoke-static {p1, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->failureReasonCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats$LinkProbeFailureReasonCount;

    if-nez v3, :cond_5

    move v3, v2

    goto :goto_3

    :cond_5
    array-length v3, v3

    :goto_3
    add-int v4, v3, v1

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats$LinkProbeFailureReasonCount;

    if-eqz v3, :cond_6

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->failureReasonCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats$LinkProbeFailureReasonCount;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    :goto_4
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_7

    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats$LinkProbeFailureReasonCount;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats$LinkProbeFailureReasonCount;-><init>()V

    aput-object v2, v4, v3

    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats$LinkProbeFailureReasonCount;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats$LinkProbeFailureReasonCount;-><init>()V

    aput-object v2, v4, v3

    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->failureReasonCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats$LinkProbeFailureReasonCount;

    goto/16 :goto_13

    :cond_8
    nop

    invoke-static {p1, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->successElapsedTimeMsHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;

    if-nez v3, :cond_9

    move v3, v2

    goto :goto_5

    :cond_9
    array-length v3, v3

    :goto_5
    add-int v4, v3, v1

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;

    if-eqz v3, :cond_a

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->successElapsedTimeMsHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_6
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_b

    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;-><init>()V

    aput-object v2, v4, v3

    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_b
    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;-><init>()V

    aput-object v2, v4, v3

    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->successElapsedTimeMsHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;

    goto/16 :goto_13

    :cond_c
    nop

    invoke-static {p1, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->failureSecondsSinceLastTxSuccessHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;

    if-nez v3, :cond_d

    move v3, v2

    goto :goto_7

    :cond_d
    array-length v3, v3

    :goto_7
    add-int v4, v3, v1

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;

    if-eqz v3, :cond_e

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->failureSecondsSinceLastTxSuccessHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_e
    :goto_8
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_f

    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;-><init>()V

    aput-object v2, v4, v3

    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_f
    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;-><init>()V

    aput-object v2, v4, v3

    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->failureSecondsSinceLastTxSuccessHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;

    goto/16 :goto_13

    :cond_10
    nop

    invoke-static {p1, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->successSecondsSinceLastTxSuccessHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;

    if-nez v3, :cond_11

    move v3, v2

    goto :goto_9

    :cond_11
    array-length v3, v3

    :goto_9
    add-int v4, v3, v1

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;

    if-eqz v3, :cond_12

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->successSecondsSinceLastTxSuccessHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_12
    :goto_a
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_13

    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;-><init>()V

    aput-object v2, v4, v3

    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_13
    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;-><init>()V

    aput-object v2, v4, v3

    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->successSecondsSinceLastTxSuccessHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;

    goto/16 :goto_13

    :cond_14
    nop

    invoke-static {p1, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->failureLinkSpeedCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    if-nez v3, :cond_15

    move v3, v2

    goto :goto_b

    :cond_15
    array-length v3, v3

    :goto_b
    add-int v4, v3, v1

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    if-eqz v3, :cond_16

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->failureLinkSpeedCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_16
    :goto_c
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_17

    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;-><init>()V

    aput-object v2, v4, v3

    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_17
    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;-><init>()V

    aput-object v2, v4, v3

    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->failureLinkSpeedCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    goto/16 :goto_13

    :cond_18
    nop

    invoke-static {p1, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->successLinkSpeedCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    if-nez v3, :cond_19

    move v3, v2

    goto :goto_d

    :cond_19
    array-length v3, v3

    :goto_d
    add-int v4, v3, v1

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    if-eqz v3, :cond_1a

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->successLinkSpeedCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1a
    :goto_e
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_1b

    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;-><init>()V

    aput-object v2, v4, v3

    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_1b
    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;-><init>()V

    aput-object v2, v4, v3

    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->successLinkSpeedCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    goto/16 :goto_13

    :cond_1c
    nop

    invoke-static {p1, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->failureRssiCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    if-nez v3, :cond_1d

    move v3, v2

    goto :goto_f

    :cond_1d
    array-length v3, v3

    :goto_f
    add-int v4, v3, v1

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    if-eqz v3, :cond_1e

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->failureRssiCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1e
    :goto_10
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_1f

    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;-><init>()V

    aput-object v2, v4, v3

    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_1f
    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;-><init>()V

    aput-object v2, v4, v3

    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->failureRssiCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    goto :goto_13

    :cond_20
    nop

    invoke-static {p1, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->successRssiCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    if-nez v3, :cond_21

    move v3, v2

    goto :goto_11

    :cond_21
    array-length v3, v3

    :goto_11
    add-int v4, v3, v1

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    if-eqz v3, :cond_22

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->successRssiCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_22
    :goto_12
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_23

    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;-><init>()V

    aput-object v2, v4, v3

    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_23
    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;-><init>()V

    aput-object v2, v4, v3

    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->successRssiCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    nop

    :cond_24
    :goto_13
    goto/16 :goto_0

    :cond_25
    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->successRssiCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->successRssiCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->failureRssiCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->failureRssiCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->successLinkSpeedCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    if-eqz v0, :cond_5

    array-length v0, v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->successLinkSpeedCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    array-length v2, v1

    if-ge v0, v2, :cond_5

    aget-object v1, v1, v0

    if-eqz v1, :cond_4

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->failureLinkSpeedCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    if-eqz v0, :cond_7

    array-length v0, v0

    if-lez v0, :cond_7

    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->failureLinkSpeedCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$Int32Count;

    array-length v2, v1

    if-ge v0, v2, :cond_7

    aget-object v1, v1, v0

    if-eqz v1, :cond_6

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->successSecondsSinceLastTxSuccessHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;

    if-eqz v0, :cond_9

    array-length v0, v0

    if-lez v0, :cond_9

    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->successSecondsSinceLastTxSuccessHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;

    array-length v2, v1

    if-ge v0, v2, :cond_9

    aget-object v1, v1, v0

    if-eqz v1, :cond_8

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->failureSecondsSinceLastTxSuccessHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;

    if-eqz v0, :cond_b

    array-length v0, v0

    if-lez v0, :cond_b

    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->failureSecondsSinceLastTxSuccessHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;

    array-length v2, v1

    if-ge v0, v2, :cond_b

    aget-object v1, v1, v0

    if-eqz v1, :cond_a

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->successElapsedTimeMsHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;

    if-eqz v0, :cond_d

    array-length v0, v0

    if-lez v0, :cond_d

    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->successElapsedTimeMsHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$HistogramBucketInt32;

    array-length v2, v1

    if-ge v0, v2, :cond_d

    aget-object v1, v1, v0

    if-eqz v1, :cond_c

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_d
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->failureReasonCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats$LinkProbeFailureReasonCount;

    if-eqz v0, :cond_f

    array-length v0, v0

    if-lez v0, :cond_f

    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->failureReasonCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats$LinkProbeFailureReasonCount;

    array-length v2, v1

    if-ge v0, v2, :cond_f

    aget-object v1, v1, v0

    if-eqz v1, :cond_e

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_f
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->experimentProbeCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats$ExperimentProbeCounts;

    if-eqz v0, :cond_11

    array-length v0, v0

    if-lez v0, :cond_11

    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats;->experimentProbeCounts:[Lcom/android/server/wifi/nano/WifiMetricsProto$LinkProbeStats$ExperimentProbeCounts;

    array-length v2, v1

    if-ge v0, v2, :cond_11

    aget-object v1, v1, v0

    if-eqz v1, :cond_10

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_11
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
