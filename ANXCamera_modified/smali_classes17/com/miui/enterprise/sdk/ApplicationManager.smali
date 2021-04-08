.class public Lcom/miui/enterprise/sdk/ApplicationManager;
.super Ljava/lang/Object;
.source "ApplicationManager.java"


# static fields
.field public static final ENT_PERMISSION:Ljava/lang/String; = "com.miui.enterprise.permission.ACCESS_ENTERPRISE_API"

.field public static final FLAG_ALLOW_AUTOSTART:I = 0x8

.field public static final FLAG_DEFAULT:I = 0x0

.field public static final FLAG_GRANT_ALL_RUNTIME_PERMISSION:I = 0x10

.field public static final FLAG_KEEP_ALIVE:I = 0x1

.field public static final FLAG_PREVENT_UNINSTALLATION:I = 0x4

.field public static final FLOAT:Ljava/lang/String; = "float"

.field public static final KEYGUARD:Ljava/lang/String; = "_keyguard"

.field public static final LED:Ljava/lang/String; = "_led"

.field public static final MESSAGE:Ljava/lang/String; = "_message"

.field public static final RESTRICTION_MODE_BLACK_LIST:I = 0x2

.field public static final RESTRICTION_MODE_DEFAULT:I = 0x0

.field public static final RESTRICTION_MODE_WHITE_LIST:I = 0x1

.field public static final SOUND:Ljava/lang/String; = "_sound"

.field private static final TAG:Ljava/lang/String; = "ApplicationManager"

.field public static final VIBRATE:Ljava/lang/String; = "_vibrate"

.field private static volatile sInstance:Lcom/miui/enterprise/sdk/ApplicationManager;


