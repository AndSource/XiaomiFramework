.class public Landroid/telephony/ims/RcsOutgoingMessageDelivery;
.super Ljava/lang/Object;
.source "RcsOutgoingMessageDelivery.java"


# instance fields
.field private final mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

.field private final mRcsOutgoingMessageId:I

.field private final mRecipientId:I


# direct methods
.method constructor <init>(Landroid/telephony/ims/RcsControllerCall;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/RcsOutgoingMessageDelivery;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    iput p2, p0, Landroid/telephony/ims/RcsOutgoingMessageDelivery;->mRecipientId:I

    iput p3, p0, Landroid/telephony/ims/RcsOutgoingMessageDelivery;->mRcsOutgoingMessageId:I

    return-void
.end method


# virtual methods
.method public getDeliveredTimestamp()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsOutgoingMessageDelivery;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsOutgoingMessageDelivery$XobnngqskscGHACfd0qrHXy-W6A;

    invoke-direct {v1, p0}, Landroid/telephony/ims/-$$Lambda$RcsOutgoingMessageDelivery$XobnngqskscGHACfd0qrHXy-W6A;-><init>(Landroid/telephony/ims/RcsOutgoingMessageDelivery;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMessage()Landroid/telephony/ims/RcsOutgoingMessage;
    .locals 3

    new-instance v0, Landroid/telephony/ims/RcsOutgoingMessage;

    iget-object v1, p0, Landroid/telephony/ims/RcsOutgoingMessageDelivery;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    iget v2, p0, Landroid/telephony/ims/RcsOutgoingMessageDelivery;->mRcsOutgoingMessageId:I

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/RcsOutgoingMessage;-><init>(Landroid/telephony/ims/RcsControllerCall;I)V

    return-object v0
.end method

.method public getRecipient()Landroid/telephony/ims/RcsParticipant;
    .locals 3

    new-instance v0, Landroid/telephony/ims/RcsParticipant;

    iget-object v1, p0, Landroid/telephony/ims/RcsOutgoingMessageDelivery;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    iget v2, p0, Landroid/telephony/ims/RcsOutgoingMessageDelivery;->mRecipientId:I

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/RcsParticipant;-><init>(Landroid/telephony/ims/RcsControllerCall;I)V

    return-object v0
.end method

.method public getSeenTimestamp()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsOutgoingMessageDelivery;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsOutgoingMessageDelivery$fxSVb-4v4N7q2YgopxM2Hg_pCH0;

    invoke-direct {v1, p0}, Landroid/telephony/ims/-$$Lambda$RcsOutgoingMessageDelivery$fxSVb-4v4N7q2YgopxM2Hg_pCH0;-><init>(Landroid/telephony/ims/RcsOutgoingMessageDelivery;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsOutgoingMessageDelivery;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsOutgoingMessageDelivery$Hwf3ep_etCKWfwwAtq0Sdu0dtwY;

    invoke-direct {v1, p0}, Landroid/telephony/ims/-$$Lambda$RcsOutgoingMessageDelivery$Hwf3ep_etCKWfwwAtq0Sdu0dtwY;-><init>(Landroid/telephony/ims/RcsOutgoingMessageDelivery;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$getDeliveredTimestamp$1$RcsOutgoingMessageDelivery(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsOutgoingMessageDelivery;->mRcsOutgoingMessageId:I

    iget v1, p0, Landroid/telephony/ims/RcsOutgoingMessageDelivery;->mRecipientId:I

    invoke-interface {p1, v0, v1, p2}, Landroid/telephony/ims/aidl/IRcs;->getOutgoingDeliveryDeliveredTimestamp(IILjava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getSeenTimestamp$3$RcsOutgoingMessageDelivery(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsOutgoingMessageDelivery;->mRcsOutgoingMessageId:I

    iget v1, p0, Landroid/telephony/ims/RcsOutgoingMessageDelivery;->mRecipientId:I

    invoke-interface {p1, v0, v1, p2}, Landroid/telephony/ims/aidl/IRcs;->getOutgoingDeliverySeenTimestamp(IILjava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getStatus$5$RcsOutgoingMessageDelivery(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsOutgoingMessageDelivery;->mRcsOutgoingMessageId:I

    iget v1, p0, Landroid/telephony/ims/RcsOutgoingMessageDelivery;->mRecipientId:I

    invoke-interface {p1, v0, v1, p2}, Landroid/telephony/ims/aidl/IRcs;->getOutgoingDeliveryStatus(IILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$setDeliveredTimestamp$0$RcsOutgoingMessageDelivery(JLandroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v1, p0, Landroid/telephony/ims/RcsOutgoingMessageDelivery;->mRcsOutgoingMessageId:I

    iget v2, p0, Landroid/telephony/ims/RcsOutgoingMessageDelivery;->mRecipientId:I

    move-object v0, p3

    move-wide v3, p1

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/telephony/ims/aidl/IRcs;->setOutgoingDeliveryDeliveredTimestamp(IIJLjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setSeenTimestamp$2$RcsOutgoingMessageDelivery(JLandroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v1, p0, Landroid/telephony/ims/RcsOutgoingMessageDelivery;->mRcsOutgoingMessageId:I

    iget v2, p0, Landroid/telephony/ims/RcsOutgoingMessageDelivery;->mRecipientId:I

    move-object v0, p3

    move-wide v3, p1

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/telephony/ims/aidl/IRcs;->setOutgoingDeliverySeenTimestamp(IIJLjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setStatus$4$RcsOutgoingMessageDelivery(ILandroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsOutgoingMessageDelivery;->mRcsOutgoingMessageId:I

    iget v1, p0, Landroid/telephony/ims/RcsOutgoingMessageDelivery;->mRecipientId:I

    invoke-interface {p2, v0, v1, p1, p3}, Landroid/telephony/ims/aidl/IRcs;->setOutgoingDeliveryStatus(IIILjava/lang/String;)V

    return-void
.end method

.method public setDeliveredTimestamp(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsOutgoingMessageDelivery;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsOutgoingMessageDelivery$RRb0ymf6fqzeTy7WOV3ylkaBJDA;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/ims/-$$Lambda$RcsOutgoingMessageDelivery$RRb0ymf6fqzeTy7WOV3ylkaBJDA;-><init>(Landroid/telephony/ims/RcsOutgoingMessageDelivery;J)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->callWithNoReturn(Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;)V

    return-void
.end method

.method public setSeenTimestamp(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsOutgoingMessageDelivery;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsOutgoingMessageDelivery$P2OcWKWejNP6qsda0ef9G0jKYKs;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/ims/-$$Lambda$RcsOutgoingMessageDelivery$P2OcWKWejNP6qsda0ef9G0jKYKs;-><init>(Landroid/telephony/ims/RcsOutgoingMessageDelivery;J)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->callWithNoReturn(Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;)V

    return-void
.end method

.method public setStatus(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsOutgoingMessageDelivery;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsOutgoingMessageDelivery$l9Yzsl9k4Z30dUsRJ0yJpKeg9jk;

    invoke-direct {v1, p0, p1}, Landroid/telephony/ims/-$$Lambda$RcsOutgoingMessageDelivery$l9Yzsl9k4Z30dUsRJ0yJpKeg9jk;-><init>(Landroid/telephony/ims/RcsOutgoingMessageDelivery;I)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->callWithNoReturn(Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;)V

    return-void
.end method
