.class public final Landroid/telephony/ims/RcsParticipantAliasChangedEvent;
.super Landroid/telephony/ims/RcsEvent;
.source "RcsParticipantAliasChangedEvent.java"


# instance fields
.field private final mNewAlias:Ljava/lang/String;

.field private final mParticipant:Landroid/telephony/ims/RcsParticipant;


# direct methods
.method public constructor <init>(JLandroid/telephony/ims/RcsParticipant;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/RcsEvent;-><init>(J)V

    iput-object p3, p0, Landroid/telephony/ims/RcsParticipantAliasChangedEvent;->mParticipant:Landroid/telephony/ims/RcsParticipant;

    iput-object p4, p0, Landroid/telephony/ims/RcsParticipantAliasChangedEvent;->mNewAlias:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getNewAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsParticipantAliasChangedEvent;->mNewAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getParticipant()Landroid/telephony/ims/RcsParticipant;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsParticipantAliasChangedEvent;->mParticipant:Landroid/telephony/ims/RcsParticipant;

    return-object v0
.end method

.method public synthetic lambda$persist$0$RcsParticipantAliasChangedEvent(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    nop

    invoke-virtual {p0}, Landroid/telephony/ims/RcsParticipantAliasChangedEvent;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/telephony/ims/RcsParticipantAliasChangedEvent;->getParticipant()Landroid/telephony/ims/RcsParticipant;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/RcsParticipant;->getId()I

    move-result v3

    invoke-virtual {p0}, Landroid/telephony/ims/RcsParticipantAliasChangedEvent;->getNewAlias()Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/telephony/ims/aidl/IRcs;->createParticipantAliasChangedEvent(JILjava/lang/String;Ljava/lang/String;)I

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

    new-instance v0, Landroid/telephony/ims/-$$Lambda$RcsParticipantAliasChangedEvent$iaidodGQwVEX4DZ8FekRuR-x3gQ;

    invoke-direct {v0, p0}, Landroid/telephony/ims/-$$Lambda$RcsParticipantAliasChangedEvent$iaidodGQwVEX4DZ8FekRuR-x3gQ;-><init>(Landroid/telephony/ims/RcsParticipantAliasChangedEvent;)V

    invoke-virtual {p1, v0}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    return-void
.end method
