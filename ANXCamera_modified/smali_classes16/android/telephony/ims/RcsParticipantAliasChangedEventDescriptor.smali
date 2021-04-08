.class public Landroid/telephony/ims/RcsParticipantAliasChangedEventDescriptor;
.super Landroid/telephony/ims/RcsEventDescriptor;
.source "RcsParticipantAliasChangedEventDescriptor.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/RcsParticipantAliasChangedEventDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mNewAlias:Ljava/lang/String;

.field protected mParticipantId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/ims/RcsParticipantAliasChangedEventDescriptor$1;

    invoke-direct {v0}, Landroid/telephony/ims/RcsParticipantAliasChangedEventDescriptor$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/RcsParticipantAliasChangedEventDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/RcsEventDescriptor;-><init>(J)V

    iput p3, p0, Landroid/telephony/ims/RcsParticipantAliasChangedEventDescriptor;->mParticipantId:I

    iput-object p4, p0, Landroid/telephony/ims/RcsParticipantAliasChangedEventDescriptor;->mNewAlias:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsEventDescriptor;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/RcsParticipantAliasChangedEventDescriptor;->mNewAlias:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/RcsParticipantAliasChangedEventDescriptor;->mParticipantId:I

    return-void
.end method


# virtual methods
.method public bridge synthetic createRcsEvent(Landroid/telephony/ims/RcsControllerCall;)Landroid/telephony/ims/RcsEvent;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PROTECTED:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/telephony/ims/RcsParticipantAliasChangedEventDescriptor;->createRcsEvent(Landroid/telephony/ims/RcsControllerCall;)Landroid/telephony/ims/RcsParticipantAliasChangedEvent;

    move-result-object p1

    return-object p1
.end method

.method public createRcsEvent(Landroid/telephony/ims/RcsControllerCall;)Landroid/telephony/ims/RcsParticipantAliasChangedEvent;
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PROTECTED:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    new-instance v0, Landroid/telephony/ims/RcsParticipantAliasChangedEvent;

    iget-wide v1, p0, Landroid/telephony/ims/RcsParticipantAliasChangedEventDescriptor;->mTimestamp:J

    new-instance v3, Landroid/telephony/ims/RcsParticipant;

    iget v4, p0, Landroid/telephony/ims/RcsParticipantAliasChangedEventDescriptor;->mParticipantId:I

    invoke-direct {v3, p1, v4}, Landroid/telephony/ims/RcsParticipant;-><init>(Landroid/telephony/ims/RcsControllerCall;I)V

    iget-object v4, p0, Landroid/telephony/ims/RcsParticipantAliasChangedEventDescriptor;->mNewAlias:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/telephony/ims/RcsParticipantAliasChangedEvent;-><init>(JLandroid/telephony/ims/RcsParticipant;Ljava/lang/String;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/telephony/ims/RcsEventDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/telephony/ims/RcsParticipantAliasChangedEventDescriptor;->mNewAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/ims/RcsParticipantAliasChangedEventDescriptor;->mParticipantId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
