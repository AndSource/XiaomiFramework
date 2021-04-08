.class final Landroid/permission/PermissionControllerManager$PendingGetRuntimePermissionBackup;
.super Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;
.source "PermissionControllerManager.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/PermissionControllerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingGetRuntimePermissionBackup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/AbstractRemoteService$PendingRequest<",
        "Landroid/permission/PermissionControllerManager$RemoteService;",
        "Landroid/permission/IPermissionController;",
        ">;",
        "Ljava/util/function/Consumer<",
        "[B>;"
    }
.end annotation


# instance fields
.field private final mBackupReader:Landroid/permission/PermissionControllerManager$FileReaderTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/permission/PermissionControllerManager$FileReaderTask<",
            "Landroid/permission/PermissionControllerManager$PendingGetRuntimePermissionBackup;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallback:Landroid/permission/PermissionControllerManager$OnGetRuntimePermissionBackupCallback;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method private constructor <init>(Landroid/permission/PermissionControllerManager$RemoteService;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Landroid/permission/PermissionControllerManager$OnGetRuntimePermissionBackupCallback;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;-><init>(Lcom/android/internal/infra/AbstractRemoteService;)V

    iput-object p2, p0, Landroid/permission/PermissionControllerManager$PendingGetRuntimePermissionBackup;->mUser:Landroid/os/UserHandle;

    iput-object p3, p0, Landroid/permission/PermissionControllerManager$PendingGetRuntimePermissionBackup;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroid/permission/PermissionControllerManager$PendingGetRuntimePermissionBackup;->mCallback:Landroid/permission/PermissionControllerManager$OnGetRuntimePermissionBackupCallback;

    new-instance v0, Landroid/permission/PermissionControllerManager$FileReaderTask;

    invoke-direct {v0, p0}, Landroid/permission/PermissionControllerManager$FileReaderTask;-><init>(Ljava/util/function/Consumer;)V

    iput-object v0, p0, Landroid/permission/PermissionControllerManager$PendingGetRuntimePermissionBackup;->mBackupReader:Landroid/permission/PermissionControllerManager$FileReaderTask;

    return-void
.end method

.method synthetic constructor <init>(Landroid/permission/PermissionControllerManager$RemoteService;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Landroid/permission/PermissionControllerManager$OnGetRuntimePermissionBackupCallback;Landroid/permission/PermissionControllerManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/permission/PermissionControllerManager$PendingGetRuntimePermissionBackup;-><init>(Landroid/permission/PermissionControllerManager$RemoteService;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Landroid/permission/PermissionControllerManager$OnGetRuntimePermissionBackupCallback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Landroid/permission/PermissionControllerManager$PendingGetRuntimePermissionBackup;->accept([B)V

    return-void
.end method

.method public accept([B)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/permission/PermissionControllerManager$PendingGetRuntimePermissionBackup;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingGetRuntimePermissionBackup$TnLX6gxZCMF3D0czwj_XwNhPIgE;

    invoke-direct {v3, p0, p1}, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingGetRuntimePermissionBackup$TnLX6gxZCMF3D0czwj_XwNhPIgE;-><init>(Landroid/permission/PermissionControllerManager$PendingGetRuntimePermissionBackup;[B)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    invoke-virtual {p0}, Landroid/permission/PermissionControllerManager$PendingGetRuntimePermissionBackup;->finish()Z

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public synthetic lambda$accept$0$PermissionControllerManager$PendingGetRuntimePermissionBackup([B)V
    .locals 1

    iget-object v0, p0, Landroid/permission/PermissionControllerManager$PendingGetRuntimePermissionBackup;->mCallback:Landroid/permission/PermissionControllerManager$OnGetRuntimePermissionBackupCallback;

    invoke-interface {v0, p1}, Landroid/permission/PermissionControllerManager$OnGetRuntimePermissionBackupCallback;->onGetRuntimePermissionsBackup([B)V

    return-void
.end method

.method protected onTimeout(Landroid/permission/PermissionControllerManager$RemoteService;)V
    .locals 2

    iget-object v0, p0, Landroid/permission/PermissionControllerManager$PendingGetRuntimePermissionBackup;->mBackupReader:Landroid/permission/PermissionControllerManager$FileReaderTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/permission/PermissionControllerManager$FileReaderTask;->cancel(Z)Z

    iget-object v0, p0, Landroid/permission/PermissionControllerManager$PendingGetRuntimePermissionBackup;->mBackupReader:Landroid/permission/PermissionControllerManager$FileReaderTask;

    invoke-virtual {v0}, Landroid/permission/PermissionControllerManager$FileReaderTask;->interruptRead()V

    return-void
.end method

.method protected bridge synthetic onTimeout(Lcom/android/internal/infra/AbstractRemoteService;)V
    .locals 0

    check-cast p1, Landroid/permission/PermissionControllerManager$RemoteService;

    invoke-virtual {p0, p1}, Landroid/permission/PermissionControllerManager$PendingGetRuntimePermissionBackup;->onTimeout(Landroid/permission/PermissionControllerManager$RemoteService;)V

    return-void
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Landroid/permission/PermissionControllerManager$PendingGetRuntimePermissionBackup;->mBackupReader:Landroid/permission/PermissionControllerManager$FileReaderTask;

    invoke-virtual {v0}, Landroid/permission/PermissionControllerManager$FileReaderTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/permission/PermissionControllerManager$PendingGetRuntimePermissionBackup;->mBackupReader:Landroid/permission/PermissionControllerManager$FileReaderTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/permission/PermissionControllerManager$FileReaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Landroid/permission/PermissionControllerManager$PendingGetRuntimePermissionBackup;->mBackupReader:Landroid/permission/PermissionControllerManager$FileReaderTask;

    invoke-virtual {v0}, Landroid/permission/PermissionControllerManager$FileReaderTask;->getRemotePipe()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Landroid/permission/PermissionControllerManager$PendingGetRuntimePermissionBackup;->getService()Lcom/android/internal/infra/AbstractRemoteService;

    move-result-object v1

    check-cast v1, Landroid/permission/PermissionControllerManager$RemoteService;

    invoke-virtual {v1}, Landroid/permission/PermissionControllerManager$RemoteService;->getServiceInterface()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/permission/IPermissionController;

    iget-object v2, p0, Landroid/permission/PermissionControllerManager$PendingGetRuntimePermissionBackup;->mUser:Landroid/os/UserHandle;

    invoke-interface {v1, v2, v0}, Landroid/permission/IPermissionController;->getRuntimePermissionBackup(Landroid/os/UserHandle;Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {}, Landroid/permission/PermissionControllerManager;->access$1000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error getting runtime permission backup"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :goto_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    return-void

    :goto_1
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method
