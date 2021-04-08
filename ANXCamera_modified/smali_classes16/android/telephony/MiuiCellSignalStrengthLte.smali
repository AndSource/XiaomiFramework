.class public final Landroid/telephony/MiuiCellSignalStrengthLte;
.super Ljava/lang/Object;
.source "MiuiCellSignalStrengthLte.java"


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "MiuiCellSignalStrengthLte"

.field private static final MAX_LTE_RSRP:I = -0x2c

.field private static final MIN_LTE_RSRP:I = -0x8c


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "MiuiCellSignalStrengthLte"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static updateMiuiLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;II)I
    .locals 9

    const/4 v0, 0x0

    invoke-static {}, Landroid/telephony/MiuiCellSignalStrength;->getCustomedRsrpThresholds()[I

    move-result-object v1

    if-nez p0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const-string/jumbo v3, "use_only_rsrp_for_lte_signal_bar_bool"

    invoke-virtual {p0, v3, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    :goto_0
    const/4 v3, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getLteEarfcnRsrpBoost()I

    move-result v3

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    add-int v7, p2, v3

    const/16 v8, -0x8c

    if-lt v7, v8, :cond_3

    const/16 v8, -0x2c

    if-le v7, v8, :cond_2

    goto :goto_2

    :cond_2
    array-length v5, v1

    :goto_1
    if-lez v5, :cond_4

    add-int/lit8 v8, v5, -0x1

    aget v8, v1, v8

    if-ge v7, v8, :cond_4

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_3
    :goto_2
    const/4 v5, -0x1

    :cond_4
    const/4 v8, -0x1

    if-eqz v2, :cond_5

    if-eq v5, v8, :cond_5

    move v0, v5

    return v0

    :cond_5
    if-eq v6, v8, :cond_7

    if-eq v5, v8, :cond_7

    if-ge v5, v6, :cond_6

    move v8, v5

    goto :goto_3

    :cond_6
    move v8, v6

    :goto_3
    move v0, v8

    return v0

    :cond_7
    if-eq v6, v8, :cond_8

    move v0, v6

    return v0

    :cond_8
    if-eq v5, v8, :cond_9

    move v0, v5

    return v0

    :cond_9
    const/16 v8, -0x33

    if-le p3, v8, :cond_a

    const/4 v4, 0x0

    goto :goto_4

    :cond_a
    const/16 v8, -0x59

    if-lt p3, v8, :cond_b

    const/4 v4, 0x5

    goto :goto_4

    :cond_b
    const/16 v8, -0x5f

    if-lt p3, v8, :cond_c

    const/4 v4, 0x4

    goto :goto_4

    :cond_c
    const/16 v8, -0x65

    if-lt p3, v8, :cond_d

    const/4 v4, 0x3

    goto :goto_4

    :cond_d
    const/16 v8, -0x6b

    if-lt p3, v8, :cond_e

    const/4 v4, 0x2

    goto :goto_4

    :cond_e
    const/16 v8, -0x71

    if-lt p3, v8, :cond_f

    const/4 v4, 0x1

    goto :goto_4

    :cond_f
    const/4 v4, 0x0

    :goto_4
    move v0, v4

    return v0
.end method
