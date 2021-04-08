.class public final enum Lmiui/upnp/typedef/property/AllowedValueType;
.super Ljava/lang/Enum;
.source "AllowedValueType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/upnp/typedef/property/AllowedValueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/upnp/typedef/property/AllowedValueType;

.field public static final enum ANY:Lmiui/upnp/typedef/property/AllowedValueType;

.field public static final enum LIST:Lmiui/upnp/typedef/property/AllowedValueType;

.field public static final enum RANGE:Lmiui/upnp/typedef/property/AllowedValueType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lmiui/upnp/typedef/property/AllowedValueType;

    const/4 v1, 0x0

    const-string v2, "ANY"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/property/AllowedValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/property/AllowedValueType;->ANY:Lmiui/upnp/typedef/property/AllowedValueType;

    new-instance v0, Lmiui/upnp/typedef/property/AllowedValueType;

    const/4 v2, 0x1

    const-string v3, "LIST"

    invoke-direct {v0, v3, v2}, Lmiui/upnp/typedef/property/AllowedValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/property/AllowedValueType;->LIST:Lmiui/upnp/typedef/property/AllowedValueType;

    new-instance v0, Lmiui/upnp/typedef/property/AllowedValueType;

    const/4 v3, 0x2

    const-string v4, "RANGE"

    invoke-direct {v0, v4, v3}, Lmiui/upnp/typedef/property/AllowedValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/property/AllowedValueType;->RANGE:Lmiui/upnp/typedef/property/AllowedValueType;

    const/4 v0, 0x3

    new-array v0, v0, [Lmiui/upnp/typedef/property/AllowedValueType;

    sget-object v4, Lmiui/upnp/typedef/property/AllowedValueType;->ANY:Lmiui/upnp/typedef/property/AllowedValueType;

    aput-object v4, v0, v1

    sget-object v1, Lmiui/upnp/typedef/property/AllowedValueType;->LIST:Lmiui/upnp/typedef/property/AllowedValueType;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/upnp/typedef/property/AllowedValueType;->RANGE:Lmiui/upnp/typedef/property/AllowedValueType;

    aput-object v1, v0, v3

    sput-object v0, Lmiui/upnp/typedef/property/AllowedValueType;->$VALUES:[Lmiui/upnp/typedef/property/AllowedValueType;

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

.method public static retrieveType(I)Lmiui/upnp/typedef/property/AllowedValueType;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    sget-object v0, Lmiui/upnp/typedef/property/AllowedValueType;->ANY:Lmiui/upnp/typedef/property/AllowedValueType;

    return-object v0

    :cond_0
    sget-object v0, Lmiui/upnp/typedef/property/AllowedValueType;->RANGE:Lmiui/upnp/typedef/property/AllowedValueType;

    return-object v0

    :cond_1
    sget-object v0, Lmiui/upnp/typedef/property/AllowedValueType;->LIST:Lmiui/upnp/typedef/property/AllowedValueType;

    return-object v0

    :cond_2
    sget-object v0, Lmiui/upnp/typedef/property/AllowedValueType;->ANY:Lmiui/upnp/typedef/property/AllowedValueType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/upnp/typedef/property/AllowedValueType;
    .locals 1

    const-class v0, Lmiui/upnp/typedef/property/AllowedValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/upnp/typedef/property/AllowedValueType;

    return-object v0
.end method

.method public static values()[Lmiui/upnp/typedef/property/AllowedValueType;
    .locals 1

    sget-object v0, Lmiui/upnp/typedef/property/AllowedValueType;->$VALUES:[Lmiui/upnp/typedef/property/AllowedValueType;

    invoke-virtual {v0}, [Lmiui/upnp/typedef/property/AllowedValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/upnp/typedef/property/AllowedValueType;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 4

    sget-object v0, Lmiui/upnp/typedef/property/AllowedValueType$1;->$SwitchMap$miui$upnp$typedef$property$AllowedValueType:[I

    invoke-virtual {p0}, Lmiui/upnp/typedef/property/AllowedValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    return v3

    :cond_1
    return v2

    :cond_2
    return v1
.end method
