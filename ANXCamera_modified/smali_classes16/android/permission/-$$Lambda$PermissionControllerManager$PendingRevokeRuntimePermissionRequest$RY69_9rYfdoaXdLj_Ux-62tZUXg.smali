.class public final synthetic Landroid/permission/-$$Lambda$PermissionControllerManager$PendingRevokeRuntimePermissionRequest$RY69_9rYfdoaXdLj_Ux-62tZUXg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/permission/PermissionControllerManager$PendingRevokeRuntimePermissionRequest;

.field private final synthetic f$1:Landroid/os/Bundle;

.field private final synthetic f$2:Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/permission/PermissionControllerManager$PendingRevokeRuntimePermissionRequest;Landroid/os/Bundle;Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingRevokeRuntimePermissionRequest$RY69_9rYfdoaXdLj_Ux-62tZUXg;->f$0:Landroid/permission/PermissionControllerManager$PendingRevokeRuntimePermissionRequest;

    iput-object p2, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingRevokeRuntimePermissionRequest$RY69_9rYfdoaXdLj_Ux-62tZUXg;->f$1:Landroid/os/Bundle;

    iput-object p3, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingRevokeRuntimePermissionRequest$RY69_9rYfdoaXdLj_Ux-62tZUXg;->f$2:Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingRevokeRuntimePermissionRequest$RY69_9rYfdoaXdLj_Ux-62tZUXg;->f$0:Landroid/permission/PermissionControllerManager$PendingRevokeRuntimePermissionRequest;

    iget-object v1, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingRevokeRuntimePermissionRequest$RY69_9rYfdoaXdLj_Ux-62tZUXg;->f$1:Landroid/os/Bundle;

    iget-object v2, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingRevokeRuntimePermissionRequest$RY69_9rYfdoaXdLj_Ux-62tZUXg;->f$2:Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;

    invoke-virtual {v0, v1, v2}, Landroid/permission/PermissionControllerManager$PendingRevokeRuntimePermissionRequest;->lambda$new$0$PermissionControllerManager$PendingRevokeRuntimePermissionRequest(Landroid/os/Bundle;Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;)V

    return-void
.end method
