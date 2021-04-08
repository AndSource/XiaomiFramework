.class Lmiui/cameraanimation/CameraAnimationManager$H;
.super Landroid/os/Handler;
.source "CameraAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cameraanimation/CameraAnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/cameraanimation/CameraAnimationManager;


# direct methods
.method public constructor <init>(Lmiui/cameraanimation/CameraAnimationManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lmiui/cameraanimation/CameraAnimationManager$H;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lmiui/cameraanimation/CameraAnimationManager$H;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    invoke-static {v0}, Lmiui/cameraanimation/CameraAnimationManager;->access$700(Lmiui/cameraanimation/CameraAnimationManager;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager$H;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    invoke-static {v1}, Lmiui/cameraanimation/CameraAnimationManager;->access$800(Lmiui/cameraanimation/CameraAnimationManager;)Lmiui/cameraanimation/CameraAnimationView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager$H;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    invoke-static {v1}, Lmiui/cameraanimation/CameraAnimationManager;->access$900(Lmiui/cameraanimation/CameraAnimationManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager$H;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    invoke-static {v1}, Lmiui/cameraanimation/CameraAnimationManager;->access$800(Lmiui/cameraanimation/CameraAnimationManager;)Lmiui/cameraanimation/CameraAnimationView;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/cameraanimation/CameraAnimationView;->stopAnimation()V

    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager$H;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    invoke-static {v1}, Lmiui/cameraanimation/CameraAnimationManager;->access$1000(Lmiui/cameraanimation/CameraAnimationManager;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lmiui/cameraanimation/CameraAnimationManager$H;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    invoke-static {v2}, Lmiui/cameraanimation/CameraAnimationManager;->access$800(Lmiui/cameraanimation/CameraAnimationManager;)Lmiui/cameraanimation/CameraAnimationView;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager$H;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmiui/cameraanimation/CameraAnimationManager;->access$902(Lmiui/cameraanimation/CameraAnimationManager;Z)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager$H;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    invoke-static {v1}, Lmiui/cameraanimation/CameraAnimationManager;->access$800(Lmiui/cameraanimation/CameraAnimationManager;)Lmiui/cameraanimation/CameraAnimationView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager$H;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    invoke-static {v1}, Lmiui/cameraanimation/CameraAnimationManager;->access$900(Lmiui/cameraanimation/CameraAnimationManager;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager$H;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    invoke-static {v1}, Lmiui/cameraanimation/CameraAnimationManager;->access$1000(Lmiui/cameraanimation/CameraAnimationManager;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v3, p0, Lmiui/cameraanimation/CameraAnimationManager$H;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    invoke-static {v3}, Lmiui/cameraanimation/CameraAnimationManager;->access$800(Lmiui/cameraanimation/CameraAnimationManager;)Lmiui/cameraanimation/CameraAnimationView;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager$H;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    invoke-static {v1, v2}, Lmiui/cameraanimation/CameraAnimationManager;->access$902(Lmiui/cameraanimation/CameraAnimationManager;Z)Z

    iget-object v1, p0, Lmiui/cameraanimation/CameraAnimationManager$H;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    invoke-static {v1}, Lmiui/cameraanimation/CameraAnimationManager;->access$800(Lmiui/cameraanimation/CameraAnimationManager;)Lmiui/cameraanimation/CameraAnimationView;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/cameraanimation/CameraAnimationView;->startAnimation()V

    :cond_2
    :goto_0
    return-void
.end method
