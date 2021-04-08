.class public final Landroid/permission/PermissionControllerManager;
.super Ljava/lang/Object;
.source "PermissionControllerManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/permission/PermissionControllerManager$PendingGrantOrUpgradeDefaultRuntimePermissionsRequest;,
        Landroid/permission/PermissionControllerManager$PendingGetPermissionUsagesRequest;,
        Landroid/permission/PermissionControllerManager$PendingCountPermissionAppsRequest;,
        Landroid/permission/PermissionControllerManager$PendingRevokeAppPermissionRequest;,
        Landroid/permission/PermissionControllerManager$PendingGetAppPermissionRequest;,
        Landroid/permission/PermissionControllerManager$PendingRestoreDelayedRuntimePermissionBackup;,
        Landroid/permission/PermissionControllerManager$PendingRestoreRuntimePermissionBackup;,
        Landroid/permission/PermissionControllerManager$PendingSetRuntimePermissionGrantStateByDeviceAdmin;,
        Landroid/permission/PermissionControllerManager$PendingGetRuntimePermissionBackup;,
        Landroid/permission/PermissionControllerManager$PendingRevokeRuntimePermissionRequest;,
        Landroid/permission/PermissionControllerManager$FileWriterTask;,
        Landroid/permission/PermissionControllerManager$FileReaderTask;,
        Landroid/permission/PermissionControllerManager$RemoteService;,
        Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;,
        Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;,
        Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;,
        Landroid/permission/PermissionControllerManager$OnGetRuntimePermissionBackupCallback;,
        Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;,
        Landroid/permission/PermissionControllerManager$CountPermissionAppsFlag;,
        Landroid/permission/PermissionControllerManager$Reason;
    }
.end annotation


# static fields
.field public static final COUNT_ONLY_WHEN_GRANTED:I = 0x1

.field public static final COUNT_WHEN_SYSTEM:I = 0x2

.field public static final KEY_RESULT:Ljava/lang/String; = "android.permission.PermissionControllerManager.key.result"

.field public static final REASON_INSTALLER_POLICY_VIOLATION:I = 0x2

.field public static final REASON_MALWARE:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final sLock:Ljava/lang/Object;

.field private static sRemoteServices:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Thread;",
            ">;",
            "Landroid/permission/PermissionControllerManager$RemoteService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mRemoteService:Landroid/permission/PermissionControllerManager$RemoteService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Landroid/permission/PermissionControllerManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/permission/PermissionControllerManager;->sLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    sput-object v0, Landroid/permission/PermissionControllerManager;->sRemoteServices:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/permission/PermissionControllerManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/util/Pair;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Landroid/permission/PermissionControllerManager;->sRemoteServices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/permission/PermissionControllerManager$RemoteService;

    if-nez v2, :cond_0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.permission.PermissionControllerService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    new-instance v5, Landroid/permission/PermissionControllerManager$RemoteService;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    invoke-direct {v5, v6, v7, p2, v8}, Landroid/permission/PermissionControllerManager$RemoteService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/Handler;Landroid/os/UserHandle;)V

    move-object v2, v5

    sget-object v5, Landroid/permission/PermissionControllerManager;->sRemoteServices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object v2, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Landroid/permission/PermissionControllerManager$RemoteService;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p1, p0, Landroid/permission/PermissionControllerManager;->mContext:Landroid/content/Context;

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public countPermissionApps(Ljava/util/List;ILandroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;Landroid/os/Handler;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "permissionNames"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    const/4 v0, 0x3

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Landroid/permission/PermissionControllerManager$RemoteService;

    new-instance v8, Landroid/permission/PermissionControllerManager$PendingCountPermissionAppsRequest;

    if-nez p4, :cond_0

    invoke-virtual {v0}, Landroid/permission/PermissionControllerManager$RemoteService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, p4

    :goto_0
    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, v0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v7}, Landroid/permission/PermissionControllerManager$PendingCountPermissionAppsRequest;-><init>(Landroid/permission/PermissionControllerManager$RemoteService;Ljava/util/List;ILandroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;Landroid/os/Handler;Landroid/permission/PermissionControllerManager$1;)V

    invoke-virtual {v0, v8}, Landroid/permission/PermissionControllerManager$RemoteService;->scheduleRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    return-void
.end method

.method public getAppPermissions(Ljava/lang/String;Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;Landroid/os/Handler;)V
    .locals 8

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Landroid/permission/PermissionControllerManager$RemoteService;

    new-instance v7, Landroid/permission/PermissionControllerManager$PendingGetAppPermissionRequest;

    if-nez p3, :cond_0

    invoke-virtual {v6}, Landroid/permission/PermissionControllerManager$RemoteService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, v6

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/permission/PermissionControllerManager$PendingGetAppPermissionRequest;-><init>(Landroid/permission/PermissionControllerManager$RemoteService;Ljava/lang/String;Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;Landroid/os/Handler;Landroid/permission/PermissionControllerManager$1;)V

    invoke-virtual {v6, v7}, Landroid/permission/PermissionControllerManager$RemoteService;->scheduleRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    return-void
.end method

.method public getPermissionUsages(ZJLjava/util/concurrent/Executor;Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;)V
    .locals 10

    invoke-static {p2, p3}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(J)J

    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Landroid/permission/PermissionControllerManager$RemoteService;

    new-instance v9, Landroid/permission/PermissionControllerManager$PendingGetPermissionUsagesRequest;

    const/4 v7, 0x0

    move-object v0, v9

    move-object v1, v8

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/permission/PermissionControllerManager$PendingGetPermissionUsagesRequest;-><init>(Landroid/permission/PermissionControllerManager$RemoteService;ZJLjava/util/concurrent/Executor;Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;Landroid/permission/PermissionControllerManager$1;)V

    invoke-virtual {v8, v9}, Landroid/permission/PermissionControllerManager$RemoteService;->scheduleRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    return-void
