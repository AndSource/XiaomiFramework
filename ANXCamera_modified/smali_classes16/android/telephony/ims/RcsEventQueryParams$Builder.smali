.class public Landroid/telephony/ims/RcsEventQueryParams$Builder;
.super Ljava/lang/Object;
.source "RcsEventQueryParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/RcsEventQueryParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mEventType:I

.field private mIsAscending:Z

.field private mLimit:I

.field private mSortingProperty:I

.field private mThreadId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Landroid/telephony/ims/RcsEventQueryParams$Builder;->mLimit:I

    return-void
.end method


# virtual methods
.method public build()Landroid/telephony/ims/RcsEventQueryParams;
    .locals 7

    new-instance v6, Landroid/telephony/ims/RcsEventQueryParams;

    iget v1, p0, Landroid/telephony/ims/RcsEventQueryParams$Builder;->mEventType:I

    iget v2, p0, Landroid/telephony/ims/RcsEventQueryParams$Builder;->mThreadId:I

    iget v3, p0, Landroid/telephony/ims/RcsEventQueryParams$Builder;->mSortingProperty:I

    iget-boolean v4, p0, Landroid/telephony/ims/RcsEventQueryParams$Builder;->mIsAscending:Z

    iget v5, p0, Landroid/telephony/ims/RcsEventQueryParams$Builder;->mLimit:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/telephony/ims/RcsEventQueryParams;-><init>(IIIZI)V

    return-object v6
.end method

.method public setEventType(I)Landroid/telephony/ims/RcsEventQueryParams$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/ims/RcsEventQueryParams$Builder;->mEventType:I

    return-object p0
.end method

.method public setGroupThread(Landroid/telephony/ims/RcsGroupThread;)Landroid/telephony/ims/RcsEventQueryParams$Builder;
    .locals 1

    invoke-virtual {p1}, Landroid/telephony/ims/RcsGroupThread;->getThreadId()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsEventQueryParams$Builder;->mThreadId:I

    return-object p0
.end method

.method public setResultLimit(I)Landroid/telephony/ims/RcsEventQueryParams$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    if-ltz p1, :cond_0

    iput p1, p0, Landroid/telephony/ims/RcsEventQueryParams$Builder;->mLimit:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The query limit must be non-negative"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSortDirection(Z)Landroid/telephony/ims/RcsEventQueryParams$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/ims/RcsEventQueryParams$Builder;->mIsAscending:Z

    return-object p0
.end method

.method public setSortProperty(I)Landroid/telephony/ims/RcsEventQueryParams$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/ims/RcsEventQueryParams$Builder;->mSortingProperty:I

    return-object p0
.end method
