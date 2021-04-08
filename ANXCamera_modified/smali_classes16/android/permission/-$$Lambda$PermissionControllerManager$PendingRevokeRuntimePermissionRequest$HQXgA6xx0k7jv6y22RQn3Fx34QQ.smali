.class public final synthetic Landroid/permission/-$$Lambda$PermissionControllerManager$PendingRevokeRuntimePermissionRequest$HQXgA6xx0k7jv6y22RQn3Fx34QQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/permission/PermissionControllerManager$PendingRevokeRuntimePermissionRequest;


# direct methods
.method public synthetic constructor <init>(Landroid/permission/PermissionControllerManager$PendingRevokeRuntimePermissionRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingRevokeRuntimePermissionRequest$HQXgA6xx0k7jv6y22RQn3Fx34QQ;->f$0:Landroid/permission/PermissionControllerManager$PendingRevokeRuntimePermissionRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/permission/-$$Lambda$PermissionControllerManager$PendingRevokeRuntimePermissionRequest$HQXgA6xx0k7jv6y22RQn3Fx34QQ;->f$0:Landroid/permission/PermissionControllerManager$PendingRevokeRuntimePermissionRequest;

    invoke-virtual {v0}, Landroid/permission/PermissionControllerManager$PendingRevokeRuntimePermissionRequest;->lambda$onTimeout$2$PermissionControllerManager$PendingRevokeRuntimePermissionRequest()V

    return-void
.end method
