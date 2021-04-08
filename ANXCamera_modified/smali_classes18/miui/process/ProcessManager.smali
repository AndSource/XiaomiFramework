.class public Lmiui/process/ProcessManager;
.super Ljava/lang/Object;
.source "ProcessManager.java"


# static fields
.field public static final AI_MAX_ADJ:I

.field public static final AI_MAX_PROCESS_STATE:I = 0xe

.field public static final ALL_ACTIVE:I = 0x3

.field public static final AUDIO_ACTIVE:I = 0x1

.field public static final DEBUG:Z = true

.field public static final DEFAULT_MAX_ADJ:I

.field public static final DEFAULT_PROCESS_STATE:I = 0x15

.field public static final FAST_RESTART_MAX_ADJ:I

.field public static final FAST_RESTART_MAX_PROCESS_STATE:I = 0x10

.field public static final FLAG_START_PROCESS_AI:I = 0x1

.field public static final FLAG_START_PROCESS_FAST_RESTART:I = 0x2

.field public static final GPS_ACTIVE:I = 0x2

.field public static final LOCKED_MAX_ADJ:I

.field public static final LOCKED_MAX_PROCESS_STATE:I = 0xe

.field public static final MAX_ADJ_BOOST_TIMEOUT:J = 0x493e0L

.field public static final MIUI_AI_MODE_STACK_ID:I = 0x7

.field public static final PROTECT_MAX_ADJ:I

.field public static final PROTECT_MAX_PROCESS_STATE:I = 0xe

.field public static final SECRETLY_SUBPROCESS_MAX_ADJ:I

.field public static final SECRETLY_SUBPROCESS_MAX_PROCESS_STATE:I = 0x10

.field public static final SERVICE_NAME:Ljava/lang/String; = "ProcessManager"

