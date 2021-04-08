.class public Landroid/telephony/ims/RcsMessageCreationParams;
.super Ljava/lang/Object;
.source "RcsMessageCreationParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/RcsMessageCreationParams$Builder;
    }
.end annotation


# instance fields
.field private final mLatitude:D

.field private final mLongitude:D

.field private final mMessageStatus:I

.field private final mOriginationTimestamp:J

.field private final mRcsMessageGlobalId:Ljava/lang/String;

.field private final mSubId:I

.field private final mText:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/RcsMessageCreationParams;->mRcsMessageGlobalId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsMessageCreationParams;->mSubId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsMessageCreationParams;->mMessageStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/ims/RcsMessageCreationParams;->mOriginationTimestamp:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/RcsMessageCreationParams;->mText:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/ims/RcsMessageCreationParams;->mLatitude:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/ims/RcsMessageCreationParams;->mLongitude:D

    return-void
.end method

.method protected constructor <init>(Landroid/telephony/ims/RcsMessageCreationParams$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/telephony/ims/RcsMessageCreationParams$Builder;->access$000(Landroid/telephony/ims/RcsMessageCreationParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/RcsMessageCreationParams;->mRcsMessageGlobalId:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/ims/RcsMessageCreationParams$Builder;->access$100(Landroid/telephony/ims/RcsMessageCreationParams$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsMessageCreationParams;->mSubId:I

    invoke-static {p1}, Landroid/telephony/ims/RcsMessageCreationParams$Builder;->access$200(Landroid/telephony/ims/RcsMessageCreationParams$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsMessageCreationParams;->mMessageStatus:I

    invoke-static {p1}, Landroid/telephony/ims/RcsMessageCreationParams$Builder;->access$300(Landroid/telephony/ims/RcsMessageCreationParams$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/ims/RcsMessageCreationParams;->mOriginationTimestamp:J

    invoke-static {p1}, Landroid/telephony/ims/RcsMessageCreationParams$Builder;->access$400(Landroid/telephony/ims/RcsMessageCreationParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/RcsMessageCreationParams;->mText:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/ims/RcsMessageCreationParams$Builder;->access$500(Landroid/telephony/ims/RcsMessageCreationParams$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/ims/RcsMessageCreationParams;->mLatitude:D

    invoke-static {p1}, Landroid/telephony/ims/RcsMessageCreationParams$Builder;->access$600(Landroid/telephony/ims/RcsMessageCreationParams$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/ims/RcsMessageCreationParams;->mLongitude:D

    return-void
.end method


# virtual methods
.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Landroid/telephony/ims/RcsMessageCreationParams;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Landroid/telephony/ims/RcsMessageCreationParams;->mLongitude:D

    return-wide v0
.end method

.method public getMessageStatus()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/RcsMessageCreationParams;->mMessageStatus:I

    return v0
.end method

.method public getOriginationTimestamp()J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/ims/RcsMessageCreationParams;->mOriginationTimestamp:J

    return-wide v0
.end method

.method public getRcsMessageGlobalId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsMessageCreationParams;->mRcsMessageGlobalId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubId()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/RcsMessageCreationParams;->mSubId:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsMessageCreationParams;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/RcsMessageCreationParams;->mRcsMessageGlobalId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/ims/RcsMessageCreationParams;->mSubId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ims/RcsMessageCreationParams;->mMessageStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/telephony/ims/RcsMessageCreationParams;->mOriginationTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/telephony/ims/RcsMessageCreationParams;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/telephony/ims/RcsMessageCreationParams;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/telephony/ims/RcsMessageCreationParams;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
