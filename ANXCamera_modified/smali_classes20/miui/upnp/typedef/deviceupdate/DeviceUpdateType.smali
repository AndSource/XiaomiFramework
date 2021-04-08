.class public final enum Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;
.super Ljava/lang/Enum;
.source "DeviceUpdateType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;

.field public static final enum DEVICE_FOUND:Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;

.field public static final enum DEVICE_LOST:Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;

.field public static final enum UNDEFINED:Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;


# instance fields
.field private string:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;

    const/4 v1, 0x0

    const-string v2, "UNDEFINED"

    const-string v3, "undefined"

    invoke-direct {v0, v2, v1, v3}, Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;->UNDEFINED:Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;

    new-instance v0, Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;

    const/4 v2, 0x1

    const-string v3, "DEVICE_FOUND"

    const-string v4, "deviceFound"

    invoke-direct {v0, v3, v2, v4}, Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;->DEVICE_FOUND:Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;

    new-instance v0, Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;

    const/4 v3, 0x2

    const-string v4, "DEVICE_LOST"

    const-string v5, "deviceLost"

    invoke-direct {v0, v4, v3, v5}, Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;->DEVICE_LOST:Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;

    const/4 v0, 0x3

    new-array v0, v0, [Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;

    sget-object v4, Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;->UNDEFINED:Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;

    aput-object v4, v0, v1

    sget-object v1, Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;->DEVICE_FOUND:Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;->DEVICE_LOST:Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;

    aput-object v1, v0, v3

    sput-object v0, Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;->$VALUES:[Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;

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

    iput-object p3, p0, Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;->string:Ljava/lang/String;

    return-void
.end method

.method public static retrieveType(Ljava/lang/String;)Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;
    .locals 5

    invoke-static {}, Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;->values()[Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;->UNDEFINED:Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;
    .locals 1

    const-class v0, Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;

    return-object v0
.end method

.method public static values()[Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;
    .locals 1

    sget-object v0, Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;->$VALUES:[Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;

    invoke-virtual {v0}, [Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/upnp/typedef/deviceupdate/DeviceUpdateType;->string:Ljava/lang/String;

    return-object v0
.end method
