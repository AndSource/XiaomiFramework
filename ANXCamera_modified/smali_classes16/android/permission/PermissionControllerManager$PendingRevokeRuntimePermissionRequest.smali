.class final Landroid/permission/PermissionControllerManager$PendingRevokeRuntimePermissionRequest;
.super Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;
.source "PermissionControllerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/PermissionControllerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingRevokeRuntimePermissionRequest"
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
.field private final mCallback:Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;

.field private final mCallingPackage:Ljava/lang/String;

.field private final mDoDryRun:Z

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mReason:I

.field private final mRemoteCallback:Landroid/os/RemoteCallback;

.field private final mRequest:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/permission/PermissionControllerManager$RemoteService;Ljava/util/Map;ZILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/permission/PermissionControllerManager$RemoteService;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;ZI",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;-><init>(Lcom/android/internal/infra/AbstractRemoteService;)V

    iput-object p2, p0, Landroid/permission/PermissionControllerManager$PendingRevokeRuntimePermissionRequest;->mRequest:Ljava/util/Map;

    iput-boolean p3, p0, Landroid/permission/PermissionControllerManager$PendingRevokeRuntimePermissionRequest;->mDoDryRun:Z

    iput p4, p0, Landroid/permission/PermissionControllerManager$PendingRevokeRuntimePermissionRequest;->mReason:I

    iput-object p5, p0, Landroid/permission/PermissionControllerManager$PendingRevokeRuntimePermissionRequest;->mCallingPackage:Ljava/lang/String;

    iput-object p6, p0, Landroid/permission/PermissionControllerManager$PendingRevokeRuntimePermissionRequest;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p7, p0, Landroid/permission/PermissionControllerManager$PendingRevokeRuntimePermissionRequest;->mCallback:Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;

    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingRevokeRuntimePermissionRequest$StUWUj0fmNRuCwuUzh3M5C7e_o0;

    invoke-direct {v1, p0, p6, p7}, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingRevokeRuntimePermissionRequest$StUWUj0fmNRuCwuUzh3M5C7e_o0;-><init>(Landroid/permission/PermissionControllerManager$PendingRevokeRuntimePermissionRequest;Ljava/util/concurrent/Executor;Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/permission/PermissionControllerManager$PendingRevokeRuntimePermissionRequest;->mRemoteCallback:Landroid/os/RemoteCallback;

    return-void
.end method

.method synthetic constructor <init>(Landroid/permission/PermissionControllerManager$RemoteService;Ljava/util/Map;ZILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;Landroid/permission/PermissionControllerManager$1;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroid/permission/PermissionControllerManager$PendingRevokeRuntimePermissionRequest;-><init>(Landroid/permission/PermissionControllerManager$RemoteService;Ljava/util/Map;ZILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$PermissionControllerManager$PendingRevokeRuntimePermissionRequest(Landroid/os/Bundle;Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;)V
    .locals 8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v3, "android.permission.PermissionControllerManager.key.result"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    nop

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const-string/jumbo v7, "permissions"

    invoke-static {v6, v7}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    goto :goto_0

    :cond_0
    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    invoke-static {}, Landroid/permission/PermissionControllerManager;->access$1000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Could not read result when revoking runtime permissions"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-virtual {p2, v2}, Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;->onRevokeRuntimePermissions(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {p0}, Landroid/permission/PermissionControllerManager$PendingRevokeRuntimePermissionRequest;->finish()Z

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {p0}, Landroid/permission/PermissionControllerManager$PendingRevokeRuntimePermissionRequest;->finish()Z

    throw v2
.end method

.method public synthetic lambda$new$1$PermissionControllerManager$PendingRevokeRuntimePermissionRequest(Ljava/util/concurrent/Executor;Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingRevokeRuntimePermissionRequest$RY69_9rYfdoaXdLj_Ux-62tZUXg;

    invoke-direct {v0, p0, p3, p2}, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingRevokeRuntimePermissionRequest$RY69_9rYfdoaXdLj_Ux-62tZUXg;-><init>(Landroid/permission/PermissionControllerManager$PendingRevokeRuntimePermissionRequest;Landroid/os/Bundle;Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onTimeout$2$PermissionControllerManager$PendingRevokeRuntimePermissionRequest()V
    .locals 2

    iget-object v0, p0, Landroid/permission/PermissionControllerManager$PendingRevokeRuntimePermissionRequest;->mCallback:Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;->onRevokeRuntimePermissions(Ljava/util/Map;)V

    return-void
.end method

.method protected onTimeout(Landroid/permission/PermissionControllerManager$RemoteService;)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/permission/PermissionControllerManager$PendingRevokeRuntimePermissionRequest;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingRevokeRuntimePermissionRequest$HQXgA6xx0k7jv6y22RQn3Fx34QQ;

    invoke-direct {v3, p0}, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingRevokeRuntimePermissionRequest$HQXgA6xx0k7jv6y22RQn3Fx34QQ;-><init>(Landroid/permission/PermissionControllerManager$PendingRevokeRuntimePermissionRequest;)V

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

    invoke-virtual {p0, p1}, Landroid/permission/PermissionControllerManager$PendingRevokeRuntimePermissionRequest;->onTimeout(Landroid/permission/PermissionControllerManager$RemoteService;)V

    return-void
.end method

.method public run()V
    .locals 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroid/permission/PermissionControllerManager$PendingRevokeRuntimePermissionRequest;->mRequest:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/permission/PermissionControllerManager$PendingRevokeRuntimePermissionRequest;->getService()Lcom/android/internal/infra/AbstractRemoteService;

    move-result-object v1

    check-cast v1, Landroid/permission/PermissionControllerManager$RemoteService;

    invoke-virtual {v1}, Landroid/permission/PermissionControllerManager$RemoteService;->getServiceInterface()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/permission/IPermissionController;

    iget-boolean v3, p0, Landroid/permission/PermissionControllerManager$PendingRevokeRuntimePermissionRequest;->mDoDryRun:Z

    iget v4, p0, Landroid/permission/PermissionControllerManager$PendingRevokeRuntimePermissionRequest;->mReason:I

    iget-object v5, p0, Landroid/permission/PermissionControllerManager$PendingRevokeRuntimePermissionRequest;->mCallingPackage:Ljava/lang/String;

    iget-object v6, p0, Landroid/permission/PermissionControllerManager$PendingRevokeRuntimePermissionRequest;->mRemoteCallback:Landroid/os/RemoteCallback;

    move-object v2, v0

    invoke-interface/range {v1 .. v6}, Landroid/permission/IPermissionController;->revokeRuntimePermissions(Landroid/os/Bundle;ZILjava/lang/String;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {}, Landroid/permission/PermissionControllerManager;->access$1000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error revoking runtime permission"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
