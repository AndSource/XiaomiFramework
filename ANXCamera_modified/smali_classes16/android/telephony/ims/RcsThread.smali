.class public abstract Landroid/telephony/ims/RcsThread;
.super Ljava/lang/Object;
.source "RcsThread.java"


# instance fields
.field protected final mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

.field protected mThreadId:I


# direct methods
.method protected constructor <init>(Landroid/telephony/ims/RcsControllerCall;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/telephony/ims/RcsThread;->mThreadId:I

    iput-object p1, p0, Landroid/telephony/ims/RcsThread;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    return-void
.end method

.method static synthetic lambda$getMessages$4(Landroid/telephony/ims/RcsMessageQueryParams;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Landroid/telephony/ims/RcsMessageQueryResultParcelable;
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


# virtual methods
.method public addIncomingMessage(Landroid/telephony/ims/RcsIncomingMessageCreationParams;)Landroid/telephony/ims/RcsIncomingMessage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsThread;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsThread$9gFw0KtL-BczxOxCksL2zOV2xHM;

    invoke-direct {v1, p0, p1}, Landroid/telephony/ims/-$$Lambda$RcsThread$9gFw0KtL-BczxOxCksL2zOV2xHM;-><init>(Landroid/telephony/ims/RcsThread;Landroid/telephony/ims/RcsIncomingMessageCreationParams;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Landroid/telephony/ims/RcsIncomingMessage;

    iget-object v2, p0, Landroid/telephony/ims/RcsThread;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    invoke-direct {v1, v2, v0}, Landroid/telephony/ims/RcsIncomingMessage;-><init>(Landroid/telephony/ims/RcsControllerCall;I)V

    return-object v1
.end method

.method public addOutgoingMessage(Landroid/telephony/ims/RcsOutgoingMessageCreationParams;)Landroid/telephony/ims/RcsOutgoingMessage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsThread;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsThread$_9zf-uqUJl6VjAbIMvQwKcAyzUs;

    invoke-direct {v1, p0, p1}, Landroid/telephony/ims/-$$Lambda$RcsThread$_9zf-uqUJl6VjAbIMvQwKcAyzUs;-><init>(Landroid/telephony/ims/RcsThread;Landroid/telephony/ims/RcsOutgoingMessageCreationParams;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Landroid/telephony/ims/RcsOutgoingMessage;

    iget-object v2, p0, Landroid/telephony/ims/RcsThread;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    invoke-direct {v1, v2, v0}, Landroid/telephony/ims/RcsOutgoingMessage;-><init>(Landroid/telephony/ims/RcsControllerCall;I)V

    return-object v1
.end method

.method public deleteMessage(Landroid/telephony/ims/RcsMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsThread;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsThread$uAkHFwrvypgP5w5y0Uy4uwQ6blY;

    invoke-direct {v1, p0, p1}, Landroid/telephony/ims/-$$Lambda$RcsThread$uAkHFwrvypgP5w5y0Uy4uwQ6blY;-><init>(Landroid/telephony/ims/RcsThread;Landroid/telephony/ims/RcsMessage;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->callWithNoReturn(Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;)V

    return-void
.end method

.method public getMessages()Landroid/telephony/ims/RcsMessageQueryResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/RcsMessageQueryParams$Builder;

    invoke-direct {v0}, Landroid/telephony/ims/RcsMessageQueryParams$Builder;-><init>()V

    invoke-virtual {v0, p0}, Landroid/telephony/ims/RcsMessageQueryParams$Builder;->setThread(Landroid/telephony/ims/RcsThread;)Landroid/telephony/ims/RcsMessageQueryParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/RcsMessageQueryParams$Builder;->build()Landroid/telephony/ims/RcsMessageQueryParams;

    move-result-object v0

    new-instance v1, Landroid/telephony/ims/RcsMessageQueryResult;

    iget-object v2, p0, Landroid/telephony/ims/RcsThread;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v3, Landroid/telephony/ims/-$$Lambda$RcsThread$A9iPL3bU3iiRv1xCYNUNP76n6Vw;

    invoke-direct {v3, v0}, Landroid/telephony/ims/-$$Lambda$RcsThread$A9iPL3bU3iiRv1xCYNUNP76n6Vw;-><init>(Landroid/telephony/ims/RcsMessageQueryParams;)V

    invoke-virtual {v2, v3}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/RcsMessageQueryResultParcelable;

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/RcsMessageQueryResult;-><init>(Landroid/telephony/ims/RcsControllerCall;Landroid/telephony/ims/RcsMessageQueryResultParcelable;)V

    return-object v1
.end method

.method public getSnippet()Landroid/telephony/ims/RcsMessageSnippet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsThread;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsThread$TwqOqnkLjl05BhB2arTpJkBo73Y;

    invoke-direct {v1, p0}, Landroid/telephony/ims/-$$Lambda$RcsThread$TwqOqnkLjl05BhB2arTpJkBo73Y;-><init>(Landroid/telephony/ims/RcsThread;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/RcsMessageSnippet;

    return-object v0
.end method

.method public getThreadId()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsThread;->mThreadId:I

    return v0
.end method

.method public getThreadType()I
    .locals 1

    invoke-virtual {p0}, Landroid/telephony/ims/RcsThread;->isGroup()Z

    move-result v0

    return v0
.end method

.method public abstract isGroup()Z
.end method

.method public synthetic lambda$addIncomingMessage$1$RcsThread(Landroid/telephony/ims/RcsIncomingMessageCreationParams;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsThread;->mThreadId:I

    invoke-interface {p2, v0, p1, p3}, Landroid/telephony/ims/aidl/IRcs;->addIncomingMessage(ILandroid/telephony/ims/RcsIncomingMessageCreationParams;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$addOutgoingMessage$2$RcsThread(Landroid/telephony/ims/RcsOutgoingMessageCreationParams;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsThread;->mThreadId:I

    invoke-interface {p2, v0, p1, p3}, Landroid/telephony/ims/aidl/IRcs;->addOutgoingMessage(ILandroid/telephony/ims/RcsOutgoingMessageCreationParams;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$deleteMessage$3$RcsThread(Landroid/telephony/ims/RcsMessage;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/telephony/ims/RcsMessage;->getId()I

    move-result v1

    invoke-virtual {p1}, Landroid/telephony/ims/RcsMessage;->isIncoming()Z

    move-result v2

    iget v3, p0, Landroid/telephony/ims/RcsThread;->mThreadId:I

    invoke-virtual {p0}, Landroid/telephony/ims/RcsThread;->isGroup()Z

    move-result v4

    move-object v0, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/telephony/ims/aidl/IRcs;->deleteMessage(IZIZLjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$getSnippet$0$RcsThread(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Landroid/telephony/ims/RcsMessageSnippet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsThread;->mThreadId:I

    invoke-interface {p1, v0, p2}, Landroid/telephony/ims/aidl/IRcs;->getMessageSnippet(ILjava/lang/String;)Landroid/telephony/ims/RcsMessageSnippet;

    move-result-object v0

    return-object v0
.end method
