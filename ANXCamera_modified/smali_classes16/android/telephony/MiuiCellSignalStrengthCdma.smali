.class public final Landroid/telephony/MiuiCellSignalStrengthCdma;
.super Ljava/lang/Object;
.source "MiuiCellSignalStrengthCdma.java"


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "MiuiCellSignalStrengthCdma"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCdmaLevel(II)I
    .locals 1

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_6

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, -0x5a

    if-lt p0, v0, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    :cond_1
    const/16 v0, -0x5d

    if-lt p0, v0, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :cond_2
    const/16 v0, -0x61

    if-lt p0, v0, :cond_3

    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    const/16 v0, -0x65

    if-lt p0, v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_4
    const/16 v0, -0x6d

    if-lt p0, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static getEvdoLevel(III)I
    .locals 1

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_6

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, -0x5a

    if-lt p0, v0, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    :cond_1
    const/16 v0, -0x5d

    if-lt p0, v0, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :cond_2
    const/16 v0, -0x61

    if-lt p0, v0, :cond_3

    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    const/16 v0, -0x65

    if-lt p0, v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_4
    const/16 v0, -0x6d

    if-lt p0, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "MiuiCellSignalStrengthCdma"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;IIIII)I
    .locals 4

    const/4 v0, 0x0

    invoke-static {p2, p3}, Landroid/telephony/MiuiCellSignalStrengthCdma;->getCdmaLevel(II)I

    move-result v1

    invoke-static {p4, p5, p6}, Landroid/telephony/MiuiCellSignalStrengthCdma;->getEvdoLevel(III)I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2, p3}, Landroid/telephony/MiuiCellSignalStrengthCdma;->getCdmaLevel(II)I

    move-result v0

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    invoke-static {p4, p5, p6}, Landroid/telephony/MiuiCellSignalStrengthCdma;->getEvdoLevel(III)I

    move-result v0

    goto :goto_1

    :cond_1
    if-ge v1, v2, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    move v0, v3

    :goto_1
    return v0
.end method
