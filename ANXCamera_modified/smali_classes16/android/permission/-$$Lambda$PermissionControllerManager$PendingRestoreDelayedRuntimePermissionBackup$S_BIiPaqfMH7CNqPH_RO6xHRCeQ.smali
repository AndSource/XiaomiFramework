.class public final synthetic Landroid/permission/-$$Lambda$PermissionControllerManager$PendingRestoreDelayedRuntimePermissionBackup$S_BIiPaqfMH7CNqPH_RO6xHRCeQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field private final synthetic f$0:Landroid/permission/PermissionControllerManager$PendingRestoreDelayedRuntimePermissionBackup;

.field private final synthetic f$1:Ljava/util/concurrent/Executor;

.field private final synthetic f$2:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Landroid/permission/PermissionControllerManager$PendingRestoreDelayedRuntimePermissionBackup;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingRestoreDelayedRuntimePermissionBackup$S_BIiPaqfMH7CNqPH_RO6xHRCeQ;->f$0:Landroid/permission/PermissionControllerManager$PendingRestoreDelayedRuntimePermissionBackup;

    iput-object p2, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingRestoreDelayedRuntimePermissionBackup$S_BIiPaqfMH7CNqPH_RO6xHRCeQ;->f$1:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingRestoreDelayedRuntimePermissionBackup$S_BIiPaqfMH7CNqPH_RO6xHRCeQ;->f$2:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingRestoreDelayedRuntimePermissionBackup$S_BIiPaqfMH7CNqPH_RO6xHRCeQ;->f$0:Landroid/permission/PermissionControllerManager$PendingRestoreDelayedRuntimePermissionBackup;

    iget-object v1, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingRestoreDelayedRuntimePermissionBackup$S_BIiPaqfMH7CNqPH_RO6xHRCeQ;->f$1:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingRestoreDelayedRuntimePermissionBackup$S_BIiPaqfMH7CNqPH_RO6xHRCeQ;->f$2:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1, v2, p1}, Landroid/permission/PermissionControllerManager$PendingRestoreDelayedRuntimePermissionBackup;->lambda$new$1$PermissionControllerManager$PendingRestoreDelayedRuntimePermissionBackup(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/os/Bundle;)V

    return-void
.end method
