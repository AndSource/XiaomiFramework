.class public Lcom/miui/mishare/DeviceModel;
.super Ljava/lang/Object;
.source "DeviceModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/mishare/DeviceModel$Xiaomi;,
        Lcom/miui/mishare/DeviceModel$Vivo;,
        Lcom/miui/mishare/DeviceModel$Oppo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final MANUFACTURE_UNDEFINED:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceName(Landroid/content/Context;BI)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2}, Lcom/miui/mishare/DeviceModel;->getDeviceRes(BI)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDeviceRes(BI)I
    .locals 1

    const/16 v0, 0x14

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1d

    if-gt p0, v0, :cond_0

    const v0, 0x110e017f

    return v0

    :cond_0
    const/16 v0, 0xa

    if-lt p0, v0, :cond_1

    const/16 v0, 0x13

    if-gt p0, v0, :cond_1

    const v0, 0x110e00d8

    return v0

    :cond_1
    const/16 v0, 0x1e

    if-lt p0, v0, :cond_2

    const/16 v0, 0x27

    if-gt p0, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    packed-switch p1, :pswitch_data_5

    const v0, 0x110e019d

    return v0

    :pswitch_0
    const v0, 0x110e00c3

    return v0

    :pswitch_1
    const v0, 0x110e00c2

    return v0

    :pswitch_2
    const v0, 0x110e00c1

    return v0

    :pswitch_3
    const v0, 0x110e00fa

    return v0

    :pswitch_4
    const v0, 0x110e00f9

    return v0

    :pswitch_5
    const v0, 0x110e00fb

    return v0

    :pswitch_6
    const v0, 0x110e00f8

    return v0

    :pswitch_7
    const v0, 0x110e00f6

    return v0

    :pswitch_8
    const v0, 0x110e00f7

    return v0

    :pswitch_9
    const v0, 0x110e00f5

    return v0

    :pswitch_a
    const v0, 0x110e00fd

    return v0

    :pswitch_b
    const v0, 0x110e00fc

    return v0

    :pswitch_c
    const v0, 0x110e019c

    return v0

    :pswitch_d
    const v0, 0x110e0197

    return v0

    :pswitch_e
    const v0, 0x110e019e

    return v0

    :pswitch_f
    const v0, 0x110e0195

    return v0

    :pswitch_10
    const v0, 0x110e0196

    return v0

    :pswitch_11
    const v0, 0x110e0194

    return v0

    :pswitch_12
    const v0, 0x110e019b

    return v0

    :pswitch_13
    const v0, 0x110e019a

    return v0

    :pswitch_14
    const v0, 0x110e0199

    return v0

    :pswitch_15
    const v0, 0x110e0198

    return v0

    :pswitch_16
    const v0, 0x110e018c

    return v0

    :pswitch_17
    const v0, 0x110e018e

    return v0

    :pswitch_18
    const v0, 0x110e0191

    return v0

    :pswitch_19
    const v0, 0x110e0190

    return v0

    :pswitch_1a
    const v0, 0x110e018f

    return v0

    :pswitch_1b
    const v0, 0x110e018d

    return v0

    :pswitch_1c
    const v0, 0x110e0193

    return v0

    :pswitch_1d
    const v0, 0x110e0192

    return v0

    :cond_2
    const v0, 0x110e0179

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x101
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x201
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xf01
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1001
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2001
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getManufactureName(Landroid/content/Context;B)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/miui/mishare/DeviceModel;->getManufactureRes(B)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getManufactureRes(B)I
    .locals 1

    const/16 v0, 0x14

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1d

    if-gt p0, v0, :cond_0

    const v0, 0x110e017e

    return v0

    :cond_0
    const/16 v0, 0xa

    if-lt p0, v0, :cond_1

    const/16 v0, 0x13

    if-gt p0, v0, :cond_1

    const v0, 0x110e00d7

    return v0

    :cond_1
    const/16 v0, 0x1e

    if-lt p0, v0, :cond_2

    const/16 v0, 0x27

    if-gt p0, v0, :cond_2

    const v0, 0x110e018b

    return v0

    :cond_2
    const v0, 0x110e0178

    return v0
