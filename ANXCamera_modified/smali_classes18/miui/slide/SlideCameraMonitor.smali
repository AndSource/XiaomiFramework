.class public Lmiui/slide/SlideCameraMonitor;
.super Ljava/lang/Object;
.source "SlideCameraMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/slide/SlideCameraMonitor$CameraOpenListener;,
        Lmiui/slide/SlideCameraMonitor$H;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static final VIRTUAL_CAMERA_BOUNDARY:I = 0x64

.field private static volatile sInstance:Lmiui/slide/SlideCameraMonitor;


# instance fields
.field private mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field private mBackCameraID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mCameraOpenListener:Lmiui/slide/SlideCameraMonitor$CameraOpenListener;

.field private mContext:Landroid/content/Context;

.field private mFrontCameraID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mOpeningCameraID:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SlideCameraMonitor"

    sput-object v0, Lmiui/slide/SlideCameraMonitor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/slide/SlideCameraMonitor;->mFrontCameraID:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/slide/SlideCameraMonitor;->mBackCameraID:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/slide/SlideCameraMonitor;->mOpeningCameraID:Ljava/util/Set;

    new-instance v0, Lmiui/slide/SlideCameraMonitor$1;

    invoke-direct {v0, p0}, Lmiui/slide/SlideCameraMonitor$1;-><init>(Lmiui/slide/SlideCameraMonitor;)V

    iput-object v0, p0, Lmiui/slide/SlideCameraMonitor;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmiui/slide/SlideCameraMonitor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/slide/SlideCameraMonitor;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lmiui/slide/SlideCameraMonitor;->mOpeningCameraID:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/slide/SlideCameraMonitor;)Lmiui/slide/SlideCameraMonitor$CameraOpenListener;
    .locals 1

    iget-object v0, p0, Lmiui/slide/SlideCameraMonitor;->mCameraOpenListener:Lmiui/slide/SlideCameraMonitor$CameraOpenListener;

    return-object v0
.end method

.method public static getInstance()Lmiui/slide/SlideCameraMonitor;
    .locals 2

    sget-object v0, Lmiui/slide/SlideCameraMonitor;->sInstance:Lmiui/slide/SlideCameraMonitor;

    if-nez v0, :cond_1

    const-class v0, Lmiui/slide/SlideCameraMonitor;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lmiui/slide/SlideCameraMonitor;->sInstance:Lmiui/slide/SlideCameraMonitor;

    if-nez v1, :cond_0

    new-instance v1, Lmiui/slide/SlideCameraMonitor;

    invoke-direct {v1}, Lmiui/slide/SlideCameraMonitor;-><init>()V

    sput-object v1, Lmiui/slide/SlideCameraMonitor;->sInstance:Lmiui/slide/SlideCameraMonitor;

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
    sget-object v0, Lmiui/slide/SlideCameraMonitor;->sInstance:Lmiui/slide/SlideCameraMonitor;

    return-object v0
.end method

.method private initCameraId()V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lmiui/slide/SlideCameraMonitor;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v1, v0

    if-lez v1, :cond_3

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lmiui/slide/SlideCameraMonitor;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v5, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_1

    iget-object v7, p0, Lmiui/slide/SlideCameraMonitor;->mFrontCameraID:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    iget-object v7, p0, Lmiui/slide/SlideCameraMonitor;->mBackCameraID:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v1, Lmiui/slide/SlideCameraMonitor;->TAG:Ljava/lang/String;

    const-string v2, "Can\'t initCameraId"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method


# virtual methods
.method public getBackCameraID()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/slide/SlideCameraMonitor;->mBackCameraID:Ljava/util/List;

    return-object v0
.end method

.method public getFrontCameraID()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/slide/SlideCameraMonitor;->mFrontCameraID:Ljava/util/List;

    return-object v0
.end method

.method public init(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3

    iput-object p1, p0, Lmiui/slide/SlideCameraMonitor;->mContext:Landroid/content/Context;

    new-instance v0, Lmiui/slide/SlideCameraMonitor$H;

    invoke-direct {v0, p0, p2}, Lmiui/slide/SlideCameraMonitor$H;-><init>(Lmiui/slide/SlideCameraMonitor;Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/slide/SlideCameraMonitor;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lmiui/slide/SlideCameraMonitor;->mContext:Landroid/content/Context;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lmiui/slide/SlideCameraMonitor;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v0, p0, Lmiui/slide/SlideCameraMonitor;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lmiui/slide/SlideCameraMonitor;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object v2, p0, Lmiui/slide/SlideCameraMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    invoke-direct {p0}, Lmiui/slide/SlideCameraMonitor;->initCameraId()V

    return-void
.end method

.method public isBackCameraOpening()Z
    .locals 4

    iget-object v0, p0, Lmiui/slide/SlideCameraMonitor;->mBackCameraID:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/slide/SlideCameraMonitor;->mBackCameraID:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lmiui/slide/SlideCameraMonitor;->mOpeningCameraID:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isCameraOpening()Z
    .locals 1

    invoke-virtual {p0}, Lmiui/slide/SlideCameraMonitor;->isFrontCameraOpening()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmiui/slide/SlideCameraMonitor;->isBackCameraOpening()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isCameraRecording()Z
    .locals 4

    iget-object v0, p0, Lmiui/slide/SlideCameraMonitor;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getActiveRecordingConfigurations()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    sget-object v2, Lmiui/slide/SlideCameraMonitor;->TAG:Ljava/lang/String;

    const-string v3, "recording"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isFrontCameraOpening()Z
    .locals 4

    iget-object v0, p0, Lmiui/slide/SlideCameraMonitor;->mFrontCameraID:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/slide/SlideCameraMonitor;->mFrontCameraID:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lmiui/slide/SlideCameraMonitor;->mOpeningCameraID:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setCameraOpenListener(Lmiui/slide/SlideCameraMonitor$CameraOpenListener;)V
    .locals 0

    iput-object p1, p0, Lmiui/slide/SlideCameraMonitor;->mCameraOpenListener:Lmiui/slide/SlideCameraMonitor$CameraOpenListener;

    return-void
.end method
