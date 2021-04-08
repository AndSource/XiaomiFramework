.class final enum Landroid/bluetooth/BluetoothQualityReport$ConnState;
.super Ljava/lang/Enum;
.source "BluetoothQualityReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothQualityReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ConnState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/bluetooth/BluetoothQualityReport$ConnState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum CONN_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum CONN_ANT_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum CONN_DISCONNECT_PENDING:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum CONN_HOLD:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum CONN_IDLE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum CONN_LE_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum CONN_LOCAL_LOOPBACK:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum CONN_PAGE_SCAN:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum CONN_PAGING:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum CONN_PARK:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum CONN_PARK_PEND:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum CONN_RECONNECTING:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum CONN_SEMI_CONN:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum CONN_SNIFF_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum CONN_SNIFF_IDLE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum CONN_SNIFF_MASTER_TRANSITION:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum CONN_TRIGGER_SCAN:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum CONN_UNPARK_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum CONN_UNPARK_PEND:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field private static sAllStates:[Landroid/bluetooth/BluetoothQualityReport$ConnState;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const/4 v1, 0x0

    const-string v2, "CONN_IDLE"

    invoke-direct {v0, v2, v1, v1}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_IDLE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const/4 v2, 0x1

    const-string v3, "CONN_ACTIVE"

    const/16 v4, 0x81

    invoke-direct {v0, v3, v2, v4}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const/4 v3, 0x2

    const-string v4, "CONN_HOLD"

    invoke-direct {v0, v4, v3, v3}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_HOLD:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const/4 v4, 0x3

    const-string v5, "CONN_SNIFF_IDLE"

    invoke-direct {v0, v5, v4, v4}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_SNIFF_IDLE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const/4 v5, 0x4

    const-string v6, "CONN_SNIFF_ACTIVE"

    const/16 v7, 0x84

    invoke-direct {v0, v6, v5, v7}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_SNIFF_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v6, "CONN_SNIFF_MASTER_TRANSITION"

    const/4 v7, 0x5

    const/16 v8, 0x85

    invoke-direct {v0, v6, v7, v8}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_SNIFF_MASTER_TRANSITION:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const/4 v6, 0x6

    const-string v7, "CONN_PARK"

    invoke-direct {v0, v7, v6, v6}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_PARK:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v7, "CONN_PARK_PEND"

    const/4 v8, 0x7

    const/16 v9, 0x47

    invoke-direct {v0, v7, v8, v9}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_PARK_PEND:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const/16 v7, 0x8

    const-string v8, "CONN_UNPARK_PEND"

    invoke-direct {v0, v8, v7, v7}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_UNPARK_PEND:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v8, "CONN_UNPARK_ACTIVE"

    const/16 v9, 0x9

    const/16 v10, 0x89

    invoke-direct {v0, v8, v9, v10}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_UNPARK_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v8, "CONN_DISCONNECT_PENDING"

    const/16 v9, 0xa

    const/16 v10, 0x4a

    invoke-direct {v0, v8, v9, v10}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_DISCONNECT_PENDING:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const/16 v8, 0xb

    const-string v9, "CONN_PAGING"

    invoke-direct {v0, v9, v8, v8}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_PAGING:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const/16 v9, 0xc

    const-string v10, "CONN_PAGE_SCAN"

    invoke-direct {v0, v10, v9, v9}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_PAGE_SCAN:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const/16 v10, 0xd

    const-string v11, "CONN_LOCAL_LOOPBACK"

    invoke-direct {v0, v11, v10, v10}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_LOCAL_LOOPBACK:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const/16 v11, 0xe

    const-string v12, "CONN_LE_ACTIVE"

    invoke-direct {v0, v12, v11, v11}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_LE_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const/16 v12, 0xf

    const-string v13, "CONN_ANT_ACTIVE"

    invoke-direct {v0, v13, v12, v12}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_ANT_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const/16 v13, 0x10

    const-string v14, "CONN_TRIGGER_SCAN"

    invoke-direct {v0, v14, v13, v13}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_TRIGGER_SCAN:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const/16 v14, 0x11

    const-string v15, "CONN_RECONNECTING"

    invoke-direct {v0, v15, v14, v14}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_RECONNECTING:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const/16 v15, 0x12

    const-string v14, "CONN_SEMI_CONN"

    invoke-direct {v0, v14, v15, v15}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_SEMI_CONN:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const/16 v0, 0x13

    new-array v0, v0, [Landroid/bluetooth/BluetoothQualityReport$ConnState;

    sget-object v14, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_IDLE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    aput-object v14, v0, v1

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_HOLD:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    aput-object v1, v0, v3

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_SNIFF_IDLE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    aput-object v1, v0, v4

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_SNIFF_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    aput-object v1, v0, v5

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_SNIFF_MASTER_TRANSITION:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_PARK:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    aput-object v1, v0, v6

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_PARK_PEND:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_UNPARK_PEND:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    aput-object v1, v0, v7

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_UNPARK_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_DISCONNECT_PENDING:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_PAGING:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    aput-object v1, v0, v8

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_PAGE_SCAN:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    aput-object v1, v0, v9

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_LOCAL_LOOPBACK:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    aput-object v1, v0, v10

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_LE_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    aput-object v1, v0, v11

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_ANT_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    aput-object v1, v0, v12

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_TRIGGER_SCAN:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    aput-object v1, v0, v13

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_RECONNECTING:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_SEMI_CONN:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    aput-object v1, v0, v15

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->$VALUES:[Landroid/bluetooth/BluetoothQualityReport$ConnState;

    invoke-static {}, Landroid/bluetooth/BluetoothQualityReport$ConnState;->values()[Landroid/bluetooth/BluetoothQualityReport$ConnState;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->sAllStates:[Landroid/bluetooth/BluetoothQualityReport$ConnState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->mValue:I

    return-void
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 5

    sget-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->sAllStates:[Landroid/bluetooth/BluetoothQualityReport$ConnState;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Landroid/bluetooth/BluetoothQualityReport$ConnState;->mValue:I

    if-ne v4, p0, :cond_0

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothQualityReport$ConnState;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "INVALID"

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/bluetooth/BluetoothQualityReport$ConnState;
    .locals 1

    const-class v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    return-object v0
.end method

.method public static values()[Landroid/bluetooth/BluetoothQualityReport$ConnState;
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->$VALUES:[Landroid/bluetooth/BluetoothQualityReport$ConnState;

    invoke-virtual {v0}, [Landroid/bluetooth/BluetoothQualityReport$ConnState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/bluetooth/BluetoothQualityReport$ConnState;

    return-object v0
.end method
