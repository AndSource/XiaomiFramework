.class public final Landroid/telephony/ims/RcsFileTransferCreationParams;
.super Ljava/lang/Object;
.source "RcsFileTransferCreationParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/RcsFileTransferCreationParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContentMimeType:Ljava/lang/String;

.field private mContentUri:Landroid/net/Uri;

.field private mFileSize:J

.field private mFileTransferStatus:I

.field private mHeight:I

.field private mMediaDuration:J

.field private mPreviewMimeType:Ljava/lang/String;

.field private mPreviewUri:Landroid/net/Uri;

.field private mRcsFileTransferSessionId:Ljava/lang/String;

.field private mTransferOffset:J

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/ims/RcsFileTransferCreationParams$1;

    invoke-direct {v0}, Landroid/telephony/ims/RcsFileTransferCreationParams$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/RcsFileTransferCreationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mRcsFileTransferSessionId:Ljava/lang/String;

    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mContentUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mContentMimeType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mFileSize:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mTransferOffset:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mMediaDuration:J

    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mPreviewUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mPreviewMimeType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mFileTransferStatus:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/ims/RcsFileTransferCreationParams$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsFileTransferCreationParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;->access$000(Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mRcsFileTransferSessionId:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;->access$100(Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mContentUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;->access$200(Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mContentMimeType:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;->access$300(Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mFileSize:J

    invoke-static {p1}, Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;->access$400(Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mTransferOffset:J

    invoke-static {p1}, Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;->access$500(Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mWidth:I

    invoke-static {p1}, Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;->access$600(Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mHeight:I

    invoke-static {p1}, Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;->access$700(Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mMediaDuration:J

    invoke-static {p1}, Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;->access$800(Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mPreviewUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;->access$900(Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mPreviewMimeType:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;->access$1000(Landroid/telephony/ims/RcsFileTransferCreationParams$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mFileTransferStatus:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContentMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mContentMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mFileSize:J

    return-wide v0
.end method

.method public getFileTransferStatus()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mFileTransferStatus:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mHeight:I

    return v0
.end method

.method public getMediaDuration()J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mMediaDuration:J

    return-wide v0
.end method

.method public getPreviewMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mPreviewMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mPreviewUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getRcsFileTransferSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mRcsFileTransferSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferOffset()J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mTransferOffset:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mWidth:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mRcsFileTransferSessionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mContentUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mContentMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mFileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mTransferOffset:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mMediaDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mPreviewUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mPreviewMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/ims/RcsFileTransferCreationParams;->mFileTransferStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
