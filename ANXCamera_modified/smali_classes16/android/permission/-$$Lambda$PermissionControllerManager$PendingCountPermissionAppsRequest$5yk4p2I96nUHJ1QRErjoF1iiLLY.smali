.class public final synthetic Landroid/permission/-$$Lambda$PermissionControllerManager$PendingCountPermissionAppsRequest$5yk4p2I96nUHJ1QRErjoF1iiLLY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field private final synthetic f$0:Landroid/permission/PermissionControllerManager$PendingCountPermissionAppsRequest;

.field private final synthetic f$1:Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/permission/PermissionControllerManager$PendingCountPermissionAppsRequest;Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingCountPermissionAppsRequest$5yk4p2I96nUHJ1QRErjoF1iiLLY;->f$0:Landroid/permission/PermissionControllerManager$PendingCountPermissionAppsRequest;

    iput-object p2, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingCountPermissionAppsRequest$5yk4p2I96nUHJ1QRErjoF1iiLLY;->f$1:Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingCountPermissionAppsRequest$5yk4p2I96nUHJ1QRErjoF1iiLLY;->f$0:Landroid/permission/PermissionControllerManager$PendingCountPermissionAppsRequest;

    iget-object v1, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingCountPermissionAppsRequest$5yk4p2I96nUHJ1QRErjoF1iiLLY;->f$1:Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;

    invoke-virtual {v0, v1, p1}, Landroid/permission/PermissionControllerManager$PendingCountPermissionAppsRequest;->lambda$new$0$PermissionControllerManager$PendingCountPermissionAppsRequest(Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;Landroid/os/Bundle;)V

    return-void
.end method
