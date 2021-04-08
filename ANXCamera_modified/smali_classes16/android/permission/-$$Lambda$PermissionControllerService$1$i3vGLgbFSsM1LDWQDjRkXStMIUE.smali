.class public final synthetic Landroid/permission/-$$Lambda$PermissionControllerService$1$i3vGLgbFSsM1LDWQDjRkXStMIUE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field private final synthetic f$0:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/os/RemoteCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/-$$Lambda$PermissionControllerService$1$i3vGLgbFSsM1LDWQDjRkXStMIUE;->f$0:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    iget-object v0, p0, Landroid/permission/-$$Lambda$PermissionControllerService$1$i3vGLgbFSsM1LDWQDjRkXStMIUE;->f$0:Landroid/os/RemoteCallback;

    invoke-static {v0, p1}, Landroid/permission/PermissionControllerService$1;->lambda$countPermissionApps$3(Landroid/os/RemoteCallback;I)V

    return-void
.end method
