.class public final synthetic Landroid/permission/-$$Lambda$PermissionControllerManager$PendingRestoreDelayedRuntimePermissionBackup$ZGmiW-2RcTI6YZLE1JgWr0ufJGk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/permission/PermissionControllerManager$PendingRestoreDelayedRuntimePermissionBackup;

.field private final synthetic f$1:Ljava/util/function/Consumer;

.field private final synthetic f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/permission/PermissionControllerManager$PendingRestoreDelayedRuntimePermissionBackup;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingRestoreDelayedRuntimePermissionBackup$ZGmiW-2RcTI6YZLE1JgWr0ufJGk;->f$0:Landroid/permission/PermissionControllerManager$PendingRestoreDelayedRuntimePermissionBackup;

    iput-object p2, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingRestoreDelayedRuntimePermissionBackup$ZGmiW-2RcTI6YZLE1JgWr0ufJGk;->f$1:Ljava/util/function/Consumer;

    iput-object p3, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingRestoreDelayedRuntimePermissionBackup$ZGmiW-2RcTI6YZLE1JgWr0ufJGk;->f$2:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingRestoreDelayedRuntimePermissionBackup$ZGmiW-2RcTI6YZLE1JgWr0ufJGk;->f$0:Landroid/permission/PermissionControllerManager$PendingRestoreDelayedRuntimePermissionBackup;

    iget-object v1, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingRestoreDelayedRuntimePermissionBackup$ZGmiW-2RcTI6YZLE1JgWr0ufJGk;->f$1:Ljava/util/function/Consumer;

    iget-object v2, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingRestoreDelayedRuntimePermissionBackup$ZGmiW-2RcTI6YZLE1JgWr0ufJGk;->f$2:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/permission/PermissionControllerManager$PendingRestoreDelayedRuntimePermissionBackup;->lambda$new$0$PermissionControllerManager$PendingRestoreDelayedRuntimePermissionBackup(Ljava/util/function/Consumer;Landroid/os/Bundle;)V

    return-void
.end method
