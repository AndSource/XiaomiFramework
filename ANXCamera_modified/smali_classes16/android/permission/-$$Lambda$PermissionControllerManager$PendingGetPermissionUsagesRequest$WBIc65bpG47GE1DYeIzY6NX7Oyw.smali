.class public final synthetic Landroid/permission/-$$Lambda$PermissionControllerManager$PendingGetPermissionUsagesRequest$WBIc65bpG47GE1DYeIzY6NX7Oyw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/permission/PermissionControllerManager$PendingGetPermissionUsagesRequest;

.field private final synthetic f$1:Landroid/os/Bundle;

.field private final synthetic f$2:Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/permission/PermissionControllerManager$PendingGetPermissionUsagesRequest;Landroid/os/Bundle;Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingGetPermissionUsagesRequest$WBIc65bpG47GE1DYeIzY6NX7Oyw;->f$0:Landroid/permission/PermissionControllerManager$PendingGetPermissionUsagesRequest;

    iput-object p2, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingGetPermissionUsagesRequest$WBIc65bpG47GE1DYeIzY6NX7Oyw;->f$1:Landroid/os/Bundle;

    iput-object p3, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingGetPermissionUsagesRequest$WBIc65bpG47GE1DYeIzY6NX7Oyw;->f$2:Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingGetPermissionUsagesRequest$WBIc65bpG47GE1DYeIzY6NX7Oyw;->f$0:Landroid/permission/PermissionControllerManager$PendingGetPermissionUsagesRequest;

    iget-object v1, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingGetPermissionUsagesRequest$WBIc65bpG47GE1DYeIzY6NX7Oyw;->f$1:Landroid/os/Bundle;

    iget-object v2, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingGetPermissionUsagesRequest$WBIc65bpG47GE1DYeIzY6NX7Oyw;->f$2:Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;

    invoke-virtual {v0, v1, v2}, Landroid/permission/PermissionControllerManager$PendingGetPermissionUsagesRequest;->lambda$new$0$PermissionControllerManager$PendingGetPermissionUsagesRequest(Landroid/os/Bundle;Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;)V

    return-void
.end method
