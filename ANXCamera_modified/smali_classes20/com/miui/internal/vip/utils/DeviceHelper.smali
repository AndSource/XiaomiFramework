.class public Lcom/miui/internal/vip/utils/DeviceHelper;
.super Ljava/lang/Object;
.source "DeviceHelper.java"


# static fields
.field public static final MIUI_VERSION:Ljava/lang/String;

.field public static final PRODUCT:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static volatile sDeviceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ro.product.device"

    invoke-static {v0}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/vip/utils/DeviceHelper;->PRODUCT:Ljava/lang/String;

    const-string v0, "ro.build.version.incremental"

    invoke-static {v0}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/vip/utils/DeviceHelper;->MIUI_VERSION:Ljava/lang/String;

    const-string v0, "DeviceHelper"

    sput-object v0, Lcom/miui/internal/vip/utils/DeviceHelper;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/internal/vip/utils/DeviceHelper;->sDeviceId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/miui/internal/vip/utils/DeviceHelper;->sDeviceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/miui/internal/vip/utils/Utils;->isInMainThread()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "DeviceUtils.getDeviceId shouldn\'t be invoked in main thread"

    invoke-static {v2, v0}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    const-class v0, Lcom/miui/internal/vip/utils/DeviceHelper;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v2, Lcom/miui/internal/vip/utils/DeviceHelper;->sDeviceId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/miui/internal/vip/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lmiui/util/DeviceUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v4, "MD5"

    invoke-static {v3, v4}, Lmiui/security/DigestUtils;->get([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/miui/internal/vip/utils/Utils;->bytesToHex([B)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/miui/internal/vip/utils/DeviceHelper;->sDeviceId:Ljava/lang/String;

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v1, "getDeviceId failed, %s"

    invoke-static {v1, v2}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    sget-object v0, Lcom/miui/internal/vip/utils/DeviceHelper;->sDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public static isPad()Z
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    return v0
.end method
