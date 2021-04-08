.class final enum Landroid/bluetooth/BluetoothQualityReport$AirMode;
.super Ljava/lang/Enum;
.source "BluetoothQualityReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothQualityReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AirMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/bluetooth/BluetoothQualityReport$AirMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/bluetooth/BluetoothQualityReport$AirMode;

.field public static final enum CVSD:Landroid/bluetooth/BluetoothQualityReport$AirMode;

.field public static final enum INVALID:Landroid/bluetooth/BluetoothQualityReport$AirMode;

.field public static final enum aLaw:Landroid/bluetooth/BluetoothQualityReport$AirMode;

.field private static sAllValues:[Landroid/bluetooth/BluetoothQualityReport$AirMode;

.field public static final enum transparent_msbc:Landroid/bluetooth/BluetoothQualityReport$AirMode;

.field public static final enum uLaw:Landroid/bluetooth/BluetoothQualityReport$AirMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;

    const/4 v1, 0x0

    const-string/jumbo v2, "uLaw"

    invoke-direct {v0, v2, v1}, Landroid/bluetooth/BluetoothQualityReport$AirMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;->uLaw:Landroid/bluetooth/BluetoothQualityReport$AirMode;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;

    const/4 v2, 0x1

    const-string v3, "aLaw"

    invoke-direct {v0, v3, v2}, Landroid/bluetooth/BluetoothQualityReport$AirMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;->aLaw:Landroid/bluetooth/BluetoothQualityReport$AirMode;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;

    const/4 v3, 0x2

    const-string v4, "CVSD"

    invoke-direct {v0, v4, v3}, Landroid/bluetooth/BluetoothQualityReport$AirMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;->CVSD:Landroid/bluetooth/BluetoothQualityReport$AirMode;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;

    const/4 v4, 0x3

    const-string/jumbo v5, "transparent_msbc"

    invoke-direct {v0, v5, v4}, Landroid/bluetooth/BluetoothQualityReport$AirMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;->transparent_msbc:Landroid/bluetooth/BluetoothQualityReport$AirMode;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;

    const/4 v5, 0x4

    const-string v6, "INVALID"

    invoke-direct {v0, v6, v5}, Landroid/bluetooth/BluetoothQualityReport$AirMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;->INVALID:Landroid/bluetooth/BluetoothQualityReport$AirMode;

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/bluetooth/BluetoothQualityReport$AirMode;

    sget-object v6, Landroid/bluetooth/BluetoothQualityReport$AirMode;->uLaw:Landroid/bluetooth/BluetoothQualityReport$AirMode;

    aput-object v6, v0, v1

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$AirMode;->aLaw:Landroid/bluetooth/BluetoothQualityReport$AirMode;

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$AirMode;->CVSD:Landroid/bluetooth/BluetoothQualityReport$AirMode;

    aput-object v1, v0, v3

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$AirMode;->transparent_msbc:Landroid/bluetooth/BluetoothQualityReport$AirMode;

    aput-object v1, v0, v4

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$AirMode;->INVALID:Landroid/bluetooth/BluetoothQualityReport$AirMode;

    aput-object v1, v0, v5

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;->$VALUES:[Landroid/bluetooth/BluetoothQualityReport$AirMode;

    invoke-static {}, Landroid/bluetooth/BluetoothQualityReport$AirMode;->values()[Landroid/bluetooth/BluetoothQualityReport$AirMode;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;->sAllValues:[Landroid/bluetooth/BluetoothQualityReport$AirMode;

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

.method static fromOrdinal(I)Landroid/bluetooth/BluetoothQualityReport$AirMode;
    .locals 2

    sget-object v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;->sAllValues:[Landroid/bluetooth/BluetoothQualityReport$AirMode;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge p0, v1, :cond_0

    aget-object v0, v0, p0

    return-object v0

    :cond_0
    sget-object v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;->INVALID:Landroid/bluetooth/BluetoothQualityReport$AirMode;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/bluetooth/BluetoothQualityReport$AirMode;
    .locals 1

    const-class v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;

    return-object v0
.end method

.method public static values()[Landroid/bluetooth/BluetoothQualityReport$AirMode;
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;->$VALUES:[Landroid/bluetooth/BluetoothQualityReport$AirMode;

    invoke-virtual {v0}, [Landroid/bluetooth/BluetoothQualityReport$AirMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/bluetooth/BluetoothQualityReport$AirMode;

    return-object v0
.end method
