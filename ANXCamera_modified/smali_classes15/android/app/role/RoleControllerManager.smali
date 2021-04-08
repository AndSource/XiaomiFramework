.class public Landroid/app/role/RoleControllerManager;
.super Ljava/lang/Object;
.source "RoleControllerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/role/RoleControllerManager$IsRoleVisibleRequest;,
        Landroid/app/role/RoleControllerManager$IsApplicationQualifiedForRoleRequest;,
        Landroid/app/role/RoleControllerManager$OnClearRoleHoldersRequest;,
        Landroid/app/role/RoleControllerManager$OnRemoveRoleHolderRequest;,
        Landroid/app/role/RoleControllerManager$OnAddRoleHolderRequest;,
        Landroid/app/role/RoleControllerManager$GrantDefaultRolesRequest;,
        Landroid/app/role/RoleControllerManager$RemoteService;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static volatile sRemoteServiceComponentName:Landroid/content/ComponentName;

.field private static final sRemoteServices:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sRemoteServicesLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/role/RoleControllerManager$RemoteService;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRemoteServicesLock:Ljava/lang/Object;


# instance fields
.field private final mRemoteService:Landroid/app/role/RoleControllerManager$RemoteService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/app/role/RoleControllerManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/role/RoleControllerManager;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/role/RoleControllerManager;->sRemoteServicesLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/app/role/RoleControllerManager;->sRemoteServices:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>(Landroid/content/ComponentName;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/app/role/RoleControllerManager;->sRemoteServicesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p3}, Landroid/content/Context;->getUserId()I

    move-result v1

    sget-object v2, Landroid/app/role/RoleControllerManager;->sRemoteServices:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/role/RoleControllerManager$RemoteService;

    if-nez v2, :cond_0

    new-instance v3, Landroid/app/role/RoleControllerManager$RemoteService;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v4

    invoke-direct {v3, v4, p1, p2, v1}, Landroid/app/role/RoleControllerManager$RemoteService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/Handler;I)V

    move-object v2, v3

    sget-object v3, Landroid/app/role/RoleControllerManager;->sRemoteServices:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    iput-object v2, p0, Landroid/app/role/RoleControllerManager;->mRemoteService:Landroid/app/role/RoleControllerManager$RemoteService;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Landroid/app/role/RoleControllerManager;->getRemoteServiceComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Landroid/app/role/RoleControllerManager;-><init>(Landroid/content/ComponentName;Landroid/os/Handler;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/app/role/RoleControllerManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static createWithInitializedRemoteServiceComponentName(Landroid/os/Handler;Landroid/content/Context;)Landroid/app/role/RoleControllerManager;
    .locals 2

    new-instance v0, Landroid/app/role/RoleControllerManager;

    sget-object v1, Landroid/app/role/RoleControllerManager;->sRemoteServiceComponentName:Landroid/content/ComponentName;

    invoke-direct {v0, v1, p0, p1}, Landroid/app/role/RoleControllerManager;-><init>(Landroid/content/ComponentName;Landroid/os/Handler;Landroid/content/Context;)V

    return-object v0
.end method

.method private static getRemoteServiceComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.role.RoleControllerService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    return-object v3
.end method

.method public static initializeRemoteServiceComponentName(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Landroid/app/role/RoleControllerManager;->getRemoteServiceComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Landroid/app/role/RoleControllerManager;->sRemoteServiceComponentName:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public grantDefaultRoles(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/role/RoleControllerManager;->mRemoteService:Landroid/app/role/RoleControllerManager$RemoteService;

    new-instance v1, Landroid/app/role/RoleControllerManager$GrantDefaultRolesRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, p2, v2}, Landroid/app/role/RoleControllerManager$GrantDefaultRolesRequest;-><init>(Landroid/app/role/RoleControllerManager$RemoteService;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/app/role/RoleControllerManager$1;)V

    invoke-virtual {v0, v1}, Landroid/app/role/RoleControllerManager$RemoteService;->scheduleRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    return-void
.end method

.method public isApplicationQualifiedForRole(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v7, p0, Landroid/app/role/RoleControllerManager;->mRemoteService:Landroid/app/role/RoleControllerManager$RemoteService;

    new-instance v8, Landroid/app/role/RoleControllerManager$IsApplicationQualifiedForRoleRequest;

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/app/role/RoleControllerManager$IsApplicationQualifiedForRoleRequest;-><init>(Landroid/app/role/RoleControllerManager$RemoteService;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/app/role/RoleControllerManager$1;)V

    invoke-virtual {v7, v8}, Landroid/app/role/RoleControllerManager$RemoteService;->scheduleRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    return-void
.end method

.method public isRoleVisible(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v6, p0, Landroid/app/role/RoleControllerManager;->mRemoteService:Landroid/app/role/RoleControllerManager$RemoteService;

    new-instance v7, Landroid/app/role/RoleControllerManager$IsRoleVisibleRequest;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/role/RoleControllerManager$IsRoleVisibleRequest;-><init>(Landroid/app/role/RoleControllerManager$RemoteService;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/app/role/RoleControllerManager$1;)V

    invoke-virtual {v6, v7}, Landroid/app/role/RoleControllerManager$RemoteService;->scheduleRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    return-void
.end method

.method public onAddRoleHolder(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .locals 9
    .param p3    # I
        .annotation build Landroid/app/role/RoleManager$ManageHoldersFlags;
        .end annotation
    .end param

    iget-object v7, p0, Landroid/app/role/RoleControllerManager;->mRemoteService:Landroid/app/role/RoleControllerManager$RemoteService;

    new-instance v8, Landroid/app/role/RoleControllerManager$OnAddRoleHolderRequest;

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/app/role/RoleControllerManager$OnAddRoleHolderRequest;-><init>(Landroid/app/role/RoleControllerManager$RemoteService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;Landroid/app/role/RoleControllerManager$1;)V

    invoke-virtual {v7, v8}, Landroid/app/role/RoleControllerManager$RemoteService;->scheduleRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    return-void
.end method

.method public onClearRoleHolders(Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .locals 8
    .param p2    # I
        .annotation build Landroid/app/role/RoleManager$ManageHoldersFlags;
        .end annotation
    .end param

    iget-object v6, p0, Landroid/app/role/RoleControllerManager;->mRemoteService:Landroid/app/role/RoleControllerManager$RemoteService;

    new-instance v7, Landroid/app/role/RoleControllerManager$OnClearRoleHoldersRequest;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, v6

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/role/RoleControllerManager$OnClearRoleHoldersRequest;-><init>(Landroid/app/role/RoleControllerManager$RemoteService;Ljava/lang/String;ILandroid/os/RemoteCallback;Landroid/app/role/RoleControllerManager$1;)V

    invoke-virtual {v6, v7}, Landroid/app/role/RoleControllerManager$RemoteService;->scheduleRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    return-void
.end method

.method public onRemoveRoleHolder(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .locals 9
    .param p3    # I
        .annotation build Landroid/app/role/RoleManager$ManageHoldersFlags;
        .end annotation
    .end param

    iget-object v7, p0, Landroid/app/role/RoleControllerManager;->mRemoteService:Landroid/app/role/RoleControllerManager$RemoteService;

    new-instance v8, Landroid/app/role/RoleControllerManager$OnRemoveRoleHolderRequest;

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/app/role/RoleControllerManager$OnRemoveRoleHolderRequest;-><init>(Landroid/app/role/RoleControllerManager$RemoteService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;Landroid/app/role/RoleControllerManager$1;)V

    invoke-virtual {v7, v8}, Landroid/app/role/RoleControllerManager$RemoteService;->scheduleRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    return-void
.end method
