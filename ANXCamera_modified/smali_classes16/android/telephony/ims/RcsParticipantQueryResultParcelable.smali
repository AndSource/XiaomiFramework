.class public final Landroid/telephony/ims/RcsParticipantQueryResultParcelable;
.super Ljava/lang/Object;
.source "RcsParticipantQueryResultParcelable.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/RcsParticipantQueryResultParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mContinuationToken:Landroid/telephony/ims/RcsQueryContinuationToken;

.field final mParticipantIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/ims/RcsParticipantQueryResultParcelable$1;

    invoke-direct {v0}, Landroid/telephony/ims/RcsParticipantQueryResultParcelable$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/RcsParticipantQueryResultParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/telephony/ims/RcsQueryContinuationToken;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/RcsQueryContinuationToken;

    iput-object v0, p0, Landroid/telephony/ims/RcsParticipantQueryResultParcelable;->mContinuationToken:Landroid/telephony/ims/RcsQueryContinuationToken;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/RcsParticipantQueryResultParcelable;->mParticipantIds:Ljava/util/List;

    iget-object v0, p0, Landroid/telephony/ims/RcsParticipantQueryResultParcelable;->mParticipantIds:Ljava/util/List;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/ims/RcsParticipantQueryResultParcelable$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsParticipantQueryResultParcelable;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/ims/RcsQueryContinuationToken;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/ims/RcsQueryContinuationToken;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/RcsParticipantQueryResultParcelable;->mContinuationToken:Landroid/telephony/ims/RcsQueryContinuationToken;

    iput-object p2, p0, Landroid/telephony/ims/RcsParticipantQueryResultParcelable;->mParticipantIds:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsParticipantQueryResultParcelable;->mContinuationToken:Landroid/telephony/ims/RcsQueryContinuationToken;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telephony/ims/RcsParticipantQueryResultParcelable;->mParticipantIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
