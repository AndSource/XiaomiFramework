.class public final synthetic Lcom/android/camera/doublevideo/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# instance fields
.field private final synthetic kg:Lcom/android/camera/doublevideo/DualVideoControler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/doublevideo/DualVideoControler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/doublevideo/c;->kg:Lcom/android/camera/doublevideo/DualVideoControler;

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/doublevideo/c;->kg:Lcom/android/camera/doublevideo/DualVideoControler;

    invoke-virtual {p0, p1}, Lcom/android/camera/doublevideo/DualVideoControler;->a(Landroid/media/ImageReader;)V

    return-void
.end method
