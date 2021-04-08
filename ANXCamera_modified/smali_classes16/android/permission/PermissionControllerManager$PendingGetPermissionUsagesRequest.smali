.class final Landroid/permission/PermissionControllerManager$PendingGetPermissionUsagesRequest;
.super Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;
.source "PermissionControllerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/PermissionControllerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingGetPermissionUsagesRequest"
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
.field private final mCallback:Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;

.field private final mCountSystem:Z

.field private final mNumMillis:J

.field private final mRemoteCallback:Landroid/os/RemoteCallback;


# direct methods
.method private constructor <init>(Landroid/permission/PermissionControllerManager$RemoteService;ZJLjava/util/concurrent/Executor;Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;-><init>(Lcom/android/internal/infra/AbstractRemoteService;)V

    iput-boolean p2, p0, Landroid/permission/PermissionControllerManager$PendingGetPermissionUsagesRequest;->mCountSystem:Z

    iput-wide p3, p0, Landroid/permission/PermissionControllerManager$PendingGetPermissionUsagesRequest;->mNumMillis:J

    iput-object p6, p0, Landroid/permission/PermissionControllerManager$PendingGetPermissionUsagesRequest;->mCallback:Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;

    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingGetPermissionUsagesRequest$M0RAdfneqBIIFQEhfWzd068mi7g;

    invoke-direct {v1, p0, p5, p6}, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingGetPermissionUsagesRequest$M0RAdfneqBIIFQEhfWzd068mi7g;-><init>(Landroid/permission/PermissionControllerManager$PendingGetPermissionUsagesRequest;Ljava/util/concurrent/Executor;Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/permission/PermissionControllerManager$PendingGetPermissionUsagesRequest;->mRemoteCallback:Landroid/os/RemoteCallback;

    return-void
.end method

.method synthetic constructor <init>(Landroid/permission/PermissionControllerManager$RemoteService;ZJLjava/util/concurrent/Executor;Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;Landroid/permission/PermissionControllerManager$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/permission/PermissionControllerManager$PendingGetPermissionUsagesRequest;-><init>(Landroid/permission/PermissionControllerManager$RemoteService;ZJLjava/util/concurrent/Executor;Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$PermissionControllerManager$PendingGetPermissionUsagesRequest(Landroid/os/Bundle;Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v3, "android.permission.PermissionControllerManager.key.result"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    move-object v2, v3

    :goto_0
    move-object v3, v2

    invoke-interface {p2, v3}, Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;->onPermissionUsageResult(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {p0}, Landroid/permission/PermissionControllerManager$PendingGetPermissionUsagesRequest;->finish()Z

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {p0}, Landroid/permission/PermissionControllerManager$PendingGetPermissionUsagesRequest;->finish()Z

    throw v2
.end method

.method public synthetic lambda$new$1$PermissionControllerManager$PendingGetPermissionUsagesRequest(Ljava/util/concurrent/Executor;Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingGetPermissionUsagesRequest$WBIc65bpG47GE1DYeIzY6NX7Oyw;

    invoke-direct {v0, p0, p3, p2}, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingGetPermissionUsagesRequest$WBIc65bpG47GE1DYeIzY6NX7Oyw;-><init>(Landroid/permission/PermissionControllerManager$PendingGetPermissionUsagesRequest;Landroid/os/Bundle;Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onTimeout(Landroid/permission/PermissionControllerManager$RemoteService;)V
    .locals 2

    iget-object v0, p0, Landroid/permission/PermissionControllerManager$PendingGetPermissionUsagesRequest;->mCallback:Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;->onPermissionUsageResult(Ljava/util/List;)V

    return-void
.end method

.method protected bridge synthetic onTimeout(Lcom/android/internal/infra/AbstractRemoteService;)V
    .locals 0

    check-cast p1, Landroid/permission/PermissionControllerManager$RemoteService;

    invoke-virtual {p0, p1}, Landroid/permission/PermissionControllerManager$PendingGetPermissionUsagesRequest;->onTimeout(Landroid/permission/PermissionControllerManager$RemoteService;)V

    return-void
.end method

.method public run()V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Landroid/permission/PermissionControllerManager$PendingGetPermissionUsagesRequest;->getService()Lcom/android/internal/infra/AbstractRemoteService;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionControllerManager$RemoteService;

    invoke-virtual {v0}, Landroid/permission/PermissionControllerManager$RemoteService;->getServiceInterface()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/permission/IPermissionController;

    iget-boolean v1, p0, Landroid/permission/PermissionControllerManager$PendingGetPermissionUsagesRequest;->mCountSystem:Z

    iget-wide v2, p0, Landroid/permission/PermissionControllerManager$PendingGetPermissionUsagesRequest;->mNumMillis:J

    iget-object v4, p0, Landroid/permission/PermissionControllerManager$PendingGetPermissionUsagesRequest;->mRemoteCallback:Landroid/os/RemoteCallback;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/permission/IPermissionController;->getPermissionUsages(ZJLandroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/permission/PermissionControllerManager;->access$1000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error counting permission users"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
