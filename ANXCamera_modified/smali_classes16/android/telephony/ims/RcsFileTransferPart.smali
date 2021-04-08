.class public Landroid/telephony/ims/RcsFileTransferPart;
.super Ljava/lang/Object;
.source "RcsFileTransferPart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/RcsFileTransferPart$RcsFileTransferStatus;
    }
.end annotation


# static fields
.field public static final DOWNLOADING:I = 0x6

.field public static final DOWNLOADING_CANCELLED:I = 0x9

.field public static final DOWNLOADING_FAILED:I = 0x8

.field public static final DOWNLOADING_PAUSED:I = 0x7

.field public static final DRAFT:I = 0x1

.field public static final NOT_SET:I = 0x0

.field public static final SENDING:I = 0x2

.field public static final SENDING_CANCELLED:I = 0x5

.field public static final SENDING_FAILED:I = 0x4

.field public static final SENDING_PAUSED:I = 0x3

.field public static final SUCCEEDED:I = 0xa


# instance fields
.field private mId:I

.field private final mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;


# direct methods
.method constructor <init>(Landroid/telephony/ims/RcsControllerCall;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/RcsFileTransferPart;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    iput p2, p0, Landroid/telephony/ims/RcsFileTransferPart;->mId:I

    return-void
.end method


# virtual methods
.method public getContentMimeType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$X3yfwvMihWzA9VZLnUyeAlq_rVc;

    invoke-direct {v1, p0}, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$X3yfwvMihWzA9VZLnUyeAlq_rVc;-><init>(Landroid/telephony/ims/RcsFileTransferPart;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$kvkf6ASdU-q8pR3hQ4h9sWdIiOQ;

    invoke-direct {v1, p0}, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$kvkf6ASdU-q8pR3hQ4h9sWdIiOQ;-><init>(Landroid/telephony/ims/RcsFileTransferPart;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$RUTTVEFxx0RPDq0oORm2TF6GoJ8;

    invoke-direct {v1, p0}, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$RUTTVEFxx0RPDq0oORm2TF6GoJ8;-><init>(Landroid/telephony/ims/RcsFileTransferPart;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFileTransferSessionId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$KCwtK0S-DWMMpZpRsslXFJ_BwLM;

    invoke-direct {v1, p0}, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$KCwtK0S-DWMMpZpRsslXFJ_BwLM;-><init>(Landroid/telephony/ims/RcsFileTransferPart;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFileTransferStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$5nq0jbEkQm3ys2NrT291eV7NXn8;

    invoke-direct {v1, p0}, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$5nq0jbEkQm3ys2NrT291eV7NXn8;-><init>(Landroid/telephony/ims/RcsFileTransferPart;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$A_4O6faLVs6mpaPsKJIA9HefwvU;

    invoke-direct {v1, p0}, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$A_4O6faLVs6mpaPsKJIA9HefwvU;-><init>(Landroid/telephony/ims/RcsFileTransferPart;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mId:I

    return v0
.end method

.method public getLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$B5UxN0BhElRx-FWpAZgbz41DxuY;

    invoke-direct {v1, p0}, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$B5UxN0BhElRx-FWpAZgbz41DxuY;-><init>(Landroid/telephony/ims/RcsFileTransferPart;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPreviewMimeType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$B5FCShigB8L98Le8jQF4kRDSfhk;

    invoke-direct {v1, p0}, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$B5FCShigB8L98Le8jQF4kRDSfhk;-><init>(Landroid/telephony/ims/RcsFileTransferPart;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewUri()Landroid/net/Uri;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$pZ6z6R9RPQvoiIFOh-auV7YAePw;

    invoke-direct {v1, p0}, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$pZ6z6R9RPQvoiIFOh-auV7YAePw;-><init>(Landroid/telephony/ims/RcsFileTransferPart;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getTransferOffset()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$m0Uztiu9azOAnoxBEWLsT8Br_HE;

    invoke-direct {v1, p0}, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$m0Uztiu9azOAnoxBEWLsT8Br_HE;-><init>(Landroid/telephony/ims/RcsFileTransferPart;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWidth()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$cbwg3i9EtuBNKXI5md4IWJQ_GDo;

    invoke-direct {v1, p0}, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$cbwg3i9EtuBNKXI5md4IWJQ_GDo;-><init>(Landroid/telephony/ims/RcsFileTransferPart;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$getContentMimeType$5$RcsFileTransferPart(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mId:I

    invoke-interface {p1, v0, p2}, Landroid/telephony/ims/aidl/IRcs;->getFileTransferContentType(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getContentUri$3$RcsFileTransferPart(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mId:I

    invoke-interface {p1, v0, p2}, Landroid/telephony/ims/aidl/IRcs;->getFileTransferContentUri(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getFileSize$7$RcsFileTransferPart(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mId:I

    invoke-interface {p1, v0, p2}, Landroid/telephony/ims/aidl/IRcs;->getFileTransferFileSize(ILjava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getFileTransferSessionId$1$RcsFileTransferPart(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mId:I

    invoke-interface {p1, v0, p2}, Landroid/telephony/ims/aidl/IRcs;->getFileTransferSessionId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getFileTransferStatus$11$RcsFileTransferPart(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mId:I

    invoke-interface {p1, v0, p2}, Landroid/telephony/ims/aidl/IRcs;->getFileTransferStatus(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getHeight$14$RcsFileTransferPart(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mId:I

    invoke-interface {p1, v0, p2}, Landroid/telephony/ims/aidl/IRcs;->getFileTransferHeight(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getLength$16$RcsFileTransferPart(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mId:I

    invoke-interface {p1, v0, p2}, Landroid/telephony/ims/aidl/IRcs;->getFileTransferLength(ILjava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getPreviewMimeType$20$RcsFileTransferPart(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mId:I

    invoke-interface {p1, v0, p2}, Landroid/telephony/ims/aidl/IRcs;->getFileTransferPreviewType(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getPreviewUri$18$RcsFileTransferPart(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mId:I

    invoke-interface {p1, v0, p2}, Landroid/telephony/ims/aidl/IRcs;->getFileTransferPreviewUri(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getTransferOffset$9$RcsFileTransferPart(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mId:I

    invoke-interface {p1, v0, p2}, Landroid/telephony/ims/aidl/IRcs;->getFileTransferTransferOffset(ILjava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getWidth$12$RcsFileTransferPart(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mId:I

    invoke-interface {p1, v0, p2}, Landroid/telephony/ims/aidl/IRcs;->getFileTransferWidth(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$setContentMimeType$4$RcsFileTransferPart(Ljava/lang/String;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mId:I

    invoke-interface {p2, v0, p1, p3}, Landroid/telephony/ims/aidl/IRcs;->setFileTransferContentType(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setContentUri$2$RcsFileTransferPart(Landroid/net/Uri;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mId:I

    invoke-interface {p2, v0, p1, p3}, Landroid/telephony/ims/aidl/IRcs;->setFileTransferContentUri(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setFileSize$6$RcsFileTransferPart(JLandroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mId:I

    invoke-interface {p3, v0, p1, p2, p4}, Landroid/telephony/ims/aidl/IRcs;->setFileTransferFileSize(IJLjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setFileTransferSessionId$0$RcsFileTransferPart(Ljava/lang/String;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mId:I

    invoke-interface {p2, v0, p1, p3}, Landroid/telephony/ims/aidl/IRcs;->setFileTransferSessionId(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setFileTransferStatus$10$RcsFileTransferPart(ILandroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mId:I

    invoke-interface {p2, v0, p1, p3}, Landroid/telephony/ims/aidl/IRcs;->setFileTransferStatus(IILjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setHeight$15$RcsFileTransferPart(ILandroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mId:I

    invoke-interface {p2, v0, p1, p3}, Landroid/telephony/ims/aidl/IRcs;->setFileTransferHeight(IILjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setLength$17$RcsFileTransferPart(JLandroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mId:I

    invoke-interface {p3, v0, p1, p2, p4}, Landroid/telephony/ims/aidl/IRcs;->setFileTransferLength(IJLjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setPreviewMimeType$21$RcsFileTransferPart(Ljava/lang/String;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mId:I

    invoke-interface {p2, v0, p1, p3}, Landroid/telephony/ims/aidl/IRcs;->setFileTransferPreviewType(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setPreviewUri$19$RcsFileTransferPart(Landroid/net/Uri;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mId:I

    invoke-interface {p2, v0, p1, p3}, Landroid/telephony/ims/aidl/IRcs;->setFileTransferPreviewUri(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setTransferOffset$8$RcsFileTransferPart(JLandroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mId:I

    invoke-interface {p3, v0, p1, p2, p4}, Landroid/telephony/ims/aidl/IRcs;->setFileTransferTransferOffset(IJLjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setWidth$13$RcsFileTransferPart(ILandroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mId:I

    invoke-interface {p2, v0, p1, p3}, Landroid/telephony/ims/aidl/IRcs;->setFileTransferWidth(IILjava/lang/String;)V

    return-void
.end method

.method public setContentMimeType(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$_U_JpxTv_8vqlG8zHOxxNMMBqjQ;

    invoke-direct {v1, p0, p1}, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$_U_JpxTv_8vqlG8zHOxxNMMBqjQ;-><init>(Landroid/telephony/ims/RcsFileTransferPart;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->callWithNoReturn(Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;)V

    return-void
.end method

.method public setContentUri(Landroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$gHrYiSj4B912GPuzgw6v3qjIwX4;

    invoke-direct {v1, p0, p1}, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$gHrYiSj4B912GPuzgw6v3qjIwX4;-><init>(Landroid/telephony/ims/RcsFileTransferPart;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->callWithNoReturn(Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;)V

    return-void
.end method

.method public setFileSize(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$iFRtCc6m4Iup_st7fFqTiBlhq4o;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$iFRtCc6m4Iup_st7fFqTiBlhq4o;-><init>(Landroid/telephony/ims/RcsFileTransferPart;J)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->callWithNoReturn(Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;)V

    return-void
.end method

.method public setFileTransferSessionId(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$eRysznIV0Pr9U0YPttLhvYxp2JE;

    invoke-direct {v1, p0, p1}, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$eRysznIV0Pr9U0YPttLhvYxp2JE;-><init>(Landroid/telephony/ims/RcsFileTransferPart;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->callWithNoReturn(Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;)V

    return-void
.end method

.method public setFileTransferStatus(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$1I5TANd1JGzUvxVPbWbmYgYHgZg;

    invoke-direct {v1, p0, p1}, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$1I5TANd1JGzUvxVPbWbmYgYHgZg;-><init>(Landroid/telephony/ims/RcsFileTransferPart;I)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->callWithNoReturn(Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;)V

    return-void
.end method

.method public setHeight(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$Ju03J4o5Gnha0Ynbq35sw9HL5nU;

    invoke-direct {v1, p0, p1}, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$Ju03J4o5Gnha0Ynbq35sw9HL5nU;-><init>(Landroid/telephony/ims/RcsFileTransferPart;I)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->callWithNoReturn(Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;)V

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ims/RcsFileTransferPart;->mId:I

    return-void
.end method

.method public setLength(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$kXXTp4pKFNyBztnIElEJdJrz8F8;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$kXXTp4pKFNyBztnIElEJdJrz8F8;-><init>(Landroid/telephony/ims/RcsFileTransferPart;J)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->callWithNoReturn(Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;)V

    return-void
.end method

.method public setPreviewMimeType(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$Js49W5j_aEL3sBPRKR3zwBZEwQc;

    invoke-direct {v1, p0, p1}, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$Js49W5j_aEL3sBPRKR3zwBZEwQc;-><init>(Landroid/telephony/ims/RcsFileTransferPart;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->callWithNoReturn(Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;)V

    return-void
.end method

.method public setPreviewUri(Landroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$4bTF8UNuphmPWGI1zJtDN0vEMKQ;

    invoke-direct {v1, p0, p1}, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$4bTF8UNuphmPWGI1zJtDN0vEMKQ;-><init>(Landroid/telephony/ims/RcsFileTransferPart;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->callWithNoReturn(Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;)V

    return-void
.end method

.method public setTransferOffset(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$NeUx42-gy02-DXOOj3iF2Y92GoU;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$NeUx42-gy02-DXOOj3iF2Y92GoU;-><init>(Landroid/telephony/ims/RcsFileTransferPart;J)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->callWithNoReturn(Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;)V

    return-void
.end method

.method public setWidth(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsFileTransferPart;->mRcsControllerCall:Landroid/telephony/ims/RcsControllerCall;

    new-instance v1, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$dlGXDrIqL-9NsNgH4LIS6Yg7j6k;

    invoke-direct {v1, p0, p1}, Landroid/telephony/ims/-$$Lambda$RcsFileTransferPart$dlGXDrIqL-9NsNgH4LIS6Yg7j6k;-><init>(Landroid/telephony/ims/RcsFileTransferPart;I)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsControllerCall;->callWithNoReturn(Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;)V

    return-void
.end method
