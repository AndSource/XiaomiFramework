.class public Lcom/android/camera/module/loader/FunctionParseNearRangeTip;
.super Ljava/lang/Object;
.source "FunctionParseNearRangeTip.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Landroid/hardware/camera2/CaptureResult;",
        "Landroid/hardware/camera2/CaptureResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "FunctionParseNearRangeTip"


# instance fields
.field private mBottomPopupTips:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;",
            ">;"
        }
    .end annotation
.end field

.field private mDualController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/protocol/ModeProtocol$DualController;",
            ">;"
        }
    .end annotation
.end field

.field private mModule:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/BaseModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "near_range_dbg"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    sput-boolean v0, Lcom/android/camera/module/loader/FunctionParseNearRangeTip;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/module/BaseModule;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/loader/FunctionParseNearRangeTip;->mModule:Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xaf

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/loader/FunctionParseNearRangeTip;->mBottomPopupTips:Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xb6

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$DualController;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/loader/FunctionParseNearRangeTip;->mDualController:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private DEBUG(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sget-boolean p0, Lcom/android/camera/module/loader/FunctionParseNearRangeTip;->DEBUG:Z

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic Hd()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/loader/FunctionParseNearRangeTip;->mBottomPopupTips:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->showNearRangeTip()V

    return-void
.end method

.method public synthetic Id()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/loader/FunctionParseNearRangeTip;->mBottomPopupTips:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->hideNearRangeTip()V

    return-void
.end method

.method public apply(Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/loader/FunctionParseNearRangeTip;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/loader/FunctionParseNearRangeTip;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/module/Camera2Module;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/camera/module/loader/FunctionParseNearRangeTip;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    const/16 v2, 0xa5

    const/16 v3, 0xa3

    const/4 v4, 0x0

    if-eq v1, v3, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0, v4}, Lcom/android/camera/module/Camera2Module;->setNearRangeModeStatus(Z)V

    return-object p1

    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->supportNearRangeMode()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, v4}, Lcom/android/camera/module/Camera2Module;->setNearRangeModeStatus(Z)V

    return-object p1

    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/camera2/CaptureResultParser;->getFallbackRoleId(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;)I

    move-result v1

    const/4 v5, 0x1

    if-eq v1, v5, :cond_3

    sget-object v1, Lcom/android/camera/module/loader/FunctionParseNearRangeTip;->TAG:Ljava/lang/String;

    const-string v2, "NearRangeMode:Not satisfied <fallback role id UW>!"

    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/loader/FunctionParseNearRangeTip;->DEBUG(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move v1, v4

    goto/16 :goto_4

    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getBogusCameraId()I

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/camera/module/loader/FunctionParseNearRangeTip;->TAG:Ljava/lang/String;

    const-string v6, "NearRangeMode:Not satisfed <back facing>!"

    invoke-direct {p0, v1, v6}, Lcom/android/camera/module/loader/FunctionParseNearRangeTip;->DEBUG(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    goto :goto_1

    :cond_4
    move v1, v5

    :goto_1
    iget-object v6, p0, Lcom/android/camera/module/loader/FunctionParseNearRangeTip;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v6}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v6

    if-eq v6, v3, :cond_5

    iget-object v3, p0, Lcom/android/camera/module/loader/FunctionParseNearRangeTip;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v3}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v3

    if-eq v3, v2, :cond_5

    sget-object v1, Lcom/android/camera/module/loader/FunctionParseNearRangeTip;->TAG:Ljava/lang/String;

    const-string v2, "NearRangeMode:Not satisfed <capture mode>!"

    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/loader/FunctionParseNearRangeTip;->DEBUG(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    :cond_5
    sget-boolean v2, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-nez v2, :cond_6

    sget-object v1, Lcom/android/camera/module/loader/FunctionParseNearRangeTip;->TAG:Ljava/lang/String;

    const-string v2, "NearRangeMode:Not satisfed <sat device>!"

    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/loader/FunctionParseNearRangeTip;->DEBUG(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    :cond_6
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isDocumentModeOn(I)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v1, Lcom/android/camera/module/loader/FunctionParseNearRangeTip;->TAG:Ljava/lang/String;

    const-string v2, "NearRangeMode:Not satisfed <document mode>!"

    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/loader/FunctionParseNearRangeTip;->DEBUG(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    :cond_7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xc2

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz v2, :cond_8

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v5

    goto :goto_2

    :cond_8
    move v2, v4

    :goto_2
    if-eqz v2, :cond_9

    sget-object v1, Lcom/android/camera/module/loader/FunctionParseNearRangeTip;->TAG:Ljava/lang/String;

    const-string v2, "NearRangeMode:Not satisfed <beauty panel>!"

    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/loader/FunctionParseNearRangeTip;->DEBUG(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    :cond_9
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xb4

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;

    if-eqz v2, :cond_a

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;->isSeekBarVisible()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_3

    :cond_a
    move v5, v4

    :goto_3
    if-eqz v5, :cond_b

    sget-object v1, Lcom/android/camera/module/loader/FunctionParseNearRangeTip;->TAG:Ljava/lang/String;

    const-string v2, "NearRangeMode:Not satisfed <seek bar>!"

    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/loader/FunctionParseNearRangeTip;->DEBUG(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    :goto_4
    if-eqz v1, :cond_c

    iget-object v2, p0, Lcom/android/camera/module/loader/FunctionParseNearRangeTip;->mBottomPopupTips:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/camera/module/loader/FunctionParseNearRangeTip;->mBottomPopupTips:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->isNearRangeTipShowing()Z

    move-result v2

    if-nez v2, :cond_d

    sget-object v2, Lcom/android/camera/module/loader/FunctionParseNearRangeTip;->TAG:Ljava/lang/String;

    const-string v3, "NearRangeMode:Enter near range mode"

    invoke-direct {p0, v2, v3}, Lcom/android/camera/module/loader/FunctionParseNearRangeTip;->DEBUG(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/camera/module/loader/a;

    invoke-direct {v3, p0}, Lcom/android/camera/module/loader/a;-><init>(Lcom/android/camera/module/loader/FunctionParseNearRangeTip;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    :cond_c
    iget-object v2, p0, Lcom/android/camera/module/loader/FunctionParseNearRangeTip;->mBottomPopupTips:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/camera/module/loader/FunctionParseNearRangeTip;->mBottomPopupTips:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->isNearRangeTipShowing()Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v2, Lcom/android/camera/module/loader/FunctionParseNearRangeTip;->TAG:Ljava/lang/String;

    const-string v3, "NearRangeMode: hide near range mode tip"

    invoke-direct {p0, v2, v3}, Lcom/android/camera/module/loader/FunctionParseNearRangeTip;->DEBUG(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/camera/module/loader/b;

    invoke-direct {v3, p0}, Lcom/android/camera/module/loader/b;-><init>(Lcom/android/camera/module/loader/FunctionParseNearRangeTip;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0, v4}, Lcom/android/camera/module/Camera2Module;->updateNearRangeMode(Z)V

    :cond_d
    :goto_5
    invoke-virtual {v0, v1}, Lcom/android/camera/module/Camera2Module;->setNearRangeModeStatus(Z)V

    :cond_e
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/FunctionParseNearRangeTip;->apply(Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;

    move-result-object p0

    return-object p0
.end method
