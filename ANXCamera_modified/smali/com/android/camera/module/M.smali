.class public final synthetic Lcom/android/camera/module/M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic kg:Lcom/android/camera/module/MultiCameraModule;

.field private final synthetic lg:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/MultiCameraModule;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/M;->kg:Lcom/android/camera/module/MultiCameraModule;

    iput-object p2, p0, Lcom/android/camera/module/M;->lg:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/M;->kg:Lcom/android/camera/module/MultiCameraModule;

    iget-object p0, p0, Lcom/android/camera/module/M;->lg:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Lcom/android/camera/module/MultiCameraModule;->a(Landroid/view/ViewGroup;)V

    return-void
.end method
