.class Lmiui/view/VolumeDialog$8;
.super Landroid/content/BroadcastReceiver;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/VolumeDialog;


# direct methods
.method constructor <init>(Lmiui/view/VolumeDialog;)V
    .locals 0

    iput-object p1, p0, Lmiui/view/VolumeDialog$8;->this$0:Lmiui/view/VolumeDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "miui.intent.TAKE_SCREENSHOT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    const-string v2, "IsFinished"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const/16 v3, 0xb

    if-nez v2, :cond_1

    iget-object v4, p0, Lmiui/view/VolumeDialog$8;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v4, v1}, Lmiui/view/VolumeDialog;->access$4502(Lmiui/view/VolumeDialog;Z)Z

    iget-object v1, p0, Lmiui/view/VolumeDialog$8;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v1}, Lmiui/view/VolumeDialog;->access$300(Lmiui/view/VolumeDialog;)Lmiui/view/VolumeDialog$H;

    move-result-object v1

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v3, v4, v5}, Lmiui/view/VolumeDialog$H;->sendEmptyMessageDelayed(IJ)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v1, p0, Lmiui/view/VolumeDialog$8;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v1}, Lmiui/view/VolumeDialog;->access$5000(Lmiui/view/VolumeDialog;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v1, v6, v4

    if-gez v1, :cond_3

    iget-object v1, p0, Lmiui/view/VolumeDialog$8;->this$0:Lmiui/view/VolumeDialog;

    invoke-virtual {v1}, Lmiui/view/VolumeDialog;->dismiss()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lmiui/view/VolumeDialog$8;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v1}, Lmiui/view/VolumeDialog;->access$300(Lmiui/view/VolumeDialog;)Lmiui/view/VolumeDialog$H;

    move-result-object v1

    invoke-virtual {v1, v3}, Lmiui/view/VolumeDialog$H;->removeMessages(I)V

    iget-object v1, p0, Lmiui/view/VolumeDialog$8;->this$0:Lmiui/view/VolumeDialog;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lmiui/view/VolumeDialog;->access$4502(Lmiui/view/VolumeDialog;Z)Z

    goto :goto_0

    :cond_2
    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, -0x1

    const-string v2, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lmiui/view/VolumeDialog$8;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v2, v1}, Lmiui/view/VolumeDialog;->access$5100(Lmiui/view/VolumeDialog;I)V

    goto :goto_2

    :cond_3
    :goto_0
    goto :goto_2

    :cond_4
    :goto_1
    iget-object v1, p0, Lmiui/view/VolumeDialog$8;->this$0:Lmiui/view/VolumeDialog;

    invoke-virtual {v1}, Lmiui/view/VolumeDialog;->dismiss()V

    :goto_2
    return-void
.end method
