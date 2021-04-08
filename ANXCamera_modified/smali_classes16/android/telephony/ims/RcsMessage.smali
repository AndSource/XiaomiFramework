.class public abstract Landroid/telephony/ims/RcsMessage;
.super Ljava/lang/Object;
.source "RcsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/RcsMessage$RcsMessageStatus;
    }
.end annotation


# static fields
.field public static final DRAFT:I = 0x1

.field public static final FAILED:I = 0x6

.field public static final LOCATION_NOT_SET:D = 4.9E-324

.field public static final NOT_SET:I = 0x0

.field public static final QUEUED:I = 0x2

.field public static final RECEIVED:I = 0x7

.field public static final RETRYING:I = 0x5

.field public static final SEEN:I = 0x9

.field public static final SENDING:I = 0x3

.field public static final SENT:I = 0x4


# instance fields
.field protected final mId:I

.field protected final mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;


# direct methods
.method constructor <init>(Landroid/telephony/ims/RcsControllerCall;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/RcsMessage;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    iput p2, p0, Landroid/telephony/ims/RcsMessage;->mId:I

    return-void
.end method

.method static synthetic lambda$removeFileTransferPart$16(Landroid/telephony/ims/RcsFileTransferPart;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/ims/RcsFileTransferPart;->getId()I

    move-result v0

    invoke-interface {p1, v0, p2}, Landroid/telephony/ims/aidl/IRcs;->deleteFileTransfer(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getFileTransferParts()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RcsFileTransferPart;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Landroid/telephony/ims/RcsMessage;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v2, Landroid/telephony/ims/-$$Lambda$RcsMessage$0kBwAJ2w-8hy0pyzXvF4qM9OTJY;

    invoke-direct {v2, p0}, Landroid/telephony/ims/-$$Lambda$RcsMessage$0kBwAJ2w-8hy0pyzXvF4qM9OTJY;-><init>(Landroid/telephony/ims/RcsMessage;)V

    invoke-virtual {v1, v2}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    new-instance v5, Landroid/telephony/ims/RcsFileTransferPart;

    iget-object v6, p0, Landroid/telephony/ims/RcsMessage;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    invoke-direct {v5, v6, v4}, Landroid/telephony/ims/RcsFileTransferPart;-><init>(Landroid/telephony/ims/RcsControllerCall;I)V

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/RcsMessage;->mId:I

    return v0
.end method

.method public getLatitude()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsMessage;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsMessage$kreYSW19iRp_OhyMXMbvQXAxPUo;

    invoke-direct {v1, p0}, Landroid/telephony/ims/-$$Lambda$RcsMessage$kreYSW19iRp_OhyMXMbvQXAxPUo;-><init>(Landroid/telephony/ims/RcsMessage;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsMessage;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsMessage$x3G08QqJukFKk5K0JbtI4g5JW5o;

    invoke-direct {v1, p0}, Landroid/telephony/ims/-$$Lambda$RcsMessage$x3G08QqJukFKk5K0JbtI4g5JW5o;-><init>(Landroid/telephony/ims/RcsMessage;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getOriginationTimestamp()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsMessage;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsMessage$g_U1Cuc_BEv4JwISu6moBuf_gk0;

    invoke-direct {v1, p0}, Landroid/telephony/ims/-$$Lambda$RcsMessage$g_U1Cuc_BEv4JwISu6moBuf_gk0;-><init>(Landroid/telephony/ims/RcsMessage;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRcsMessageId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsMessage;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsMessage$Q3LSjskzCcY_LjdyGsUpqO_r8VY;

    invoke-direct {v1, p0}, Landroid/telephony/ims/-$$Lambda$RcsMessage$Q3LSjskzCcY_LjdyGsUpqO_r8VY;-><init>(Landroid/telephony/ims/RcsMessage;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsMessage;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsMessage$ENpJTtPeUTVSc1EYo7vY4el8CTs;

    invoke-direct {v1, p0}, Landroid/telephony/ims/-$$Lambda$RcsMessage$ENpJTtPeUTVSc1EYo7vY4el8CTs;-><init>(Landroid/telephony/ims/RcsMessage;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSubscriptionId()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsMessage;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsMessage$aRPnqqKzd_0-r7d0L-yxEGwwqhc;

    invoke-direct {v1, p0}, Landroid/telephony/ims/-$$Lambda$RcsMessage$aRPnqqKzd_0-r7d0L-yxEGwwqhc;-><init>(Landroid/telephony/ims/RcsMessage;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsMessage;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsMessage$jYDUGwQFl9jl0oYVhZlCKVq8rao;

    invoke-direct {v1, p0}, Landroid/telephony/ims/-$$Lambda$RcsMessage$jYDUGwQFl9jl0oYVhZlCKVq8rao;-><init>(Landroid/telephony/ims/RcsMessage;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public insertFileTransfer(Landroid/telephony/ims/RcsFileTransferCreationParams;)Landroid/telephony/ims/RcsFileTransferPart;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/RcsFileTransferPart;

    iget-object v1, p0, Landroid/telephony/ims/RcsMessage;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v2, Landroid/telephony/ims/-$$Lambda$RcsMessage$b6noI0B_AJvyHWAuKOL2fM-kHI4;

    invoke-direct {v2, p0, p1}, Landroid/telephony/ims/-$$Lambda$RcsMessage$b6noI0B_AJvyHWAuKOL2fM-kHI4;-><init>(Landroid/telephony/ims/RcsMessage;Landroid/telephony/ims/RcsFileTransferCreationParams;)V

    invoke-virtual {v1, v2}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/RcsFileTransferPart;-><init>(Landroid/telephony/ims/RcsControllerCall;I)V

    return-object v0
.end method

.method public abstract isIncoming()Z
.end method

.method public synthetic lambda$getFileTransferParts$15$RcsMessage(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsMessage;->mId:I

    invoke-virtual {p0}, Landroid/telephony/ims/RcsMessage;->isIncoming()Z

    move-result v1

    invoke-interface {p1, v0, v1, p2}, Landroid/telephony/ims/aidl/IRcs;->getFileTransfersAttachedToMessage(IZLjava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getLatitude$10$RcsMessage(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Double;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsMessage;->mId:I

    invoke-virtual {p0}, Landroid/telephony/ims/RcsMessage;->isIncoming()Z

    move-result v1

    invoke-interface {p1, v0, v1, p2}, Landroid/telephony/ims/aidl/IRcs;->getLatitudeForMessage(IZLjava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getLongitude$12$RcsMessage(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Double;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsMessage;->mId:I

    invoke-virtual {p0}, Landroid/telephony/ims/RcsMessage;->isIncoming()Z

    move-result v1

    invoke-interface {p1, v0, v1, p2}, Landroid/telephony/ims/aidl/IRcs;->getLongitudeForMessage(IZLjava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getOriginationTimestamp$5$RcsMessage(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsMessage;->mId:I

    invoke-virtual {p0}, Landroid/telephony/ims/RcsMessage;->isIncoming()Z

    move-result v1

    invoke-interface {p1, v0, v1, p2}, Landroid/telephony/ims/aidl/IRcs;->getMessageOriginationTimestamp(IZLjava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getRcsMessageId$7$RcsMessage(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsMessage;->mId:I

    invoke-virtual {p0}, Landroid/telephony/ims/RcsMessage;->isIncoming()Z

    move-result v1

    invoke-interface {p1, v0, v1, p2}, Landroid/telephony/ims/aidl/IRcs;->getGlobalMessageIdForMessage(IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getStatus$3$RcsMessage(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsMessage;->mId:I

    invoke-virtual {p0}, Landroid/telephony/ims/RcsMessage;->isIncoming()Z

    move-result v1

    invoke-interface {p1, v0, v1, p2}, Landroid/telephony/ims/aidl/IRcs;->getMessageStatus(IZLjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getSubscriptionId$0$RcsMessage(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsMessage;->mId:I

    invoke-virtual {p0}, Landroid/telephony/ims/RcsMessage;->isIncoming()Z

    move-result v1

    invoke-interface {p1, v0, v1, p2}, Landroid/telephony/ims/aidl/IRcs;->getMessageSubId(IZLjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getText$8$RcsMessage(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsMessage;->mId:I

    invoke-virtual {p0}, Landroid/telephony/ims/RcsMessage;->isIncoming()Z

    move-result v1

    invoke-interface {p1, v0, v1, p2}, Landroid/telephony/ims/aidl/IRcs;->getTextForMessage(IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$insertFileTransfer$14$RcsMessage(Landroid/telephony/ims/RcsFileTransferCreationParams;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsMessage;->mId:I

    invoke-virtual {p0}, Landroid/telephony/ims/RcsMessage;->isIncoming()Z

    move-result v1

    invoke-interface {p2, v0, v1, p1, p3}, Landroid/telephony/ims/aidl/IRcs;->storeFileTransfer(IZLandroid/telephony/ims/RcsFileTransferCreationParams;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$setLatitude$11$RcsMessage(DLandroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v1, p0, Landroid/telephony/ims/RcsMessage;->mId:I

    invoke-virtual {p0}, Landroid/telephony/ims/RcsMessage;->isIncoming()Z

    move-result v2

    move-object v0, p3

    move-wide v3, p1

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/telephony/ims/aidl/IRcs;->setLatitudeForMessage(IZDLjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setLongitude$13$RcsMessage(DLandroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v1, p0, Landroid/telephony/ims/RcsMessage;->mId:I

    invoke-virtual {p0}, Landroid/telephony/ims/RcsMessage;->isIncoming()Z

    move-result v2

    move-object v0, p3

    move-wide v3, p1

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/telephony/ims/aidl/IRcs;->setLongitudeForMessage(IZDLjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setOriginationTimestamp$4$RcsMessage(JLandroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v1, p0, Landroid/telephony/ims/RcsMessage;->mId:I

    invoke-virtual {p0}, Landroid/telephony/ims/RcsMessage;->isIncoming()Z

    move-result v2

    move-object v0, p3

    move-wide v3, p1

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/telephony/ims/aidl/IRcs;->setMessageOriginationTimestamp(IZJLjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setRcsMessageId$6$RcsMessage(Ljava/lang/String;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsMessage;->mId:I

    invoke-virtual {p0}, Landroid/telephony/ims/RcsMessage;->isIncoming()Z

    move-result v1

    invoke-interface {p2, v0, v1, p1, p3}, Landroid/telephony/ims/aidl/IRcs;->setGlobalMessageIdForMessage(IZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setStatus$2$RcsMessage(ILandroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsMessage;->mId:I

    invoke-virtual {p0}, Landroid/telephony/ims/RcsMessage;->isIncoming()Z

    move-result v1

    invoke-interface {p2, v0, v1, p1, p3}, Landroid/telephony/ims/aidl/IRcs;->setMessageStatus(IZILjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setSubscriptionId$1$RcsMessage(ILandroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsMessage;->mId:I

    invoke-virtual {p0}, Landroid/telephony/ims/RcsMessage;->isIncoming()Z

    move-result v1

    invoke-interface {p2, v0, v1, p1, p3}, Landroid/telephony/ims/aidl/IRcs;->setMessageSubId(IZILjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setText$9$RcsMessage(Ljava/lang/String;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsMessage;->mId:I

    invoke-virtual {p0}, Landroid/telephony/ims/RcsMessage;->isIncoming()Z

    move-result v1

    invoke-interface {p2, v0, v1, p1, p3}, Landroid/telephony/ims/aidl/IRcs;->setTextForMessage(IZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeFileTransferPart(Landroid/telephony/ims/RcsFileTransferPart;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/telephony/ims/RcsMessage;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsMessage$ArUQB5LoWlQIN8Wq6WO2D83-1MM;

    invoke-direct {v1, p1}, Landroid/telephony/ims/-$$Lambda$RcsMessage$ArUQB5LoWlQIN8Wq6WO2D83-1MM;-><init>(Landroid/telephony/ims/RcsFileTransferPart;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->callWithNoReturn(Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;)V

    return-void
.end method

.method public setLatitude(D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsMessage;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsMessage$OWkNB5jXq4SHPk-hN01pKQSg5Z0;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/ims/-$$Lambda$RcsMessage$OWkNB5jXq4SHPk-hN01pKQSg5Z0;-><init>(Landroid/telephony/ims/RcsMessage;D)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->callWithNoReturn(Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;)V

    return-void
.end method

.method public setLongitude(D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsMessage;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsMessage$LUddD5B3is0XmrdznFFrh7_BWBA;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/ims/-$$Lambda$RcsMessage$LUddD5B3is0XmrdznFFrh7_BWBA;-><init>(Landroid/telephony/ims/RcsMessage;D)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->callWithNoReturn(Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;)V

    return-void
.end method

.method public setOriginationTimestamp(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsMessage;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsMessage$tq1Iu9i2c3B7IAVANp7f9nz6BQI;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/ims/-$$Lambda$RcsMessage$tq1Iu9i2c3B7IAVANp7f9nz6BQI;-><init>(Landroid/telephony/ims/RcsMessage;J)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->callWithNoReturn(Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;)V

    return-void
.end method

.method public setRcsMessageId(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsMessage;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsMessage$g8Us4wB8C4Z6FrAxP2EuVIs7uxg;

    invoke-direct {v1, p0, p1}, Landroid/telephony/ims/-$$Lambda$RcsMessage$g8Us4wB8C4Z6FrAxP2EuVIs7uxg;-><init>(Landroid/telephony/ims/RcsMessage;Ljava/lang/String;)V

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

    iget-object v0, p0, Landroid/telephony/ims/RcsMessage;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsMessage$HOpRnAgYuj5X-zRrkxcAiJKt3Yc;

    invoke-direct {v1, p0, p1}, Landroid/telephony/ims/-$$Lambda$RcsMessage$HOpRnAgYuj5X-zRrkxcAiJKt3Yc;-><init>(Landroid/telephony/ims/RcsMessage;I)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->callWithNoReturn(Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;)V

    return-void
.end method

.method public setSubscriptionId(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsMessage;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsMessage$-LY9H-_5LQIoU4Xq6-Om0qdYMVI;

    invoke-direct {v1, p0, p1}, Landroid/telephony/ims/-$$Lambda$RcsMessage$-LY9H-_5LQIoU4Xq6-Om0qdYMVI;-><init>(Landroid/telephony/ims/RcsMessage;I)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->callWithNoReturn(Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsMessage;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsMessage$OAV9C_4ygCWHuq6dzQZ6ryQxcng;

    invoke-direct {v1, p0, p1}, Landroid/telephony/ims/-$$Lambda$RcsMessage$OAV9C_4ygCWHuq6dzQZ6ryQxcng;-><init>(Landroid/telephony/ims/RcsMessage;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->callWithNoReturn(Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;)V

    return-void
.end method
