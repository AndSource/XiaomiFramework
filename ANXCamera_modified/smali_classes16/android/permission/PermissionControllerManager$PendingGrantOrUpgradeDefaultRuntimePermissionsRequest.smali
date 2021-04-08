.class final Landroid/permission/PermissionControllerManager$PendingGrantOrUpgradeDefaultRuntimePermissionsRequest;
.super Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;
.source "PermissionControllerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/PermissionControllerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingGrantOrUpgradeDefaultRuntimePermissionsRequest"
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

.field private final mRemoteCallback:Landroid/os/RemoteCallback;


# direct methods
.method private constructor <init>(Landroid/permission/PermissionControllerManager$RemoteService;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/permission/PermissionControllerManager$RemoteService;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;-><init>(Lcom/android/internal/infra/AbstractRemoteService;)V

    iput-object p3, p0, Landroid/permission/PermissionControllerManager$PendingGrantOrUpgradeDefaultRuntimePermissionsRequest;->mCallback:Ljava/util/function/Consumer;

    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingGrantOrUpgradeDefaultRuntimePermissionsRequest$khE8_2qLkPzjjwzPXI9vCg1JiSo;

    invoke-direct {v1, p0, p2, p3}, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingGrantOrUpgradeDefaultRuntimePermissionsRequest$khE8_2qLkPzjjwzPXI9vCg1JiSo;-><init>(Landroid/permission/PermissionControllerManager$PendingGrantOrUpgradeDefaultRuntimePermissionsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/permission/PermissionControllerManager$PendingGrantOrUpgradeDefaultRuntimePermissionsRequest;->mRemoteCallback:Landroid/os/RemoteCallback;

    return-void
.end method

.method synthetic constructor <init>(Landroid/permission/PermissionControllerManager$RemoteService;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/permission/PermissionControllerManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/permission/PermissionControllerManager$PendingGrantOrUpgradeDefaultRuntimePermissionsRequest;-><init>(Landroid/permission/PermissionControllerManager$RemoteService;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$PermissionControllerManager$PendingGrantOrUpgradeDefaultRuntimePermissionsRequest(Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {p0}, Landroid/permission/PermissionControllerManager$PendingGrantOrUpgradeDefaultRuntimePermissionsRequest;->finish()Z

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {p0}, Landroid/permission/PermissionControllerManager$PendingGrantOrUpgradeDefaultRuntimePermissionsRequest;->finish()Z

    throw v2
.end method

.method public synthetic lambda$new$1$PermissionControllerManager$PendingGrantOrUpgradeDefaultRuntimePermissionsRequest(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingGrantOrUpgradeDefaultRuntimePermissionsRequest$LF2T0wqhyO211uMsePvWLLBRNHc;

    invoke-direct {v0, p0, p2, p3}, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingGrantOrUpgradeDefaultRuntimePermissionsRequest$LF2T0wqhyO211uMsePvWLLBRNHc;-><init>(Landroid/permission/PermissionControllerManager$PendingGrantOrUpgradeDefaultRuntimePermissionsRequest;Ljava/util/function/Consumer;Landroid/os/Bundle;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onTimeout(Landroid/permission/PermissionControllerManager$RemoteService;)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/permission/PermissionControllerManager$PendingGrantOrUpgradeDefaultRuntimePermissionsRequest;->mCallback:Ljava/util/function/Consumer;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
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

    invoke-virtual {p0, p1}, Landroid/permission/PermissionControllerManager$PendingGrantOrUpgradeDefaultRuntimePermissionsRequest;->onTimeout(Landroid/permission/PermissionControllerManager$RemoteService;)V

    return-void
.end method

.method public run()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/permission/PermissionControllerManager$PendingGrantOrUpgradeDefaultRuntimePermissionsRequest;->getService()Lcom/android/internal/infra/AbstractRemoteService;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionControllerManager$RemoteService;

    invoke-virtual {v0}, Landroid/permission/PermissionControllerManager$RemoteService;->getServiceInterface()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/permission/IPermissionController;

    iget-object v1, p0, Landroid/permission/PermissionControllerManager$PendingGrantOrUpgradeDefaultRuntimePermissionsRequest;->mRemoteCallback:Landroid/os/RemoteCallback;

    invoke-interface {v0, v1}, Landroid/permission/IPermissionController;->grantOrUpgradeDefaultRuntimePermissions(Landroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/permission/PermissionControllerManager;->access$1000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error granting or upgrading runtime permissions"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
