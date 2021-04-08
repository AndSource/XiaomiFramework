.class final Landroid/permission/PermissionControllerManager$PendingGetAppPermissionRequest;
.super Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;
.source "PermissionControllerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/PermissionControllerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingGetAppPermissionRequest"
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
.field private final mCallback:Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;

.field private final mPackageName:Ljava/lang/String;

.field private final mRemoteCallback:Landroid/os/RemoteCallback;


# direct methods
.method private constructor <init>(Landroid/permission/PermissionControllerManager$RemoteService;Ljava/lang/String;Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;-><init>(Lcom/android/internal/infra/AbstractRemoteService;)V

    iput-object p2, p0, Landroid/permission/PermissionControllerManager$PendingGetAppPermissionRequest;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Landroid/permission/PermissionControllerManager$PendingGetAppPermissionRequest;->mCallback:Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;

    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingGetAppPermissionRequest$7R0rGbvqPEHrjxlrMX66LMgfTj4;

    invoke-direct {v1, p0, p3}, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingGetAppPermissionRequest$7R0rGbvqPEHrjxlrMX66LMgfTj4;-><init>(Landroid/permission/PermissionControllerManager$PendingGetAppPermissionRequest;Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;)V

    invoke-direct {v0, v1, p4}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/permission/PermissionControllerManager$PendingGetAppPermissionRequest;->mRemoteCallback:Landroid/os/RemoteCallback;

    return-void
.end method

.method synthetic constructor <init>(Landroid/permission/PermissionControllerManager$RemoteService;Ljava/lang/String;Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;Landroid/os/Handler;Landroid/permission/PermissionControllerManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/permission/PermissionControllerManager$PendingGetAppPermissionRequest;-><init>(Landroid/permission/PermissionControllerManager$RemoteService;Ljava/lang/String;Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$PermissionControllerManager$PendingGetAppPermissionRequest(Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string v1, "android.permission.PermissionControllerManager.key.result"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_1
    move-object v1, v0

    invoke-interface {p1, v1}, Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;->onGetAppPermissions(Ljava/util/List;)V

    invoke-virtual {p0}, Landroid/permission/PermissionControllerManager$PendingGetAppPermissionRequest;->finish()Z

    return-void
.end method

.method protected onTimeout(Landroid/permission/PermissionControllerManager$RemoteService;)V
    .locals 2

    iget-object v0, p0, Landroid/permission/PermissionControllerManager$PendingGetAppPermissionRequest;->mCallback:Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;->onGetAppPermissions(Ljava/util/List;)V

    return-void
.end method

.method protected bridge synthetic onTimeout(Lcom/android/internal/infra/AbstractRemoteService;)V
    .locals 0

    check-cast p1, Landroid/permission/PermissionControllerManager$RemoteService;

    invoke-virtual {p0, p1}, Landroid/permission/PermissionControllerManager$PendingGetAppPermissionRequest;->onTimeout(Landroid/permission/PermissionControllerManager$RemoteService;)V

    return-void
.end method

.method public run()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/permission/PermissionControllerManager$PendingGetAppPermissionRequest;->getService()Lcom/android/internal/infra/AbstractRemoteService;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionControllerManager$RemoteService;

    invoke-virtual {v0}, Landroid/permission/PermissionControllerManager$RemoteService;->getServiceInterface()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/permission/IPermissionController;

    iget-object v1, p0, Landroid/permission/PermissionControllerManager$PendingGetAppPermissionRequest;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/permission/PermissionControllerManager$PendingGetAppPermissionRequest;->mRemoteCallback:Landroid/os/RemoteCallback;

    invoke-interface {v0, v1, v2}, Landroid/permission/IPermissionController;->getAppPermissions(Ljava/lang/String;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/permission/PermissionControllerManager;->access$1000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error getting app permission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
