.class public final synthetic Landroid/permission/-$$Lambda$PermissionControllerManager$PendingGetAppPermissionRequest$7R0rGbvqPEHrjxlrMX66LMgfTj4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field private final synthetic f$0:Landroid/permission/PermissionControllerManager$PendingGetAppPermissionRequest;

.field private final synthetic f$1:Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/permission/PermissionControllerManager$PendingGetAppPermissionRequest;Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingGetAppPermissionRequest$7R0rGbvqPEHrjxlrMX66LMgfTj4;->f$0:Landroid/permission/PermissionControllerManager$PendingGetAppPermissionRequest;

    iput-object p2, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingGetAppPermissionRequest$7R0rGbvqPEHrjxlrMX66LMgfTj4;->f$1:Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingGetAppPermissionRequest$7R0rGbvqPEHrjxlrMX66LMgfTj4;->f$0:Landroid/permission/PermissionControllerManager$PendingGetAppPermissionRequest;

    iget-object v1, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingGetAppPermissionRequest$7R0rGbvqPEHrjxlrMX66LMgfTj4;->f$1:Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;

    invoke-virtual {v0, v1, p1}, Landroid/permission/PermissionControllerManager$PendingGetAppPermissionRequest;->lambda$new$0$PermissionControllerManager$PendingGetAppPermissionRequest(Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;Landroid/os/Bundle;)V

    return-void
.end method