# instance fields
.field private mService:Lcom/miui/enterprise/IApplicationManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "application_manager"

    invoke-static {v0}, Lcom/miui/enterprise/EnterpriseManager;->getEnterpriseService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/IApplicationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/enterprise/IApplicationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/enterprise/sdk/ApplicationManager;
    .locals 2

    const-class v0, Lcom/miui/enterprise/sdk/ApplicationManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/enterprise/sdk/ApplicationManager;->sInstance:Lcom/miui/enterprise/sdk/ApplicationManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/enterprise/sdk/ApplicationManager;

    invoke-direct {v1}, Lcom/miui/enterprise/sdk/ApplicationManager;-><init>()V

    sput-object v1, Lcom/miui/enterprise/sdk/ApplicationManager;->sInstance:Lcom/miui/enterprise/sdk/ApplicationManager;

    :cond_0
    sget-object v1, Lcom/miui/enterprise/sdk/ApplicationManager;->sInstance:Lcom/miui/enterprise/sdk/ApplicationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addTrustedAppStore(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->addTrustedAppStore(Ljava/util/List;I)V

    return-void
.end method

.method public addTrustedAppStore(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IApplicationManager;->addTrustedAppStore(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public clearApplicationCache(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->clearApplicationCache(Ljava/lang/String;I)V

    return-void
.end method

.method public clearApplicationCache(Ljava/lang/String;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IApplicationManager;->clearApplicationCache(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public clearApplicationUserData(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->clearApplicationUserData(Ljava/lang/String;I)V

    return-void
.end method

.method public clearApplicationUserData(Ljava/lang/String;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IApplicationManager;->clearApplicationUserData(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public deletePackage(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;)V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->deletePackage(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;I)V

    return-void
.end method

.method public deletePackage(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/miui/enterprise/IApplicationManager;->deletePackage(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public enableAccessibilityService(Landroid/content/ComponentName;Z)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IApplicationManager;->enableAccessibilityService(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public enableNotifications(Ljava/lang/String;Z)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IApplicationManager;->enableNotifications(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public enableTrustedAppStore(Z)V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->enableTrustedAppStore(ZI)V

    return-void
.end method

.method public enableTrustedAppStore(ZI)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IApplicationManager;->enableTrustedAppStore(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public getApplicationBlackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->getApplicationBlackList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationBlackList(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IApplicationManager;->getApplicationBlackList(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getApplicationRestriction()I
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->getApplicationRestriction(I)I

    move-result v0

    return v0
.end method

.method public getApplicationRestriction(I)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IApplicationManager;->getApplicationRestriction(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public getApplicationSettings(Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->getApplicationSettings(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getApplicationSettings(Ljava/lang/String;I)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IApplicationManager;->getApplicationSettings(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public getApplicationWhiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->getApplicationWhiteList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationWhiteList(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IApplicationManager;->getApplicationWhiteList(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getDisallowedRunningAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->getDisallowedRunningAppList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDisallowedRunningAppList(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IApplicationManager;->getDisallowedRunningAppList(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getTrustedAppStore()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->getTrustedAppStore(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTrustedAppStore(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IApplicationManager;->getTrustedAppStore(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getXSpaceBlack()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0}, Lcom/miui/enterprise/IApplicationManager;->getXSpaceBlack()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/enterprise/IApplicationManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public installPackage(Ljava/lang/String;ILandroid/content/pm/IPackageInstallObserver2;)V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->installPackage(Ljava/lang/String;ILandroid/content/pm/IPackageInstallObserver2;I)V

    return-void
.end method

.method public installPackage(Ljava/lang/String;ILandroid/content/pm/IPackageInstallObserver2;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/miui/enterprise/IApplicationManager;->installPackage(Ljava/lang/String;ILandroid/content/pm/IPackageInstallObserver2;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ApplicationManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public installPackageWithPendingIntent(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->installPackageWithPendingIntent(Ljava/lang/String;Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public installPackageWithPendingIntent(Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/enterprise/IApplicationManager;->installPackageWithPendingIntent(Ljava/lang/String;Landroid/app/PendingIntent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public isTrustedAppStoreEnabled()Z
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->isTrustedAppStoreEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isTrustedAppStoreEnabled(I)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IApplicationManager;->isTrustedAppStoreEnabled(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public killProcess(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->killProcess(Ljava/lang/String;I)V

    return-void
.end method

.method public killProcess(Ljava/lang/String;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IApplicationManager;->killProcess(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public removeDeviceAdmin(Landroid/content/ComponentName;)Z
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->removeDeviceAdmin(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public removeDeviceAdmin(Landroid/content/ComponentName;I)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IApplicationManager;->removeDeviceAdmin(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public setApplicationBlackList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->setApplicationBlackList(Ljava/util/List;I)V

    return-void
.end method

.method public setApplicationBlackList(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IApplicationManager;->setApplicationBlackList(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setApplicationEnabled(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->setApplicationEnabled(Ljava/lang/String;ZI)V

    return-void
.end method

.method public setApplicationEnabled(Ljava/lang/String;ZI)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/enterprise/IApplicationManager;->setApplicationEnabled(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setApplicationRestriction(I)V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->setApplicationRestriction(II)V

    return-void
.end method

.method public setApplicationRestriction(II)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IApplicationManager;->setApplicationRestriction(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setApplicationSettings(Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->setApplicationSettings(Ljava/lang/String;II)V

    return-void
.end method

.method public setApplicationSettings(Ljava/lang/String;II)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/enterprise/IApplicationManager;->setApplicationSettings(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setApplicationWhiteList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->setApplicationWhiteList(Ljava/util/List;I)V

    return-void
.end method

.method public setApplicationWhiteList(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IApplicationManager;->setApplicationWhiteList(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setDeviceAdmin(Landroid/content/ComponentName;)Z
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->setDeviceAdmin(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public setDeviceAdmin(Landroid/content/ComponentName;I)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IApplicationManager;->setDeviceAdmin(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public setDisallowedRunningAppList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/enterprise/sdk/ApplicationManager;->setDisallowedRunningAppList(Ljava/util/List;I)V

    return-void
.end method

.method public setDisallowedRunningAppList(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IApplicationManager;->setDisallowedRunningAppList(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setNotificaitonFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/miui/enterprise/IApplicationManager;->setNotificaitonFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setXSpaceBlack(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/ApplicationManager;->mService:Lcom/miui/enterprise/IApplicationManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IApplicationManager;->setXSpaceBlack(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ApplicationManager"

    const-string v2, "Remote service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
