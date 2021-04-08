.class public final enum Lmiui/upnp/typedef/device/DiscoveryType;
.super Ljava/lang/Enum;
.source "DiscoveryType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/upnp/typedef/device/DiscoveryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/upnp/typedef/device/DiscoveryType;

.field public static final enum AIRTUNES:Lmiui/upnp/typedef/device/DiscoveryType;

.field public static final enum AP:Lmiui/upnp/typedef/device/DiscoveryType;

.field public static final enum BLE:Lmiui/upnp/typedef/device/DiscoveryType;

.field public static final enum BLUETOOTH:Lmiui/upnp/typedef/device/DiscoveryType;

.field public static final enum LAN:Lmiui/upnp/typedef/device/DiscoveryType;

.field public static final enum LOCAL:Lmiui/upnp/typedef/device/DiscoveryType;

.field public static final enum UNDEFINED:Lmiui/upnp/typedef/device/DiscoveryType;


# instance fields
.field private string:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lmiui/upnp/typedef/device/DiscoveryType;

    const/4 v1, 0x0

    const-string v2, "UNDEFINED"

    const-string v3, "undefined"

    invoke-direct {v0, v2, v1, v3}, Lmiui/upnp/typedef/device/DiscoveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/device/DiscoveryType;->UNDEFINED:Lmiui/upnp/typedef/device/DiscoveryType;

    new-instance v0, Lmiui/upnp/typedef/device/DiscoveryType;

    const/4 v2, 0x1

    const-string v3, "LOCAL"

    const-string v4, "local"

    invoke-direct {v0, v3, v2, v4}, Lmiui/upnp/typedef/device/DiscoveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/device/DiscoveryType;->LOCAL:Lmiui/upnp/typedef/device/DiscoveryType;

    new-instance v0, Lmiui/upnp/typedef/device/DiscoveryType;

    const/4 v3, 0x2

    const-string v4, "LAN"

    const-string v5, "lan"

    invoke-direct {v0, v4, v3, v5}, Lmiui/upnp/typedef/device/DiscoveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/device/DiscoveryType;->LAN:Lmiui/upnp/typedef/device/DiscoveryType;

    new-instance v0, Lmiui/upnp/typedef/device/DiscoveryType;

    const/4 v4, 0x3

    const-string v5, "BLUETOOTH"

    const-string v6, "bluetooth"

    invoke-direct {v0, v5, v4, v6}, Lmiui/upnp/typedef/device/DiscoveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/device/DiscoveryType;->BLUETOOTH:Lmiui/upnp/typedef/device/DiscoveryType;

    new-instance v0, Lmiui/upnp/typedef/device/DiscoveryType;

    const/4 v5, 0x4

    const-string v6, "BLE"

    const-string v7, "ble"

    invoke-direct {v0, v6, v5, v7}, Lmiui/upnp/typedef/device/DiscoveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/device/DiscoveryType;->BLE:Lmiui/upnp/typedef/device/DiscoveryType;

    new-instance v0, Lmiui/upnp/typedef/device/DiscoveryType;

    const/4 v6, 0x5

    const-string v7, "AP"

    const-string v8, "ap"

    invoke-direct {v0, v7, v6, v8}, Lmiui/upnp/typedef/device/DiscoveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/device/DiscoveryType;->AP:Lmiui/upnp/typedef/device/DiscoveryType;

    new-instance v0, Lmiui/upnp/typedef/device/DiscoveryType;

    const/4 v7, 0x6

    const-string v8, "AIRTUNES"

    const-string v9, "airtunes"

    invoke-direct {v0, v8, v7, v9}, Lmiui/upnp/typedef/device/DiscoveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/device/DiscoveryType;->AIRTUNES:Lmiui/upnp/typedef/device/DiscoveryType;

    const/4 v0, 0x7

    new-array v0, v0, [Lmiui/upnp/typedef/device/DiscoveryType;

    sget-object v8, Lmiui/upnp/typedef/device/DiscoveryType;->UNDEFINED:Lmiui/upnp/typedef/device/DiscoveryType;

    aput-object v8, v0, v1

    sget-object v1, Lmiui/upnp/typedef/device/DiscoveryType;->LOCAL:Lmiui/upnp/typedef/device/DiscoveryType;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/upnp/typedef/device/DiscoveryType;->LAN:Lmiui/upnp/typedef/device/DiscoveryType;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/upnp/typedef/device/DiscoveryType;->BLUETOOTH:Lmiui/upnp/typedef/device/DiscoveryType;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/upnp/typedef/device/DiscoveryType;->BLE:Lmiui/upnp/typedef/device/DiscoveryType;

    aput-object v1, v0, v5

    sget-object v1, Lmiui/upnp/typedef/device/DiscoveryType;->AP:Lmiui/upnp/typedef/device/DiscoveryType;

    aput-object v1, v0, v6

    sget-object v1, Lmiui/upnp/typedef/device/DiscoveryType;->AIRTUNES:Lmiui/upnp/typedef/device/DiscoveryType;

    aput-object v1, v0, v7

    sput-object v0, Lmiui/upnp/typedef/device/DiscoveryType;->$VALUES:[Lmiui/upnp/typedef/device/DiscoveryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lmiui/upnp/typedef/device/DiscoveryType;->string:Ljava/lang/String;

    return-void
.end method

.method public static retrieveType(Ljava/lang/String;)Lmiui/upnp/typedef/device/DiscoveryType;
    .locals 5

    invoke-static {}, Lmiui/upnp/typedef/device/DiscoveryType;->values()[Lmiui/upnp/typedef/device/DiscoveryType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lmiui/upnp/typedef/device/DiscoveryType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lmiui/upnp/typedef/device/DiscoveryType;->UNDEFINED:Lmiui/upnp/typedef/device/DiscoveryType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/upnp/typedef/device/DiscoveryType;
    .locals 1

    const-class v0, Lmiui/upnp/typedef/device/DiscoveryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/upnp/typedef/device/DiscoveryType;

    return-object v0
.end method

.method public static values()[Lmiui/upnp/typedef/device/DiscoveryType;
    .locals 1

    sget-object v0, Lmiui/upnp/typedef/device/DiscoveryType;->$VALUES:[Lmiui/upnp/typedef/device/DiscoveryType;

    invoke-virtual {v0}, [Lmiui/upnp/typedef/device/DiscoveryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/upnp/typedef/device/DiscoveryType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/upnp/typedef/device/DiscoveryType;->string:Ljava/lang/String;

    return-object v0
.end method
