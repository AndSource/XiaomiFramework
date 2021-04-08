.class public Lcom/android/camera/fragment/FragmentFilter$EffectRealtimeRender;
.super Ljava/lang/Object;
.source "FragmentFilter.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/FragmentFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EffectRealtimeRender"
.end annotation


# instance fields
.field private filterData:Lcom/android/camera/data/data/ComponentDataItem;

.field private height:I

.field private mContext:Landroid/content/Context;

.field private mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

.field mTransform:[F

.field final synthetic this$0:Lcom/android/camera/fragment/FragmentFilter;

.field private viewPosition:I

.field private width:I


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/FragmentFilter;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentFilter$EffectRealtimeRender;->this$0:Lcom/android/camera/fragment/FragmentFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Z)V

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentFilter$EffectRealtimeRender;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    const/16 p1, 0x10

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentFilter$EffectRealtimeRender;->mTransform:[F

    iput-object p2, p0, Lcom/android/camera/fragment/FragmentFilter$EffectRealtimeRender;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bindEffectIndex(ILcom/android/camera/data/data/ComponentDataItem;)V
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/FragmentFilter$EffectRealtimeRender;->viewPosition:I

    iput-object p2, p0, Lcom/android/camera/fragment/FragmentFilter$EffectRealtimeRender;->filterData:Lcom/android/camera/data/data/ComponentDataItem;

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 13

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFilter$EffectRealtimeRender;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/android/camera/ActivityBase;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectRealtimeRender;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->getGLCanvas()Lcom/android/gallery3d/ui/GLCanvasImpl;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz v1, :cond_0

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->clearBuffer()V

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getWidth()I

    move-result v1

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getHeight()I

    move-result v2

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentFilter$EffectRealtimeRender;->this$0:Lcom/android/camera/fragment/FragmentFilter;

    invoke-static {v3}, Lcom/android/camera/fragment/FragmentFilter;->access$600(Lcom/android/camera/fragment/FragmentFilter;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/fragment/FragmentFilter$EffectRealtimeRender;->this$0:Lcom/android/camera/fragment/FragmentFilter;

    invoke-static {v4}, Lcom/android/camera/fragment/FragmentFilter;->access$700(Lcom/android/camera/fragment/FragmentFilter;)I

    move-result v4

    invoke-interface {v0, v3, v4}, Lcom/android/gallery3d/ui/GLCanvas;->setSize(II)V

    invoke-virtual {p1}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/fragment/FragmentFilter$EffectRealtimeRender;->mTransform:[F

    invoke-virtual {v3, v4}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/fragment/FragmentFilter$EffectRealtimeRender;->filterData:Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v5, v5, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    iget-object v6, p0, Lcom/android/camera/fragment/FragmentFilter$EffectRealtimeRender;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-virtual {p1}, Lcom/android/camera/SurfaceTextureScreenNail;->getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/fragment/FragmentFilter$EffectRealtimeRender;->mTransform:[F

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFilter$EffectRealtimeRender;->this$0:Lcom/android/camera/fragment/FragmentFilter;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentFilter;->access$800(Lcom/android/camera/fragment/FragmentFilter;)I

    move-result v9

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFilter$EffectRealtimeRender;->this$0:Lcom/android/camera/fragment/FragmentFilter;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentFilter;->access$900(Lcom/android/camera/fragment/FragmentFilter;)I

    move-result v10

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFilter$EffectRealtimeRender;->this$0:Lcom/android/camera/fragment/FragmentFilter;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentFilter;->access$1000(Lcom/android/camera/fragment/FragmentFilter;)I

    move-result v11

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectRealtimeRender;->this$0:Lcom/android/camera/fragment/FragmentFilter;

    invoke-static {p0}, Lcom/android/camera/fragment/FragmentFilter;->access$1100(Lcom/android/camera/fragment/FragmentFilter;)I

    move-result v12

    invoke-virtual/range {v6 .. v12}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->setSize(II)V

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->recycledResources()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    iput p2, p0, Lcom/android/camera/fragment/FragmentFilter$EffectRealtimeRender;->width:I

    iput p3, p0, Lcom/android/camera/fragment/FragmentFilter$EffectRealtimeRender;->height:I

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    return-void
.end method
