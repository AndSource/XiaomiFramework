.class public final Landroid/util/StatsLog;
.super Landroid/util/StatsLogInternal;
.source "StatsLog.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "StatsLog"

.field private static sLogLock:Ljava/lang/Object;

.field private static sService:Landroid/os/IStatsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/StatsLog;->sLogLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/util/StatsLogInternal;-><init>()V

    return-void
.end method

.method private static enforceDumpCallingPermission(Landroid/content/Context;)V
    .locals 2

    const-string v0, "android.permission.DUMP"

    const-string v1, "Need DUMP permission."

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static enforcesageStatsCallingPermission(Landroid/content/Context;)V
    .locals 2

    const-string v0, "android.permission.PACKAGE_USAGE_STATS"

    const-string v1, "Need PACKAGE_USAGE_STATS permission."

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static getIStatsManagerLocked()Landroid/os/IStatsManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/util/StatsLog;->sService:Landroid/os/IStatsManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "stats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStatsManager;

    move-result-object v0

    sput-object v0, Landroid/util/StatsLog;->sService:Landroid/os/IStatsManager;

    sget-object v0, Landroid/util/StatsLog;->sService:Landroid/os/IStatsManager;

    return-object v0
.end method

.method public static logBinaryPushStateChanged(Ljava/lang/String;JII[J)Z
    .locals 10

    sget-object v0, Landroid/util/StatsLog;->sLogLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/util/StatsLog;->getIStatsManagerLocked()Landroid/os/IStatsManager;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    :cond_0
    move-object v3, v2

    move-object v4, p0

    move-wide v5, p1

    move v7, p3

    move v8, p4

    move-object v9, p5

    :try_start_2
    invoke-interface/range {v3 .. v9}, Landroid/os/IStatsManager;->sendBinaryPushStateChangedAtom(Ljava/lang/String;JII[J)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x1

    :try_start_3
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    sput-object v3, Landroid/util/StatsLog;->sService:Landroid/os/IStatsManager;

    monitor-exit v0

    return v1

    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static logEvent(I)Z
    .locals 4

    sget-object v0, Landroid/util/StatsLog;->sLogLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/util/StatsLog;->getIStatsManagerLocked()Landroid/os/IStatsManager;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    :cond_0
    const/4 v3, 0x1

    :try_start_2
    invoke-interface {v2, p0, v3}, Landroid/os/IStatsManager;->sendAppBreadcrumbAtom(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    sput-object v3, Landroid/util/StatsLog;->sService:Landroid/os/IStatsManager;

    monitor-exit v0

    return v1

    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static logStart(I)Z
    .locals 4

    sget-object v0, Landroid/util/StatsLog;->sLogLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/util/StatsLog;->getIStatsManagerLocked()Landroid/os/IStatsManager;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    :cond_0
    const/4 v3, 0x3

    :try_start_2
    invoke-interface {v2, p0, v3}, Landroid/os/IStatsManager;->sendAppBreadcrumbAtom(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x1

    :try_start_3
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    sput-object v3, Landroid/util/StatsLog;->sService:Landroid/os/IStatsManager;

    monitor-exit v0

    return v1

    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static logStop(I)Z
    .locals 4

    sget-object v0, Landroid/util/StatsLog;->sLogLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/util/StatsLog;->getIStatsManagerLocked()Landroid/os/IStatsManager;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    :cond_0
    const/4 v3, 0x2

    :try_start_2
    invoke-interface {v2, p0, v3}, Landroid/os/IStatsManager;->sendAppBreadcrumbAtom(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x1

    :try_start_3
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    sput-object v3, Landroid/util/StatsLog;->sService:Landroid/os/IStatsManager;

    monitor-exit v0

    return v1

    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static logWatchdogRollbackOccurred(ILjava/lang/String;JILjava/lang/String;)Z
    .locals 10

    sget-object v0, Landroid/util/StatsLog;->sLogLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/util/StatsLog;->getIStatsManagerLocked()Landroid/os/IStatsManager;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    :cond_0
    move-object v3, v2

    move v4, p0

    move-object v5, p1

    move-wide v6, p2

    move v8, p4

    move-object v9, p5

    :try_start_2
    invoke-interface/range {v3 .. v9}, Landroid/os/IStatsManager;->sendWatchdogRollbackOccurredAtom(ILjava/lang/String;JILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x1

    :try_start_3
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    sput-object v3, Landroid/util/StatsLog;->sService:Landroid/os/IStatsManager;

    monitor-exit v0

    return v1

    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static varargs write(I[Ljava/lang/Object;)V
    .locals 14

    const/16 v0, 0x79

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq p0, v0, :cond_1

    const/16 v0, 0xaa

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    aget-object v0, p1, v5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v0, p1, v4

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    aget-object v0, p1, v3

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move v6, p0

    invoke-static/range {v6 .. v13}, Landroid/util/StatsLog;->write(IJILjava/lang/String;Ljava/lang/String;ZI)I

    goto :goto_0

    :cond_1
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v0, p1, v5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v0, p1, v3

    move-object v10, v0

    check-cast v10, [B

    aget-object v0, p1, v2

    move-object v11, v0

    check-cast v11, [B

    aget-object v0, p1, v1

    move-object v12, v0

    check-cast v12, [B

    move v6, p0

    invoke-static/range {v6 .. v12}, Landroid/util/StatsLog;->write(IIII[B[B[B)I

    :goto_0
    return-void
.end method

.method public static native writeRaw([BI)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method