.field private static final SINGLE_COUNT:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ProcessManager"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x190

    const/4 v2, 0x4

    const/16 v3, 0x17

    if-le v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput v0, Lmiui/process/ProcessManager;->LOCKED_MAX_ADJ:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v3, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    sput v0, Lmiui/process/ProcessManager;->AI_MAX_ADJ:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    sput v1, Lmiui/process/ProcessManager;->PROTECT_MAX_ADJ:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v3, :cond_3

    const/16 v0, 0x320

    goto :goto_3

    :cond_3
    const/16 v0, 0x8

    :goto_3
    sput v0, Lmiui/process/ProcessManager;->SECRETLY_SUBPROCESS_MAX_ADJ:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v3, :cond_4

    const/16 v0, 0x352

    goto :goto_4

    :cond_4
    const/16 v0, 0x9

    :goto_4
    sput v0, Lmiui/process/ProcessManager;->FAST_RESTART_MAX_ADJ:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v3, :cond_5

    const/16 v0, 0x3e9

    goto :goto_5

    :cond_5
    const/16 v0, 0x10

    :goto_5
    sput v0, Lmiui/process/ProcessManager;->DEFAULT_MAX_ADJ:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMiuiApplicationThread(Lmiui/process/IMiuiApplicationThread;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lmiui/process/IProcessManager;->addMiuiApplicationThread(Lmiui/process/IMiuiApplicationThread;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static adjBoost(Ljava/lang/String;IJI)V
    .locals 6

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lmiui/process/IProcessManager;->adjBoost(Ljava/lang/String;IJI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static boostCameraIfNeed()V
    .locals 1

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    invoke-interface {v0}, Lmiui/process/IProcessManager;->boostCameraIfNeeded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getActiveUidInfo(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lmiui/process/ActiveUidInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/process/IProcessManager;->getActiveUidInfo(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getForegroundApplicationThread()Lmiui/process/IMiuiApplicationThread;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lmiui/process/IProcessManager;->getForegroundApplicationThread()Lmiui/process/IMiuiApplicationThread;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static getForegroundInfo()Lmiui/process/ForegroundInfo;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    invoke-interface {v1}, Lmiui/process/IProcessManager;->getForegroundInfo()Lmiui/process/ForegroundInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static getLockedApplication(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/process/IProcessManager;->getLockedApplication(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getRunningProcessInfo(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lmiui/process/RunningProcessInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lmiui/process/IProcessManager;->getRunningProcessInfo(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getRunningProcessInfoByPackageName(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lmiui/process/RunningProcessInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v0, p0, v1, v0}, Lmiui/process/ProcessManager;->getRunningProcessInfo(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getRunningProcessInfoByPid(I)Lmiui/process/RunningProcessInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1, v0}, Lmiui/process/ProcessManager;->getRunningProcessInfo(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/process/RunningProcessInfo;

    return-object v1

    :cond_0
    return-object v1
.end method

.method public static getRunningProcessInfoByProcessName(Ljava/lang/String;)Lmiui/process/RunningProcessInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {v1, v1, v0, p0, v1}, Lmiui/process/ProcessManager;->getRunningProcessInfo(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/process/RunningProcessInfo;

    return-object v0

    :cond_0
    return-object v0
.end method

.method public static getRunningProcessInfoByUid(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lmiui/process/RunningProcessInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {v1, p0, v0, v0, v1}, Lmiui/process/ProcessManager;->getRunningProcessInfo(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static isLockedApplication(Ljava/lang/String;I)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lmiui/process/IProcessManager;->isLockedApplication(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public static kill(Lmiui/process/ProcessConfig;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/process/IProcessManager;->kill(Lmiui/process/ProcessConfig;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public static protectCurrentProcess(Z)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lmiui/process/IProcessManager;->protectCurrentProcess(ZI)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public static protectCurrentProcess(ZI)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lmiui/process/IProcessManager;->protectCurrentProcess(ZI)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public static registerActivityChangeListener(Ljava/util/List;Ljava/util/List;Lmiui/process/IActivityChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lmiui/process/IActivityChangeListener;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lmiui/process/IProcessManager;->registerActivityChangeListener(Ljava/util/List;Ljava/util/List;Lmiui/process/IActivityChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static registerForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/process/IProcessManager;->registerForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static registerForegroundWindowListener(Lmiui/process/IForegroundWindowListener;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/process/IProcessManager;->registerForegroundWindowListener(Lmiui/process/IForegroundWindowListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static startPreloadProcesses(Ljava/util/List;IZII)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/process/PreloadProcessData;",
            ">;IZII)I"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "ProcessManager"

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, p1, :cond_2

    if-gtz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v1

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lmiui/process/IProcessManager;->startProcesses(Ljava/util/List;IZII)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return v0

    :cond_2
    :goto_1
    const-string v2, "illegal start number!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    :goto_2
    const-string v2, "dataList cannot be null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static startProcess(Ljava/lang/String;ZII)Z
    .locals 3

    new-instance v0, Lmiui/process/PreloadProcessData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lmiui/process/PreloadProcessData;-><init>(Ljava/lang/String;ZLandroid/content/Intent;)V

    invoke-static {v0, p1, p2, p3}, Lmiui/process/ProcessManager;->startProcess(Lmiui/process/PreloadProcessData;ZII)Z

    move-result v1

    return v1
.end method

.method public static startProcess(Lmiui/process/PreloadProcessData;II)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lmiui/process/ProcessManager;->startProcess(Lmiui/process/PreloadProcessData;ZII)Z

    move-result v0

    return v0
.end method

.method public static startProcess(Lmiui/process/PreloadProcessData;ZII)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lmiui/process/PreloadProcessData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1, v2, p1, p2, p3}, Lmiui/process/ProcessManager;->startPreloadProcesses(Ljava/util/List;IZII)I

    move-result v3

    if-ne v3, v2, :cond_1

    move v0, v2

    :cond_1
    return v0

    :cond_2
    :goto_0
    const-string v1, "ProcessManager"

    const-string v2, "preload data and packageName cannot be null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static startProcesses(Ljava/util/List;IZII)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZII)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lmiui/process/PreloadProcessData;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v0, v5}, Lmiui/process/PreloadProcessData;-><init>(Ljava/lang/String;ZLandroid/content/Intent;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    invoke-static {v1, p1, p2, p3, p4}, Lmiui/process/ProcessManager;->startPreloadProcesses(Ljava/util/List;IZII)I

    move-result v0

    return v0

    :cond_2
    return v0
.end method

.method public static unregisterActivityChanageListener(Lmiui/process/IActivityChangeListener;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/process/IProcessManager;->unregisterActivityChangeListener(Lmiui/process/IActivityChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static unregisterForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/process/IProcessManager;->unregisterForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static unregisterForegroundWindowListener(Lmiui/process/IForegroundWindowListener;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/process/IProcessManager;->unregisterForegroundWindowListener(Lmiui/process/IForegroundWindowListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static updateApplicationLockedState(Ljava/lang/String;IZ)V
    .locals 1

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lmiui/process/IProcessManager;->updateApplicationLockedState(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static updateCloudData(Lmiui/process/ProcessCloudData;)V
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/process/IProcessManager;->updateCloudData(Lmiui/process/ProcessCloudData;)V

    goto :goto_0

    :cond_0
    const-string v0, "ProcessManager"

    const-string v1, "cloudData is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static updateConfig(Lmiui/process/ProcessConfig;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lmiui/process/ProcessManagerNative;->getDefault()Lmiui/process/IProcessManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiui/process/IProcessManager;->updateConfig(Lmiui/process/ProcessConfig;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
