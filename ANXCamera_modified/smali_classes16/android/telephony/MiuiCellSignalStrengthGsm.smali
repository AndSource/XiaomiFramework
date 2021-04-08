.class public final Landroid/telephony/MiuiCellSignalStrengthGsm;
.super Ljava/lang/Object;
.source "MiuiCellSignalStrengthGsm.java"


# static fields
.field private static final DBG:Z = false

.field private static GSM_RSSI_EXCELLENT:I = 0x0

.field private static final GSM_RSSI_GOOD:I = -0x65

.field private static GSM_RSSI_GREAT:I = 0x0

.field private static final GSM_RSSI_MAX:I = -0x33

.field private static final GSM_RSSI_MIN:I = -0x71

.field private static final GSM_RSSI_MODERATE:I = -0x6b

.field private static final GSM_RSSI_POOR:I = -0x71

.field private static final LOG_TAG:Ljava/lang/String; = "MiuiCellSignalStrengthGsm"

.field private static final sRssiThresholds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, -0x59

    sput v0, Landroid/telephony/MiuiCellSignalStrengthGsm;->GSM_RSSI_EXCELLENT:I

    const/16 v0, -0x5f

    sput v0, Landroid/telephony/MiuiCellSignalStrengthGsm;->GSM_RSSI_GREAT:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, -0x71

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, -0x6b

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, -0x65

    aput v2, v0, v1

    sget v1, Landroid/telephony/MiuiCellSignalStrengthGsm;->GSM_RSSI_GREAT:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Landroid/telephony/MiuiCellSignalStrengthGsm;->GSM_RSSI_EXCELLENT:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sput-object v0, Landroid/telephony/MiuiCellSignalStrengthGsm;->sRssiThresholds:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "MiuiCellSignalStrengthGsm"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;I)I
    .locals 3

    invoke-static {}, Landroid/telephony/MiuiSignalStrength;->shouldOptimizeSignalStrength()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, -0x5d

    sput v0, Landroid/telephony/MiuiCellSignalStrengthGsm;->GSM_RSSI_EXCELLENT:I

    const/16 v0, -0x61

    sput v0, Landroid/telephony/MiuiCellSignalStrengthGsm;->GSM_RSSI_GREAT:I

    :cond_0
    const/4 v0, 0x0

    const/16 v1, -0x71

    if-le p2, v1, :cond_7

    const/16 v2, -0x33

    if-le p2, v2, :cond_1

    goto :goto_0

    :cond_1
    sget v2, Landroid/telephony/MiuiCellSignalStrengthGsm;->GSM_RSSI_EXCELLENT:I

    if-lt p2, v2, :cond_2

    const/4 v0, 0x5

    goto :goto_1

    :cond_2
    sget v2, Landroid/telephony/MiuiCellSignalStrengthGsm;->GSM_RSSI_GREAT:I

    if-lt p2, v2, :cond_3

    const/4 v0, 0x4

    goto :goto_1

    :cond_3
    const/16 v2, -0x65

    if-lt p2, v2, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_4
    const/16 v2, -0x6b

    if-lt p2, v2, :cond_5

    const/4 v0, 0x2

    goto :goto_1

    :cond_5
    if-le p2, v1, :cond_6

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method
