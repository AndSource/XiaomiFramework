.class Landroid/net/KeepalivePacketData$1;
.super Ljava/lang/Object;
.source "KeepalivePacketData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/KeepalivePacketData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/KeepalivePacketData;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/KeepalivePacketData;
    .locals 1

    new-instance v0, Landroid/net/KeepalivePacketData;

    invoke-direct {v0, p1}, Landroid/net/KeepalivePacketData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/KeepalivePacketData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/KeepalivePacketData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/KeepalivePacketData;
    .locals 1

    new-array v0, p1, [Landroid/net/KeepalivePacketData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/KeepalivePacketData$1;->newArray(I)[Landroid/net/KeepalivePacketData;

    move-result-object p1

    return-object p1
.end method
