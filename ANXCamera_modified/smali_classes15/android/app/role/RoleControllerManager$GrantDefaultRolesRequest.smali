.class final Landroid/app/role/RoleControllerManager$GrantDefaultRolesRequest;
.super Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;
.source "RoleControllerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/role/RoleControllerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GrantDefaultRolesRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/AbstractRemoteService$PendingRequest<",
        "Landroid/app/role/RoleControllerManager$RemoteService;",
        "Landroid/app/role/IRoleController;",
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

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mRemoteCallback:Landroid/os/RemoteCallback;


# direct methods
.method private constructor <init>(Landroid/app/role/RoleControllerManager$RemoteService;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/role/RoleControllerManager$RemoteService;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;-><init>(Lcom/android/internal/infra/AbstractRemoteService;)V

    iput-object p2, p0, Landroid/app/role/RoleControllerManager$GrantDefaultRolesRequest;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/app/role/RoleControllerManager$GrantDefaultRolesRequest;->mCallback:Ljava/util/function/Consumer;

    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Landroid/app/role/-$$Lambda$RoleControllerManager$GrantDefaultRolesRequest$uMND2yv3BzXWyrtureF8K8b0f0A;

    invoke-direct {v1, p0}, Landroid/app/role/-$$Lambda$RoleControllerManager$GrantDefaultRolesRequest$uMND2yv3BzXWyrtureF8K8b0f0A;-><init>(Landroid/app/role/RoleControllerManager$GrantDefaultRolesRequest;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    iput-object v0, p0, Landroid/app/role/RoleControllerManager$GrantDefaultRolesRequest;->mRemoteCallback:Landroid/os/RemoteCallback;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/role/RoleControllerManager$RemoteService;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/app/role/RoleControllerManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/app/role/RoleControllerManager$GrantDefaultRolesRequest;-><init>(Landroid/app/role/RoleControllerManager$RemoteService;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$RoleControllerManager$GrantDefaultRolesRequest(Landroid/os/Bundle;)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Landroid/app/role/RoleControllerManager$GrantDefaultRolesRequest;->mCallback:Ljava/util/function/Consumer;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {p0}, Landroid/app/role/RoleControllerManager$GrantDefaultRolesRequest;->finish()Z

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {p0}, Landroid/app/role/RoleControllerManager$GrantDefaultRolesRequest;->finish()Z

    throw v2
.end method

.method public synthetic lambda$new$1$RoleControllerManager$GrantDefaultRolesRequest(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/app/role/RoleControllerManager$GrantDefaultRolesRequest;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/app/role/-$$Lambda$RoleControllerManager$GrantDefaultRolesRequest$Qrnu382yknLH4_TvruMvYuK_N8M;

    invoke-direct {v1, p0, p1}, Landroid/app/role/-$$Lambda$RoleControllerManager$GrantDefaultRolesRequest$Qrnu382yknLH4_TvruMvYuK_N8M;-><init>(Landroid/app/role/RoleControllerManager$GrantDefaultRolesRequest;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onTimeout$2$RoleControllerManager$GrantDefaultRolesRequest()V
    .locals 2

    iget-object v0, p0, Landroid/app/role/RoleControllerManager$GrantDefaultRolesRequest;->mCallback:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method protected onFailed()V
    .locals 2

    iget-object v0, p0, Landroid/app/role/RoleControllerManager$GrantDefaultRolesRequest;->mRemoteCallback:Landroid/os/RemoteCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onTimeout(Landroid/app/role/RoleControllerManager$RemoteService;)V
    .locals 2

    iget-object v0, p0, Landroid/app/role/RoleControllerManager$GrantDefaultRolesRequest;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/app/role/-$$Lambda$RoleControllerManager$GrantDefaultRolesRequest$0iOorSSTMKMxorImfJcxQ8hscBs;

    invoke-direct {v1, p0}, Landroid/app/role/-$$Lambda$RoleControllerManager$GrantDefaultRolesRequest$0iOorSSTMKMxorImfJcxQ8hscBs;-><init>(Landroid/app/role/RoleControllerManager$GrantDefaultRolesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected bridge synthetic onTimeout(Lcom/android/internal/infra/AbstractRemoteService;)V
    .locals 0

    check-cast p1, Landroid/app/role/RoleControllerManager$RemoteService;

    invoke-virtual {p0, p1}, Landroid/app/role/RoleControllerManager$GrantDefaultRolesRequest;->onTimeout(Landroid/app/role/RoleControllerManager$RemoteService;)V

    return-void
.end method

.method public run()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/app/role/RoleControllerManager$GrantDefaultRolesRequest;->getService()Lcom/android/internal/infra/AbstractRemoteService;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleControllerManager$RemoteService;

    invoke-virtual {v0}, Landroid/app/role/RoleControllerManager$RemoteService;->getServiceInterface()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/role/IRoleController;

    iget-object v1, p0, Landroid/app/role/RoleControllerManager$GrantDefaultRolesRequest;->mRemoteCallback:Landroid/os/RemoteCallback;

    invoke-interface {v0, v1}, Landroid/app/role/IRoleController;->grantDefaultRoles(Landroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/app/role/RoleControllerManager;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error calling grantDefaultRoles()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
