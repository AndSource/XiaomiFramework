.class Landroid/view/InputChannel$1;
.super Ljava/lang/Object;
.source "InputChannel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InputChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/InputChannel;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/InputChannel;
    .locals 1

    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    invoke-virtual {v0, p1}, Landroid/view/InputChannel;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/InputChannel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/InputChannel;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/view/InputChannel;
    .locals 1

    new-array v0, p1, [Landroid/view/InputChannel;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/InputChannel$1;->newArray(I)[Landroid/view/InputChannel;

    move-result-object p1

    return-object p1
.end method
