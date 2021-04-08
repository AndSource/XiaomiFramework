.class public Landroid/telephony/ims/RcsGroupThreadParticipantLeftEventDescriptor;
.super Landroid/telephony/ims/RcsGroupThreadEventDescriptor;
.source "RcsGroupThreadParticipantLeftEventDescriptor.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/RcsGroupThreadParticipantLeftEventDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLeavingParticipantId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/ims/RcsGroupThreadParticipantLeftEventDescriptor$1;

    invoke-direct {v0}, Landroid/telephony/ims/RcsGroupThreadParticipantLeftEventDescriptor$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/RcsGroupThreadParticipantLeftEventDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/ims/RcsGroupThreadEventDescriptor;-><init>(JII)V

    iput p5, p0, Landroid/telephony/ims/RcsGroupThreadParticipantLeftEventDescriptor;->mLeavingParticipantId:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsGroupThreadEventDescriptor;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsGroupThreadParticipantLeftEventDescriptor;->mLeavingParticipantId:I

    return-void
.end method


# virtual methods
.method public bridge synthetic createRcsEvent(Landroid/telephony/ims/RcsControllerCall;)Landroid/telephony/ims/RcsEvent;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PROTECTED:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/telephony/ims/RcsGroupThreadParticipantLeftEventDescriptor;->createRcsEvent(Landroid/telephony/ims/RcsControllerCall;)Landroid/telephony/ims/RcsGroupThreadParticipantLeftEvent;

    move-result-object p1

    return-object p1
.end method

.method public createRcsEvent(Landroid/telephony/ims/RcsControllerCall;)Landroid/telephony/ims/RcsGroupThreadParticipantLeftEvent;
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PROTECTED:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    new-instance v6, Landroid/telephony/ims/RcsGroupThreadParticipantLeftEvent;

    iget-wide v1, p0, Landroid/telephony/ims/RcsGroupThreadParticipantLeftEventDescriptor;->mTimestamp:J

    new-instance v3, Landroid/telephony/ims/RcsGroupThread;

    iget v0, p0, Landroid/telephony/ims/RcsGroupThreadParticipantLeftEventDescriptor;->mRcsGroupThreadId:I

    invoke-direct {v3, p1, v0}, Landroid/telephony/ims/RcsGroupThread;-><init>(Landroid/telephony/ims/RcsControllerCall;I)V

    new-instance v4, Landroid/telephony/ims/RcsParticipant;

    iget v0, p0, Landroid/telephony/ims/RcsGroupThreadParticipantLeftEventDescriptor;->mOriginatingParticipantId:I

    invoke-direct {v4, p1, v0}, Landroid/telephony/ims/RcsParticipant;-><init>(Landroid/telephony/ims/RcsControllerCall;I)V

    new-instance v5, Landroid/telephony/ims/RcsParticipant;

    iget v0, p0, Landroid/telephony/ims/RcsGroupThreadParticipantLeftEventDescriptor;->mLeavingParticipantId:I

    invoke-direct {v5, p1, v0}, Landroid/telephony/ims/RcsParticipant;-><init>(Landroid/telephony/ims/RcsControllerCall;I)V

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/telephony/ims/RcsGroupThreadParticipantLeftEvent;-><init>(JLandroid/telephony/ims/RcsGroupThread;Landroid/telephony/ims/RcsParticipant;Landroid/telephony/ims/RcsParticipant;)V

    return-object v6
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/telephony/ims/RcsGroupThreadEventDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/telephony/ims/RcsGroupThreadParticipantLeftEventDescriptor;->mLeavingParticipantId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
