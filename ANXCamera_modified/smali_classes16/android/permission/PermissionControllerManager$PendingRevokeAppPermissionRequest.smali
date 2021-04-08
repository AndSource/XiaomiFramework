.class final Landroid/permission/PermissionControllerManager$PendingRevokeAppPermissionRequest;
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
    name = "PendingRevokeAppPermissionRequest"
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
.field private final mPackageName:Ljava/lang/String;

.field private final mPermissionName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/PermissionControllerManager$PendingRevokeAppPermissionRequest;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Landroid/permission/PermissionControllerManager$PendingRevokeAppPermissionRequest;->mPermissionName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/permission/PermissionControllerManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/permission/PermissionControllerManager$PendingRevokeAppPermissionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-virtual {p0, p1}, Landroid/permission/PermissionControllerManager$PendingRevokeAppPermissionRequest;->run(Landroid/permission/IPermissionController;)V

    return-void
.end method

.method public run(Landroid/permission/IPermissionController;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionControllerManager$PendingRevokeAppPermissionRequest;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/permission/PermissionControllerManager$PendingRevokeAppPermissionRequest;->mPermissionName:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/permission/IPermissionController;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/permission/PermissionControllerManager;->access$1000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error revoking app permission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
