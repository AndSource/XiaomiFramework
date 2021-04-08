.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiIsUnusableEvent"
.end annotation


# static fields
.field public static final TYPE_DATA_STALL_BAD_TX:I = 0x1

.field public static final TYPE_DATA_STALL_BOTH:I = 0x3

.field public static final TYPE_DATA_STALL_TX_WITHOUT_RX:I = 0x2

.field public static final TYPE_FIRMWARE_ALERT:I = 0x4

.field public static final TYPE_IP_REACHABILITY_LOST:I = 0x5

.field public static final TYPE_UNKNOWN:I

.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;


# instance fields
.field public firmwareAlertCode:I

.field public lastLinkLayerStatsUpdateTime:J

.field public lastPredictionHorizonSec:I

.field public lastScore:I

.field public lastWifiUsabilityScore:I

.field public packetUpdateTimeDelta:J

.field public rxSuccessDelta:J

.field public screenOn:Z

.field public startTimeMillis:J

.field public txBadDelta:J

.field public txRetriesDelta:J

.field public txSuccessDelta:J

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;

    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;
    .locals 2

    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;

    sput-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;

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
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->type:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->startTimeMillis:J

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->lastScore:I

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->txSuccessDelta:J

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->txRetriesDelta:J

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->txBadDelta:J

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->rxSuccessDelta:J

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->packetUpdateTimeDelta:J

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->lastLinkLayerStatsUpdateTime:J

    iput v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->firmwareAlertCode:I

    iput v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->lastWifiUsabilityScore:I

    iput v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->lastPredictionHorizonSec:I

    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->screenOn:Z

    iput v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->type:I

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->startTimeMillis:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->lastScore:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/4 v5, 0x3

    invoke-static {v5, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-wide v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->txSuccessDelta:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    invoke-static {v1, v5, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-wide v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->txRetriesDelta:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    invoke-static {v1, v5, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-wide v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->txBadDelta:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    invoke-static {v1, v5, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-wide v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->rxSuccessDelta:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    invoke-static {v1, v5, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-wide v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->packetUpdateTimeDelta:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    invoke-static {v1, v5, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-wide v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->lastLinkLayerStatsUpdateTime:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    invoke-static {v1, v5, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->firmwareAlertCode:I

    if-eq v1, v2, :cond_9

    const/16 v3, 0xa

    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->lastWifiUsabilityScore:I

    if-eq v1, v2, :cond_a

    const/16 v3, 0xb

    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->lastPredictionHorizonSec:I

    if-eq v1, v2, :cond_b

    const/16 v2, 0xc

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->screenOn:Z

    if-eqz v1, :cond_c

    const/16 v2, 0xd

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_1

    return-object p0

    :sswitch_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->screenOn:Z

    goto/16 :goto_2

    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->lastPredictionHorizonSec:I

    goto/16 :goto_2

    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->lastWifiUsabilityScore:I

    goto :goto_2

    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->firmwareAlertCode:I

    goto :goto_2

    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->lastLinkLayerStatsUpdateTime:J

    goto :goto_2

    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->packetUpdateTimeDelta:J

    goto :goto_2

    :sswitch_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->rxSuccessDelta:J

    goto :goto_2

    :sswitch_7
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->txBadDelta:J

    goto :goto_2

    :sswitch_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->txRetriesDelta:J

    goto :goto_2

    :sswitch_9
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->txSuccessDelta:J

    goto :goto_2

    :sswitch_a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->lastScore:I

    goto :goto_2

    :sswitch_b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->startTimeMillis:J

    goto :goto_2

    :sswitch_c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->type:I

    :goto_1
    goto :goto_2

    :sswitch_d
    return-object p0

    :cond_1
    :goto_2
    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_c
        0x10 -> :sswitch_b
        0x18 -> :sswitch_a
        0x20 -> :sswitch_9
        0x28 -> :sswitch_8
        0x30 -> :sswitch_7
        0x38 -> :sswitch_6
        0x40 -> :sswitch_5
        0x48 -> :sswitch_4
        0x50 -> :sswitch_3
        0x58 -> :sswitch_2
        0x60 -> :sswitch_1
        0x68 -> :sswitch_0
    .end sparse-switch
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->type:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_0
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->startTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_1
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->lastScore:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v4, 0x3

    invoke-virtual {p1, v4, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2
    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->txSuccessDelta:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_3
    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->txRetriesDelta:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_4
    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->txBadDelta:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_5
    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->rxSuccessDelta:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_6
    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->packetUpdateTimeDelta:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_7
    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->lastLinkLayerStatsUpdateTime:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_8
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->firmwareAlertCode:I

    if-eq v0, v1, :cond_9

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_9
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->lastWifiUsabilityScore:I

    if-eq v0, v1, :cond_a

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_a
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->lastPredictionHorizonSec:I

    if-eq v0, v1, :cond_b

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_b
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiIsUnusableEvent;->screenOn:Z

    if-eqz v0, :cond_c

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_c
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
