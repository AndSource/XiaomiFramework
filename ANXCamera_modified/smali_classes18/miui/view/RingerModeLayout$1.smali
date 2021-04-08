.class Lmiui/view/RingerModeLayout$1;
.super Ljava/lang/Object;
.source "RingerModeLayout.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/RingerModeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/RingerModeLayout;


# direct methods
.method constructor <init>(Lmiui/view/RingerModeLayout;)V
    .locals 0

    iput-object p1, p0, Lmiui/view/RingerModeLayout$1;->this$0:Lmiui/view/RingerModeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    iget-object v0, p0, Lmiui/view/RingerModeLayout$1;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v0}, Lmiui/view/RingerModeLayout;->access$000(Lmiui/view/RingerModeLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "RingerModeLayout"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    const-string v4, "sliding to true"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/view/RingerModeLayout$1;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v1}, Lmiui/view/RingerModeLayout;->access$100(Lmiui/view/RingerModeLayout;)Lmiui/view/VolumeDialog;

    move-result-object v1

    invoke-virtual {v1, v3}, Lmiui/view/VolumeDialog;->setExpandedH(Z)V

    iget-object v1, p0, Lmiui/view/RingerModeLayout$1;->this$0:Lmiui/view/RingerModeLayout;

    invoke-virtual {v1, v2}, Lmiui/view/RingerModeLayout;->expandSilenceModeContent(Z)V

    iget-object v1, p0, Lmiui/view/RingerModeLayout$1;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v1}, Lmiui/view/RingerModeLayout;->access$200(Lmiui/view/RingerModeLayout;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lmiui/view/RingerModeLayout$1;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v1}, Lmiui/view/RingerModeLayout;->access$300(Lmiui/view/RingerModeLayout;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/MiuiSettings$SilenceMode;->getLastestQuietMode(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lmiui/view/RingerModeLayout$1;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v2}, Lmiui/view/RingerModeLayout;->access$300(Lmiui/view/RingerModeLayout;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/provider/MiuiSettings$SilenceMode;->setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;)V

    :cond_1
    iget-object v0, p0, Lmiui/view/RingerModeLayout$1;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v0}, Lmiui/view/RingerModeLayout;->access$400(Lmiui/view/RingerModeLayout;)V

    goto :goto_0

    :cond_2
    const-string v4, "sliding to false"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/view/RingerModeLayout$1;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v1}, Lmiui/view/RingerModeLayout;->access$500(Lmiui/view/RingerModeLayout;)Landroid/widget/RadioGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->clearCheck()V

    iget-object v1, p0, Lmiui/view/RingerModeLayout$1;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v1, v3}, Lmiui/view/RingerModeLayout;->access$202(Lmiui/view/RingerModeLayout;I)I

    iget-object v1, p0, Lmiui/view/RingerModeLayout$1;->this$0:Lmiui/view/RingerModeLayout;

    invoke-virtual {v1, v3}, Lmiui/view/RingerModeLayout;->expandSilenceModeContent(Z)V

    iget-object v1, p0, Lmiui/view/RingerModeLayout$1;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v1}, Lmiui/view/RingerModeLayout;->access$300(Lmiui/view/RingerModeLayout;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v0}, Landroid/provider/MiuiSettings$SilenceMode;->setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;)V

    iget-object v0, p0, Lmiui/view/RingerModeLayout$1;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v0}, Lmiui/view/RingerModeLayout;->access$100(Lmiui/view/RingerModeLayout;)Lmiui/view/VolumeDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/view/VolumeDialog;->recheckAll()V

    iget-object v0, p0, Lmiui/view/RingerModeLayout$1;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v0}, Lmiui/view/RingerModeLayout;->access$600(Lmiui/view/RingerModeLayout;)Lmiui/view/RingerModeLayout$H;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/view/RingerModeLayout$H;->removeMessages(I)V

    iget-object v0, p0, Lmiui/view/RingerModeLayout$1;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v0}, Lmiui/view/RingerModeLayout;->access$600(Lmiui/view/RingerModeLayout;)Lmiui/view/RingerModeLayout$H;

    move-result-object v0

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v2, v3, v4}, Lmiui/view/RingerModeLayout$H;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method
