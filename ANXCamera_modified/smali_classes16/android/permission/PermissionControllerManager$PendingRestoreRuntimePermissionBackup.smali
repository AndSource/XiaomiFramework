.class final Landroid/permission/PermissionControllerManager$PendingRestoreRuntimePermissionBackup;
.super Ljava/lang/Object;
.source "PermissionControllerManager.java"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/PermissionControllerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingRestoreRuntimePermissionBackup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<",
        "Landroid/permission/IPermissionController;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBackup:[B

.field private final mBackupSender:Landroid/permission/PermissionControllerManager$FileWriterTask;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method private constructor <init>(Landroid/permission/PermissionControllerManager$RemoteService;[BLandroid/os/UserHandle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/permission/PermissionControllerManager$PendingRestoreRuntimePermissionBackup;->mBackup:[B

    iput-object p3, p0, Landroid/permission/PermissionControllerManager$PendingRestoreRuntimePermissionBackup;->mUser:Landroid/os/UserHandle;

    new-instance v0, Landroid/permission/PermissionControllerManager$FileWriterTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/permission/PermissionControllerManager$FileWriterTask;-><init>(Landroid/permission/PermissionControllerManager$1;)V

    iput-object v0, p0, Landroid/permission/PermissionControllerManager$PendingRestoreRuntimePermissionBackup;->mBackupSender:Landroid/permission/PermissionControllerManager$FileWriterTask;

    return-void
.end method

.method synthetic constructor <init>(Landroid/permission/PermissionControllerManager$RemoteService;[BLandroid/os/UserHandle;Landroid/permission/PermissionControllerManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/permission/PermissionControllerManager$PendingRestoreRuntimePermissionBackup;-><init>(Landroid/permission/PermissionControllerManager$RemoteService;[BLandroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Landroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Landroid/permission/IPermissionController;

    invoke-virtual {p0, p1}, Landroid/permission/PermissionControllerManager$PendingRestoreRuntimePermissionBackup;->run(Landroid/permission/IPermissionController;)V

    return-void
.end method

.method public run(Landroid/permission/IPermissionController;)V
    .locals 5

    iget-object v0, p0, Landroid/permission/PermissionControllerManager$PendingRestoreRuntimePermissionBackup;->mBackupSender:Landroid/permission/PermissionControllerManager$FileWriterTask;

    invoke-virtual {v0}, Landroid/permission/PermissionControllerManager$FileWriterTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/permission/PermissionControllerManager$PendingRestoreRuntimePermissionBackup;->mBackupSender:Landroid/permission/PermissionControllerManager$FileWriterTask;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    iget-object v2, p0, Landroid/permission/PermissionControllerManager$PendingRestoreRuntimePermissionBackup;->mBackup:[B

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/permission/PermissionControllerManager$FileWriterTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Landroid/permission/PermissionControllerManager$PendingRestoreRuntimePermissionBackup;->mBackupSender:Landroid/permission/PermissionControllerManager$FileWriterTask;

    invoke-virtual {v0}, Landroid/permission/PermissionControllerManager$FileWriterTask;->getRemotePipe()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroid/permission/PermissionControllerManager$PendingRestoreRuntimePermissionBackup;->mUser:Landroid/os/UserHandle;

    invoke-interface {p1, v1, v0}, Landroid/permission/IPermissionController;->restoreRuntimePermissionBackup(Landroid/os/UserHandle;Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {}, Landroid/permission/PermissionControllerManager;->access$1000()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Error sending runtime permission backup"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Landroid/permission/PermissionControllerManager$PendingRestoreRuntimePermissionBackup;->mBackupSender:Landroid/permission/PermissionControllerManager$FileWriterTask;

    invoke-virtual {v2, v3}, Landroid/permission/PermissionControllerManager$FileWriterTask;->cancel(Z)Z

    iget-object v2, p0, Landroid/permission/PermissionControllerManager$PendingRestoreRuntimePermissionBackup;->mBackupSender:Landroid/permission/PermissionControllerManager$FileWriterTask;

    invoke-virtual {v2}, Landroid/permission/PermissionControllerManager$FileWriterTask;->interruptWrite()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method
