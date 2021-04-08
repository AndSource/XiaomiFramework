.class public Lmiui/util/VibrateUtils;
.super Ljava/lang/Object;
.source "VibrateUtils.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mHapticAttributes:Landroid/media/AudioAttributes;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "VibrateUtils"

    sput-object v0, Lmiui/util/VibrateUtils;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lmiui/util/VibrateUtils;->mHapticAttributes:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVibrationEffect(I)Landroid/os/VibrationEffect;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lmiui/util/VibrateUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method private static invokeSetInfiniteStrength(Landroid/os/VibrationEffect;D)V
    .locals 6

    const-class v0, Landroid/os/VibrationEffect$Prebaked;

    :try_start_0
    const-string v1, "setInfiniteStrength"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v2, Lmiui/util/VibrateUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v1

    sget-object v2, Lmiui/util/VibrateUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v1

    sget-object v2, Lmiui/util/VibrateUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    nop

    :goto_1
    return-void
.end method

.method public static vibrate(Landroid/os/Vibrator;Z[JII)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    aget-wide v2, p2, v0

    long-to-int v2, v2

    invoke-static {v2}, Lmiui/util/VibrateUtils;->getVibrationEffect(I)Landroid/os/VibrationEffect;

    move-result-object v3

    if-eqz v3, :cond_4

    instance-of v0, v3, Landroid/os/VibrationEffect$Prebaked;

    if-eqz v0, :cond_3

    if-eq p3, p4, :cond_3

    const-wide/16 v4, 0x0

    if-eqz p3, :cond_2

    if-eq p3, v1, :cond_1

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_1
    const-wide/high16 v4, 0x3fe4000000000000L    # 0.625

    goto :goto_0

    :cond_2
    const-wide/high16 v4, 0x3fd8000000000000L    # 0.375

    nop

    :goto_0
    invoke-static {v3, v4, v5}, Lmiui/util/VibrateUtils;->invokeSetInfiniteStrength(Landroid/os/VibrationEffect;D)V

    :cond_3
    sget-object v0, Lmiui/util/VibrateUtils;->mHapticAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {p0, v3, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    return-void

    :cond_4
    array-length v2, p2

    if-ne v2, v1, :cond_5

    aget-wide v0, p2, v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_1

    :cond_5
    const/4 v0, -0x1

    invoke-virtual {p0, p2, v0}, Landroid/os/Vibrator;->vibrate([JI)V

    :goto_1
    return-void
.end method

.method public static vibrateExt(Landroid/os/Vibrator;I)Z
    .locals 2

    invoke-static {p1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    sget-object v1, Lmiui/util/VibrateUtils;->mHapticAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    const/4 v1, 0x1

    return v1
.end method

.method public static vibrateExt(Landroid/os/Vibrator;Landroid/net/Uri;Landroid/content/Context;)Z
    .locals 2

    invoke-static {p1, p2}, Landroid/os/VibrationEffect;->get(Landroid/net/Uri;Landroid/content/Context;)Landroid/os/VibrationEffect;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lmiui/util/VibrateUtils;->mHapticAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method
