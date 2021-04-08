.class final enum Landroid/bluetooth/BluetoothQualityReport$PacketType;
.super Ljava/lang/Enum;
.source "BluetoothQualityReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothQualityReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PacketType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/bluetooth/BluetoothQualityReport$PacketType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum INVALID:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum TYPE_2DH1:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum TYPE_2DH3:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum TYPE_2DH5:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum TYPE_2EV3:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum TYPE_2EV5:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum TYPE_3DH1:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum TYPE_3DH3:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum TYPE_3DH5:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum TYPE_3EV3:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum TYPE_3EV5:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum TYPE_AUX1:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum TYPE_DH1:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum TYPE_DH3:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum TYPE_DH5:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum TYPE_DM1:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum TYPE_DM3:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum TYPE_DM5:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum TYPE_DV:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum TYPE_EV3:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum TYPE_EV4:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum TYPE_EV5:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum TYPE_FHS:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum TYPE_HV1:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum TYPE_HV2:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum TYPE_HV3:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum TYPE_ID:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum TYPE_NULL:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum TYPE_POLL:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field private static sAllValues:[Landroid/bluetooth/BluetoothQualityReport$PacketType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const/4 v1, 0x0

    const-string v2, "INVALID"

    invoke-direct {v0, v2, v1}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;->INVALID:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const/4 v2, 0x1

    const-string v3, "TYPE_ID"

    invoke-direct {v0, v3, v2}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_ID:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const/4 v3, 0x2

    const-string v4, "TYPE_NULL"

    invoke-direct {v0, v4, v3}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_NULL:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const/4 v4, 0x3

    const-string v5, "TYPE_POLL"

    invoke-direct {v0, v5, v4}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_POLL:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const/4 v5, 0x4

    const-string v6, "TYPE_FHS"

    invoke-direct {v0, v6, v5}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_FHS:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const/4 v6, 0x5

    const-string v7, "TYPE_HV1"

    invoke-direct {v0, v7, v6}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_HV1:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const/4 v7, 0x6

    const-string v8, "TYPE_HV2"

    invoke-direct {v0, v8, v7}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_HV2:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const/4 v8, 0x7

    const-string v9, "TYPE_HV3"

    invoke-direct {v0, v9, v8}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_HV3:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const/16 v9, 0x8

    const-string v10, "TYPE_DV"

    invoke-direct {v0, v10, v9}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_DV:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const/16 v10, 0x9

    const-string v11, "TYPE_EV3"

    invoke-direct {v0, v11, v10}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_EV3:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const/16 v11, 0xa

    const-string v12, "TYPE_EV4"

    invoke-direct {v0, v12, v11}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_EV4:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const/16 v12, 0xb

    const-string v13, "TYPE_EV5"

    invoke-direct {v0, v13, v12}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_EV5:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const/16 v13, 0xc

    const-string v14, "TYPE_2EV3"

    invoke-direct {v0, v14, v13}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_2EV3:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const/16 v14, 0xd

    const-string v15, "TYPE_2EV5"

    invoke-direct {v0, v15, v14}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_2EV5:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const/16 v15, 0xe

    const-string v14, "TYPE_3EV3"

    invoke-direct {v0, v14, v15}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_3EV3:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v14, "TYPE_3EV5"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_3EV5:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v14, "TYPE_DM1"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_DM1:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v14, "TYPE_DH1"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_DH1:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v14, "TYPE_DM3"

    const/16 v15, 0x12

    invoke-direct {v0, v14, v15}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_DM3:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v14, "TYPE_DH3"

    const/16 v15, 0x13

    invoke-direct {v0, v14, v15}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_DH3:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v14, "TYPE_DM5"

    const/16 v15, 0x14

    invoke-direct {v0, v14, v15}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_DM5:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v14, "TYPE_DH5"

    const/16 v15, 0x15

    invoke-direct {v0, v14, v15}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_DH5:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v14, "TYPE_AUX1"

    const/16 v15, 0x16

    invoke-direct {v0, v14, v15}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_AUX1:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v14, "TYPE_2DH1"

    const/16 v15, 0x17

    invoke-direct {v0, v14, v15}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_2DH1:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v14, "TYPE_2DH3"

    const/16 v15, 0x18

    invoke-direct {v0, v14, v15}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_2DH3:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v14, "TYPE_2DH5"

    const/16 v15, 0x19

    invoke-direct {v0, v14, v15}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_2DH5:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v14, "TYPE_3DH1"

    const/16 v15, 0x1a

    invoke-direct {v0, v14, v15}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_3DH1:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v14, "TYPE_3DH3"

    const/16 v15, 0x1b

    invoke-direct {v0, v14, v15}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_3DH3:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v14, "TYPE_3DH5"

    const/16 v15, 0x1c

    invoke-direct {v0, v14, v15}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_3DH5:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const/16 v0, 0x1d

    new-array v0, v0, [Landroid/bluetooth/BluetoothQualityReport$PacketType;

    sget-object v14, Landroid/bluetooth/BluetoothQualityReport$PacketType;->INVALID:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    aput-object v14, v0, v1

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_ID:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_NULL:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_POLL:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_FHS:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    aput-object v1, v0, v5

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_HV1:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    aput-object v1, v0, v6

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_HV2:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    aput-object v1, v0, v7

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_HV3:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    aput-object v1, v0, v8

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_DV:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    aput-object v1, v0, v9

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_EV3:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    aput-object v1, v0, v10

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_EV4:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    aput-object v1, v0, v11

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_EV5:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    aput-object v1, v0, v12

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_2EV3:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    aput-object v1, v0, v13

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_2EV5:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_3EV3:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_3EV5:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_DM1:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_DH1:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_DM3:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_DH3:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_DM5:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_DH5:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_AUX1:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_2DH1:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_2DH3:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_2DH5:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_3DH1:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_3DH3:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_3DH5:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;->$VALUES:[Landroid/bluetooth/BluetoothQualityReport$PacketType;

    invoke-static {}, Landroid/bluetooth/BluetoothQualityReport$PacketType;->values()[Landroid/bluetooth/BluetoothQualityReport$PacketType;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;->sAllValues:[Landroid/bluetooth/BluetoothQualityReport$PacketType;

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

.method static fromOrdinal(I)Landroid/bluetooth/BluetoothQualityReport$PacketType;
    .locals 2

    sget-object v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;->sAllValues:[Landroid/bluetooth/BluetoothQualityReport$PacketType;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget-object v0, v0, p0

    return-object v0

    :cond_0
    sget-object v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;->INVALID:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/bluetooth/BluetoothQualityReport$PacketType;
    .locals 1

    const-class v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    return-object v0
.end method

.method public static values()[Landroid/bluetooth/BluetoothQualityReport$PacketType;
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;->$VALUES:[Landroid/bluetooth/BluetoothQualityReport$PacketType;

    invoke-virtual {v0}, [Landroid/bluetooth/BluetoothQualityReport$PacketType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/bluetooth/BluetoothQualityReport$PacketType;

    return-object v0
.end method
