.class public final synthetic Landroid/permission/-$$Lambda$PermissionControllerManager$PendingRevokeRuntimePermissionRequest$StUWUj0fmNRuCwuUzh3M5C7e_o0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field private final synthetic f$0:Landroid/permission/PermissionControllerManager$PendingRevokeRuntimePermissionRequest;

.field private final synthetic f$1:Ljava/util/concurrent/Executor;

.field private final synthetic f$2:Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/permission/PermissionControllerManager$PendingRevokeRuntimePermissionRequest;Ljava/util/concurrent/Executor;Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingRevokeRuntimePermissionRequest$StUWUj0fmNRuCwuUzh3M5C7e_o0;->f$0:Landroid/permission/PermissionControllerManager$PendingRevokeRuntimePermissionRequest;

    iput-object p2, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingRevokeRuntimePermissionRequest$StUWUj0fmNRuCwuUzh3M5C7e_o0;->f$1:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingRevokeRuntimePermissionRequest$StUWUj0fmNRuCwuUzh3M5C7e_o0;->f$2:Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingRevokeRuntimePermissionRequest$StUWUj0fmNRuCwuUzh3M5C7e_o0;->f$0:Landroid/permission/PermissionControllerManager$PendingRevokeRuntimePermissionRequest;

    iget-object v1, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingRevokeRuntimePermissionRequest$StUWUj0fmNRuCwuUzh3M5C7e_o0;->f$1:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingRevokeRuntimePermissionRequest$StUWUj0fmNRuCwuUzh3M5C7e_o0;->f$2:Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;

    invoke-virtual {v0, v1, v2, p1}, Landroid/permission/PermissionControllerManager$PendingRevokeRuntimePermissionRequest;->lambda$new$1$PermissionControllerManager$PendingRevokeRuntimePermissionRequest(Ljava/util/concurrent/Executor;Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;Landroid/os/Bundle;)V

    return-void
.end method
