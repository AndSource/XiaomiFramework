.class public final Landroid/telephony/ims/RcsIncomingMessageCreationParams;
.super Landroid/telephony/ims/RcsMessageCreationParams;
.source "RcsIncomingMessageCreationParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/RcsIncomingMessageCreationParams$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/RcsIncomingMessageCreationParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mArrivalTimestamp:J

.field private final mSeenTimestamp:J

.field private final mSenderParticipantId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/ims/RcsIncomingMessageCreationParams$1;

    invoke-direct {v0}, Landroid/telephony/ims/RcsIncomingMessageCreationParams$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/RcsIncomingMessageCreationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsMessageCreationParams;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/ims/RcsIncomingMessageCreationParams;->mArrivalTimestamp:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/ims/RcsIncomingMessageCreationParams;->mSeenTimestamp:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsIncomingMessageCreationParams;->mSenderParticipantId:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/ims/RcsIncomingMessageCreationParams$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsIncomingMessageCreationParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/telephony/ims/RcsIncomingMessageCreationParams$Builder;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsMessageCreationParams;-><init>(Landroid/telephony/ims/RcsMessageCreationParams$Builder;)V

    invoke-static {p1}, Landroid/telephony/ims/RcsIncomingMessageCreationParams$Builder;->access$100(Landroid/telephony/ims/RcsIncomingMessageCreationParams$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/ims/RcsIncomingMessageCreationParams;->mArrivalTimestamp:J

    invoke-static {p1}, Landroid/telephony/ims/RcsIncomingMessageCreationParams$Builder;->access$200(Landroid/telephony/ims/RcsIncomingMessageCreationParams$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/ims/RcsIncomingMessageCreationParams;->mSeenTimestamp:J

    invoke-static {p1}, Landroid/telephony/ims/RcsIncomingMessageCreationParams$Builder;->access$300(Landroid/telephony/ims/RcsIncomingMessageCreationParams$Builder;)Landroid/telephony/ims/RcsParticipant;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/RcsParticipant;->getId()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsIncomingMessageCreationParams;->mSenderParticipantId:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/telephony/ims/RcsIncomingMessageCreationParams$Builder;Landroid/telephony/ims/RcsIncomingMessageCreationParams$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsIncomingMessageCreationParams;-><init>(Landroid/telephony/ims/RcsIncomingMessageCreationParams$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getArrivalTimestamp()J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/ims/RcsIncomingMessageCreationParams;->mArrivalTimestamp:J

    return-wide v0
.end method

.method public getSeenTimestamp()J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/ims/RcsIncomingMessageCreationParams;->mSeenTimestamp:J

    return-wide v0
.end method

.method public getSenderParticipantId()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/RcsIncomingMessageCreationParams;->mSenderParticipantId:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/telephony/ims/RcsMessageCreationParams;->writeToParcel(Landroid/os/Parcel;)V

    iget-wide v0, p0, Landroid/telephony/ims/RcsIncomingMessageCreationParams;->mArrivalTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/telephony/ims/RcsIncomingMessageCreationParams;->mSeenTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/telephony/ims/RcsIncomingMessageCreationParams;->mSenderParticipantId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
