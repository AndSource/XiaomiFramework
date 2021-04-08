.class public Lcom/miui/enterprise/sdk/APNManager;
.super Ljava/lang/Object;
.source "APNManager.java"


# static fields
.field public static final MODE_DEFAULT:I = 0x0

.field public static final MODE_RESTRICTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "APNManager"

.field private static volatile sInstance:Lcom/miui/enterprise/sdk/APNManager;


# instance fields
.field private mService:Lcom/miui/enterprise/IAPNManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "apn_manager"

    invoke-static {v0}, Lcom/miui/enterprise/EnterpriseManager;->getEnterpriseService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/IAPNManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/enterprise/IAPNManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/enterprise/sdk/APNManager;
    .locals 2

    const-class v0, Lcom/miui/enterprise/sdk/APNManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/enterprise/sdk/APNManager;->sInstance:Lcom/miui/enterprise/sdk/APNManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/enterprise/sdk/APNManager;

    invoke-direct {v1}, Lcom/miui/enterprise/sdk/APNManager;-><init>()V

    sput-object v1, Lcom/miui/enterprise/sdk/APNManager;->sInstance:Lcom/miui/enterprise/sdk/APNManager;

    :cond_0
    sget-object v1, Lcom/miui/enterprise/sdk/APNManager;->sInstance:Lcom/miui/enterprise/sdk/APNManager;
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
.method public activeAPN(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IAPNManager;->activeAPNForNumeric(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APNManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public activeAPN(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IAPNManager;->activeAPN(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "APNManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    return v1
.end method

.method public addAPN(Lcom/miui/enterprise/sdk/APNConfig;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IAPNManager;->addAPN(Lcom/miui/enterprise/sdk/APNConfig;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APNManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public addAPN(Ljava/lang/String;Lcom/miui/enterprise/sdk/APNConfig;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IAPNManager;->addAPNForNumeric(Ljava/lang/String;Lcom/miui/enterprise/sdk/APNConfig;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APNManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public deleteAPN(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IAPNManager;->deleteAPNForNumeric(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APNManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public deleteAPN(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IAPNManager;->deleteAPN(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "APNManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    return v1
.end method

.method public editAPN(Ljava/lang/String;Ljava/lang/String;Lcom/miui/enterprise/sdk/APNConfig;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/enterprise/IAPNManager;->editAPNForNumeric(Ljava/lang/String;Ljava/lang/String;Lcom/miui/enterprise/sdk/APNConfig;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APNManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public editAPN(Ljava/lang/String;Lcom/miui/enterprise/sdk/APNConfig;)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IAPNManager;->editAPN(Ljava/lang/String;Lcom/miui/enterprise/sdk/APNConfig;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "APNManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    return v1
.end method

.method public getAPN(Ljava/lang/String;)Lcom/miui/enterprise/sdk/APNConfig;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IAPNManager;->getAPN(Ljava/lang/String;)Lcom/miui/enterprise/sdk/APNConfig;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "APNManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public getAPN(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/enterprise/sdk/APNConfig;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IAPNManager;->getAPNForNumeric(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/enterprise/sdk/APNConfig;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "APNManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public getAPNActiveMode()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v0}, Lcom/miui/enterprise/IAPNManager;->getAPNActiveMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "APNManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    return v1
.end method

.method public getAPNList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/enterprise/sdk/APNConfig;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v0}, Lcom/miui/enterprise/IAPNManager;->getAPNList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "APNManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getAPNList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/enterprise/sdk/APNConfig;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IAPNManager;->getAPNListForNumeric(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "APNManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public resetAPN()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v0}, Lcom/miui/enterprise/IAPNManager;->resetAPN()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "APNManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    return v1
.end method

.method public setAPNActiveMode(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNManager;->mService:Lcom/miui/enterprise/IAPNManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IAPNManager;->setAPNActiveMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APNManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
