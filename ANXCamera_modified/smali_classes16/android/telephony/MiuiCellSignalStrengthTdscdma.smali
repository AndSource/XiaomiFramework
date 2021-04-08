.class public final Landroid/telephony/MiuiCellSignalStrengthTdscdma;
.super Ljava/lang/Object;
.source "MiuiCellSignalStrengthTdscdma.java"


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "MiuiCellSignalStrengthTdscdma"

.field private static final TDSCDMA_RSCP_EXCELLENT:I = -0x58

.field private static final TDSCDMA_RSCP_GOOD:I = -0x66

.field private static final TDSCDMA_RSCP_GREAT:I = -0x5f

.field private static final TDSCDMA_RSCP_MAX:I = -0x18

.field private static final TDSCDMA_RSCP_MODERATE:I = -0x6d

.field private static final TDSCDMA_RSCP_POOR:I = -0x78


# instance fields
.field private mBitErrorRate:I

.field private mRscp:I

.field private mRssi:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "MiuiCellSignalStrengthTdscdma"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;II)I
    .locals 2

    const/4 v0, 0x0

    const/16 v1, -0x18

    if-gt p3, v1, :cond_6

    const v1, 0x7fffffff

    if-ne p3, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, -0x58

    if-lt p3, v1, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    :cond_1
    const/16 v1, -0x5f

    if-lt p3, v1, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :cond_2
    const/16 v1, -0x66

    if-lt p3, v1, :cond_3

    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    const/16 v1, -0x6d

    if-lt p3, v1, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_4
    const/16 v1, -0x78

    if-lt p3, v1, :cond_5

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
