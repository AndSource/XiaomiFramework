.class public Lcom/android/camera/module/MultiCameraModule;
.super Lcom/android/camera/module/VideoModule;
.source "MultiCameraModule.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiCameraModule"


# instance fields
.field protected mFrontCamera2Device:Lcom/android/camera2/Camera2Proxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;-><init>()V

    return-void
.end method

.method static synthetic b(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method private initDualVideoControler()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mDualVideoControler:Lcom/android/camera/doublevideo/DualVideoControler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/doublevideo/DualVideoControler;

    invoke-direct {v0}, Lcom/android/camera/doublevideo/DualVideoControler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mDualVideoControler:Lcom/android/camera/doublevideo/DualVideoControler;

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1af

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ModuleContent;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ModuleContent;->getParent()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    new-instance v2, Lcom/android/camera/module/M;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/module/M;-><init>(Lcom/android/camera/module/MultiCameraModule;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/view/ViewGroup;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mDualVideoControler:Lcom/android/camera/doublevideo/DualVideoControler;

    invoke-virtual {p0, p1}, Lcom/android/camera/doublevideo/DualVideoControler;->addModuleView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onCameraPickerClicked()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mDualVideoControler:Lcom/android/camera/doublevideo/DualVideoControler;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/doublevideo/DualVideoControler;->switchTopBottom()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(II)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCookieStore()Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;->getCookies()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enumerating: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MultiCameraModule"

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v2

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2RoleContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2RoleContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/loader/camera2/Camera2RoleContainer;->getFrontCameraId()I

    move-result v4

    if-ne v2, v4, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCameraDevice: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iput-object v1, p0, Lcom/android/camera/module/MultiCameraModule;->mFrontCamera2Device:Lcom/android/camera2/Camera2Proxy;

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/VideoModule;->onCreate(II)V

    return-void
.end method

.method public onFocusStateChanged(Lcom/android/camera/module/loader/camera2/FocusTask;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/module/VideoBase;->onFocusStateChanged(Lcom/android/camera/module/loader/camera2/FocusTask;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1af

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ModuleContent;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ModuleContent;->getParent()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    new-instance v2, Lcom/android/camera/module/L;

    invoke-direct {v2, v0}, Lcom/android/camera/module/L;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mDualVideoControler:Lcom/android/camera/doublevideo/DualVideoControler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/doublevideo/DualVideoControler;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mDualVideoControler:Lcom/android/camera/doublevideo/DualVideoControler;

    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->onPause()V

    return-void
.end method

.method public onPreviewSessionSuccess(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/MultiCameraModule;->mFrontCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->resumePreview()I

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/module/VideoModule;->onPreviewSessionSuccess(Landroid/hardware/camera2/CameraCaptureSession;)V

    :goto_0
    return-void
.end method

.method public onSingleTapUp(IIZ)V
    .locals 1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p3

    const/16 v0, 0xab

    invoke-virtual {p3, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p3

    check-cast p3, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    if-eqz p3, :cond_1

    invoke-interface {p3, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromTapDown(II)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setFocusViewType(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSurfaceTexturePending(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/VideoModule;->mDualVideoControler:Lcom/android/camera/doublevideo/DualVideoControler;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/doublevideo/DualVideoControler;->onSurfaceTextureUpdated(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public resumePreview()V
    .locals 2

    const-string v0, "MultiCameraModule"

    const-string v1, "resumePreview: wq"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->resumePreview()V

    iget-object p0, p0, Lcom/android/camera/module/MultiCameraModule;->mFrontCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->resumePreview()I

    return-void
.end method

.method protected startPreviewSession()V
    .locals 8

    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->startPreviewSession()V

    invoke-direct {p0}, Lcom/android/camera/module/MultiCameraModule;->initDualVideoControler()V

    iget-object v0, p0, Lcom/android/camera/module/MultiCameraModule;->mFrontCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mDualVideoControler:Lcom/android/camera/doublevideo/DualVideoControler;

    invoke-virtual {v1}, Lcom/android/camera/doublevideo/DualVideoControler;->createSubCameraSurfaceIfNeed()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getOperatingMode()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera2/Camera2Proxy;->startPreviewSession(Landroid/view/Surface;ZZZIZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    return-void
.end method

.method protected startVideoRecording()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mDualVideoControler:Lcom/android/camera/doublevideo/DualVideoControler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/doublevideo/DualVideoControler;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mDualVideoControler:Lcom/android/camera/doublevideo/DualVideoControler;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->getEGLContext14()Landroid/opengl/EGLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mRecorderSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/doublevideo/DualVideoControler;->startRecording(Landroid/opengl/EGLContext;Landroid/view/Surface;)V

    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->startVideoRecording()V

    return-void
.end method

.method public stopVideoRecording(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mDualVideoControler:Lcom/android/camera/doublevideo/DualVideoControler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/doublevideo/DualVideoControler;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mDualVideoControler:Lcom/android/camera/doublevideo/DualVideoControler;

    invoke-virtual {v0}, Lcom/android/camera/doublevideo/DualVideoControler;->stopRecording()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/VideoModule;->stopVideoRecording(ZZ)V

    return-void
.end method

.method protected updateModuleRelated()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->updateModuleRelated()V

    iget-object v0, p0, Lcom/android/camera/module/MultiCameraModule;->mFrontCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iget p0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/camera2/Camera2Proxy;->setModuleParameter(II)V

    return-void
.end method
