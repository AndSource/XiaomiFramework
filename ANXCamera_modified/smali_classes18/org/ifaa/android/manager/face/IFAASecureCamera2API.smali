.class public Lorg/ifaa/android/manager/face/IFAASecureCamera2API;
.super Ljava/lang/Object;
.source "IFAASecureCamera2API.java"


# static fields
.field private static final SESSION_REGULAR:I = 0x0

.field private static final SESSION_SECCAM:I = 0x80f6

.field private static final TAG:Ljava/lang/String; = "IFAASecureCamera2API"

.field private static is_2dfa:Z

.field private static mContext:Landroid/content/Context;


# instance fields
.field private final DEFAULT_REGION_WEIGHT:I

.field private backgroundHandler_:Landroid/os/Handler;

.field private backgroundThread_:Landroid/os/HandlerThread;

.field protected cameraDevice_:Landroid/hardware/camera2/CameraDevice;

.field private cameraId_:Ljava/lang/Integer;

.field protected cameraOpenCloseSemaphore_:Ljava/util/concurrent/Semaphore;

.field protected cameraStartedLatch_:Ljava/util/concurrent/CountDownLatch;

.field protected cameraStarted_:Z

.field protected cameraStopedLatch_:Ljava/util/concurrent/CountDownLatch;

.field protected captureBuilder_:Landroid/hardware/camera2/CaptureRequest$Builder;

.field protected captureCallback_:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field protected captureSessionClosedLatch_:Ljava/util/concurrent/CountDownLatch;

.field protected captureSession_:Landroid/hardware/camera2/CameraCaptureSession;

.field private format_:Ljava/lang/Integer;

.field private height_:Ljava/lang/Integer;

.field private ifaafacemgrimpl_:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

.field protected final mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private numOfBuffers_:Ljava/lang/Integer;

.field private previewRotation_:Ljava/lang/Integer;

.field private previewSurfaceNumOfBuffers_:Ljava/lang/Integer;

.field private previewSurfaceView_:Landroid/view/SurfaceView;

.field protected secureCamera2Surface_:Lcom/android/qualcomm/qti/seccamapi/SecureCamera2Surface;

.field protected surfaceReadyLatch_:Ljava/util/concurrent/CountDownLatch;

.field private width_:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->is_2dfa:Z

    const/4 v0, 0x0

    sput-object v0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->previewSurfaceView_:Landroid/view/SurfaceView;

    iput-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->ifaafacemgrimpl_:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    iput-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraDevice_:Landroid/hardware/camera2/CameraDevice;

    iput-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureSession_:Landroid/hardware/camera2/CameraCaptureSession;

    iput-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureBuilder_:Landroid/hardware/camera2/CaptureRequest$Builder;

    iput-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureCallback_:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->surfaceReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraStartedLatch_:Ljava/util/concurrent/CountDownLatch;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraStopedLatch_:Ljava/util/concurrent/CountDownLatch;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureSessionClosedLatch_:Ljava/util/concurrent/CountDownLatch;

    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraOpenCloseSemaphore_:Ljava/util/concurrent/Semaphore;

    iput-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->secureCamera2Surface_:Lcom/android/qualcomm/qti/seccamapi/SecureCamera2Surface;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraStarted_:Z

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->numOfBuffers_:Ljava/lang/Integer;

    const/16 v1, 0x500

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->width_:Ljava/lang/Integer;

    const/16 v1, 0x2d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->height_:Ljava/lang/Integer;

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->format_:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->previewRotation_:Ljava/lang/Integer;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->previewSurfaceNumOfBuffers_:Ljava/lang/Integer;

    const/16 v0, 0x1e

    iput v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->DEFAULT_REGION_WEIGHT:I

    new-instance v0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$1;

    invoke-direct {v0, p0}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$1;-><init>(Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)V

    iput-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    sput-object p1, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->ifaafacemgrimpl_:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    return-void
.end method

