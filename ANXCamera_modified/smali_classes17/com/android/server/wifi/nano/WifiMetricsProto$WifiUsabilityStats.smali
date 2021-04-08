.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiUsabilityStats"
.end annotation


# static fields
.field public static final LABEL_BAD:I = 0x2

.field public static final LABEL_GOOD:I = 0x1

.field public static final LABEL_UNKNOWN:I = 0x0

.field public static final TYPE_DATA_STALL_BAD_TX:I = 0x1

.field public static final TYPE_DATA_STALL_BOTH:I = 0x3

.field public static final TYPE_DATA_STALL_TX_WITHOUT_RX:I = 0x2

.field public static final TYPE_FIRMWARE_ALERT:I = 0x4

.field public static final TYPE_IP_REACHABILITY_LOST:I = 0x5

.field public static final TYPE_UNKNOWN:I

.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;


# instance fields
.field public firmwareAlertCode:I

.field public label:I

.field public stats:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;

.field public timeStampMs:J

.field public triggerType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;

    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;
    .locals 2

    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;

    sput-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;

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
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;->label:I

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;->stats:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;->triggerType:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;->firmwareAlertCode:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;->timeStampMs:J

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;->label:I

    if-eqz v1, :cond_0

    nop

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;->stats:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;->stats:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;->triggerType:I

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;->firmwareAlertCode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;->timeStampMs:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_5

    const/4 v3, 0x5

    invoke-static {v3, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_b

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_8

    const/16 v1, 0x12

    if-eq v0, v1, :cond_4

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_a

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;->timeStampMs:J

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;->firmwareAlertCode:I

    goto :goto_5

    :cond_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;->triggerType:I

    :goto_1
    goto :goto_5

    :cond_4
    nop

    invoke-static {p1, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;->stats:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;

    const/4 v4, 0x0

    if-nez v2, :cond_5

    move v2, v4

    goto :goto_2

    :cond_5
    array-length v2, v2

    :goto_2
    add-int v5, v2, v1

    new-array v5, v5, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;

    if-eqz v2, :cond_6

    iget-object v6, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;->stats:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;

    invoke-static {v6, v4, v5, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    :goto_3
    array-length v4, v5

    sub-int/2addr v4, v3

    if-ge v2, v4, :cond_7

    new-instance v4, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;

    invoke-direct {v4}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;-><init>()V

    aput-object v4, v5, v2

    aget-object v4, v5, v2

    invoke-virtual {p1, v4}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    new-instance v3, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;

    invoke-direct {v3}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;-><init>()V

    aput-object v3, v5, v2

    aget-object v3, v5, v2

    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;->stats:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    if-eqz v1, :cond_9

    if-eq v1, v3, :cond_9

    if-eq v1, v2, :cond_9

    goto :goto_4

    :cond_9
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;->label:I

    :goto_4
    nop

    :cond_a
    :goto_5
    goto/16 :goto_0

    :cond_b
    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;->label:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;->stats:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;->stats:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStatsEntry;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;->triggerType:I

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;->firmwareAlertCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_4
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiUsabilityStats;->timeStampMs:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_5
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
