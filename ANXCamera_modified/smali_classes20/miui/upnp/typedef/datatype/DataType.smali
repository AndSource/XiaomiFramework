.class public final enum Lmiui/upnp/typedef/datatype/DataType;
.super Ljava/lang/Enum;
.source "DataType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/upnp/typedef/datatype/DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum BIN_BASE64:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum BIN_HEX:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum BOOLEAN:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum CHAR:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum DATE:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum DATETIME:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum DATETIME_TZ:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum FIXED_14_4:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum FLOAT:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum I1:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum I2:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum I4:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum INT:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum NUMBER:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum R4:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum R8:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum STRING:Lmiui/upnp/typedef/datatype/DataType;

.field private static final TAG:Ljava/lang/String;

.field public static final enum TIME:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum TIME_TZ:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum UI1:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum UI2:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum UI4:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum UNKNOWN:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum URI:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum UUID:Lmiui/upnp/typedef/datatype/DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->UNKNOWN:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const/4 v2, 0x1

    const-string v3, "BIN_BASE64"

    invoke-direct {v0, v3, v2}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->BIN_BASE64:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const/4 v3, 0x2

    const-string v4, "BIN_HEX"

    invoke-direct {v0, v4, v3}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->BIN_HEX:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const/4 v4, 0x3

    const-string v5, "BOOLEAN"

    invoke-direct {v0, v5, v4}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->BOOLEAN:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const/4 v5, 0x4

    const-string v6, "CHAR"

    invoke-direct {v0, v6, v5}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->CHAR:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const/4 v6, 0x5

    const-string v7, "DATE"

    invoke-direct {v0, v7, v6}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->DATE:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const/4 v7, 0x6

    const-string v8, "DATETIME"

    invoke-direct {v0, v8, v7}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->DATETIME:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const/4 v8, 0x7

    const-string v9, "DATETIME_TZ"

    invoke-direct {v0, v9, v8}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->DATETIME_TZ:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const/16 v9, 0x8

    const-string v10, "FIXED_14_4"

    invoke-direct {v0, v10, v9}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->FIXED_14_4:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const/16 v10, 0x9

    const-string v11, "FLOAT"

    invoke-direct {v0, v11, v10}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->FLOAT:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const/16 v11, 0xa

    const-string v12, "I1"

    invoke-direct {v0, v12, v11}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->I1:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const/16 v12, 0xb

    const-string v13, "I2"

    invoke-direct {v0, v13, v12}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->I2:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const/16 v13, 0xc

    const-string v14, "I4"

    invoke-direct {v0, v14, v13}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->I4:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const/16 v14, 0xd

    const-string v15, "INT"

    invoke-direct {v0, v15, v14}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->INT:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const/16 v15, 0xe

    const-string v14, "NUMBER"

    invoke-direct {v0, v14, v15}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->NUMBER:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const-string v14, "R4"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->R4:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const-string v14, "R8"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->R8:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const-string v14, "STRING"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const-string v14, "TIME"

    const/16 v15, 0x12

    invoke-direct {v0, v14, v15}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->TIME:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const-string v14, "TIME_TZ"

    const/16 v15, 0x13

    invoke-direct {v0, v14, v15}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->TIME_TZ:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const-string v14, "UI1"

    const/16 v15, 0x14

    invoke-direct {v0, v14, v15}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->UI1:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const-string v14, "UI2"

    const/16 v15, 0x15

    invoke-direct {v0, v14, v15}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->UI2:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const-string v14, "UI4"

    const/16 v15, 0x16

    invoke-direct {v0, v14, v15}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->UI4:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const-string v14, "URI"

    const/16 v15, 0x17

    invoke-direct {v0, v14, v15}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->URI:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const-string v14, "UUID"

    const/16 v15, 0x18

    invoke-direct {v0, v14, v15}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->UUID:Lmiui/upnp/typedef/datatype/DataType;

    const/16 v0, 0x19

    new-array v0, v0, [Lmiui/upnp/typedef/datatype/DataType;

    sget-object v14, Lmiui/upnp/typedef/datatype/DataType;->UNKNOWN:Lmiui/upnp/typedef/datatype/DataType;

    aput-object v14, v0, v1

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->BIN_BASE64:Lmiui/upnp/typedef/datatype/DataType;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->BIN_HEX:Lmiui/upnp/typedef/datatype/DataType;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->BOOLEAN:Lmiui/upnp/typedef/datatype/DataType;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->CHAR:Lmiui/upnp/typedef/datatype/DataType;

    aput-object v1, v0, v5

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->DATE:Lmiui/upnp/typedef/datatype/DataType;

    aput-object v1, v0, v6

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->DATETIME:Lmiui/upnp/typedef/datatype/DataType;

    aput-object v1, v0, v7

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->DATETIME_TZ:Lmiui/upnp/typedef/datatype/DataType;

    aput-object v1, v0, v8

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->FIXED_14_4:Lmiui/upnp/typedef/datatype/DataType;

    aput-object v1, v0, v9

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->FLOAT:Lmiui/upnp/typedef/datatype/DataType;

    aput-object v1, v0, v10

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->I1:Lmiui/upnp/typedef/datatype/DataType;

    aput-object v1, v0, v11

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->I2:Lmiui/upnp/typedef/datatype/DataType;

    aput-object v1, v0, v12

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->I4:Lmiui/upnp/typedef/datatype/DataType;

    aput-object v1, v0, v13

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->INT:Lmiui/upnp/typedef/datatype/DataType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->NUMBER:Lmiui/upnp/typedef/datatype/DataType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->R4:Lmiui/upnp/typedef/datatype/DataType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->R8:Lmiui/upnp/typedef/datatype/DataType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->TIME:Lmiui/upnp/typedef/datatype/DataType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->TIME_TZ:Lmiui/upnp/typedef/datatype/DataType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->UI1:Lmiui/upnp/typedef/datatype/DataType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->UI2:Lmiui/upnp/typedef/datatype/DataType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->UI4:Lmiui/upnp/typedef/datatype/DataType;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->URI:Lmiui/upnp/typedef/datatype/DataType;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->UUID:Lmiui/upnp/typedef/datatype/DataType;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->$VALUES:[Lmiui/upnp/typedef/datatype/DataType;

    const-class v0, Lmiui/upnp/typedef/datatype/DataType;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->TAG:Ljava/lang/String;

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

.method public static BooleanValueOf(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "YES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "TRUE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "NO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "FALSE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_3
    :goto_0
    return-object v0

    :cond_4
    :goto_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static BooleanValueToString(Z)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lmiui/upnp/typedef/datatype/DataType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/upnp/typedef/exception/InvalidDataTypeException;
        }
    .end annotation

    const-string v0, "bin.base64"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->BIN_BASE64:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_0
    const-string v0, "bin.hex"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->BIN_HEX:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_1
    const-string v0, "string"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_2
    const-string v0, "time"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->TIME:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_3
    const-string v0, "time.tz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->TIME_TZ:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_4
    const-string v0, "date"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->DATE:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_5
    const-string v0, "dateTime"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->DATETIME:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_6
    const-string v0, "dateTime.tz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->DATETIME_TZ:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_7
    const-string v0, "fixed.14.4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->FIXED_14_4:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_8
    const-string v0, "uri"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->URI:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_9
    const-string v0, "uuid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->UUID:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_a
    const-string v0, "i1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->I1:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_b
    const-string v0, "i2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->I2:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_c
    const-string v0, "int"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->INT:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_d
    const-string v0, "number"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->NUMBER:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_e
    const-string v0, "ui1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->UI1:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_f
    const-string v0, "ui2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->UI2:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_10
    const-string v0, "i4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->I4:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_11
    const-string v0, "ui4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->UI4:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_12
    const-string v0, "float"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->FLOAT:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_13
    const-string v0, "r4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->R4:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_14
    const-string v0, "r8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->R8:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_15
    const-string v0, "char"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->CHAR:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_16
    const-string v0, "boolean"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->BOOLEAN:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_17
    new-instance v0, Lmiui/upnp/typedef/exception/InvalidDataTypeException;

    invoke-direct {v0, p0}, Lmiui/upnp/typedef/exception/InvalidDataTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/upnp/typedef/datatype/DataType;
    .locals 1

    const-class v0, Lmiui/upnp/typedef/datatype/DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/upnp/typedef/datatype/DataType;

    return-object v0
.end method

.method public static values()[Lmiui/upnp/typedef/datatype/DataType;
    .locals 1

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->$VALUES:[Lmiui/upnp/typedef/datatype/DataType;

    invoke-virtual {v0}, [Lmiui/upnp/typedef/datatype/DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/upnp/typedef/datatype/DataType;

    return-object v0
.end method


# virtual methods
.method public createObjectValue()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lmiui/upnp/typedef/datatype/DataType;->getJavaDataType()Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    const-string v1, ""

    return-object v1

    :cond_0
    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :cond_1
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_2

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    :cond_2
    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_3

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    :cond_3
    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_4

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    :cond_4
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_5

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_5
    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getJavaDataType()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType$1;->$SwitchMap$miui$upnp$typedef$datatype$DataType:[I

    invoke-virtual {p0}, Lmiui/upnp/typedef/datatype/DataType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-class v0, Ljava/lang/Boolean;

    return-object v0

    :pswitch_1
    const-class v0, Ljava/lang/Double;

    return-object v0

    :pswitch_2
    const-class v0, Ljava/lang/Float;

    return-object v0

    :pswitch_3
    const-class v0, Ljava/lang/Long;

    return-object v0

    :pswitch_4
    const-class v0, Ljava/lang/Integer;

    return-object v0

    :pswitch_5
    const-class v0, Ljava/lang/String;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getStringType()Ljava/lang/String;
    .locals 2

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType$1;->$SwitchMap$miui$upnp$typedef$datatype$DataType:[I

    invoke-virtual {p0}, Lmiui/upnp/typedef/datatype/DataType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "boolean"

    return-object v0

    :pswitch_1
    const-string v0, "r8"

    return-object v0

    :pswitch_2
    const-string v0, "r4"

    return-object v0

    :pswitch_3
    const-string v0, "float"

    return-object v0

    :pswitch_4
    const-string v0, "ui4"

    return-object v0

    :pswitch_5
    const-string v0, "i4"

    return-object v0

    :pswitch_6
    const-string v0, "ui2"

    return-object v0

    :pswitch_7
    const-string v0, "ui1"

    return-object v0

    :pswitch_8
    const-string v0, "number"

    return-object v0

    :pswitch_9
    const-string v0, "int"

    return-object v0

    :pswitch_a
    const-string v0, "i2"

    return-object v0

    :pswitch_b
    const-string v0, "i1"

    return-object v0

    :pswitch_c
    const-string v0, "char"

    return-object v0

    :pswitch_d
    const-string v0, "uuid"

    return-object v0

    :pswitch_e
    const-string v0, "uri"

    return-object v0

    :pswitch_f
    const-string v0, "fixed.14.4"

    return-object v0

    :pswitch_10
    const-string v0, "dateTime.tz"

    return-object v0

    :pswitch_11
    const-string v0, "dateTime"

    return-object v0

    :pswitch_12
    const-string v0, "date"

    return-object v0

    :pswitch_13
    const-string v0, "time.tz"

    return-object v0

    :pswitch_14
    const-string v0, "time"

    return-object v0

    :pswitch_15
    const-string v0, "string"

    return-object v0

    :pswitch_16
    const-string v0, "bin.hex"

    return-object v0

    :pswitch_17
    const-string v0, "bin.base64"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toObjectValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lmiui/upnp/typedef/datatype/DataType;->getJavaDataType()Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    return-object p1

    :cond_0
    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :cond_1
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_2

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    :cond_2
    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    :cond_3
    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_4

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    :cond_4
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_5

    invoke-static {p1}, Lmiui/upnp/typedef/datatype/DataType;->BooleanValueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_5
    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public toStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lmiui/upnp/typedef/datatype/DataType;->getJavaDataType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_4
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_5

    move-object v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lmiui/upnp/typedef/datatype/DataType;->BooleanValueToString(Z)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_5
    const/4 v1, 0x0

    return-object v1
.end method

.method public validate(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8

    invoke-virtual {p0}, Lmiui/upnp/typedef/datatype/DataType;->getJavaDataType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v1, v0, :cond_3

    return v2

    :cond_3
    const-class v1, Ljava/lang/Integer;

    const/4 v3, 0x1

    if-ne v0, v1, :cond_5

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object v4, p2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v1, v4, :cond_4

    move v2, v3

    :cond_4
    return v2

    :cond_5
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_7

    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v1, p2

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gtz v1, :cond_6

    move v2, v3

    :cond_6
    return v2

    :cond_7
    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_9

    move-object v1, p1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    move-object v4, p2

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_8

    move v2, v3

    :cond_8
    return v2

    :cond_9
    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_b

    move-object v1, p1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-object v1, p2

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v1, v4, v6

    if-gtz v1, :cond_a

    move v2, v3

    :cond_a
    return v2

    :cond_b
    return v2
.end method

.method public validate(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8

    invoke-virtual {p0}, Lmiui/upnp/typedef/datatype/DataType;->getJavaDataType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->TAG:Ljava/lang/String;

    const-string v3, "dataType invalid"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const-class v1, Ljava/lang/Integer;

    const/4 v3, 0x1

    if-ne v0, v1, :cond_4

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object v4, p2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v1, v4, :cond_3

    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object v4, p3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v1, v4, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    nop

    :goto_0
    return v2

    :cond_4
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_6

    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v1, p2

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gtz v1, :cond_5

    move-object v1, p2

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v1, p3

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gtz v1, :cond_5

    move v2, v3

    goto :goto_1

    :cond_5
    nop

    :goto_1
    return v2

    :cond_6
    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_8

    move-object v1, p2

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    move-object v4, p1

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-ltz v1, :cond_7

    move-object v1, p3

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    move-object v4, p2

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-ltz v1, :cond_7

    move v2, v3

    goto :goto_2

    :cond_7
    nop

    :goto_2
    return v2

    :cond_8
    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_a

    move-object v1, p2

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-object v1, p1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-ltz v1, :cond_9

    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-object v1, p2

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-ltz v1, :cond_9

    move v2, v3

    goto :goto_3

    :cond_9
    nop

    :goto_3
    return v2

    :cond_a
    return v2
.end method