.method static synthetic access$000(Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method protected createCameraSessionCommon()V
    .locals 9

    const-string v0, "IFAASecureCamera2API"

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->secureCamera2Surface_:Lcom/android/qualcomm/qti/seccamapi/SecureCamera2Surface;

    new-instance v1, Lcom/android/qualcomm/qti/seccamapi/SecureCamera2Surface;

    iget-object v2, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v2, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->width_:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->height_:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v2, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->format_:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v2, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->numOfBuffers_:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/qualcomm/qti/seccamapi/SecureCamera2Surface;-><init>(IIIII)V

    iput-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->secureCamera2Surface_:Lcom/android/qualcomm/qti/seccamapi/SecureCamera2Surface;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createCameraSessionCommon - numOfBuffers_ = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->numOfBuffers_:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->secureCamera2Surface_:Lcom/android/qualcomm/qti/seccamapi/SecureCamera2Surface;

    iget-object v2, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->ifaafacemgrimpl_:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    iget-object v3, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->ifaafacemgrimpl_:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    iget v3, v3, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->frameCallbackReturnParamsSize_:I

    invoke-virtual {v1, v2, v3}, Lcom/android/qualcomm/qti/seccamapi/SecureCamera2Surface;->enableFrameCallback(Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameCallback;I)Z

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->secureCamera2Surface_:Lcom/android/qualcomm/qti/seccamapi/SecureCamera2Surface;

    invoke-virtual {v1}, Lcom/android/qualcomm/qti/seccamapi/SecureCamera2Surface;->getCaptureSurface()Landroid/view/Surface;

    move-result-object v1

    iget-object v2, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraDevice_:Landroid/hardware/camera2/CameraDevice;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    iput-object v2, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureBuilder_:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureBuilder_:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v3, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraDevice_:Landroid/hardware/camera2/CameraDevice;

    const/4 v4, 0x0

    const v6, 0x80f6

    new-instance v7, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;

    invoke-direct {v7, p0}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API$2;-><init>(Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)V

    const/4 v8, 0x0

    move-object v5, v2

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/camera2/CameraDevice;->createCustomCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;ILandroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecureCamera2API::createCameraSession ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected getActivityArray()Landroid/graphics/Rect;
    .locals 8

    const-string v0, "IFAASecureCamera2API"

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->mContext:Landroid/content/Context;

    const-string v3, "camera"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    iget-object v3, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    if-eqz v4, :cond_0

    move-object v5, v4

    goto :goto_0

    :cond_0
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    return-object v5

    :cond_2
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Face AE: error active array size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActivityArray - Camera - ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method protected getBackgroundHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->backgroundHandler_:Landroid/os/Handler;

    return-object v0
.end method

.method public getCameraRotation(I)I
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->mContext:Landroid/content/Context;

    const-string v2, "camera"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    rem-int/lit16 v3, v2, 0x168
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_2

    const/16 v4, 0xb4

    if-eq v3, v4, :cond_1

    const/16 v4, 0x10e

    if-eq v3, v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    nop

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecureCamera2API::getCameraRotation - ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IFAASecureCamera2API"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0
.end method

.method protected isSupportAERegion()Ljava/lang/Boolean;
    .locals 6

    const-string v0, "IFAASecureCamera2API"

    :try_start_0
    sget-object v1, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->mContext:Landroid/content/Context;

    const-string v2, "camera"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-gtz v4, :cond_1

    const-string v5, "Face AE: don\'t have AE region capability."

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportAERegion - Camera - ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public rectFromTEECallback(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v0, v1, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureSession_:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->isSupportAERegion()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v4, :cond_6

    iget v0, v2, Landroid/graphics/Point;->x:I

    if-nez v0, :cond_0

    iget v0, v2, Landroid/graphics/Point;->y:I

    if-nez v0, :cond_0

    iget v0, v3, Landroid/graphics/Point;->x:I

    if-nez v0, :cond_0

    iget v0, v3, Landroid/graphics/Point;->y:I

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->getActivityArray()Landroid/graphics/Rect;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Face AE: getting rect topLeft:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", rightBottom:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "IFAASecureCamera2API"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Face AE: arraySize:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "x"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit16 v6, v6, 0x280

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int/lit16 v9, v9, 0x1e0

    int-to-float v9, v9

    iget v10, v3, Landroid/graphics/Point;->y:I

    iget v11, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v9

    float-to-int v0, v10

    iget v10, v3, Landroid/graphics/Point;->x:I

    iget v11, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v6

    float-to-int v5, v10

    iget v10, v2, Landroid/graphics/Point;->x:I

    iput v10, v2, Landroid/graphics/Point;->y:I

    iget v10, v3, Landroid/graphics/Point;->y:I

    rsub-int v10, v10, 0x280

    iput v10, v2, Landroid/graphics/Point;->x:I

    iget v10, v2, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    mul-float/2addr v10, v9

    float-to-int v10, v10

    iput v10, v2, Landroid/graphics/Point;->x:I

    iget v10, v2, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    mul-float/2addr v10, v6

    float-to-int v10, v10

    iput v10, v2, Landroid/graphics/Point;->y:I

    iget v10, v2, Landroid/graphics/Point;->x:I

    const/4 v11, 0x0

    if-gez v10, :cond_2

    iput v11, v2, Landroid/graphics/Point;->x:I

    :cond_2
    iget v10, v2, Landroid/graphics/Point;->y:I

    if-gez v10, :cond_3

    iput v11, v2, Landroid/graphics/Point;->y:I

    :cond_3
    iget v10, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v10, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    if-le v10, v12, :cond_4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget v12, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v10, v12

    add-int/lit8 v0, v10, -0x1

    move v10, v0

    goto :goto_0

    :cond_4
    move v10, v0

    :goto_0
    iget v0, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v12

    sub-int/2addr v12, v13

    if-le v0, v12, :cond_5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v12, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v12

    add-int/lit8 v5, v0, -0x1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Face AE: metering region topLeft="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " widthxheight="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v13, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v8, Landroid/hardware/camera2/params/MeteringRectangle;

    iget v15, v2, Landroid/graphics/Point;->x:I

    iget v12, v2, Landroid/graphics/Point;->y:I

    const/16 v19, 0x1e

    move-object v14, v8

    move/from16 v16, v12

    move/from16 v17, v10

    move/from16 v18, v5

    invoke-direct/range {v14 .. v19}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    aput-object v8, v0, v11

    move-object v8, v0

    iget-object v0, v1, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureBuilder_:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v11, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, v1, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureSession_:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v11, v1, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureBuilder_:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v11

    iget-object v12, v1, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureCallback_:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual/range {p0 .. p0}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v13

    invoke-virtual {v0, v11, v12, v13}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SecureCamera2API::CameraCaptureSession.StateCallback:onConfigured - Camera #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " - setRepeatingRequest for face AE failed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_6
    :goto_2
    return-void
.end method

.method public start(ILandroid/view/SurfaceView;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 8

    iput-object p2, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->previewSurfaceView_:Landroid/view/SurfaceView;

    iput-object p7, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->previewSurfaceNumOfBuffers_:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecureCamera2API::start - previewSurfaceView_ = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->previewSurfaceView_:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IFAASecureCamera2API"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v2, p0

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v2 .. v7}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->start(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public start(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecureCamera2API::start+++ - Camera #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IFAASecureCamera2API"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;

    iput-object p2, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->width_:Ljava/lang/Integer;

    iput-object p3, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->height_:Ljava/lang/Integer;

    iput-object p4, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->format_:Ljava/lang/Integer;

    iput-object p5, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->numOfBuffers_:Ljava/lang/Integer;

    invoke-virtual {p0}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->startBackgroundThread()V

    :try_start_0
    sget-object v2, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->mContext:Landroid/content/Context;

    const-string v3, "camera"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v3, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraOpenCloseSemaphore_:Ljava/util/concurrent/Semaphore;

    const-wide/16 v4, 0x9c4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SecureCamera2API::start ERROR: Camera Lock TimeOut"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v3, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraStartedLatch_:Ljava/util/concurrent/CountDownLatch;

    iget-object v3, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    invoke-virtual {p0}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v2, v3, v5, v6}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    iget-object v3, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraStartedLatch_:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v5, 0x1388

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v5, v6, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "SecureCamera2API::start - ERROR: Camera Open TimeOut"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraDevice_:Landroid/hardware/camera2/CameraDevice;

    if-nez v3, :cond_2

    const-string v3, "SecureCamera2API::start FAILED"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v3, "SecureCamera2API::start OK"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->getInstance()Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    move-result-object v3

    const/16 v5, 0x7d3

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->dispatchVendorCommand(ILandroid/os/Bundle;)V

    iput-boolean v4, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraStarted_:Z

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    :goto_0
    :try_start_2
    iget-object v3, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraOpenCloseSemaphore_:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_3
    const-string v4, "SecureCamera2API::start ERROR: Interrupted while trying to lock camera for opening - "

    invoke-static {v1, v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    throw v4

    :catch_1
    move-exception v3

    const-string v4, "SecureCamera2API::start ERROR: Not accesible"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    iget-object v4, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraOpenCloseSemaphore_:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    throw v3
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecureCamera2API::start Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_3
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecureCamera2API::start ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    nop

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecureCamera2API::start--- - Camera #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " - Done"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method protected startBackgroundThread()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->backgroundThread_:Landroid/os/HandlerThread;

    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->backgroundThread_:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->backgroundThread_:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->backgroundHandler_:Landroid/os/Handler;

    return-void
.end method

.method public stop()Ljava/lang/Boolean;
    .locals 9

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecureCamera2API::stop+++ - Camera #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IFAASecureCamera2API"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->getInstance()Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    move-result-object v1

    const/4 v3, 0x0

    const/16 v4, 0x7d4

    invoke-virtual {v1, v4, v3}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->dispatchVendorCommand(ILandroid/os/Bundle;)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v4, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraOpenCloseSemaphore_:Ljava/util/concurrent/Semaphore;

    const-wide/16 v5, 0x9c4

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "stop Camera - ERROR: Camera Lock TimeOut"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureSession_:Landroid/hardware/camera2/CameraCaptureSession;

    const-wide/16 v5, 0x7d0

    const/4 v7, 0x1

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SecureCamera2APIPreview::stop - Camera #"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": Close Capture Session"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v4, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v4, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureSessionClosedLatch_:Ljava/util/concurrent/CountDownLatch;

    iget-object v4, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureSession_:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v4}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    iget-object v4, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureSessionClosedLatch_:Ljava/util/concurrent/CountDownLatch;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v8}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "stop Camera - ERROR: Close Capture Session TimeOut"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object v3, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->captureSession_:Landroid/hardware/camera2/CameraCaptureSession;

    :cond_2
    iget-object v4, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraDevice_:Landroid/hardware/camera2/CameraDevice;

    if-eqz v4, :cond_4

    const-string v4, "SecureCamera2API::stop - Camera : Close Camera"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v4, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v4, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraStopedLatch_:Ljava/util/concurrent/CountDownLatch;

    iget-object v4, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraDevice_:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v4}, Landroid/hardware/camera2/CameraDevice;->close()V

    iget-object v4, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraStopedLatch_:Ljava/util/concurrent/CountDownLatch;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "SecureCamera2API::stop - Camera - ERROR: Close Camera TimeOut"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-object v3, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraDevice_:Landroid/hardware/camera2/CameraDevice;

    :cond_4
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_1
    const-string v5, "SecureCamera2API::stop - ERROR: Interrupted while trying to lock camera closing."

    invoke-static {v2, v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :goto_0
    iput-boolean v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraStarted_:Z

    invoke-virtual {p0}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->stopBackgroundThread()V

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraOpenCloseSemaphore_:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    nop

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->secureCamera2Surface_:Lcom/android/qualcomm/qti/seccamapi/SecureCamera2Surface;

    if-eqz v1, :cond_5

    const-string v1, "SecureCamera2API::stop - Camera Release Secure Camera Surface"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->secureCamera2Surface_:Lcom/android/qualcomm/qti/seccamapi/SecureCamera2Surface;

    invoke-virtual {v1}, Lcom/android/qualcomm/qti/seccamapi/SecureCamera2Surface;->release()Z

    iput-object v3, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->secureCamera2Surface_:Lcom/android/qualcomm/qti/seccamapi/SecureCamera2Surface;

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecureCamera2API::stop--- - Camera #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraId_:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": Done"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :goto_1
    iput-boolean v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraStarted_:Z

    invoke-virtual {p0}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->stopBackgroundThread()V

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->cameraOpenCloseSemaphore_:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    throw v2
.end method

.method protected stopBackgroundThread()V
    .locals 3

    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->backgroundThread_:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :try_start_0
    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->backgroundThread_:Landroid/os/HandlerThread;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/os/HandlerThread;->join(J)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->backgroundThread_:Landroid/os/HandlerThread;

    iput-object v0, p0, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->backgroundHandler_:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
