.class Landroid/hardware/CameraInjector$CameraOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "CameraInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/CameraInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraOrientationEventListener"
.end annotation


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mOrientation:I

    iput-object p1, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mCamera:Landroid/hardware/Camera;

    iput-object p2, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mDisplay:Landroid/view/Display;

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mOrientation:I

    invoke-static {p1, v0}, Landroid/hardware/CameraInjector;->access$300(II)I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mOrientation:I

    iget v0, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Landroid/hardware/CameraInjector;->access$400()Ljava/util/WeakHashMap;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/CameraInjector$CameraExInfo;

    invoke-static {v2}, Landroid/hardware/CameraInjector$CameraExInfo;->access$100(Landroid/hardware/CameraInjector$CameraExInfo;)Z

    move-result v2

    if-eq v2, v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mReverseFrameData change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " current client orientation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraInjector"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/hardware/CameraInjector;->access$400()Ljava/util/WeakHashMap;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/CameraInjector$CameraExInfo;

    invoke-static {v2, v1}, Landroid/hardware/CameraInjector$CameraExInfo;->access$102(Landroid/hardware/CameraInjector$CameraExInfo;Z)Z

    :cond_2
    return-void
.end method
