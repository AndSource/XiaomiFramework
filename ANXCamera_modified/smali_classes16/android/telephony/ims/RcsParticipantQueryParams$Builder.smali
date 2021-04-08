.class public Landroid/telephony/ims/RcsParticipantQueryParams$Builder;
.super Ljava/lang/Object;
.source "RcsParticipantQueryParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/RcsParticipantQueryParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAliasLike:Ljava/lang/String;

.field private mCanonicalAddressLike:Ljava/lang/String;

.field private mIsAscending:Z

.field private mLimit:I

.field private mSortingProperty:I

.field private mThreadId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Landroid/telephony/ims/RcsParticipantQueryParams$Builder;->mLimit:I

    return-void
.end method


# virtual methods
.method public build()Landroid/telephony/ims/RcsParticipantQueryParams;
    .locals 8

    new-instance v7, Landroid/telephony/ims/RcsParticipantQueryParams;

    iget v1, p0, Landroid/telephony/ims/RcsParticipantQueryParams$Builder;->mThreadId:I

    iget-object v2, p0, Landroid/telephony/ims/RcsParticipantQueryParams$Builder;->mAliasLike:Ljava/lang/String;

    iget-object v3, p0, Landroid/telephony/ims/RcsParticipantQueryParams$Builder;->mCanonicalAddressLike:Ljava/lang/String;

    iget v4, p0, Landroid/telephony/ims/RcsParticipantQueryParams$Builder;->mSortingProperty:I

    iget-boolean v5, p0, Landroid/telephony/ims/RcsParticipantQueryParams$Builder;->mIsAscending:Z

    iget v6, p0, Landroid/telephony/ims/RcsParticipantQueryParams$Builder;->mLimit:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/telephony/ims/RcsParticipantQueryParams;-><init>(ILjava/lang/String;Ljava/lang/String;IZI)V

    return-object v7
.end method

.method public setAliasLike(Ljava/lang/String;)Landroid/telephony/ims/RcsParticipantQueryParams$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/RcsParticipantQueryParams$Builder;->mAliasLike:Ljava/lang/String;

    return-object p0
.end method

.method public setCanonicalAddressLike(Ljava/lang/String;)Landroid/telephony/ims/RcsParticipantQueryParams$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/RcsParticipantQueryParams$Builder;->mCanonicalAddressLike:Ljava/lang/String;

    return-object p0
.end method

.method public setResultLimit(I)Landroid/telephony/ims/RcsParticipantQueryParams$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    if-ltz p1, :cond_0

    iput p1, p0, Landroid/telephony/ims/RcsParticipantQueryParams$Builder;->mLimit:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The query limit must be non-negative"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSortDirection(Z)Landroid/telephony/ims/RcsParticipantQueryParams$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/ims/RcsParticipantQueryParams$Builder;->mIsAscending:Z

    return-object p0
.end method

.method public setSortProperty(I)Landroid/telephony/ims/RcsParticipantQueryParams$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/ims/RcsParticipantQueryParams$Builder;->mSortingProperty:I

    return-object p0
.end method

.method public setThread(Landroid/telephony/ims/RcsThread;)Landroid/telephony/ims/RcsParticipantQueryParams$Builder;
    .locals 1

    invoke-virtual {p1}, Landroid/telephony/ims/RcsThread;->getThreadId()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsParticipantQueryParams$Builder;->mThreadId:I

    return-object p0
.end method
