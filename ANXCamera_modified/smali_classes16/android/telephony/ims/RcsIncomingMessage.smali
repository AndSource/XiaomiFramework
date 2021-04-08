.class public Landroid/telephony/ims/RcsIncomingMessage;
.super Landroid/telephony/ims/RcsMessage;
.source "RcsIncomingMessage.java"


# direct methods
.method constructor <init>(Landroid/telephony/ims/RcsControllerCall;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/RcsMessage;-><init>(Landroid/telephony/ims/RcsControllerCall;I)V

    return-void
.end method


# virtual methods
.method public getArrivalTimestamp()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsIncomingMessage;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsIncomingMessage$FSzDY0-cZbSPckAubiU3QaXu_Yg;

    invoke-direct {v1, p0}, Landroid/telephony/ims/-$$Lambda$RcsIncomingMessage$FSzDY0-cZbSPckAubiU3QaXu_Yg;-><init>(Landroid/telephony/ims/RcsIncomingMessage;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeenTimestamp()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsIncomingMessage;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsIncomingMessage$21fHX_-vVRTL95x404C5b4eGWok;

    invoke-direct {v1, p0}, Landroid/telephony/ims/-$$Lambda$RcsIncomingMessage$21fHX_-vVRTL95x404C5b4eGWok;-><init>(Landroid/telephony/ims/RcsIncomingMessage;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSenderParticipant()Landroid/telephony/ims/RcsParticipant;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/RcsParticipant;

    iget-object v1, p0, Landroid/telephony/ims/RcsIncomingMessage;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    iget-object v2, p0, Landroid/telephony/ims/RcsIncomingMessage;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v3, Landroid/telephony/ims/-$$Lambda$RcsIncomingMessage$ye8KwJqH7fqnRAZlQY1PRVyh2b0;

    invoke-direct {v3, p0}, Landroid/telephony/ims/-$$Lambda$RcsIncomingMessage$ye8KwJqH7fqnRAZlQY1PRVyh2b0;-><init>(Landroid/telephony/ims/RcsIncomingMessage;)V

    invoke-virtual {v2, v3}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/RcsParticipant;-><init>(Landroid/telephony/ims/RcsControllerCall;I)V

    return-object v0
.end method

.method public isIncoming()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$getArrivalTimestamp$1$RcsIncomingMessage(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsIncomingMessage;->mId:I

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1, p2}, Landroid/telephony/ims/aidl/IRcs;->getMessageArrivalTimestamp(IZLjava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getSeenTimestamp$3$RcsIncomingMessage(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsIncomingMessage;->mId:I

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1, p2}, Landroid/telephony/ims/aidl/IRcs;->getMessageSeenTimestamp(IZLjava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getSenderParticipant$4$RcsIncomingMessage(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsIncomingMessage;->mId:I

    invoke-interface {p1, v0, p2}, Landroid/telephony/ims/aidl/IRcs;->getSenderParticipant(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$setArrivalTimestamp$0$RcsIncomingMessage(JLandroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v1, p0, Landroid/telephony/ims/RcsIncomingMessage;->mId:I

    const/4 v2, 0x1

    move-object v0, p3

    move-wide v3, p1

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/telephony/ims/aidl/IRcs;->setMessageArrivalTimestamp(IZJLjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setSeenTimestamp$2$RcsIncomingMessage(JLandroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v1, p0, Landroid/telephony/ims/RcsIncomingMessage;->mId:I

    const/4 v2, 0x1

    move-object v0, p3

    move-wide v3, p1

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/telephony/ims/aidl/IRcs;->setMessageSeenTimestamp(IZJLjava/lang/String;)V

    return-void
.end method

.method public setArrivalTimestamp(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsIncomingMessage;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsIncomingMessage$OdAmvZkbLfGMknLzGuOOXKVYczw;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/ims/-$$Lambda$RcsIncomingMessage$OdAmvZkbLfGMknLzGuOOXKVYczw;-><init>(Landroid/telephony/ims/RcsIncomingMessage;J)V

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

    iget-object v0, p0, Landroid/telephony/ims/RcsIncomingMessage;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsIncomingMessage$OvvfqgFG2FNYN7ohCBbWdETfeuQ;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/ims/-$$Lambda$RcsIncomingMessage$OvvfqgFG2FNYN7ohCBbWdETfeuQ;-><init>(Landroid/telephony/ims/RcsIncomingMessage;J)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->callWithNoReturn(Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;)V

    return-void
.end method
