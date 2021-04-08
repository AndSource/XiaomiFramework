.class public final synthetic Landroid/permission/-$$Lambda$PermissionControllerManager$PendingGetPermissionUsagesRequest$M0RAdfneqBIIFQEhfWzd068mi7g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field private final synthetic f$0:Landroid/permission/PermissionControllerManager$PendingGetPermissionUsagesRequest;

.field private final synthetic f$1:Ljava/util/concurrent/Executor;

.field private final synthetic f$2:Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/permission/PermissionControllerManager$PendingGetPermissionUsagesRequest;Ljava/util/concurrent/Executor;Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingGetPermissionUsagesRequest$M0RAdfneqBIIFQEhfWzd068mi7g;->f$0:Landroid/permission/PermissionControllerManager$PendingGetPermissionUsagesRequest;

    iput-object p2, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingGetPermissionUsagesRequest$M0RAdfneqBIIFQEhfWzd068mi7g;->f$1:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingGetPermissionUsagesRequest$M0RAdfneqBIIFQEhfWzd068mi7g;->f$2:Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingGetPermissionUsagesRequest$M0RAdfneqBIIFQEhfWzd068mi7g;->f$0:Landroid/permission/PermissionControllerManager$PendingGetPermissionUsagesRequest;

    iget-object v1, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingGetPermissionUsagesRequest$M0RAdfneqBIIFQEhfWzd068mi7g;->f$1:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingGetPermissionUsagesRequest$M0RAdfneqBIIFQEhfWzd068mi7g;->f$2:Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;

    invoke-virtual {v0, v1, v2, p1}, Landroid/permission/PermissionControllerManager$PendingGetPermissionUsagesRequest;->lambda$new$1$PermissionControllerManager$PendingGetPermissionUsagesRequest(Ljava/util/concurrent/Executor;Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;Landroid/os/Bundle;)V

    return-void
.end method
