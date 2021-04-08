.class public final Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;
.super Ljava/lang/Object;
.source "WifiAwareNetworkSpecifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDiscoverySession:Landroid/net/wifi/aware/DiscoverySession;

.field private mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

.field private mPmk:[B

.field private mPort:I

.field private mPskPassphrase:Ljava/lang/String;

.field private mTransportProtocol:I


# direct methods
.method public constructor <init>(Landroid/net/wifi/aware/DiscoverySession;Landroid/net/wifi/aware/PeerHandle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mPort:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mTransportProtocol:I

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mDiscoverySession:Landroid/net/wifi/aware/DiscoverySession;

    iput-object p2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-null peerHandle required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-null discoverySession required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    .locals 15

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mDiscoverySession:Landroid/net/wifi/aware/DiscoverySession;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mPskPassphrase:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mPmk:[B

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    and-int/2addr v0, v3

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mDiscoverySession:Landroid/net/wifi/aware/DiscoverySession;

    instance-of v0, v0, Landroid/net/wifi/aware/SubscribeDiscoverySession;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    move v0, v1

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mPort:I

    if-nez v1, :cond_3

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mTransportProtocol:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_5

    :cond_3
    if-ne v0, v2, :cond_6

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mPskPassphrase:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mPmk:[B

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Port and transport protocol information can only be specified on a secure link"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_3
    new-instance v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mDiscoverySession:Landroid/net/wifi/aware/DiscoverySession;

    iget v6, v2, Landroid/net/wifi/aware/DiscoverySession;->mClientId:I

    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mDiscoverySession:Landroid/net/wifi/aware/DiscoverySession;

    iget v7, v2, Landroid/net/wifi/aware/DiscoverySession;->mSessionId:I

    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    iget v8, v2, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    const/4 v9, 0x0

    iget-object v10, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mPmk:[B

    iget-object v11, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mPskPassphrase:Ljava/lang/String;

    iget v12, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mPort:I

    iget v13, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mTransportProtocol:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v14

    move-object v3, v1

    move v5, v0

    invoke-direct/range {v3 .. v14}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;-><init>(IIIII[B[BLjava/lang/String;III)V

    return-object v1

    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Port and transport protocol information can only be specified on the Publisher device (which is the server"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can only specify a Passphrase or a PMK - not both!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Null peerHandle!?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Null discovery session!?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPmk([B)Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p1}, Landroid/net/wifi/aware/WifiAwareUtils;->validatePmk([B)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mPmk:[B

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PMK must 32 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPort(I)Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;
    .locals 2

    if-lez p1, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    iput p1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mPort:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The port must be a positive value (0, 65535]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPskPassphrase(Ljava/lang/String;)Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;
    .locals 2

    invoke-static {p1}, Landroid/net/wifi/aware/WifiAwareUtils;->validatePassphrase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mPskPassphrase:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Passphrase must meet length requirements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTransportProtocol(I)Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    iput p1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;->mTransportProtocol:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The transport protocol must be in range [0, 255]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
