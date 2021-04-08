.class public final Landroid/telephony/ims/RcsMessageQueryParams;
.super Ljava/lang/Object;
.source "RcsMessageQueryParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/RcsMessageQueryParams$Builder;,
        Landroid/telephony/ims/RcsMessageQueryParams$SortingProperty;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/RcsMessageQueryParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final MESSAGES_WITHOUT_FILE_TRANSFERS:I = 0x8

.field public static final MESSAGES_WITH_FILE_TRANSFERS:I = 0x4

.field public static final MESSAGE_QUERY_PARAMETERS_KEY:Ljava/lang/String; = "message_query_parameters"

.field public static final MESSAGE_TYPE_INCOMING:I = 0x1

.field public static final MESSAGE_TYPE_OUTGOING:I = 0x2

.field public static final SORT_BY_CREATION_ORDER:I = 0x0

.field public static final SORT_BY_TIMESTAMP:I = 0x1

.field public static final THREAD_ID_NOT_SET:I = -0x1


# instance fields
.field private mFileTransferPresence:I

.field private mIsAscending:Z

.field private mLimit:I

.field private mMessageLike:Ljava/lang/String;

.field private mMessageType:I

.field private mSortingProperty:I

.field private mThreadId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/ims/RcsMessageQueryParams$1;

    invoke-direct {v0}, Landroid/telephony/ims/RcsMessageQueryParams$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/RcsMessageQueryParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILjava/lang/String;IIZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/ims/RcsMessageQueryParams;->mMessageType:I

    iput p2, p0, Landroid/telephony/ims/RcsMessageQueryParams;->mFileTransferPresence:I

    iput-object p3, p0, Landroid/telephony/ims/RcsMessageQueryParams;->mMessageLike:Ljava/lang/String;

    iput p5, p0, Landroid/telephony/ims/RcsMessageQueryParams;->mSortingProperty:I

    iput-boolean p6, p0, Landroid/telephony/ims/RcsMessageQueryParams;->mIsAscending:Z

    iput p7, p0, Landroid/telephony/ims/RcsMessageQueryParams;->mLimit:I

    iput p4, p0, Landroid/telephony/ims/RcsMessageQueryParams;->mThreadId:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsMessageQueryParams;->mMessageType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsMessageQueryParams;->mFileTransferPresence:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/RcsMessageQueryParams;->mMessageLike:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsMessageQueryParams;->mSortingProperty:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ims/RcsMessageQueryParams;->mIsAscending:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsMessageQueryParams;->mLimit:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsMessageQueryParams;->mThreadId:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/ims/RcsMessageQueryParams$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsMessageQueryParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFileTransferPresence()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/RcsMessageQueryParams;->mFileTransferPresence:I

    return v0
.end method

.method public getLimit()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/RcsMessageQueryParams;->mLimit:I

    return v0
.end method

.method public getMessageLike()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsMessageQueryParams;->mMessageLike:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageType()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/RcsMessageQueryParams;->mMessageType:I

    return v0
.end method

.method public getSortDirection()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/ims/RcsMessageQueryParams;->mIsAscending:Z

    return v0
.end method

.method public getSortingProperty()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/RcsMessageQueryParams;->mSortingProperty:I

    return v0
.end method

.method public getThreadId()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/RcsMessageQueryParams;->mThreadId:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/telephony/ims/RcsMessageQueryParams;->mMessageType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ims/RcsMessageQueryParams;->mFileTransferPresence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/ims/RcsMessageQueryParams;->mMessageLike:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/ims/RcsMessageQueryParams;->mSortingProperty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/ims/RcsMessageQueryParams;->mIsAscending:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/telephony/ims/RcsMessageQueryParams;->mLimit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ims/RcsMessageQueryParams;->mThreadId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
