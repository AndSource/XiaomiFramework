.class public Landroid/telephony/ims/RcsMessageQueryResultParcelable;
.super Ljava/lang/Object;
.source "RcsMessageQueryResultParcelable.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/RcsMessageQueryResultParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mContinuationToken:Landroid/telephony/ims/RcsQueryContinuationToken;

.field final mMessageTypeIdPairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/ims/RcsTypeIdPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/ims/RcsMessageQueryResultParcelable$1;

    invoke-direct {v0}, Landroid/telephony/ims/RcsMessageQueryResultParcelable$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/RcsMessageQueryResultParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-object v0, p0, Landroid/telephony/ims/RcsMessageQueryResultParcelable;->mContinuationToken:Landroid/telephony/ims/RcsQueryContinuationToken;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/RcsMessageQueryResultParcelable;->mMessageTypeIdPairs:Ljava/util/List;

    iget-object v0, p0, Landroid/telephony/ims/RcsMessageQueryResultParcelable;->mMessageTypeIdPairs:Ljava/util/List;

    sget-object v1, Lcom/android/ims/RcsTypeIdPair;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/ims/RcsMessageQueryResultParcelable$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsMessageQueryResultParcelable;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/ims/RcsQueryContinuationToken;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/ims/RcsQueryContinuationToken;",
            "Ljava/util/List<",
            "Lcom/android/ims/RcsTypeIdPair;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/RcsMessageQueryResultParcelable;->mContinuationToken:Landroid/telephony/ims/RcsQueryContinuationToken;

    iput-object p2, p0, Landroid/telephony/ims/RcsMessageQueryResultParcelable;->mMessageTypeIdPairs:Ljava/util/List;

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

    iget-object v0, p0, Landroid/telephony/ims/RcsMessageQueryResultParcelable;->mContinuationToken:Landroid/telephony/ims/RcsQueryContinuationToken;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telephony/ims/RcsMessageQueryResultParcelable;->mMessageTypeIdPairs:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
