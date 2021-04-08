.class public Landroid/telephony/ims/RcsGroupThread;
.super Landroid/telephony/ims/RcsThread;
.source "RcsGroupThread.java"


# direct methods
.method public constructor <init>(Landroid/telephony/ims/RcsControllerCall;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/RcsThread;-><init>(Landroid/telephony/ims/RcsControllerCall;I)V

    return-void
.end method

.method static synthetic lambda$getParticipants$8(Landroid/telephony/ims/RcsParticipantQueryParams;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Landroid/telephony/ims/RcsParticipantQueryResultParcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p1, p0, p2}, Landroid/telephony/ims/aidl/IRcs;->getParticipants(Landroid/telephony/ims/RcsParticipantQueryParams;Ljava/lang/String;)Landroid/telephony/ims/RcsParticipantQueryResultParcelable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addParticipant(Landroid/telephony/ims/RcsParticipant;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/telephony/ims/RcsGroupThread;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsGroupThread$HaJSnZuef49b66N8v9ayzVaOQxQ;

    invoke-direct {v1, p0, p1}, Landroid/telephony/ims/-$$Lambda$RcsGroupThread$HaJSnZuef49b66N8v9ayzVaOQxQ;-><init>(Landroid/telephony/ims/RcsGroupThread;Landroid/telephony/ims/RcsParticipant;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->callWithNoReturn(Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;)V

    return-void
.end method

.method public getConferenceUri()Landroid/net/Uri;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsGroupThread;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsGroupThread$hYpkX2Z60Pf5FiSb6pvoBpmHfXA;

    invoke-direct {v1, p0}, Landroid/telephony/ims/-$$Lambda$RcsGroupThread$hYpkX2Z60Pf5FiSb6pvoBpmHfXA;-><init>(Landroid/telephony/ims/RcsGroupThread;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getGroupIcon()Landroid/net/Uri;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsGroupThread;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsGroupThread$4K1iTAEPwdeTAbDd4wTsX1Jl4S4;

    invoke-direct {v1, p0}, Landroid/telephony/ims/-$$Lambda$RcsGroupThread$4K1iTAEPwdeTAbDd4wTsX1Jl4S4;-><init>(Landroid/telephony/ims/RcsGroupThread;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsGroupThread;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsGroupThread$cwnjgWxIgjmTCKAe7pcICt4Voo0;

    invoke-direct {v1, p0}, Landroid/telephony/ims/-$$Lambda$RcsGroupThread$cwnjgWxIgjmTCKAe7pcICt4Voo0;-><init>(Landroid/telephony/ims/RcsGroupThread;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Landroid/telephony/ims/RcsParticipant;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/RcsParticipant;

    iget-object v1, p0, Landroid/telephony/ims/RcsGroupThread;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    iget-object v2, p0, Landroid/telephony/ims/RcsGroupThread;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v3, Landroid/telephony/ims/-$$Lambda$RcsGroupThread$OMEGtapvlm86Yn7pLPBR5He4UoQ;

    invoke-direct {v3, p0}, Landroid/telephony/ims/-$$Lambda$RcsGroupThread$OMEGtapvlm86Yn7pLPBR5He4UoQ;-><init>(Landroid/telephony/ims/RcsGroupThread;)V

    invoke-virtual {v2, v3}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/RcsParticipant;-><init>(Landroid/telephony/ims/RcsControllerCall;I)V

    return-object v0
.end method

.method public getParticipants()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RcsParticipant;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/RcsParticipantQueryParams$Builder;

    invoke-direct {v0}, Landroid/telephony/ims/RcsParticipantQueryParams$Builder;-><init>()V

    invoke-virtual {v0, p0}, Landroid/telephony/ims/RcsParticipantQueryParams$Builder;->setThread(Landroid/telephony/ims/RcsThread;)Landroid/telephony/ims/RcsParticipantQueryParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/RcsParticipantQueryParams$Builder;->build()Landroid/telephony/ims/RcsParticipantQueryParams;

    move-result-object v0

    new-instance v1, Landroid/telephony/ims/RcsParticipantQueryResult;

    iget-object v2, p0, Landroid/telephony/ims/RcsGroupThread;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    iget-object v3, p0, Landroid/telephony/ims/RcsGroupThread;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v4, Landroid/telephony/ims/-$$Lambda$RcsGroupThread$X2eY_CkF7PfEGF8QwmaD6Cv0PhI;

    invoke-direct {v4, v0}, Landroid/telephony/ims/-$$Lambda$RcsGroupThread$X2eY_CkF7PfEGF8QwmaD6Cv0PhI;-><init>(Landroid/telephony/ims/RcsParticipantQueryParams;)V

    invoke-virtual {v3, v4}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/RcsParticipantQueryResultParcelable;

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/RcsParticipantQueryResult;-><init>(Landroid/telephony/ims/RcsControllerCall;Landroid/telephony/ims/RcsParticipantQueryResultParcelable;)V

    invoke-virtual {v1}, Landroid/telephony/ims/RcsParticipantQueryResult;->getParticipants()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    return-object v4
.end method

.method public isGroup()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$addParticipant$6$RcsGroupThread(Landroid/telephony/ims/RcsParticipant;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsGroupThread;->mThreadId:I

    invoke-virtual {p1}, Landroid/telephony/ims/RcsParticipant;->getId()I

    move-result v1

    invoke-interface {p2, v0, v1, p3}, Landroid/telephony/ims/aidl/IRcs;->addParticipantToGroupThread(IILjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$getConferenceUri$9$RcsGroupThread(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsGroupThread;->mThreadId:I

    invoke-interface {p1, v0, p2}, Landroid/telephony/ims/aidl/IRcs;->getGroupThreadConferenceUri(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getGroupIcon$2$RcsGroupThread(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsGroupThread;->mThreadId:I

    invoke-interface {p1, v0, p2}, Landroid/telephony/ims/aidl/IRcs;->getGroupThreadIcon(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getGroupName$0$RcsGroupThread(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsGroupThread;->mThreadId:I

    invoke-interface {p1, v0, p2}, Landroid/telephony/ims/aidl/IRcs;->getGroupThreadName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getOwner$4$RcsGroupThread(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsGroupThread;->mThreadId:I

    invoke-interface {p1, v0, p2}, Landroid/telephony/ims/aidl/IRcs;->getGroupThreadOwner(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$removeParticipant$7$RcsGroupThread(Landroid/telephony/ims/RcsParticipant;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsGroupThread;->mThreadId:I

    invoke-virtual {p1}, Landroid/telephony/ims/RcsParticipant;->getId()I

    move-result v1

    invoke-interface {p2, v0, v1, p3}, Landroid/telephony/ims/aidl/IRcs;->removeParticipantFromGroupThread(IILjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setConferenceUri$10$RcsGroupThread(Landroid/net/Uri;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsGroupThread;->mThreadId:I

    invoke-interface {p2, v0, p1, p3}, Landroid/telephony/ims/aidl/IRcs;->setGroupThreadConferenceUri(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setGroupIcon$3$RcsGroupThread(Landroid/net/Uri;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsGroupThread;->mThreadId:I

    invoke-interface {p2, v0, p1, p3}, Landroid/telephony/ims/aidl/IRcs;->setGroupThreadIcon(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setGroupName$1$RcsGroupThread(Ljava/lang/String;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsGroupThread;->mThreadId:I

    invoke-interface {p2, v0, p1, p3}, Landroid/telephony/ims/aidl/IRcs;->setGroupThreadName(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setOwner$5$RcsGroupThread(Landroid/telephony/ims/RcsParticipant;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsGroupThread;->mThreadId:I

    invoke-virtual {p1}, Landroid/telephony/ims/RcsParticipant;->getId()I

    move-result v1

    invoke-interface {p2, v0, v1, p3}, Landroid/telephony/ims/aidl/IRcs;->setGroupThreadOwner(IILjava/lang/String;)V

    return-void
.end method

.method public removeParticipant(Landroid/telephony/ims/RcsParticipant;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/telephony/ims/RcsGroupThread;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsGroupThread$xvETBJ_gzJJ5zvelRSNsYZBdXKw;

    invoke-direct {v1, p0, p1}, Landroid/telephony/ims/-$$Lambda$RcsGroupThread$xvETBJ_gzJJ5zvelRSNsYZBdXKw;-><init>(Landroid/telephony/ims/RcsGroupThread;Landroid/telephony/ims/RcsParticipant;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->callWithNoReturn(Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;)V

    return-void
.end method

.method public setConferenceUri(Landroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsGroupThread;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsGroupThread$LhWdWS6noezEn0xijClZdbKHOas;

    invoke-direct {v1, p0, p1}, Landroid/telephony/ims/-$$Lambda$RcsGroupThread$LhWdWS6noezEn0xijClZdbKHOas;-><init>(Landroid/telephony/ims/RcsGroupThread;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->callWithNoReturn(Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;)V

    return-void
.end method

.method public setGroupIcon(Landroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsGroupThread;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsGroupThread$2-3X4NWEVE7qw298P70JdcMW6oM;

    invoke-direct {v1, p0, p1}, Landroid/telephony/ims/-$$Lambda$RcsGroupThread$2-3X4NWEVE7qw298P70JdcMW6oM;-><init>(Landroid/telephony/ims/RcsGroupThread;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->callWithNoReturn(Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;)V

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsGroupThread;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsGroupThread$ZorE2WcUPTtLCwMm_x5CnWwa7YI;

    invoke-direct {v1, p0, p1}, Landroid/telephony/ims/-$$Lambda$RcsGroupThread$ZorE2WcUPTtLCwMm_x5CnWwa7YI;-><init>(Landroid/telephony/ims/RcsGroupThread;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->callWithNoReturn(Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;)V

    return-void
.end method

.method public setOwner(Landroid/telephony/ims/RcsParticipant;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsGroupThread;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsGroupThread$9QKuv_xqJEallZ-aE2sSumu3POo;

    invoke-direct {v1, p0, p1}, Landroid/telephony/ims/-$$Lambda$RcsGroupThread$9QKuv_xqJEallZ-aE2sSumu3POo;-><init>(Landroid/telephony/ims/RcsGroupThread;Landroid/telephony/ims/RcsParticipant;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->callWithNoReturn(Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;)V

    return-void
.end method
