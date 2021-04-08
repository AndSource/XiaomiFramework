.class public final enum Landroid/graphics/ColorSpace$Named;
.super Ljava/lang/Enum;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Named"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/ColorSpace$Named;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/ColorSpace$Named;

.field public static final enum ACES:Landroid/graphics/ColorSpace$Named;

.field public static final enum ACESCG:Landroid/graphics/ColorSpace$Named;

.field public static final enum ADOBE_RGB:Landroid/graphics/ColorSpace$Named;

.field public static final enum BT2020:Landroid/graphics/ColorSpace$Named;

.field public static final enum BT709:Landroid/graphics/ColorSpace$Named;

.field public static final enum CIE_LAB:Landroid/graphics/ColorSpace$Named;

.field public static final enum CIE_XYZ:Landroid/graphics/ColorSpace$Named;

.field public static final enum DCI_P3:Landroid/graphics/ColorSpace$Named;

.field public static final enum DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

.field public static final enum EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

.field public static final enum LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

.field public static final enum LINEAR_SRGB:Landroid/graphics/ColorSpace$Named;

.field public static final enum NTSC_1953:Landroid/graphics/ColorSpace$Named;

.field public static final enum PRO_PHOTO_RGB:Landroid/graphics/ColorSpace$Named;

.field public static final enum SMPTE_C:Landroid/graphics/ColorSpace$Named;

.field public static final enum SRGB:Landroid/graphics/ColorSpace$Named;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const/4 v1, 0x0

    const-string v2, "SRGB"

    invoke-direct {v0, v2, v1}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const/4 v2, 0x1

    const-string v3, "LINEAR_SRGB"

    invoke-direct {v0, v3, v2}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->LINEAR_SRGB:Landroid/graphics/ColorSpace$Named;

    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const/4 v3, 0x2

    const-string v4, "EXTENDED_SRGB"

    invoke-direct {v0, v4, v3}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const/4 v4, 0x3

    const-string v5, "LINEAR_EXTENDED_SRGB"

    invoke-direct {v0, v5, v4}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const/4 v5, 0x4

    const-string v6, "BT709"

    invoke-direct {v0, v6, v5}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->BT709:Landroid/graphics/ColorSpace$Named;

    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const/4 v6, 0x5

    const-string v7, "BT2020"

    invoke-direct {v0, v7, v6}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->BT2020:Landroid/graphics/ColorSpace$Named;

    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const/4 v7, 0x6

    const-string v8, "DCI_P3"

    invoke-direct {v0, v8, v7}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->DCI_P3:Landroid/graphics/ColorSpace$Named;

    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const/4 v8, 0x7

    const-string v9, "DISPLAY_P3"

    invoke-direct {v0, v9, v8}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const/16 v9, 0x8

    const-string v10, "NTSC_1953"

    invoke-direct {v0, v10, v9}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->NTSC_1953:Landroid/graphics/ColorSpace$Named;

    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const/16 v10, 0x9

    const-string v11, "SMPTE_C"

    invoke-direct {v0, v11, v10}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->SMPTE_C:Landroid/graphics/ColorSpace$Named;

    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const/16 v11, 0xa

    const-string v12, "ADOBE_RGB"

    invoke-direct {v0, v12, v11}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->ADOBE_RGB:Landroid/graphics/ColorSpace$Named;

    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const/16 v12, 0xb

    const-string v13, "PRO_PHOTO_RGB"

    invoke-direct {v0, v13, v12}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->PRO_PHOTO_RGB:Landroid/graphics/ColorSpace$Named;

    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const/16 v13, 0xc

    const-string v14, "ACES"

    invoke-direct {v0, v14, v13}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->ACES:Landroid/graphics/ColorSpace$Named;

    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const/16 v14, 0xd

    const-string v15, "ACESCG"

    invoke-direct {v0, v15, v14}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->ACESCG:Landroid/graphics/ColorSpace$Named;

    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const/16 v15, 0xe

    const-string v14, "CIE_XYZ"

    invoke-direct {v0, v14, v15}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->CIE_XYZ:Landroid/graphics/ColorSpace$Named;

    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const-string v14, "CIE_LAB"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->CIE_LAB:Landroid/graphics/ColorSpace$Named;

    const/16 v0, 0x10

    new-array v0, v0, [Landroid/graphics/ColorSpace$Named;

    sget-object v14, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    aput-object v14, v0, v1

    sget-object v1, Landroid/graphics/ColorSpace$Named;->LINEAR_SRGB:Landroid/graphics/ColorSpace$Named;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/ColorSpace$Named;->LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    aput-object v1, v0, v4

    sget-object v1, Landroid/graphics/ColorSpace$Named;->BT709:Landroid/graphics/ColorSpace$Named;

    aput-object v1, v0, v5

    sget-object v1, Landroid/graphics/ColorSpace$Named;->BT2020:Landroid/graphics/ColorSpace$Named;

    aput-object v1, v0, v6

    sget-object v1, Landroid/graphics/ColorSpace$Named;->DCI_P3:Landroid/graphics/ColorSpace$Named;

    aput-object v1, v0, v7

    sget-object v1, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    aput-object v1, v0, v8

    sget-object v1, Landroid/graphics/ColorSpace$Named;->NTSC_1953:Landroid/graphics/ColorSpace$Named;

    aput-object v1, v0, v9

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SMPTE_C:Landroid/graphics/ColorSpace$Named;

    aput-object v1, v0, v10

    sget-object v1, Landroid/graphics/ColorSpace$Named;->ADOBE_RGB:Landroid/graphics/ColorSpace$Named;

    aput-object v1, v0, v11

    sget-object v1, Landroid/graphics/ColorSpace$Named;->PRO_PHOTO_RGB:Landroid/graphics/ColorSpace$Named;

    aput-object v1, v0, v12

    sget-object v1, Landroid/graphics/ColorSpace$Named;->ACES:Landroid/graphics/ColorSpace$Named;

    aput-object v1, v0, v13

    sget-object v1, Landroid/graphics/ColorSpace$Named;->ACESCG:Landroid/graphics/ColorSpace$Named;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/ColorSpace$Named;->CIE_XYZ:Landroid/graphics/ColorSpace$Named;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/ColorSpace$Named;->CIE_LAB:Landroid/graphics/ColorSpace$Named;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Landroid/graphics/ColorSpace$Named;->$VALUES:[Landroid/graphics/ColorSpace$Named;

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

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/ColorSpace$Named;
    .locals 1

    const-class v0, Landroid/graphics/ColorSpace$Named;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorSpace$Named;

    return-object v0
.end method

.method public static values()[Landroid/graphics/ColorSpace$Named;
    .locals 1

    sget-object v0, Landroid/graphics/ColorSpace$Named;->$VALUES:[Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v0}, [Landroid/graphics/ColorSpace$Named;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/ColorSpace$Named;

    return-object v0
.end method
