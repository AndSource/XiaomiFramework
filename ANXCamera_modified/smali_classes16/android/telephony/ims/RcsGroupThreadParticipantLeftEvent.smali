.class public final Landroid/telephony/ims/RcsGroupThreadParticipantLeftEvent;
.super Landroid/telephony/ims/RcsGroupThreadEvent;
.source "RcsGroupThreadParticipantLeftEvent.java"


# instance fields
.field private mLeavingParticipant:Landroid/telephony/ims/RcsParticipant;


# direct methods
.method public constructor <init>(JLandroid/telephony/ims/RcsGroupThread;Landroid/telephony/ims/RcsParticipant;Landroid/telephony/ims/RcsParticipant;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/ims/RcsGroupThreadEvent;-><init>(JLandroid/telephony/ims/RcsGroupThread;Landroid/telephony/ims/RcsParticipant;)V

    iput-object p5, p0, Landroid/telephony/ims/RcsGroupThreadParticipantLeftEvent;->mLeavingParticipant:Landroid/telephony/ims/RcsParticipant;

    return-void
.end method


# virtual methods
.method public getLeavingParticipant()Landroid/telephony/ims/RcsParticipant;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsGroupThreadParticipantLeftEvent;->mLeavingParticipant:Landroid/telephony/ims/RcsParticipant;

    return-object v0
.end method

.method public synthetic lambda$persist$0$RcsGroupThreadParticipantLeftEvent(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/ims/RcsGroupThreadParticipantLeftEvent;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/telephony/ims/RcsGroupThreadParticipantLeftEvent;->getRcsGroupThread()Landroid/telephony/ims/RcsGroupThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/RcsGroupThread;->getThreadId()I

    move-result v3

    invoke-virtual {p0}, Landroid/telephony/ims/RcsGroupThreadParticipantLeftEvent;->getOriginatingParticipant()Landroid/telephony/ims/RcsParticipant;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/RcsParticipant;->getId()I

    move-result v4

    invoke-virtual {p0}, Landroid/telephony/ims/RcsGroupThreadParticipantLeftEvent;->getLeavingParticipant()Landroid/telephony/ims/RcsParticipant;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/RcsParticipant;->getId()I

    move-result v5

    move-object v0, p1

    move-object v6, p2

    invoke-interface/range {v0 .. v6}, Landroid/telephony/ims/aidl/IRcs;->createGroupThreadParticipantLeftEvent(JIIILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method persist(Landroid/telephony/ims/RcsControllerCall;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/-$$Lambda$RcsGroupThreadParticipantLeftEvent$vX6x1bZueUi684uTuoFiWxhgs80;

    invoke-direct {v0, p0}, Landroid/telephony/ims/-$$Lambda$RcsGroupThreadParticipantLeftEvent$vX6x1bZueUi684uTuoFiWxhgs80;-><init>(Landroid/telephony/ims/RcsGroupThreadParticipantLeftEvent;)V

    invoke-virtual {p1, v0}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    return-void
.end method
