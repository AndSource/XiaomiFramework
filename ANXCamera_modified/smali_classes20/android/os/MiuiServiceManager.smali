.class public Landroid/os/MiuiServiceManager;
.super Ljava/lang/Object;
.source "MiuiServiceManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEPRECATED_MSG:Ljava/lang/String; = "MiuiServiceManager has been deprecated"

.field private static final TAG:Ljava/lang/String; = "MiuiServiceManager"

.field private static sCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static sMiuiServiceManager:Landroid/os/IMiuiServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/MiuiServiceManager;->sCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "MiuiServiceManager"

    :try_start_0
    invoke-static {}, Landroid/os/MiuiServiceManager;->getIMiuiServiceManager()Landroid/os/IMiuiServiceManager;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/os/IMiuiServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "error in miui addService"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "MiuiServiceManager has been deprecated"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    nop

    :goto_1
    return-void
.end method

.method private static getIMiuiServiceManager()Landroid/os/IMiuiServiceManager;
    .locals 1

    sget-object v0, Landroid/os/MiuiServiceManager;->sMiuiServiceManager:Landroid/os/IMiuiServiceManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    nop

    const-string v0, "miui.os.servicemanager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IMiuiServiceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IMiuiServiceManager;

    move-result-object v0

    sput-object v0, Landroid/os/MiuiServiceManager;->sMiuiServiceManager:Landroid/os/IMiuiServiceManager;

    sget-object v0, Landroid/os/MiuiServiceManager;->sMiuiServiceManager:Landroid/os/IMiuiServiceManager;

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "MiuiServiceManager"

    :try_start_0
    sget-object v1, Landroid/os/MiuiServiceManager;->sCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Landroid/os/MiuiServiceManager;->getIMiuiServiceManager()Landroid/os/IMiuiServiceManager;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/os/IMiuiServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "error in miui getService"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "MiuiServiceManager has been deprecated"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static listServices()[Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "MiuiServiceManager"

    :try_start_0
    invoke-static {}, Landroid/os/MiuiServiceManager;->getIMiuiServiceManager()Landroid/os/IMiuiServiceManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IMiuiServiceManager;->listServices()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "error in miui listServices"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "MiuiServiceManager has been deprecated"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method
