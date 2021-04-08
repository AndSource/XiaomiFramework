.class final Landroid/permission/PermissionControllerManager$PendingCountPermissionAppsRequest;
.super Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;
.source "PermissionControllerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/PermissionControllerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingCountPermissionAppsRequest"
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
.field private final mCallback:Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;

.field private final mFlags:I

.field private final mPermissionNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteCallback:Landroid/os/RemoteCallback;


# direct methods
.method private constructor <init>(Landroid/permission/PermissionControllerManager$RemoteService;Ljava/util/List;ILandroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/permission/PermissionControllerManager$RemoteService;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;-><init>(Lcom/android/internal/infra/AbstractRemoteService;)V

    iput-object p2, p0, Landroid/permission/PermissionControllerManager$PendingCountPermissionAppsRequest;->mPermissionNames:Ljava/util/List;

    iput p3, p0, Landroid/permission/PermissionControllerManager$PendingCountPermissionAppsRequest;->mFlags:I

    iput-object p4, p0, Landroid/permission/PermissionControllerManager$PendingCountPermissionAppsRequest;->mCallback:Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;

    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingCountPermissionAppsRequest$5yk4p2I96nUHJ1QRErjoF1iiLLY;

    invoke-direct {v1, p0, p4}, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingCountPermissionAppsRequest$5yk4p2I96nUHJ1QRErjoF1iiLLY;-><init>(Landroid/permission/PermissionControllerManager$PendingCountPermissionAppsRequest;Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;)V

    invoke-direct {v0, v1, p5}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/permission/PermissionControllerManager$PendingCountPermissionAppsRequest;->mRemoteCallback:Landroid/os/RemoteCallback;

    return-void
.end method

.method synthetic constructor <init>(Landroid/permission/PermissionControllerManager$RemoteService;Ljava/util/List;ILandroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;Landroid/os/Handler;Landroid/permission/PermissionControllerManager$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/permission/PermissionControllerManager$PendingCountPermissionAppsRequest;-><init>(Landroid/permission/PermissionControllerManager$RemoteService;Ljava/util/List;ILandroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$PermissionControllerManager$PendingCountPermissionAppsRequest(Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p2, :cond_0

    const-string v0, "android.permission.PermissionControllerManager.key.result"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;->onCountPermissionApps(I)V

    invoke-virtual {p0}, Landroid/permission/PermissionControllerManager$PendingCountPermissionAppsRequest;->finish()Z

    return-void
.end method

.method protected onTimeout(Landroid/permission/PermissionControllerManager$RemoteService;)V
    .locals 2

    iget-object v0, p0, Landroid/permission/PermissionControllerManager$PendingCountPermissionAppsRequest;->mCallback:Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;->onCountPermissionApps(I)V

    return-void
.end method

.method protected bridge synthetic onTimeout(Lcom/android/internal/infra/AbstractRemoteService;)V
    .locals 0

    check-cast p1, Landroid/permission/PermissionControllerManager$RemoteService;

    invoke-virtual {p0, p1}, Landroid/permission/PermissionControllerManager$PendingCountPermissionAppsRequest;->onTimeout(Landroid/permission/PermissionControllerManager$RemoteService;)V

    return-void
.end method

.method public run()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/permission/PermissionControllerManager$PendingCountPermissionAppsRequest;->getService()Lcom/android/internal/infra/AbstractRemoteService;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionControllerManager$RemoteService;

    invoke-virtual {v0}, Landroid/permission/PermissionControllerManager$RemoteService;->getServiceInterface()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/permission/IPermissionController;

    iget-object v1, p0, Landroid/permission/PermissionControllerManager$PendingCountPermissionAppsRequest;->mPermissionNames:Ljava/util/List;

    iget v2, p0, Landroid/permission/PermissionControllerManager$PendingCountPermissionAppsRequest;->mFlags:I

    iget-object v3, p0, Landroid/permission/PermissionControllerManager$PendingCountPermissionAppsRequest;->mRemoteCallback:Landroid/os/RemoteCallback;

    invoke-interface {v0, v1, v2, v3}, Landroid/permission/IPermissionController;->countPermissionApps(Ljava/util/List;ILandroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/permission/PermissionControllerManager;->access$1000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error counting permission apps"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