.end method

.method public static myDeviceCode()I
    .locals 11

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "davinciin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "davinci"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "andromeda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_3
    const-string/jumbo v1, "raphaelin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_4
    const-string/jumbo v1, "raphael"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "cepheus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "equuleus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto/16 :goto_1

    :sswitch_7
    const-string/jumbo v1, "nitrogen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "beryllium"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_9
    const-string/jumbo v1, "sagit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto/16 :goto_1

    :sswitch_a
    const-string/jumbo v1, "pyxis"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "jason"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v1, "vela"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v1, "ursa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v1, "pine"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_f
    const-string v1, "grus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v9

    goto/16 :goto_1

    :sswitch_10
    const-string/jumbo v1, "polaris"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_11
    const-string/jumbo v1, "platina"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto/16 :goto_1

    :sswitch_12
    const-string/jumbo v1, "perseus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_13
    const-string/jumbo v1, "whyred"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_14
    const-string/jumbo v1, "violet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_15
    const-string/jumbo v1, "sirius"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    goto :goto_1

    :sswitch_16
    const-string/jumbo v1, "sakura"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto :goto_1

    :sswitch_17
    const-string v1, "laurus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_18
    const-string/jumbo v1, "sakura_india"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto :goto_1

    :sswitch_19
    const-string v1, "dipper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    goto :goto_1

    :sswitch_1a
    const-string v1, "chiron"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_1b
    const-string v1, "cereus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto :goto_1

    :sswitch_1c
    const-string v1, "cactus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto :goto_1

    :sswitch_1d
    const-string v1, "lavender"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/16 v1, 0x1009

    const/16 v10, 0x1008

    packed-switch v0, :pswitch_data_0

    const v0, 0xffff

    return v0

    :pswitch_0
    return v1

    :pswitch_1
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const/16 v1, 0x2002

    :goto_2
    return v1

    :pswitch_2
    return v10

    :pswitch_3
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    const/16 v10, 0x2001

    :goto_3
    return v10

    :pswitch_4
    const/16 v0, 0x1007

    return v0

    :pswitch_5
    const/16 v0, 0x1006

    return v0

    :pswitch_6
    const/16 v0, 0x1005

    return v0

    :pswitch_7
    const/16 v0, 0x1004

    return v0

    :pswitch_8
    const/16 v0, 0x1003

    return v0

    :pswitch_9
    const/16 v0, 0x1002

    return v0

    :pswitch_a
    const/16 v0, 0x1001

    return v0

    :pswitch_b
    const/16 v0, 0xf03

    return v0

    :pswitch_c
    const/16 v0, 0xf02

    return v0

    :pswitch_d
    const/16 v0, 0xf01

    return v0

    :pswitch_e
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_3

    const/16 v0, 0x202

    goto :goto_4

    :cond_3
    const/16 v0, 0x2003

    :goto_4
    return v0

    :pswitch_f
    const/16 v0, 0x203

    return v0

    :pswitch_10
    const/16 v0, 0x201

    return v0

    :pswitch_11
    const/16 v0, 0x104

    return v0

    :pswitch_12
    const/16 v0, 0x103

    return v0

    :pswitch_13
    const/16 v0, 0x102

    return v0

    :pswitch_14
    const/16 v0, 0x101

    return v0

    :pswitch_15
    return v2

    :pswitch_16
    return v3

    :pswitch_17
    return v4

    :pswitch_18
    return v5

    :pswitch_19
    return v6

    :pswitch_1a
    return v7

    :pswitch_1b
    return v8

    :pswitch_1c
    return v9

    :sswitch_data_0
    .sparse-switch
        -0x52a5fa39 -> :sswitch_1d
        -0x518a8fd3 -> :sswitch_1c
        -0x514b988d -> :sswitch_1b
        -0x51253953 -> :sswitch_1a
        -0x4f5f234e -> :sswitch_19
        -0x4cf7fca1 -> :sswitch_18
        -0x4226cb10 -> :sswitch_17
        -0x36395f99 -> :sswitch_16
        -0x35c5a195 -> :sswitch_15
        -0x30a86b81 -> :sswitch_14
        -0x2efd0837 -> :sswitch_13
        -0x287054f3 -> :sswitch_12
        -0x1d6d75b3 -> :sswitch_11
        -0x17bc6b18 -> :sswitch_10
        0x308cc9 -> :sswitch_f
        0x348170 -> :sswitch_e
        0x36e9ab -> :sswitch_d
        0x372c64 -> :sswitch_c
        0x60390fb -> :sswitch_b
        0x66318f9 -> :sswitch_a
        0x68236c4 -> :sswitch_9
        0x212e93b7 -> :sswitch_8
        0x219c397a -> :sswitch_7
        0x23c13c23 -> :sswitch_6
        0x27bd79a9 -> :sswitch_5
        0x3a677f01 -> :sswitch_4
        0x3e83cfe6 -> :sswitch_3
        0x43763869 -> :sswitch_2
        0x56257364 -> :sswitch_1
        0x62963789 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
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
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static myManufactureCode()B
    .locals 2

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "davinciin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "davinci"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "andromeda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_3
    const-string/jumbo v1, "raphaelin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_4
    const-string/jumbo v1, "raphael"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "cepheus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "equuleus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_7
    const-string/jumbo v1, "nitrogen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "beryllium"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_9
    const-string/jumbo v1, "sagit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_a
    const-string/jumbo v1, "pyxis"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "jason"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v1, "vela"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v1, "ursa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v1, "pine"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_f
    const-string v1, "grus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_10
    const-string/jumbo v1, "polaris"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_11
    const-string/jumbo v1, "platina"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_12
    const-string/jumbo v1, "perseus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_13
    const-string/jumbo v1, "whyred"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_14
    const-string/jumbo v1, "violet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_15
    const-string/jumbo v1, "sirius"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_16
    const-string/jumbo v1, "sakura"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto :goto_1

    :sswitch_17
    const-string v1, "laurus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_18
    const-string/jumbo v1, "sakura_india"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto :goto_1

    :sswitch_19
    const-string v1, "dipper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1a
    const-string v1, "chiron"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_1b
    const-string v1, "cereus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto :goto_1

    :sswitch_1c
    const-string v1, "cactus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto :goto_1

    :sswitch_1d
    const-string v1, "lavender"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/16 v1, 0x1e

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    const/16 v0, 0x1f

    return v0

    :pswitch_1
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x52a5fa39 -> :sswitch_1d
        -0x518a8fd3 -> :sswitch_1c
        -0x514b988d -> :sswitch_1b
        -0x51253953 -> :sswitch_1a
        -0x4f5f234e -> :sswitch_19
        -0x4cf7fca1 -> :sswitch_18
        -0x4226cb10 -> :sswitch_17
        -0x36395f99 -> :sswitch_16
        -0x35c5a195 -> :sswitch_15
        -0x30a86b81 -> :sswitch_14
        -0x2efd0837 -> :sswitch_13
        -0x287054f3 -> :sswitch_12
        -0x1d6d75b3 -> :sswitch_11
        -0x17bc6b18 -> :sswitch_10
        0x308cc9 -> :sswitch_f
        0x348170 -> :sswitch_e
        0x36e9ab -> :sswitch_d
        0x372c64 -> :sswitch_c
        0x60390fb -> :sswitch_b
        0x66318f9 -> :sswitch_a
        0x68236c4 -> :sswitch_9
        0x212e93b7 -> :sswitch_8
        0x219c397a -> :sswitch_7
        0x23c13c23 -> :sswitch_6
        0x27bd79a9 -> :sswitch_5
        0x3a677f01 -> :sswitch_4
        0x3e83cfe6 -> :sswitch_3
        0x43763869 -> :sswitch_2
        0x56257364 -> :sswitch_1
        0x62963789 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
