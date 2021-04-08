.class public final Landroid/telephony/ims/RcsGroupThreadNameChangedEvent;
.super Landroid/telephony/ims/RcsGroupThreadEvent;
.source "RcsGroupThreadNameChangedEvent.java"


# instance fields
.field private final mNewName:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLandroid/telephony/ims/RcsGroupThread;Landroid/telephony/ims/RcsParticipant;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/ims/RcsGroupThreadEvent;-><init>(JLandroid/telephony/ims/RcsGroupThread;Landroid/telephony/ims/RcsParticipant;)V

    iput-object p5, p0, Landroid/telephony/ims/RcsGroupThreadNameChangedEvent;->mNewName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getNewName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsGroupThreadNameChangedEvent;->mNewName:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic lambda$persist$0$RcsGroupThreadNameChangedEvent(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    nop

    invoke-virtual {p0}, Landroid/telephony/ims/RcsGroupThreadNameChangedEvent;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/telephony/ims/RcsGroupThreadNameChangedEvent;->getRcsGroupThread()Landroid/telephony/ims/RcsGroupThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/RcsGroupThread;->getThreadId()I

    move-result v3

    invoke-virtual {p0}, Landroid/telephony/ims/RcsGroupThreadNameChangedEvent;->getOriginatingParticipant()Landroid/telephony/ims/RcsParticipant;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/RcsParticipant;->getId()I

    move-result v4

    iget-object v5, p0, Landroid/telephony/ims/RcsGroupThreadNameChangedEvent;->mNewName:Ljava/lang/String;

    move-object v0, p1

    move-object v6, p2

    invoke-interface/range {v0 .. v6}, Landroid/telephony/ims/aidl/IRcs;->createGroupThreadNameChangedEvent(JIILjava/lang/String;Ljava/lang/String;)I

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

    new-instance v0, Landroid/telephony/ims/-$$Lambda$RcsGroupThreadNameChangedEvent$_UcLy20x7aG6AEgcOgmZOeqTok0;

    invoke-direct {v0, p0}, Landroid/telephony/ims/-$$Lambda$RcsGroupThreadNameChangedEvent$_UcLy20x7aG6AEgcOgmZOeqTok0;-><init>(Landroid/telephony/ims/RcsGroupThreadNameChangedEvent;)V

    invoke-virtual {p1, v0}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    return-void
.end method
