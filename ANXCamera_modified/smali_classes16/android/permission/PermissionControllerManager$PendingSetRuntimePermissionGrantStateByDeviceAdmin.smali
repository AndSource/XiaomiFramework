.class final Landroid/permission/PermissionControllerManager$PendingSetRuntimePermissionGrantStateByDeviceAdmin;
.super Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;
.source "PermissionControllerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/PermissionControllerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingSetRuntimePermissionGrantStateByDeviceAdmin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/AbstractRemoteService$PendingRequest<",
        "Landroid/permission/PermissionControllerManager$RemoteService;",
        "Landroid/permission/IPermissionController;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallerPackageName:Ljava/lang/String;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mGrantState:I

.field private final mPackageName:Ljava/lang/String;

.field private final mPermission:Ljava/lang/String;

.field private final mRemoteCallback:Landroid/os/RemoteCallback;


# direct methods
.method private constructor <init>(Landroid/permission/PermissionControllerManager$RemoteService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/permission/PermissionControllerManager$RemoteService;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;-><init>(Lcom/android/internal/infra/AbstractRemoteService;)V

    iput-object p2, p0, Landroid/permission/PermissionControllerManager$PendingSetRuntimePermissionGrantStateByDeviceAdmin;->mCallerPackageName:Ljava/lang/String;

    iput-object p3, p0, Landroid/permission/PermissionControllerManager$PendingSetRuntimePermissionGrantStateByDeviceAdmin;->mPackageName:Ljava/lang/String;

    iput-object p4, p0, Landroid/permission/PermissionControllerManager$PendingSetRuntimePermissionGrantStateByDeviceAdmin;->mPermission:Ljava/lang/String;

    iput p5, p0, Landroid/permission/PermissionControllerManager$PendingSetRuntimePermissionGrantStateByDeviceAdmin;->mGrantState:I

    iput-object p6, p0, Landroid/permission/PermissionControllerManager$PendingSetRuntimePermissionGrantStateByDeviceAdmin;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p7, p0, Landroid/permission/PermissionControllerManager$PendingSetRuntimePermissionGrantStateByDeviceAdmin;->mCallback:Ljava/util/function/Consumer;

    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingSetRuntimePermissionGrantStateByDeviceAdmin$9CrKvc4Mj43M641VzAbk1z_vjck;

    invoke-direct {v1, p0, p6, p7}, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingSetRuntimePermissionGrantStateByDeviceAdmin$9CrKvc4Mj43M641VzAbk1z_vjck;-><init>(Landroid/permission/PermissionControllerManager$PendingSetRuntimePermissionGrantStateByDeviceAdmin;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/permission/PermissionControllerManager$PendingSetRuntimePermissionGrantStateByDeviceAdmin;->mRemoteCallback:Landroid/os/RemoteCallback;

    return-void
.end method

.method synthetic constructor <init>(Landroid/permission/PermissionControllerManager$RemoteService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/permission/PermissionControllerManager$1;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroid/permission/PermissionControllerManager$PendingSetRuntimePermissionGrantStateByDeviceAdmin;-><init>(Landroid/permission/PermissionControllerManager$RemoteService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$PermissionControllerManager$PendingSetRuntimePermissionGrantStateByDeviceAdmin(Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    const-string v2, "android.permission.PermissionControllerManager.key.result"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {p0}, Landroid/permission/PermissionControllerManager$PendingSetRuntimePermissionGrantStateByDeviceAdmin;->finish()Z

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {p0}, Landroid/permission/PermissionControllerManager$PendingSetRuntimePermissionGrantStateByDeviceAdmin;->finish()Z

    throw v2
.end method

.method public synthetic lambda$new$1$PermissionControllerManager$PendingSetRuntimePermissionGrantStateByDeviceAdmin(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingSetRuntimePermissionGrantStateByDeviceAdmin$L3EtiNpasfEGf-E2sSUKhk-dYUg;

    invoke-direct {v0, p0, p2, p3}, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingSetRuntimePermissionGrantStateByDeviceAdmin$L3EtiNpasfEGf-E2sSUKhk-dYUg;-><init>(Landroid/permission/PermissionControllerManager$PendingSetRuntimePermissionGrantStateByDeviceAdmin;Ljava/util/function/Consumer;Landroid/os/Bundle;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onTimeout$2$PermissionControllerManager$PendingSetRuntimePermissionGrantStateByDeviceAdmin()V
    .locals 2

    iget-object v0, p0, Landroid/permission/PermissionControllerManager$PendingSetRuntimePermissionGrantStateByDeviceAdmin;->mCallback:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method protected onTimeout(Landroid/permission/PermissionControllerManager$RemoteService;)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/permission/PermissionControllerManager$PendingSetRuntimePermissionGrantStateByDeviceAdmin;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingSetRuntimePermissionGrantStateByDeviceAdmin$cgbsG1socgf6wsJmCUAPmh-jKmw;

    invoke-direct {v3, p0}, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingSetRuntimePermissionGrantStateByDeviceAdmin$cgbsG1socgf6wsJmCUAPmh-jKmw;-><init>(Landroid/permission/PermissionControllerManager$PendingSetRuntimePermissionGrantStateByDeviceAdmin;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected bridge synthetic onTimeout(Lcom/android/internal/infra/AbstractRemoteService;)V
    .locals 0

    check-cast p1, Landroid/permission/PermissionControllerManager$RemoteService;

    invoke-virtual {p0, p1}, Landroid/permission/PermissionControllerManager$PendingSetRuntimePermissionGrantStateByDeviceAdmin;->onTimeout(Landroid/permission/PermissionControllerManager$RemoteService;)V

    return-void
.end method

.method public run()V
    .locals 7

    :try_start_0
    invoke-virtual {p0}, Landroid/permission/PermissionControllerManager$PendingSetRuntimePermissionGrantStateByDeviceAdmin;->getService()Lcom/android/internal/infra/AbstractRemoteService;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionControllerManager$RemoteService;

    invoke-virtual {v0}, Landroid/permission/PermissionControllerManager$RemoteService;->getServiceInterface()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/permission/IPermissionController;

    iget-object v2, p0, Landroid/permission/PermissionControllerManager$PendingSetRuntimePermissionGrantStateByDeviceAdmin;->mCallerPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/permission/PermissionControllerManager$PendingSetRuntimePermissionGrantStateByDeviceAdmin;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/permission/PermissionControllerManager$PendingSetRuntimePermissionGrantStateByDeviceAdmin;->mPermission:Ljava/lang/String;

    iget v5, p0, Landroid/permission/PermissionControllerManager$PendingSetRuntimePermissionGrantStateByDeviceAdmin;->mGrantState:I

    iget-object v6, p0, Landroid/permission/PermissionControllerManager$PendingSetRuntimePermissionGrantStateByDeviceAdmin;->mRemoteCallback:Landroid/os/RemoteCallback;

    invoke-interface/range {v1 .. v6}, Landroid/permission/IPermissionController;->setRuntimePermissionGrantStateByDeviceAdmin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/permission/PermissionControllerManager;->access$1000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error setting permissions state for device admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/permission/PermissionControllerManager$PendingSetRuntimePermissionGrantStateByDeviceAdmin;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
