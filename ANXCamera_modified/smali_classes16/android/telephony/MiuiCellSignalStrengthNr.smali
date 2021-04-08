.class public final Landroid/telephony/MiuiCellSignalStrengthNr;
.super Ljava/lang/Object;
.source "MiuiCellSignalStrengthNr.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;I)I
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Landroid/telephony/MiuiCellSignalStrength;->getCustomedRsrpThresholds()[I

    move-result-object v1

    const v2, 0x7fffffff

    if-ne p2, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    aget v2, v1, v2

    if-lt p2, v2, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    aget v2, v1, v2

    if-lt p2, v2, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    aget v2, v1, v2

    if-lt p2, v2, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    aget v2, v1, v2

    if-lt p2, v2, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    aget v2, v1, v2

    if-lt p2, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
