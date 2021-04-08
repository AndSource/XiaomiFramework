.class public Lcom/android/ims/RcsTypeIdPair;
.super Ljava/lang/Object;
.source "RcsTypeIdPair.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/RcsTypeIdPair;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mId:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/ims/RcsTypeIdPair$1;

    invoke-direct {v0}, Lcom/android/ims/RcsTypeIdPair$1;-><init>()V

    sput-object v0, Lcom/android/ims/RcsTypeIdPair;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/ims/RcsTypeIdPair;->mType:I

    iput p2, p0, Lcom/android/ims/RcsTypeIdPair;->mId:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/RcsTypeIdPair;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/RcsTypeIdPair;->mId:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/android/ims/RcsTypeIdPair;->mId:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/android/ims/RcsTypeIdPair;->mType:I

    return v0
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/android/ims/RcsTypeIdPair;->mId:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/android/ims/RcsTypeIdPair;->mType:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/android/ims/RcsTypeIdPair;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/ims/RcsTypeIdPair;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
