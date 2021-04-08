.class final Landroid/app/role/RoleControllerManager$RemoteService;
.super Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;
.source "RoleControllerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/role/RoleControllerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RemoteService"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService<",
        "Landroid/app/role/RoleControllerManager$RemoteService;",
        "Landroid/app/role/IRoleController;",
        ">;"
    }
.end annotation


# static fields
.field private static final REQUEST_TIMEOUT_MILLIS:J = 0x3a98L

.field private static final UNBIND_DELAY_MILLIS:J = 0x3a98L


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/Handler;I)V
    .locals 10

    sget-object v5, Landroid/app/role/-$$Lambda$RoleControllerManager$RemoteService$45dMO3SdHJhfBB_YKrC44Sznmoo;->INSTANCE:Landroid/app/role/-$$Lambda$RoleControllerManager$RemoteService$45dMO3SdHJhfBB_YKrC44Sznmoo;

    const-string v2, "android.app.role.RoleControllerService"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZI)V

    return-void
.end method

.method static synthetic lambda$new$0(Landroid/app/role/RoleControllerManager$RemoteService;)V
    .locals 3

    invoke-static {}, Landroid/app/role/RoleControllerManager;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " died"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/app/role/RoleControllerManager$RemoteService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected getRemoteRequestMillis()J
    .locals 2

    const-wide/16 v0, 0x3a98

    return-wide v0
.end method

.method protected getServiceInterface(Landroid/os/IBinder;)Landroid/app/role/IRoleController;
    .locals 1

    invoke-static {p1}, Landroid/app/role/IRoleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/role/IRoleController;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/role/RoleControllerManager$RemoteService;->getServiceInterface(Landroid/os/IBinder;)Landroid/app/role/IRoleController;

    move-result-object p1

    return-object p1
.end method

.method protected getTimeoutIdleBindMillis()J
    .locals 2

    const-wide/16 v0, 0x3a98

    return-wide v0
.end method

.method public scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest<",
            "Landroid/app/role/IRoleController;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    return-void
.end method

.method public scheduleRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<",
            "Landroid/app/role/RoleControllerManager$RemoteService;",
            "Landroid/app/role/IRoleController;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    return-void
.end method
