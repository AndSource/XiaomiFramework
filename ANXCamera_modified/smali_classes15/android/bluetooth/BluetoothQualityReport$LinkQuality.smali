.class final enum Landroid/bluetooth/BluetoothQualityReport$LinkQuality;
.super Ljava/lang/Enum;
.source "BluetoothQualityReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothQualityReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LinkQuality"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/bluetooth/BluetoothQualityReport$LinkQuality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

.field public static final enum HIGH:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

.field public static final enum INVALID:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

.field public static final enum LOW:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

.field public static final enum MEDIUM:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

.field public static final enum STANDARD:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

.field public static final enum ULTRA_HIGH:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

.field private static sAllValues:[Landroid/bluetooth/BluetoothQualityReport$LinkQuality;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    const/4 v1, 0x0

    const-string v2, "ULTRA_HIGH"

    invoke-direct {v0, v2, v1}, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->ULTRA_HIGH:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    const/4 v2, 0x1

    const-string v3, "HIGH"

    invoke-direct {v0, v3, v2}, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->HIGH:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    const/4 v3, 0x2

    const-string v4, "STANDARD"

    invoke-direct {v0, v4, v3}, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->STANDARD:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    const/4 v4, 0x3

    const-string v5, "MEDIUM"

    invoke-direct {v0, v5, v4}, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->MEDIUM:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    const/4 v5, 0x4

    const-string v6, "LOW"

    invoke-direct {v0, v6, v5}, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->LOW:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    const/4 v6, 0x5

    const-string v7, "INVALID"

    invoke-direct {v0, v7, v6}, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->INVALID:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    sget-object v7, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->ULTRA_HIGH:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    aput-object v7, v0, v1

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->HIGH:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->STANDARD:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    aput-object v1, v0, v3

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->MEDIUM:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    aput-object v1, v0, v4

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->LOW:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    aput-object v1, v0, v5

    sget-object v1, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->INVALID:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    aput-object v1, v0, v6

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->$VALUES:[Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    invoke-static {}, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->values()[Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->sAllValues:[Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

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

.method static fromOrdinal(I)Landroid/bluetooth/BluetoothQualityReport$LinkQuality;
    .locals 2

    sget-object v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->sAllValues:[Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge p0, v1, :cond_0

    aget-object v0, v0, p0

    return-object v0

    :cond_0
    sget-object v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->INVALID:Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/bluetooth/BluetoothQualityReport$LinkQuality;
    .locals 1

    const-class v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    return-object v0
.end method

.method public static values()[Landroid/bluetooth/BluetoothQualityReport$LinkQuality;
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->$VALUES:[Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    invoke-virtual {v0}, [Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    return-object v0
.end method
