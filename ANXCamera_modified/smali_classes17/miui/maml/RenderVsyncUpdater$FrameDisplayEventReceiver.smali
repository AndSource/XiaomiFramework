.class final Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;
.super Lmiui/maml/MamlDisplayEventReceiver;
.source "RenderVsyncUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/RenderVsyncUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FrameDisplayEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/RenderVsyncUpdater;


# direct methods
.method public constructor <init>(Lmiui/maml/RenderVsyncUpdater;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lmiui/maml/RenderVsyncUpdater;

    invoke-direct {p0, p2}, Lmiui/maml/MamlDisplayEventReceiver;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onVsync(JJI)V
    .locals 4

    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lmiui/maml/RenderVsyncUpdater;

    const-wide/16 v1, 0x1

    invoke-static {v0, v1, v2}, Lmiui/maml/RenderVsyncUpdater;->access$322(Lmiui/maml/RenderVsyncUpdater;J)J

    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lmiui/maml/RenderVsyncUpdater;

    invoke-static {v0}, Lmiui/maml/RenderVsyncUpdater;->access$400(Lmiui/maml/RenderVsyncUpdater;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lmiui/maml/RenderVsyncUpdater;

    invoke-static {v1}, Lmiui/maml/RenderVsyncUpdater;->access$400(Lmiui/maml/RenderVsyncUpdater;)Landroid/os/Handler;

    move-result-object v1

    const-wide/32 v2, 0xf4240

    div-long v2, p1, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lmiui/maml/RenderVsyncUpdater;

    invoke-static {v0}, Lmiui/maml/RenderVsyncUpdater;->access$300(Lmiui/maml/RenderVsyncUpdater;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lmiui/maml/RenderVsyncUpdater;

    invoke-static {v0}, Lmiui/maml/RenderVsyncUpdater;->access$200(Lmiui/maml/RenderVsyncUpdater;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lmiui/maml/RenderVsyncUpdater;

    invoke-static {v0}, Lmiui/maml/RenderVsyncUpdater;->access$500(Lmiui/maml/RenderVsyncUpdater;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lmiui/maml/RenderVsyncUpdater;

    invoke-static {v0}, Lmiui/maml/RenderVsyncUpdater;->access$600(Lmiui/maml/RenderVsyncUpdater;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->scheduleVsync()V

    :cond_1
    :goto_0
    return-void
.end method
