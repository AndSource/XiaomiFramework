.class public final synthetic Lcom/android/camera/ui/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic kg:Lcom/android/camera/ui/V6CameraGLSurfaceView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/ui/V6CameraGLSurfaceView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/f;->kg:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/f;->kg:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->ka()V

    return-void
.end method
