.class public Landroid/telephony/ims/RcsMessageQueryParams$Builder;
.super Ljava/lang/Object;
.source "RcsMessageQueryParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/RcsMessageQueryParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mFileTransferPresence:I

.field private mIsAscending:Z

.field private mLimit:I

.field private mMessageLike:Ljava/lang/String;

.field private mMessageType:I

.field private mSortingProperty:I

.field private mThreadId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Landroid/telephony/ims/RcsMessageQueryParams$Builder;->mLimit:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/RcsMessageQueryParams$Builder;->mThreadId:I

    return-void
.end method


# virtual methods
.method public build()Landroid/telephony/ims/RcsMessageQueryParams;
    .locals 9

    new-instance v8, Landroid/telephony/ims/RcsMessageQueryParams;

    iget v1, p0, Landroid/telephony/ims/RcsMessageQueryParams$Builder;->mMessageType:I

    iget v2, p0, Landroid/telephony/ims/RcsMessageQueryParams$Builder;->mFileTransferPresence:I

    iget-object v3, p0, Landroid/telephony/ims/RcsMessageQueryParams$Builder;->mMessageLike:Ljava/lang/String;

    iget v4, p0, Landroid/telephony/ims/RcsMessageQueryParams$Builder;->mThreadId:I

    iget v5, p0, Landroid/telephony/ims/RcsMessageQueryParams$Builder;->mSortingProperty:I

    iget-boolean v6, p0, Landroid/telephony/ims/RcsMessageQueryParams$Builder;->mIsAscending:Z

    iget v7, p0, Landroid/telephony/ims/RcsMessageQueryParams$Builder;->mLimit:I

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/telephony/ims/RcsMessageQueryParams;-><init>(IILjava/lang/String;IIZI)V

    return-object v8
.end method

.method public setFileTransferPresence(I)Landroid/telephony/ims/RcsMessageQueryParams$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/ims/RcsMessageQueryParams$Builder;->mFileTransferPresence:I

    return-object p0
.end method

.method public setMessageLike(Ljava/lang/String;)Landroid/telephony/ims/RcsMessageQueryParams$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/RcsMessageQueryParams$Builder;->mMessageLike:Ljava/lang/String;

    return-object p0
.end method

.method public setMessageType(I)Landroid/telephony/ims/RcsMessageQueryParams$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/ims/RcsMessageQueryParams$Builder;->mMessageType:I

    return-object p0
.end method

.method public setResultLimit(I)Landroid/telephony/ims/RcsMessageQueryParams$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    if-ltz p1, :cond_0

    iput p1, p0, Landroid/telephony/ims/RcsMessageQueryParams$Builder;->mLimit:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The query limit must be non-negative"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSortDirection(Z)Landroid/telephony/ims/RcsMessageQueryParams$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/ims/RcsMessageQueryParams$Builder;->mIsAscending:Z

    return-object p0
.end method

.method public setSortProperty(I)Landroid/telephony/ims/RcsMessageQueryParams$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/ims/RcsMessageQueryParams$Builder;->mSortingProperty:I

    return-object p0
.end method

.method public setThread(Landroid/telephony/ims/RcsThread;)Landroid/telephony/ims/RcsMessageQueryParams$Builder;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/RcsMessageQueryParams$Builder;->mThreadId:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ims/RcsThread;->getThreadId()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsMessageQueryParams$Builder;->mThreadId:I

    :goto_0
    return-object p0
.end method
