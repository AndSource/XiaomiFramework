.class Landroid/os/statistics/LooperOnce$1;
.super Ljava/lang/Object;
.source "LooperOnce.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/LooperOnce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/statistics/LooperOnce;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/statistics/LooperOnce;
    .locals 1

    new-instance v0, Landroid/os/statistics/LooperOnce;

    invoke-direct {v0}, Landroid/os/statistics/LooperOnce;-><init>()V

    invoke-virtual {v0, p1}, Landroid/os/statistics/LooperOnce;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/statistics/LooperOnce$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/statistics/LooperOnce;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/os/statistics/LooperOnce;
    .locals 1

    new-array v0, p1, [Landroid/os/statistics/LooperOnce;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/statistics/LooperOnce$1;->newArray(I)[Landroid/os/statistics/LooperOnce;

    move-result-object p1

    return-object p1
.end method
