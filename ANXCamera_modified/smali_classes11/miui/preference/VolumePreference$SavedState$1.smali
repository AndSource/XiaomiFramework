.class Lmiui/preference/VolumePreference$SavedState$1;
.super Ljava/lang/Object;
.source "VolumePreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/preference/VolumePreference$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmiui/preference/VolumePreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lmiui/preference/VolumePreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/preference/VolumePreference$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiui/preference/VolumePreference$SavedState;
    .locals 0

    new-instance p0, Lmiui/preference/VolumePreference$SavedState;

    invoke-direct {p0, p1}, Lmiui/preference/VolumePreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lmiui/preference/VolumePreference$SavedState$1;->newArray(I)[Lmiui/preference/VolumePreference$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lmiui/preference/VolumePreference$SavedState;
    .locals 0

    new-array p0, p1, [Lmiui/preference/VolumePreference$SavedState;

    return-object p0
.end method
