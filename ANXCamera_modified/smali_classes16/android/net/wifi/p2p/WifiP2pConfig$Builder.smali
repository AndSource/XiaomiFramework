.class public final Landroid/net/wifi/p2p/WifiP2pConfig$Builder;
.super Ljava/lang/Object;
.source "WifiP2pConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final MAC_ANY_ADDRESS:Landroid/net/MacAddress;


# instance fields
.field private mDeviceAddress:Landroid/net/MacAddress;

.field private mGroupOperatingBand:I

.field private mGroupOperatingFrequency:I

.field private mNetId:I

.field private mNetworkName:Ljava/lang/String;

.field private mPassphrase:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    nop

    const-string v0, "02:00:00:00:00:00"

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->MAC_ANY_ADDRESS:Landroid/net/MacAddress;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->MAC_ANY_ADDRESS:Landroid/net/MacAddress;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mDeviceAddress:Landroid/net/MacAddress;

    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mNetworkName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mPassphrase:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mGroupOperatingBand:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mGroupOperatingFrequency:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mNetId:I

    return-void
.end method


# virtual methods
.method public build()Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mNetworkName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mPassphrase:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mGroupOperatingFrequency:I

    if-lez v0, :cond_1

    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mGroupOperatingBand:I

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Preferred frequency and band are mutually exclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mDeviceAddress:Landroid/net/MacAddress;

    invoke-virtual {v1}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mNetworkName:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->networkName:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mPassphrase:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->passphrase:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerBand:I

    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mGroupOperatingFrequency:I

    if-lez v1, :cond_2

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerBand:I

    goto :goto_1

    :cond_2
    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mGroupOperatingBand:I

    if-lez v1, :cond_3

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerBand:I

    :cond_3
    :goto_1
    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mNetId:I

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "passphrase must be non-empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "network name must be non-empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enablePersistentMode(Z)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, -0x2

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mNetId:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mNetId:I

    :goto_0
    return-object p0
.end method

.method public setDeviceAddress(Landroid/net/MacAddress;)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;
    .locals 1

    if-nez p1, :cond_0

    sget-object v0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->MAC_ANY_ADDRESS:Landroid/net/MacAddress;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mDeviceAddress:Landroid/net/MacAddress;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mDeviceAddress:Landroid/net/MacAddress;

    :goto_0
    return-object p0
.end method

.method public setGroupOperatingBand(I)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid constant for the group operating band!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mGroupOperatingBand:I

    nop

    return-object p0
.end method

.method public setGroupOperatingFrequency(I)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;
    .locals 2

    if-ltz p1, :cond_0

    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mGroupOperatingFrequency:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid group operating frequency!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNetworkName(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "^DIRECT-[a-zA-Z0-9]{2}.*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "network name must starts with the prefix DIRECT-xy."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    :goto_0
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mNetworkName:Ljava/lang/String;

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "network name must be non-empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPassphrase(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_0

    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mPassphrase:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The length of a passphrase must be between 8 and 63."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "passphrase must be non-empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
