.class public final Landroid/telephony/ims/RcsParticipantQueryParams;
.super Ljava/lang/Object;
.source "RcsParticipantQueryParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/RcsParticipantQueryParams$Builder;,
        Landroid/telephony/ims/RcsParticipantQueryParams$SortingProperty;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/RcsParticipantQueryParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARTICIPANT_QUERY_PARAMETERS_KEY:Ljava/lang/String; = "participant_query_parameters"

.field public static final SORT_BY_ALIAS:I = 0x1

.field public static final SORT_BY_CANONICAL_ADDRESS:I = 0x2

.field public static final SORT_BY_CREATION_ORDER:I


# instance fields
.field private mAliasLike:Ljava/lang/String;

.field private mCanonicalAddressLike:Ljava/lang/String;

.field private mIsAscending:Z

.field private mLimit:I

.field private mSortingProperty:I

.field private mThreadId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/ims/RcsParticipantQueryParams$1;

    invoke-direct {v0}, Landroid/telephony/ims/RcsParticipantQueryParams$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/RcsParticipantQueryParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;IZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/ims/RcsParticipantQueryParams;->mThreadId:I

    iput-object p2, p0, Landroid/telephony/ims/RcsParticipantQueryParams;->mAliasLike:Ljava/lang/String;

    iput-object p3, p0, Landroid/telephony/ims/RcsParticipantQueryParams;->mCanonicalAddressLike:Ljava/lang/String;

    iput p4, p0, Landroid/telephony/ims/RcsParticipantQueryParams;->mSortingProperty:I

    iput-boolean p5, p0, Landroid/telephony/ims/RcsParticipantQueryParams;->mIsAscending:Z

    iput p6, p0, Landroid/telephony/ims/RcsParticipantQueryParams;->mLimit:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/RcsParticipantQueryParams;->mAliasLike:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/RcsParticipantQueryParams;->mCanonicalAddressLike:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsParticipantQueryParams;->mSortingProperty:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/telephony/ims/RcsParticipantQueryParams;->mIsAscending:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsParticipantQueryParams;->mLimit:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsParticipantQueryParams;->mThreadId:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/ims/RcsParticipantQueryParams$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsParticipantQueryParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAliasLike()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsParticipantQueryParams;->mAliasLike:Ljava/lang/String;

    return-object v0
.end method

.method public getCanonicalAddressLike()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsParticipantQueryParams;->mCanonicalAddressLike:Ljava/lang/String;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/RcsParticipantQueryParams;->mLimit:I

    return v0
.end method

.method public getSortDirection()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/ims/RcsParticipantQueryParams;->mIsAscending:Z

    return v0
.end method

.method public getSortingProperty()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/RcsParticipantQueryParams;->mSortingProperty:I

    return v0
.end method

.method public getThreadId()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/RcsParticipantQueryParams;->mThreadId:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsParticipantQueryParams;->mAliasLike:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ims/RcsParticipantQueryParams;->mCanonicalAddressLike:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/ims/RcsParticipantQueryParams;->mSortingProperty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/ims/RcsParticipantQueryParams;->mIsAscending:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Landroid/telephony/ims/RcsParticipantQueryParams;->mLimit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ims/RcsParticipantQueryParams;->mThreadId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
