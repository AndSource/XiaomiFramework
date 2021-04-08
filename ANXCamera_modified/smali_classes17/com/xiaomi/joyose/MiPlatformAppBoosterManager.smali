.class public Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;
.super Ljava/lang/Object;
.source "MiPlatformAppBoosterManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/joyose/MiPlatformAppBoosterManager$JoyoseManagerDeath;
    }
.end annotation


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "xiaomi.joyose"

.field private static js:Lcom/xiaomi/joyose/IJoyoseInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MiPlatformBoosterForOneway(ILjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->checkService()V

    sget-object v0, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/xiaomi/joyose/IJoyoseInterface;->MiPlatformBoosterForOneway(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static MiPlatformBoosterForSync(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->checkService()V

    const/4 v0, 0x0

    sget-object v1, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1, p0, p1}, Lcom/xiaomi/joyose/IJoyoseInterface;->MiPlatformBoosterForSync(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method static synthetic access$002(Lcom/xiaomi/joyose/IJoyoseInterface;)Lcom/xiaomi/joyose/IJoyoseInterface;
    .locals 0

    sput-object p0, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    return-object p0
.end method

.method private static checkService()V
    .locals 0

    invoke-static {}, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->getService()Lcom/xiaomi/joyose/IJoyoseInterface;

    return-void
.end method

.method private static getService()Lcom/xiaomi/joyose/IJoyoseInterface;
    .locals 3

    sget-object v0, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-nez v0, :cond_1

    const-string/jumbo v0, "xiaomi.joyose"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/joyose/IJoyoseInterface;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    :try_start_0
    sget-object v0, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager$JoyoseManagerDeath;

    sget-object v1, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    invoke-direct {v0, v1}, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager$JoyoseManagerDeath;-><init>(Lcom/xiaomi/joyose/IJoyoseInterface;)V

    sget-object v1, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    invoke-interface {v1}, Lcom/xiaomi/joyose/IJoyoseInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    sput-object v1, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    return-object v0
.end method

.method public static invokeOneway(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->checkService()V

    sget-object v0, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/xiaomi/joyose/IJoyoseInterface;->invokeOneway(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static invokeSync(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    invoke-static {}, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->checkService()V

    const/4 v0, 0x0

    sget-object v1, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1, p0, p1}, Lcom/xiaomi/joyose/IJoyoseInterface;->invokeSync(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static registerMiPlatformBoosterListener(ILcom/xiaomi/joyose/IMiGameBoosterCallback;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->checkService()V

    sget-object v0, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/xiaomi/joyose/IJoyoseInterface;->registerMiPlatformBoosterListener(ILcom/xiaomi/joyose/IMiGameBoosterCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static unRegisterMiPlatformBoosterListener(Lcom/xiaomi/joyose/IMiGameBoosterCallback;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->checkService()V

    sget-object v0, Lcom/xiaomi/joyose/MiPlatformAppBoosterManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p0}, Lcom/xiaomi/joyose/IJoyoseInterface;->unRegisterMiPlatformBoosterListener(Lcom/xiaomi/joyose/IMiGameBoosterCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
