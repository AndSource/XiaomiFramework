.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiPowerStats"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;


# instance fields
.field public energyConsumedMah:D

.field public idleTimeMs:J

.field public loggingDurationMs:J

.field public monitoredRailEnergyConsumedMah:D

.field public numBytesRx:J

.field public numBytesTx:J

.field public numPacketsRx:J

.field public numPacketsTx:J

.field public rxTimeMs:J

.field public scanTimeMs:J

.field public sleepTimeMs:J

.field public txTimeMs:J

.field public wifiKernelActiveTimeMs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;
    .locals 2

    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    sput-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

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
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;
    .locals 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->loggingDurationMs:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->energyConsumedMah:D

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->idleTimeMs:J

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->rxTimeMs:J

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->txTimeMs:J

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->wifiKernelActiveTimeMs:J

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->numPacketsTx:J

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->numBytesTx:J

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->numPacketsRx:J

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->numBytesRx:J

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->sleepTimeMs:J

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->scanTimeMs:J

    iput-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->monitoredRailEnergyConsumedMah:D

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 9

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->loggingDurationMs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->energyConsumedMah:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

    cmp-long v1, v1, v7

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-wide v7, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->energyConsumedMah:D

    invoke-static {v1, v7, v8}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->idleTimeMs:J

    cmp-long v7, v1, v3

    if-eqz v7, :cond_2

    const/4 v7, 0x3

    invoke-static {v7, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->rxTimeMs:J

    cmp-long v7, v1, v3

    if-eqz v7, :cond_3

    const/4 v7, 0x4

    invoke-static {v7, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->txTimeMs:J

    cmp-long v7, v1, v3

    if-eqz v7, :cond_4

    const/4 v7, 0x5

    invoke-static {v7, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->wifiKernelActiveTimeMs:J

    cmp-long v7, v1, v3

    if-eqz v7, :cond_5

    const/4 v7, 0x6

    invoke-static {v7, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->numPacketsTx:J

    cmp-long v7, v1, v3

    if-eqz v7, :cond_6

    const/4 v7, 0x7

    invoke-static {v7, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->numBytesTx:J

    cmp-long v7, v1, v3

    if-eqz v7, :cond_7

    const/16 v7, 0x8

    invoke-static {v7, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->numPacketsRx:J

    cmp-long v7, v1, v3

    if-eqz v7, :cond_8

    const/16 v7, 0x9

    invoke-static {v7, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->numBytesRx:J

    cmp-long v7, v1, v3

    if-eqz v7, :cond_9

    const/16 v7, 0xa

    invoke-static {v7, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->sleepTimeMs:J

    cmp-long v7, v1, v3

    if-eqz v7, :cond_a

    const/16 v7, 0xb

    invoke-static {v7, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->scanTimeMs:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_b

    const/16 v3, 0xc

    invoke-static {v3, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->monitoredRailEnergyConsumedMah:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_c

    const/16 v1, 0xd

    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->monitoredRailEnergyConsumedMah:D

    invoke-static {v1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

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

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;
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

    if-nez v1, :cond_0

    return-object p0

    :sswitch_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->monitoredRailEnergyConsumedMah:D

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->scanTimeMs:J

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->sleepTimeMs:J

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->numBytesRx:J

    goto :goto_1

    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->numPacketsRx:J

    goto :goto_1

    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->numBytesTx:J

    goto :goto_1

    :sswitch_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->numPacketsTx:J

    goto :goto_1

    :sswitch_7
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->wifiKernelActiveTimeMs:J

    goto :goto_1

    :sswitch_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->txTimeMs:J

    goto :goto_1

    :sswitch_9
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->rxTimeMs:J

    goto :goto_1

    :sswitch_a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->idleTimeMs:J

    goto :goto_1

    :sswitch_b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->energyConsumedMah:D

    goto :goto_1

    :sswitch_c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->loggingDurationMs:J

    goto :goto_1

    :sswitch_d
    return-object p0

    :cond_0
    :goto_1
    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_c
        0x11 -> :sswitch_b
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
        0x69 -> :sswitch_0
    .end sparse-switch
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->loggingDurationMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_0
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->energyConsumedMah:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v0, v0, v6

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-wide v6, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->energyConsumedMah:D

    invoke-virtual {p1, v0, v6, v7}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    :cond_1
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->idleTimeMs:J

    cmp-long v6, v0, v2

    if-eqz v6, :cond_2

    const/4 v6, 0x3

    invoke-virtual {p1, v6, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_2
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->rxTimeMs:J

    cmp-long v6, v0, v2

    if-eqz v6, :cond_3

    const/4 v6, 0x4

    invoke-virtual {p1, v6, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_3
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->txTimeMs:J

    cmp-long v6, v0, v2

    if-eqz v6, :cond_4

    const/4 v6, 0x5

    invoke-virtual {p1, v6, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_4
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->wifiKernelActiveTimeMs:J

    cmp-long v6, v0, v2

    if-eqz v6, :cond_5

    const/4 v6, 0x6

    invoke-virtual {p1, v6, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_5
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->numPacketsTx:J

    cmp-long v6, v0, v2

    if-eqz v6, :cond_6

    const/4 v6, 0x7

    invoke-virtual {p1, v6, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_6
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->numBytesTx:J

    cmp-long v6, v0, v2

    if-eqz v6, :cond_7

    const/16 v6, 0x8

    invoke-virtual {p1, v6, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_7
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->numPacketsRx:J

    cmp-long v6, v0, v2

    if-eqz v6, :cond_8

    const/16 v6, 0x9

    invoke-virtual {p1, v6, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_8
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->numBytesRx:J

    cmp-long v6, v0, v2

    if-eqz v6, :cond_9

    const/16 v6, 0xa

    invoke-virtual {p1, v6, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_9
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->sleepTimeMs:J

    cmp-long v6, v0, v2

    if-eqz v6, :cond_a

    const/16 v6, 0xb

    invoke-virtual {p1, v6, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_a
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->scanTimeMs:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b

    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_b
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->monitoredRailEnergyConsumedMah:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/16 v0, 0xd

    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiPowerStats;->monitoredRailEnergyConsumedMah:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    :cond_c
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