.end method

.method public getRuntimePermissionBackup(Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Landroid/permission/PermissionControllerManager$OnGetRuntimePermissionBackupCallback;)V
    .locals 8

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Landroid/permission/PermissionControllerManager$RemoteService;

    new-instance v7, Landroid/permission/PermissionControllerManager$PendingGetRuntimePermissionBackup;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/permission/PermissionControllerManager$PendingGetRuntimePermissionBackup;-><init>(Landroid/permission/PermissionControllerManager$RemoteService;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Landroid/permission/PermissionControllerManager$OnGetRuntimePermissionBackupCallback;Landroid/permission/PermissionControllerManager$1;)V

    invoke-virtual {v6, v7}, Landroid/permission/PermissionControllerManager$RemoteService;->scheduleRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    return-void
.end method

.method public grantOrUpgradeDefaultRuntimePermissions(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
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

    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Landroid/permission/PermissionControllerManager$RemoteService;

    new-instance v1, Landroid/permission/PermissionControllerManager$PendingGrantOrUpgradeDefaultRuntimePermissionsRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, p2, v2}, Landroid/permission/PermissionControllerManager$PendingGrantOrUpgradeDefaultRuntimePermissionsRequest;-><init>(Landroid/permission/PermissionControllerManager$RemoteService;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/permission/PermissionControllerManager$1;)V

    invoke-virtual {v0, v1}, Landroid/permission/PermissionControllerManager$RemoteService;->scheduleRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    return-void
.end method

.method public restoreDelayedRuntimePermissionBackup(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Landroid/permission/PermissionControllerManager$RemoteService;

    new-instance v8, Landroid/permission/PermissionControllerManager$PendingRestoreDelayedRuntimePermissionBackup;

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/permission/PermissionControllerManager$PendingRestoreDelayedRuntimePermissionBackup;-><init>(Landroid/permission/PermissionControllerManager$RemoteService;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/permission/PermissionControllerManager$1;)V

    invoke-virtual {v7, v8}, Landroid/permission/PermissionControllerManager$RemoteService;->scheduleRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    return-void
.end method

.method public restoreRuntimePermissionBackup([BLandroid/os/UserHandle;)V
    .locals 3

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Landroid/permission/PermissionControllerManager$RemoteService;

    new-instance v1, Landroid/permission/PermissionControllerManager$PendingRestoreRuntimePermissionBackup;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, p2, v2}, Landroid/permission/PermissionControllerManager$PendingRestoreRuntimePermissionBackup;-><init>(Landroid/permission/PermissionControllerManager$RemoteService;[BLandroid/os/UserHandle;Landroid/permission/PermissionControllerManager$1;)V

    invoke-virtual {v0, v1}, Landroid/permission/PermissionControllerManager$RemoteService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    return-void
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Landroid/permission/PermissionControllerManager$RemoteService;

    new-instance v1, Landroid/permission/PermissionControllerManager$PendingRevokeAppPermissionRequest;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroid/permission/PermissionControllerManager$PendingRevokeAppPermissionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/permission/PermissionControllerManager$1;)V

    invoke-virtual {v0, v1}, Landroid/permission/PermissionControllerManager$RemoteService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    return-void
.end method

.method public revokeRuntimePermissions(Ljava/util/Map;ZILjava/util/concurrent/Executor;Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;ZI",
            "Ljava/util/concurrent/Executor;",
            "Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const-string/jumbo v4, "permissions"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/permission/PermissionControllerManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Landroid/permission/PermissionControllerManager;->mRemoteService:Landroid/permission/PermissionControllerManager$RemoteService;

    new-instance v11, Landroid/permission/PermissionControllerManager$PendingRevokeRuntimePermissionRequest;

    iget-object v2, v0, Landroid/permission/PermissionControllerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    move-object v2, v11

    move-object v3, v1

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v2 .. v10}, Landroid/permission/PermissionControllerManager$PendingRevokeRuntimePermissionRequest;-><init>(Landroid/permission/PermissionControllerManager$RemoteService;Ljava/util/Map;ZILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;Landroid/permission/PermissionControllerManager$1;)V

    invoke-virtual {v1, v11}, Landroid/permission/PermissionControllerManager$RemoteService;->scheduleRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    return-void

    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "android.permission.REVOKE_RUNTIME_PERMISSIONS required"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setRuntimePermissionGrantStateByDeviceAdmin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    move/from16 v9, p4

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    const/4 v0, 0x1

    if-eq v9, v0, :cond_1

    const/4 v1, 0x2

    if-eq v9, v1, :cond_1

    if-nez v9, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p6 .. p6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, p0

    iget-object v11, v10, Landroid/permission/PermissionControllerManager;->mRemoteService:Landroid/permission/PermissionControllerManager$RemoteService;

    new-instance v12, Landroid/permission/PermissionControllerManager$PendingSetRuntimePermissionGrantStateByDeviceAdmin;

    const/4 v8, 0x0

    move-object v0, v12

    move-object v1, v11

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Landroid/permission/PermissionControllerManager$PendingSetRuntimePermissionGrantStateByDeviceAdmin;-><init>(Landroid/permission/PermissionControllerManager$RemoteService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/permission/PermissionControllerManager$1;)V

    invoke-virtual {v11, v12}, Landroid/permission/PermissionControllerManager$RemoteService;->scheduleRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    return-void
.end method
