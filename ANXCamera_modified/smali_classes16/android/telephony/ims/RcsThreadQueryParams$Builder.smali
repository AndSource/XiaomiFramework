.class public Landroid/telephony/ims/RcsThreadQueryParams$Builder;
.super Ljava/lang/Object;
.source "RcsThreadQueryParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/RcsThreadQueryParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mIsAscending:Z

.field private mLimit:I

.field private mParticipants:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RcsParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private mSortingProperty:I

.field private mThreadType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Landroid/telephony/ims/RcsThreadQueryParams$Builder;->mLimit:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/RcsThreadQueryParams$Builder;->mParticipants:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public build()Landroid/telephony/ims/RcsThreadQueryParams;
    .locals 7

    new-instance v6, Landroid/telephony/ims/RcsThreadQueryParams;

    iget v1, p0, Landroid/telephony/ims/RcsThreadQueryParams$Builder;->mThreadType:I

    iget-object v2, p0, Landroid/telephony/ims/RcsThreadQueryParams$Builder;->mParticipants:Ljava/util/Set;

    iget v3, p0, Landroid/telephony/ims/RcsThreadQueryParams$Builder;->mLimit:I

    iget v4, p0, Landroid/telephony/ims/RcsThreadQueryParams$Builder;->mSortingProperty:I

    iget-boolean v5, p0, Landroid/telephony/ims/RcsThreadQueryParams$Builder;->mIsAscending:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/telephony/ims/RcsThreadQueryParams;-><init>(ILjava/util/Set;IIZ)V

    return-object v6
.end method

.method public setParticipant(Landroid/telephony/ims/RcsParticipant;)Landroid/telephony/ims/RcsThreadQueryParams$Builder;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsThreadQueryParams$Builder;->mParticipants:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setParticipants(Ljava/util/List;)Landroid/telephony/ims/RcsThreadQueryParams$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsParticipant;",
            ">;)",
            "Landroid/telephony/ims/RcsThreadQueryParams$Builder;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsThreadQueryParams$Builder;->mParticipants:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public setResultLimit(I)Landroid/telephony/ims/RcsThreadQueryParams$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    if-ltz p1, :cond_0

    iput p1, p0, Landroid/telephony/ims/RcsThreadQueryParams$Builder;->mLimit:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The query limit must be non-negative"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSortDirection(Z)Landroid/telephony/ims/RcsThreadQueryParams$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/ims/RcsThreadQueryParams$Builder;->mIsAscending:Z

    return-object p0
.end method

.method public setSortProperty(I)Landroid/telephony/ims/RcsThreadQueryParams$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/ims/RcsThreadQueryParams$Builder;->mSortingProperty:I

    return-object p0
.end method

.method public setThreadType(I)Landroid/telephony/ims/RcsThreadQueryParams$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/ims/RcsThreadQueryParams$Builder;->mThreadType:I

    return-object p0
.end method
