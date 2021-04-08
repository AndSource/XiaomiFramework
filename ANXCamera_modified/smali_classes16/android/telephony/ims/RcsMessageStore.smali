.class public Landroid/telephony/ims/RcsMessageStore;
.super Ljava/lang/Object;
.source "RcsMessageStore.java"


# instance fields
.field mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/ims/RcsControllerCall;

    invoke-direct {v0, p1}, Landroid/telephony/ims/RcsControllerCall;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/telephony/ims/RcsMessageStore;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    return-void
.end method

.method static synthetic lambda$createGroupThread$9([ILjava/lang/String;Landroid/net/Uri;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p3, p0, p1, p2, p4}, Landroid/telephony/ims/aidl/IRcs;->createGroupThread([ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$createRcs1To1Thread$8(Landroid/telephony/ims/RcsParticipant;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/ims/RcsParticipant;->getId()I

    move-result v0

    invoke-interface {p1, v0, p2}, Landroid/telephony/ims/aidl/IRcs;->createRcs1To1Thread(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$createRcsParticipant$11(Ljava/lang/String;Ljava/lang/String;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p2, p0, p1, p3}, Landroid/telephony/ims/aidl/IRcs;->createRcsParticipant(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$deleteThread$10(Landroid/telephony/ims/RcsThread;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/ims/RcsThread;->getThreadId()I

    move-result v0

    invoke-virtual {p0}, Landroid/telephony/ims/RcsThread;->getThreadType()I

    move-result v1

    invoke-interface {p1, v0, v1, p2}, Landroid/telephony/ims/aidl/IRcs;->deleteThread(IILjava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getRcsEvents$6(Landroid/telephony/ims/RcsEventQueryParams;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Landroid/telephony/ims/RcsEventQueryResultDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p1, p0, p2}, Landroid/telephony/ims/aidl/IRcs;->getEvents(Landroid/telephony/ims/RcsEventQueryParams;Ljava/lang/String;)Landroid/telephony/ims/RcsEventQueryResultDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getRcsEvents$7(Landroid/telephony/ims/RcsQueryContinuationToken;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Landroid/telephony/ims/RcsEventQueryResultDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p1, p0, p2}, Landroid/telephony/ims/aidl/IRcs;->getEventsWithToken(Landroid/telephony/ims/RcsQueryContinuationToken;Ljava/lang/String;)Landroid/telephony/ims/RcsEventQueryResultDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getRcsMessages$4(Landroid/telephony/ims/RcsMessageQueryParams;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Landroid/telephony/ims/RcsMessageQueryResultParcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p1, p0, p2}, Landroid/telephony/ims/aidl/IRcs;->getMessages(Landroid/telephony/ims/RcsMessageQueryParams;Ljava/lang/String;)Landroid/telephony/ims/RcsMessageQueryResultParcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getRcsMessages$5(Landroid/telephony/ims/RcsQueryContinuationToken;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Landroid/telephony/ims/RcsMessageQueryResultParcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p1, p0, p2}, Landroid/telephony/ims/aidl/IRcs;->getMessagesWithToken(Landroid/telephony/ims/RcsQueryContinuationToken;Ljava/lang/String;)Landroid/telephony/ims/RcsMessageQueryResultParcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getRcsParticipants$2(Landroid/telephony/ims/RcsParticipantQueryParams;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Landroid/telephony/ims/RcsParticipantQueryResultParcelable;
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

.method static synthetic lambda$getRcsParticipants$3(Landroid/telephony/ims/RcsQueryContinuationToken;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Landroid/telephony/ims/RcsParticipantQueryResultParcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p1, p0, p2}, Landroid/telephony/ims/aidl/IRcs;->getParticipantsWithToken(Landroid/telephony/ims/RcsQueryContinuationToken;Ljava/lang/String;)Landroid/telephony/ims/RcsParticipantQueryResultParcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getRcsThreads$0(Landroid/telephony/ims/RcsThreadQueryParams;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Landroid/telephony/ims/RcsThreadQueryResultParcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p1, p0, p2}, Landroid/telephony/ims/aidl/IRcs;->getRcsThreads(Landroid/telephony/ims/RcsThreadQueryParams;Ljava/lang/String;)Landroid/telephony/ims/RcsThreadQueryResultParcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getRcsThreads$1(Landroid/telephony/ims/RcsQueryContinuationToken;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Landroid/telephony/ims/RcsThreadQueryResultParcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p1, p0, p2}, Landroid/telephony/ims/aidl/IRcs;->getRcsThreadsWithToken(Landroid/telephony/ims/RcsQueryContinuationToken;Ljava/lang/String;)Landroid/telephony/ims/RcsThreadQueryResultParcelable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createGroupThread(Ljava/util/List;Ljava/lang/String;Landroid/net/Uri;)Landroid/telephony/ims/RcsGroupThread;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsParticipant;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ")",
            "Landroid/telephony/ims/RcsGroupThread;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [I

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RcsParticipant;

    invoke-virtual {v2}, Landroid/telephony/ims/RcsParticipant;->getId()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v1, v0

    iget-object v2, p0, Landroid/telephony/ims/RcsMessageStore;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v3, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$g309WUVpYx8N7s-uWdUAGJXtJOs;

    invoke-direct {v3, v1, p2, p3}, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$g309WUVpYx8N7s-uWdUAGJXtJOs;-><init>([ILjava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v3, Landroid/telephony/ims/RcsGroupThread;

    iget-object v4, p0, Landroid/telephony/ims/RcsMessageStore;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    invoke-direct {v3, v4, v2}, Landroid/telephony/ims/RcsGroupThread;-><init>(Landroid/telephony/ims/RcsControllerCall;I)V

    return-object v3
.end method

.method public createRcs1To1Thread(Landroid/telephony/ims/RcsParticipant;)Landroid/telephony/ims/Rcs1To1Thread;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/Rcs1To1Thread;

    iget-object v1, p0, Landroid/telephony/ims/RcsMessageStore;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v2, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$eOFObBGn-N5PMKJvVTBw06iJWQ4;

    invoke-direct {v2, p1}, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$eOFObBGn-N5PMKJvVTBw06iJWQ4;-><init>(Landroid/telephony/ims/RcsParticipant;)V

    invoke-virtual {v1, v2}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/Rcs1To1Thread;-><init>(Landroid/telephony/ims/RcsControllerCall;I)V

    return-object v0
.end method

.method public createRcsParticipant(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/ims/RcsParticipant;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/RcsParticipant;

    iget-object v1, p0, Landroid/telephony/ims/RcsMessageStore;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v2, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$d1Om4XlR70Dyh7qD9d6F4NZZkQI;

    invoke-direct {v2, p1, p2}, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$d1Om4XlR70Dyh7qD9d6F4NZZkQI;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/RcsParticipant;-><init>(Landroid/telephony/ims/RcsControllerCall;I)V

    return-object v0
.end method

.method public deleteThread(Landroid/telephony/ims/RcsThread;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/telephony/ims/RcsMessageStore;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$nbXWLR_ux8VCEHNEyE7JO0J05YI;

    invoke-direct {v1, p1}, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$nbXWLR_ux8VCEHNEyE7JO0J05YI;-><init>(Landroid/telephony/ims/RcsThread;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Landroid/telephony/ims/RcsMessageStoreException;

    const-string v2, "Could not delete RcsThread"

    invoke-direct {v1, v2}, Landroid/telephony/ims/RcsMessageStoreException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getRcsEvents(Landroid/telephony/ims/RcsEventQueryParams;)Landroid/telephony/ims/RcsEventQueryResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsMessageStore;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$IvBKppwBc6MDwzIkAi2XJcVB-iI;

    invoke-direct {v1, p1}, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$IvBKppwBc6MDwzIkAi2XJcVB-iI;-><init>(Landroid/telephony/ims/RcsEventQueryParams;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/RcsEventQueryResultDescriptor;

    iget-object v1, p0, Landroid/telephony/ims/RcsMessageStore;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsEventQueryResultDescriptor;->getRcsEventQueryResult(Landroid/telephony/ims/RcsControllerCall;)Landroid/telephony/ims/RcsEventQueryResult;

    move-result-object v0

    return-object v0
.end method

.method public getRcsEvents(Landroid/telephony/ims/RcsQueryContinuationToken;)Landroid/telephony/ims/RcsEventQueryResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsMessageStore;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$RFZerRPNR1WyCuEIu6_yEveDhrk;

    invoke-direct {v1, p1}, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$RFZerRPNR1WyCuEIu6_yEveDhrk;-><init>(Landroid/telephony/ims/RcsQueryContinuationToken;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/RcsEventQueryResultDescriptor;

    iget-object v1, p0, Landroid/telephony/ims/RcsMessageStore;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsEventQueryResultDescriptor;->getRcsEventQueryResult(Landroid/telephony/ims/RcsControllerCall;)Landroid/telephony/ims/RcsEventQueryResult;

    move-result-object v0

    return-object v0
.end method

.method public getRcsMessages(Landroid/telephony/ims/RcsMessageQueryParams;)Landroid/telephony/ims/RcsMessageQueryResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/RcsMessageQueryResult;

    iget-object v1, p0, Landroid/telephony/ims/RcsMessageStore;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v2, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$5QXAY7bGFdmsWgLF0pk1tyYYovg;

    invoke-direct {v2, p1}, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$5QXAY7bGFdmsWgLF0pk1tyYYovg;-><init>(Landroid/telephony/ims/RcsMessageQueryParams;)V

    invoke-virtual {v1, v2}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RcsMessageQueryResultParcelable;

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/RcsMessageQueryResult;-><init>(Landroid/telephony/ims/RcsControllerCall;Landroid/telephony/ims/RcsMessageQueryResultParcelable;)V

    return-object v0
.end method

.method public getRcsMessages(Landroid/telephony/ims/RcsQueryContinuationToken;)Landroid/telephony/ims/RcsMessageQueryResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/RcsMessageQueryResult;

    iget-object v1, p0, Landroid/telephony/ims/RcsMessageStore;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v2, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$fs2V7Gtqd2gkYR7NanLG2NjZNho;

    invoke-direct {v2, p1}, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$fs2V7Gtqd2gkYR7NanLG2NjZNho;-><init>(Landroid/telephony/ims/RcsQueryContinuationToken;)V

    invoke-virtual {v1, v2}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RcsMessageQueryResultParcelable;

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/RcsMessageQueryResult;-><init>(Landroid/telephony/ims/RcsControllerCall;Landroid/telephony/ims/RcsMessageQueryResultParcelable;)V

    return-object v0
.end method

.method public getRcsParticipants(Landroid/telephony/ims/RcsParticipantQueryParams;)Landroid/telephony/ims/RcsParticipantQueryResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/RcsParticipantQueryResult;

    iget-object v1, p0, Landroid/telephony/ims/RcsMessageStore;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v2, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$720PbSnOJzhKXiqHw1UEfx5w-6A;

    invoke-direct {v2, p1}, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$720PbSnOJzhKXiqHw1UEfx5w-6A;-><init>(Landroid/telephony/ims/RcsParticipantQueryParams;)V

    invoke-virtual {v1, v2}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RcsParticipantQueryResultParcelable;

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/RcsParticipantQueryResult;-><init>(Landroid/telephony/ims/RcsControllerCall;Landroid/telephony/ims/RcsParticipantQueryResultParcelable;)V

    return-object v0
.end method

.method public getRcsParticipants(Landroid/telephony/ims/RcsQueryContinuationToken;)Landroid/telephony/ims/RcsParticipantQueryResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/RcsParticipantQueryResult;

    iget-object v1, p0, Landroid/telephony/ims/RcsMessageStore;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v2, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$tSyQsX68KutSWLEXxfgNSJ47ep0;

    invoke-direct {v2, p1}, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$tSyQsX68KutSWLEXxfgNSJ47ep0;-><init>(Landroid/telephony/ims/RcsQueryContinuationToken;)V

    invoke-virtual {v1, v2}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RcsParticipantQueryResultParcelable;

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/RcsParticipantQueryResult;-><init>(Landroid/telephony/ims/RcsControllerCall;Landroid/telephony/ims/RcsParticipantQueryResultParcelable;)V

    return-object v0
.end method

.method public getRcsThreads(Landroid/telephony/ims/RcsQueryContinuationToken;)Landroid/telephony/ims/RcsThreadQueryResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/RcsThreadQueryResult;

    iget-object v1, p0, Landroid/telephony/ims/RcsMessageStore;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v2, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$XArwINUevYo-Ol_OgZskFwRkGhs;

    invoke-direct {v2, p1}, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$XArwINUevYo-Ol_OgZskFwRkGhs;-><init>(Landroid/telephony/ims/RcsQueryContinuationToken;)V

    invoke-virtual {v1, v2}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RcsThreadQueryResultParcelable;

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/RcsThreadQueryResult;-><init>(Landroid/telephony/ims/RcsControllerCall;Landroid/telephony/ims/RcsThreadQueryResultParcelable;)V

    return-object v0
.end method

.method public getRcsThreads(Landroid/telephony/ims/RcsThreadQueryParams;)Landroid/telephony/ims/RcsThreadQueryResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/RcsThreadQueryResult;

    iget-object v1, p0, Landroid/telephony/ims/RcsMessageStore;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v2, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$z090Zf4wxRrBwUxXanwm4N3vb7w;

    invoke-direct {v2, p1}, Landroid/telephony/ims/-$$Lambda$RcsMessageStore$z090Zf4wxRrBwUxXanwm4N3vb7w;-><init>(Landroid/telephony/ims/RcsThreadQueryParams;)V

    invoke-virtual {v1, v2}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RcsThreadQueryResultParcelable;

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/RcsThreadQueryResult;-><init>(Landroid/telephony/ims/RcsControllerCall;Landroid/telephony/ims/RcsThreadQueryResultParcelable;)V

    return-object v0
.end method

.method public persistRcsEvent(Landroid/telephony/ims/RcsEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsMessageStore;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    invoke-virtual {p1, v0}, Landroid/telephony/ims/RcsEvent;->persist(Landroid/telephony/ims/RcsControllerCall;)V

    return-void
.end method
