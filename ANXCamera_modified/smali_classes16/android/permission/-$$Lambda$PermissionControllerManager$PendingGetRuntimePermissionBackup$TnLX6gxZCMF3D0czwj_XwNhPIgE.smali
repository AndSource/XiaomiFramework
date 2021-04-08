.class public final synthetic Landroid/permission/-$$Lambda$PermissionControllerManager$PendingGetRuntimePermissionBackup$TnLX6gxZCMF3D0czwj_XwNhPIgE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/permission/PermissionControllerManager$PendingGetRuntimePermissionBackup;

.field private final synthetic f$1:[B


# direct methods
.method public synthetic constructor <init>(Landroid/permission/PermissionControllerManager$PendingGetRuntimePermissionBackup;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingGetRuntimePermissionBackup$TnLX6gxZCMF3D0czwj_XwNhPIgE;->f$0:Landroid/permission/PermissionControllerManager$PendingGetRuntimePermissionBackup;

    iput-object p2, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingGetRuntimePermissionBackup$TnLX6gxZCMF3D0czwj_XwNhPIgE;->f$1:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingGetRuntimePermissionBackup$TnLX6gxZCMF3D0czwj_XwNhPIgE;->f$0:Landroid/permission/PermissionControllerManager$PendingGetRuntimePermissionBackup;

    iget-object v1, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingGetRuntimePermissionBackup$TnLX6gxZCMF3D0czwj_XwNhPIgE;->f$1:[B

    invoke-virtual {v0, v1}, Landroid/permission/PermissionControllerManager$PendingGetRuntimePermissionBackup;->lambda$accept$0$PermissionControllerManager$PendingGetRuntimePermissionBackup([B)V

    return-void
.end method
