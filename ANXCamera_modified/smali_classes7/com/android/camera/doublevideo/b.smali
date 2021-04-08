.class public final synthetic Lcom/android/camera/doublevideo/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field private final synthetic kg:Lcom/android/camera/doublevideo/DualVideoControler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/doublevideo/DualVideoControler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/doublevideo/b;->kg:Lcom/android/camera/doublevideo/DualVideoControler;

    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/doublevideo/b;->kg:Lcom/android/camera/doublevideo/DualVideoControler;

    invoke-virtual {p0, p1}, Lcom/android/camera/doublevideo/DualVideoControler;->a(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method
