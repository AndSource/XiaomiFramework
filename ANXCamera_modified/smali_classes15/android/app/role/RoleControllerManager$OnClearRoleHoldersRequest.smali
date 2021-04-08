.class final Landroid/app/role/RoleControllerManager$OnClearRoleHoldersRequest;
.super Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;
.source "RoleControllerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/role/RoleControllerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnClearRoleHoldersRequest"
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
.field private final mCallback:Landroid/os/RemoteCallback;

.field private final mFlags:I
    .annotation build Landroid/app/role/RoleManager$ManageHoldersFlags;
    .end annotation
.end field

.field private final mRemoteCallback:Landroid/os/RemoteCallback;

.field private final mRoleName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/app/role/RoleControllerManager$RemoteService;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .locals 2
    .param p3    # I
        .annotation build Landroid/app/role/RoleManager$ManageHoldersFlags;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;-><init>(Lcom/android/internal/infra/AbstractRemoteService;)V

    iput-object p2, p0, Landroid/app/role/RoleControllerManager$OnClearRoleHoldersRequest;->mRoleName:Ljava/lang/String;

    iput p3, p0, Landroid/app/role/RoleControllerManager$OnClearRoleHoldersRequest;->mFlags:I

    iput-object p4, p0, Landroid/app/role/RoleControllerManager$OnClearRoleHoldersRequest;->mCallback:Landroid/os/RemoteCallback;

    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Landroid/app/role/-$$Lambda$RoleControllerManager$OnClearRoleHoldersRequest$WFtkA3AVOOzGz5tXwMpks5Iic-o;

    invoke-direct {v1, p0}, Landroid/app/role/-$$Lambda$RoleControllerManager$OnClearRoleHoldersRequest$WFtkA3AVOOzGz5tXwMpks5Iic-o;-><init>(Landroid/app/role/RoleControllerManager$OnClearRoleHoldersRequest;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    iput-object v0, p0, Landroid/app/role/RoleControllerManager$OnClearRoleHoldersRequest;->mRemoteCallback:Landroid/os/RemoteCallback;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/role/RoleControllerManager$RemoteService;Ljava/lang/String;ILandroid/os/RemoteCallback;Landroid/app/role/RoleControllerManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/role/RoleControllerManager$OnClearRoleHoldersRequest;-><init>(Landroid/app/role/RoleControllerManager$RemoteService;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$RoleControllerManager$OnClearRoleHoldersRequest(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/app/role/RoleControllerManager$OnClearRoleHoldersRequest;->mCallback:Landroid/os/RemoteCallback;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {p0}, Landroid/app/role/RoleControllerManager$OnClearRoleHoldersRequest;->finish()Z

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {p0}, Landroid/app/role/RoleControllerManager$OnClearRoleHoldersRequest;->finish()Z

    throw v2
.end method

.method protected onTimeout(Landroid/app/role/RoleControllerManager$RemoteService;)V
    .locals 2

    iget-object v0, p0, Landroid/app/role/RoleControllerManager$OnClearRoleHoldersRequest;->mCallback:Landroid/os/RemoteCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method protected bridge synthetic onTimeout(Lcom/android/internal/infra/AbstractRemoteService;)V
    .locals 0

    check-cast p1, Landroid/app/role/RoleControllerManager$RemoteService;

    invoke-virtual {p0, p1}, Landroid/app/role/RoleControllerManager$OnClearRoleHoldersRequest;->onTimeout(Landroid/app/role/RoleControllerManager$RemoteService;)V

    return-void
.end method

.method public run()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/app/role/RoleControllerManager$OnClearRoleHoldersRequest;->getService()Lcom/android/internal/infra/AbstractRemoteService;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleControllerManager$RemoteService;

    invoke-virtual {v0}, Landroid/app/role/RoleControllerManager$RemoteService;->getServiceInterface()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/role/IRoleController;

    iget-object v1, p0, Landroid/app/role/RoleControllerManager$OnClearRoleHoldersRequest;->mRoleName:Ljava/lang/String;

    iget v2, p0, Landroid/app/role/RoleControllerManager$OnClearRoleHoldersRequest;->mFlags:I

    iget-object v3, p0, Landroid/app/role/RoleControllerManager$OnClearRoleHoldersRequest;->mRemoteCallback:Landroid/os/RemoteCallback;

    invoke-interface {v0, v1, v2, v3}, Landroid/app/role/IRoleController;->onClearRoleHolders(Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/app/role/RoleControllerManager;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error calling onClearRoleHolders()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
