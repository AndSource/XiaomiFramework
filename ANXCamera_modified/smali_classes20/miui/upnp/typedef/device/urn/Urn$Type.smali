.class public final enum Lmiui/upnp/typedef/device/urn/Urn$Type;
.super Ljava/lang/Enum;
.source "Urn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/upnp/typedef/device/urn/Urn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/upnp/typedef/device/urn/Urn$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/upnp/typedef/device/urn/Urn$Type;

.field public static final enum DEVICE:Lmiui/upnp/typedef/device/urn/Urn$Type;

.field public static final enum SERVICE:Lmiui/upnp/typedef/device/urn/Urn$Type;

.field private static final STR_DEVICE:Ljava/lang/String; = "device"

.field private static final STR_SERVICE:Ljava/lang/String; = "service"

.field private static final STR_UNDEFINED:Ljava/lang/String; = "undefined"

.field public static final enum UNDEFINED:Lmiui/upnp/typedef/device/urn/Urn$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lmiui/upnp/typedef/device/urn/Urn$Type;

    const/4 v1, 0x0

    const-string v2, "UNDEFINED"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/device/urn/Urn$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/device/urn/Urn$Type;->UNDEFINED:Lmiui/upnp/typedef/device/urn/Urn$Type;

    new-instance v0, Lmiui/upnp/typedef/device/urn/Urn$Type;

    const/4 v2, 0x1

    const-string v3, "DEVICE"

    invoke-direct {v0, v3, v2}, Lmiui/upnp/typedef/device/urn/Urn$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/device/urn/Urn$Type;->DEVICE:Lmiui/upnp/typedef/device/urn/Urn$Type;

    new-instance v0, Lmiui/upnp/typedef/device/urn/Urn$Type;

    const/4 v3, 0x2

    const-string v4, "SERVICE"

    invoke-direct {v0, v4, v3}, Lmiui/upnp/typedef/device/urn/Urn$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/device/urn/Urn$Type;->SERVICE:Lmiui/upnp/typedef/device/urn/Urn$Type;

    const/4 v0, 0x3

    new-array v0, v0, [Lmiui/upnp/typedef/device/urn/Urn$Type;

    sget-object v4, Lmiui/upnp/typedef/device/urn/Urn$Type;->UNDEFINED:Lmiui/upnp/typedef/device/urn/Urn$Type;

    aput-object v4, v0, v1

    sget-object v1, Lmiui/upnp/typedef/device/urn/Urn$Type;->DEVICE:Lmiui/upnp/typedef/device/urn/Urn$Type;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/upnp/typedef/device/urn/Urn$Type;->SERVICE:Lmiui/upnp/typedef/device/urn/Urn$Type;

    aput-object v1, v0, v3

    sput-object v0, Lmiui/upnp/typedef/device/urn/Urn$Type;->$VALUES:[Lmiui/upnp/typedef/device/urn/Urn$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static retrieveType(Ljava/lang/String;)Lmiui/upnp/typedef/device/urn/Urn$Type;
    .locals 1

    const-string v0, "undefined"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/upnp/typedef/device/urn/Urn$Type;->UNDEFINED:Lmiui/upnp/typedef/device/urn/Urn$Type;

    return-object v0

    :cond_0
    const-string v0, "device"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lmiui/upnp/typedef/device/urn/Urn$Type;->DEVICE:Lmiui/upnp/typedef/device/urn/Urn$Type;

    return-object v0

    :cond_1
    const-string v0, "service"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lmiui/upnp/typedef/device/urn/Urn$Type;->SERVICE:Lmiui/upnp/typedef/device/urn/Urn$Type;

    return-object v0

    :cond_2
    sget-object v0, Lmiui/upnp/typedef/device/urn/Urn$Type;->UNDEFINED:Lmiui/upnp/typedef/device/urn/Urn$Type;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/upnp/typedef/device/urn/Urn$Type;
    .locals 1

    const-class v0, Lmiui/upnp/typedef/device/urn/Urn$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/upnp/typedef/device/urn/Urn$Type;

    return-object v0
.end method

.method public static values()[Lmiui/upnp/typedef/device/urn/Urn$Type;
    .locals 1

    sget-object v0, Lmiui/upnp/typedef/device/urn/Urn$Type;->$VALUES:[Lmiui/upnp/typedef/device/urn/Urn$Type;

    invoke-virtual {v0}, [Lmiui/upnp/typedef/device/urn/Urn$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/upnp/typedef/device/urn/Urn$Type;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lmiui/upnp/typedef/device/urn/Urn$2;->$SwitchMap$miui$upnp$typedef$device$urn$Urn$Type:[I

    invoke-virtual {p0}, Lmiui/upnp/typedef/device/urn/Urn$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const-string v0, "undefined"

    goto :goto_0

    :cond_0
    const-string v0, "service"

    goto :goto_0

    :cond_1
    const-string v0, "device"

    nop

    :goto_0
    return-object v0
.end method
