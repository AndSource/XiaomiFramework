.class public Landroid/telephony/ims/RcsParticipant;
.super Ljava/lang/Object;
.source "RcsParticipant.java"


# instance fields
.field private final mId:I

.field private final mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;


# direct methods
.method public constructor <init>(Landroid/telephony/ims/RcsControllerCall;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/RcsParticipant;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    iput p2, p0, Landroid/telephony/ims/RcsParticipant;->mId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/telephony/ims/RcsParticipant;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/telephony/ims/RcsParticipant;

    iget v3, p0, Landroid/telephony/ims/RcsParticipant;->mId:I

    iget v4, v1, Landroid/telephony/ims/RcsParticipant;->mId:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsParticipant;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsParticipant$MNtRFbM6h-ycH3bPEUZgB5f56zs;

    invoke-direct {v1, p0}, Landroid/telephony/ims/-$$Lambda$RcsParticipant$MNtRFbM6h-ycH3bPEUZgB5f56zs;-><init>(Landroid/telephony/ims/RcsParticipant;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCanonicalAddress()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsParticipant;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsParticipant$T35onLZnU-uRTl7zQ7ZWRFtFvx4;

    invoke-direct {v1, p0}, Landroid/telephony/ims/-$$Lambda$RcsParticipant$T35onLZnU-uRTl7zQ7ZWRFtFvx4;-><init>(Landroid/telephony/ims/RcsParticipant;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContactId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsParticipant;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsParticipant$up5zUlvCkFUru1_1NfgXrzNmBic;

    invoke-direct {v1, p0}, Landroid/telephony/ims/-$$Lambda$RcsParticipant$up5zUlvCkFUru1_1NfgXrzNmBic;-><init>(Landroid/telephony/ims/RcsParticipant;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/RcsParticipant;->mId:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/RcsParticipant;->mId:I

    return v0
.end method

.method public synthetic lambda$getAlias$1$RcsParticipant(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsParticipant;->mId:I

    invoke-interface {p1, v0, p2}, Landroid/telephony/ims/aidl/IRcs;->getRcsParticipantAlias(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getCanonicalAddress$0$RcsParticipant(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsParticipant;->mId:I

    invoke-interface {p1, v0, p2}, Landroid/telephony/ims/aidl/IRcs;->getRcsParticipantCanonicalAddress(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getContactId$3$RcsParticipant(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsParticipant;->mId:I

    invoke-interface {p1, v0, p2}, Landroid/telephony/ims/aidl/IRcs;->getRcsParticipantContactId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$setAlias$2$RcsParticipant(Ljava/lang/String;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsParticipant;->mId:I

    invoke-interface {p2, v0, p1, p3}, Landroid/telephony/ims/aidl/IRcs;->setRcsParticipantAlias(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setContactId$4$RcsParticipant(Ljava/lang/String;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsParticipant;->mId:I

    invoke-interface {p2, v0, p1, p3}, Landroid/telephony/ims/aidl/IRcs;->setRcsParticipantContactId(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsParticipant;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsParticipant$xir-e-NE3auWDac4dOx89mKtRKU;

    invoke-direct {v1, p0, p1}, Landroid/telephony/ims/-$$Lambda$RcsParticipant$xir-e-NE3auWDac4dOx89mKtRKU;-><init>(Landroid/telephony/ims/RcsParticipant;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->callWithNoReturn(Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;)V

    return-void
.end method

.method public setContactId(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsParticipant;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsParticipant$HgHlMU15W2RReyvhk-UQ-432pfA;

    invoke-direct {v1, p0, p1}, Landroid/telephony/ims/-$$Lambda$RcsParticipant$HgHlMU15W2RReyvhk-UQ-432pfA;-><init>(Landroid/telephony/ims/RcsParticipant;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->callWithNoReturn(Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;)V

    return-void
.end method
