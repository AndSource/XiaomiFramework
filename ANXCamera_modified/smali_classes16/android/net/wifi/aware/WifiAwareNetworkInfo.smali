.class public final Landroid/net/wifi/aware/WifiAwareNetworkInfo;
.super Ljava/lang/Object;
.source "WifiAwareNetworkInfo.java"

# interfaces
.implements Landroid/net/TransportInfo;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/aware/WifiAwareNetworkInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIpv6Addr:Ljava/net/Inet6Address;

.field private mPort:I

.field private mTransportProtocol:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/aware/WifiAwareNetworkInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/aware/WifiAwareNetworkInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/net/Inet6Address;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mPort:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mTransportProtocol:I

    iput-object p1, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mIpv6Addr:Ljava/net/Inet6Address;

    return-void
.end method

.method public constructor <init>(Ljava/net/Inet6Address;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mPort:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mTransportProtocol:I

    iput-object p1, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mIpv6Addr:Ljava/net/Inet6Address;

    iput p2, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mPort:I

    iput p3, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mTransportProtocol:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/net/wifi/aware/WifiAwareNetworkInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/aware/WifiAwareNetworkInfo;

    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mIpv6Addr:Ljava/net/Inet6Address;

    iget-object v4, v1, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mIpv6Addr:Ljava/net/Inet6Address;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mPort:I

    iget v4, v1, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mPort:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mTransportProtocol:I

    iget v4, v1, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mTransportProtocol:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getPeerIpv6Addr()Ljava/net/Inet6Address;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mIpv6Addr:Ljava/net/Inet6Address;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mPort:I

    return v0
.end method

.method public getTransportProtocol()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mTransportProtocol:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mIpv6Addr:Ljava/net/Inet6Address;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mPort:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mTransportProtocol:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AwareNetworkInfo: IPv6="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mIpv6Addr:Ljava/net/Inet6Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", transportProtocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mTransportProtocol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mIpv6Addr:Ljava/net/Inet6Address;

    invoke-virtual {v0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mIpv6Addr:Ljava/net/Inet6Address;

    invoke-virtual {v0}, Ljava/net/Inet6Address;->getScopedInterface()Ljava/net/NetworkInterface;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mPort:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;->mTransportProtocol:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
