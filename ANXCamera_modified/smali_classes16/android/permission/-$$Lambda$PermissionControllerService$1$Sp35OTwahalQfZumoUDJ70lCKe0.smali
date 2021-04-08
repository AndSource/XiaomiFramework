.class public final synthetic Landroid/permission/-$$Lambda$PermissionControllerService$1$Sp35OTwahalQfZumoUDJ70lCKe0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/os/RemoteCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/-$$Lambda$PermissionControllerService$1$Sp35OTwahalQfZumoUDJ70lCKe0;->f$0:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/permission/-$$Lambda$PermissionControllerService$1$Sp35OTwahalQfZumoUDJ70lCKe0;->f$0:Landroid/os/RemoteCallback;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Landroid/permission/PermissionControllerService$1;->lambda$setRuntimePermissionGrantStateByDeviceAdmin$5(Landroid/os/RemoteCallback;Ljava/lang/Boolean;)V

    return-void
.end method
