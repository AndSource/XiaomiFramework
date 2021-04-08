.class public abstract Landroid/telephony/ims/RcsGroupThreadEventDescriptor;
.super Landroid/telephony/ims/RcsEventDescriptor;
.source "RcsGroupThreadEventDescriptor.java"


# instance fields
.field protected final mOriginatingParticipantId:I

.field protected final mRcsGroupThreadId:I


# direct methods
.method constructor <init>(JII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/RcsEventDescriptor;-><init>(J)V

    iput p3, p0, Landroid/telephony/ims/RcsGroupThreadEventDescriptor;->mRcsGroupThreadId:I

    iput p4, p0, Landroid/telephony/ims/RcsGroupThreadEventDescriptor;->mOriginatingParticipantId:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsEventDescriptor;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsGroupThreadEventDescriptor;->mRcsGroupThreadId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsGroupThreadEventDescriptor;->mOriginatingParticipantId:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/telephony/ims/RcsEventDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/telephony/ims/RcsGroupThreadEventDescriptor;->mRcsGroupThreadId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ims/RcsGroupThreadEventDescriptor;->mOriginatingParticipantId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
