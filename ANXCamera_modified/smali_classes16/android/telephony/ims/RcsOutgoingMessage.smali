.class public Landroid/telephony/ims/RcsOutgoingMessage;
.super Landroid/telephony/ims/RcsMessage;
.source "RcsOutgoingMessage.java"


# direct methods
.method constructor <init>(Landroid/telephony/ims/RcsControllerCall;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/RcsMessage;-><init>(Landroid/telephony/ims/RcsControllerCall;I)V

    return-void
.end method


# virtual methods
.method public getOutgoingDeliveries()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsOutgoingMessageDelivery;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/telephony/ims/RcsOutgoingMessage;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v2, Landroid/telephony/ims/-$$Lambda$RcsOutgoingMessage$uP-7yJmMalJRjXgq_qS_YvAUKuo;

    invoke-direct {v2, p0}, Landroid/telephony/ims/-$$Lambda$RcsOutgoingMessage$uP-7yJmMalJRjXgq_qS_YvAUKuo;-><init>(Landroid/telephony/ims/RcsOutgoingMessage;)V

    invoke-virtual {v1, v2}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Landroid/telephony/ims/RcsOutgoingMessageDelivery;

    iget-object v6, p0, Landroid/telephony/ims/RcsOutgoingMessage;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget v8, p0, Landroid/telephony/ims/RcsOutgoingMessage;->mId:I

    invoke-direct {v5, v6, v7, v8}, Landroid/telephony/ims/RcsOutgoingMessageDelivery;-><init>(Landroid/telephony/ims/RcsControllerCall;II)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public isIncoming()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$getOutgoingDeliveries$0$RcsOutgoingMessage(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsOutgoingMessage;->mId:I

    invoke-interface {p1, v0, p2}, Landroid/telephony/ims/aidl/IRcs;->getMessageRecipients(ILjava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method
