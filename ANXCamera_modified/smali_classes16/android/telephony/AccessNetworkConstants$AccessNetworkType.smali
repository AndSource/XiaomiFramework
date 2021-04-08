.class public final Landroid/telephony/AccessNetworkConstants$AccessNetworkType;
.super Ljava/lang/Object;
.source "AccessNetworkConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/AccessNetworkConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccessNetworkType"
.end annotation


# static fields
.field public static final CDMA2000:I = 0x4

.field public static final EUTRAN:I = 0x3

.field public static final GERAN:I = 0x1

.field public static final IWLAN:I = 0x5

.field public static final UNKNOWN:I = 0x0

.field public static final UTRAN:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "IWLAN"

    return-object v0

    :cond_1
    const-string v0, "CDMA2000"

    return-object v0

    :cond_2
    const-string v0, "EUTRAN"

    return-object v0

    :cond_3
    const-string v0, "UTRAN"

    return-object v0

    :cond_4
    const-string v0, "GERAN"

    return-object v0

    :cond_5
    const-string v0, "UNKNOWN"

    return-object v0
.end method
