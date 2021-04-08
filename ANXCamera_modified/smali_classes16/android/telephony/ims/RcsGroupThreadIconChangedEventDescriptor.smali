.class public Landroid/telephony/ims/RcsGroupThreadIconChangedEventDescriptor;
.super Landroid/telephony/ims/RcsGroupThreadEventDescriptor;
.source "RcsGroupThreadIconChangedEventDescriptor.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/RcsGroupThreadIconChangedEventDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mNewIcon:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/ims/RcsGroupThreadIconChangedEventDescriptor$1;

    invoke-direct {v0}, Landroid/telephony/ims/RcsGroupThreadIconChangedEventDescriptor$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/RcsGroupThreadIconChangedEventDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JIILandroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/ims/RcsGroupThreadEventDescriptor;-><init>(JII)V

    iput-object p5, p0, Landroid/telephony/ims/RcsGroupThreadIconChangedEventDescriptor;->mNewIcon:Landroid/net/Uri;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsGroupThreadEventDescriptor;-><init>(Landroid/os/Parcel;)V

    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telephony/ims/RcsGroupThreadIconChangedEventDescriptor;->mNewIcon:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public bridge synthetic createRcsEvent(Landroid/telephony/ims/RcsControllerCall;)Landroid/telephony/ims/RcsEvent;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PROTECTED:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/telephony/ims/RcsGroupThreadIconChangedEventDescriptor;->createRcsEvent(Landroid/telephony/ims/RcsControllerCall;)Landroid/telephony/ims/RcsGroupThreadIconChangedEvent;

    move-result-object p1

    return-object p1
.end method

.method public createRcsEvent(Landroid/telephony/ims/RcsControllerCall;)Landroid/telephony/ims/RcsGroupThreadIconChangedEvent;
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PROTECTED:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    new-instance v6, Landroid/telephony/ims/RcsGroupThreadIconChangedEvent;

    iget-wide v1, p0, Landroid/telephony/ims/RcsGroupThreadIconChangedEventDescriptor;->mTimestamp:J

    new-instance v3, Landroid/telephony/ims/RcsGroupThread;

    iget v0, p0, Landroid/telephony/ims/RcsGroupThreadIconChangedEventDescriptor;->mRcsGroupThreadId:I

    invoke-direct {v3, p1, v0}, Landroid/telephony/ims/RcsGroupThread;-><init>(Landroid/telephony/ims/RcsControllerCall;I)V

    new-instance v4, Landroid/telephony/ims/RcsParticipant;

    iget v0, p0, Landroid/telephony/ims/RcsGroupThreadIconChangedEventDescriptor;->mOriginatingParticipantId:I

    invoke-direct {v4, p1, v0}, Landroid/telephony/ims/RcsParticipant;-><init>(Landroid/telephony/ims/RcsControllerCall;I)V

    iget-object v5, p0, Landroid/telephony/ims/RcsGroupThreadIconChangedEventDescriptor;->mNewIcon:Landroid/net/Uri;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/telephony/ims/RcsGroupThreadIconChangedEvent;-><init>(JLandroid/telephony/ims/RcsGroupThread;Landroid/telephony/ims/RcsParticipant;Landroid/net/Uri;)V

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

    iget-object v0, p0, Landroid/telephony/ims/RcsGroupThreadIconChangedEventDescriptor;->mNewIcon:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
