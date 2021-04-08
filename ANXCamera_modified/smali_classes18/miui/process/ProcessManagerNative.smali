.class public abstract Lmiui/process/ProcessManagerNative;
.super Landroid/os/Binder;
.source "ProcessManagerNative.java"

# interfaces
.implements Lmiui/process/IProcessManager;


# static fields
.field private static volatile pm:Lmiui/process/IProcessManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lmiui/process/ProcessManagerNative;->pm:Lmiui/process/IProcessManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "miui.IProcessManager"

    invoke-virtual {p0, p0, v0}, Lmiui/process/ProcessManagerNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/process/IProcessManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "miui.IProcessManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lmiui/process/IProcessManager;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v1, Lmiui/process/ProcessManagerProxy;

    invoke-direct {v1, p0}, Lmiui/process/ProcessManagerProxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefault()Lmiui/process/IProcessManager;
    .locals 3

    sget-object v0, Lmiui/process/ProcessManagerNative;->pm:Lmiui/process/IProcessManager;

    if-nez v0, :cond_1

    const-class v0, Lmiui/process/ProcessManagerNative;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lmiui/process/ProcessManagerNative;->pm:Lmiui/process/IProcessManager;

    if-nez v1, :cond_0

    const-string v1, "ProcessManager"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lmiui/process/ProcessManagerNative;->asInterface(Landroid/os/IBinder;)Lmiui/process/IProcessManager;

    move-result-object v2

    sput-object v2, Lmiui/process/ProcessManagerNative;->pm:Lmiui/process/IProcessManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lmiui/process/ProcessManagerNative;->pm:Lmiui/process/IProcessManager;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "miui.IProcessManager"

    const/4 v9, 0x1

    packed-switch p1, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    nop

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/process/IForegroundWindowListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/process/IForegroundWindowListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/process/ProcessManagerNative;->unregisterForegroundWindowListener(Lmiui/process/IForegroundWindowListener;)V

    return v9

    :pswitch_1
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    nop

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/process/IForegroundWindowListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/process/IForegroundWindowListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/process/ProcessManagerNative;->registerForegroundWindowListener(Lmiui/process/IForegroundWindowListener;)V

    return v9

    :pswitch_2
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/process/ProcessManagerNative;->getActiveUidInfo(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v9

    :pswitch_3
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    move-object v0, p0

    move-object v1, v10

    move v2, v11

    move-wide v3, v12

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Lmiui/process/ProcessManagerNative;->adjBoost(Ljava/lang/String;IJI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_4
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/process/ProcessManagerNative;->boostCameraIfNeeded()V

    return v9

    :pswitch_5
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    nop

    move-object v0, p0

    move v1, v10

    move v2, v11

    move-object v3, v12

    move-object v4, v13

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Lmiui/process/ProcessManagerNative;->getRunningProcessInfo(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v9

    :pswitch_6
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    nop

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/process/IActivityChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/process/IActivityChangeListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/process/ProcessManagerNative;->unregisterActivityChangeListener(Lmiui/process/IActivityChangeListener;)V

    return v9

    :pswitch_7
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    nop

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lmiui/process/IActivityChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/process/IActivityChangeListener;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lmiui/process/ProcessManagerNative;->registerActivityChangeListener(Ljava/util/List;Ljava/util/List;Lmiui/process/IActivityChangeListener;)V

    return v9

    :pswitch_8
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/process/ProcessManagerNative;->getForegroundApplicationThread()Lmiui/process/IMiuiApplicationThread;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lmiui/process/IMiuiApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v9

    :pswitch_9
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v1, :cond_1

    invoke-static {v1}, Lmiui/process/IMiuiApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/process/IMiuiApplicationThread;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v0, v2}, Lmiui/process/ProcessManagerNative;->addMiuiApplicationThread(Lmiui/process/IMiuiApplicationThread;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_a
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/process/ProcessManagerNative;->getForegroundInfo()Lmiui/process/ForegroundInfo;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v0, v8, v1}, Lmiui/process/ForegroundInfo;->writeToParcel(Landroid/os/Parcel;I)V

    return v9

    :pswitch_b
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    nop

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/process/IForegroundInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/process/IForegroundInfoListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/process/ProcessManagerNative;->unregisterForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V

    return v9

    :pswitch_c
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    nop

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/process/IForegroundInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/process/IForegroundInfoListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/process/ProcessManagerNative;->registerForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V

    return v9

    :pswitch_d
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiui/process/ProcessManagerNative;->isLockedApplication(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_e
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Lmiui/process/ProcessCloudData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/process/ProcessCloudData;

    invoke-virtual {p0, v0}, Lmiui/process/ProcessManagerNative;->updateCloudData(Lmiui/process/ProcessCloudData;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_f
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v9

    :cond_2
    move v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiui/process/ProcessManagerNative;->protectCurrentProcess(ZI)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_10
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    const-class v0, Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v9, :cond_3

    move v3, v9

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object v0, p0

    move-object v1, v10

    move v2, v11

    move v4, v12

    move v5, v13

    invoke-virtual/range {v0 .. v5}, Lmiui/process/ProcessManagerNative;->startProcesses(Ljava/util/List;IZII)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_11
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Lmiui/process/ProcessConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/process/ProcessConfig;

    invoke-virtual {p0, v0}, Lmiui/process/ProcessManagerNative;->updateConfig(Lmiui/process/ProcessConfig;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_12
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/process/ProcessManagerNative;->getLockedApplication(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    :cond_4
    const/4 v2, -0x1

    :goto_1
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_5

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return v9

    :pswitch_13
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    move v1, v9

    :cond_6
    invoke-virtual {p0, v0, v2, v1}, Lmiui/process/ProcessManagerNative;->updateApplicationLockedState(Ljava/lang/String;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_14
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Lmiui/process/ProcessConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/process/ProcessConfig;

    invoke-virtual {p0, v0}, Lmiui/process/ProcessManagerNative;->kill(Lmiui/process/ProcessConfig;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
