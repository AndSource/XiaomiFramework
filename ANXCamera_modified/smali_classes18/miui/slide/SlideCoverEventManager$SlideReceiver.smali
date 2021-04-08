.class final Lmiui/slide/SlideCoverEventManager$SlideReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SlideCoverEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/slide/SlideCoverEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SlideReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/slide/SlideCoverEventManager;


# direct methods
.method private constructor <init>(Lmiui/slide/SlideCoverEventManager;)V
    .locals 0

    iput-object p1, p0, Lmiui/slide/SlideCoverEventManager$SlideReceiver;->this$0:Lmiui/slide/SlideCoverEventManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/slide/SlideCoverEventManager;Lmiui/slide/SlideCoverEventManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/slide/SlideCoverEventManager$SlideReceiver;-><init>(Lmiui/slide/SlideCoverEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x5a4113c8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const v2, 0x392cb822

    if-eq v1, v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :cond_2
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager$SlideReceiver;->this$0:Lmiui/slide/SlideCoverEventManager;

    invoke-static {v0}, Lmiui/slide/SlideCoverEventManager;->access$900(Lmiui/slide/SlideCoverEventManager;)V

    goto :goto_2

    :cond_4
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lmiui/slide/SlideCoverEventManager$SlideReceiver;->this$0:Lmiui/slide/SlideCoverEventManager;

    invoke-static {v1}, Lmiui/slide/SlideCoverEventManager;->access$1400(Lmiui/slide/SlideCoverEventManager;)I

    move-result v1

    if-eq v0, v1, :cond_5

    iget-object v1, p0, Lmiui/slide/SlideCoverEventManager$SlideReceiver;->this$0:Lmiui/slide/SlideCoverEventManager;

    invoke-static {v1, v0}, Lmiui/slide/SlideCoverEventManager;->access$1402(Lmiui/slide/SlideCoverEventManager;I)I

    iget-object v1, p0, Lmiui/slide/SlideCoverEventManager$SlideReceiver;->this$0:Lmiui/slide/SlideCoverEventManager;

    invoke-static {v1}, Lmiui/slide/SlideCoverEventManager;->access$1500(Lmiui/slide/SlideCoverEventManager;)V

    iget-object v1, p0, Lmiui/slide/SlideCoverEventManager$SlideReceiver;->this$0:Lmiui/slide/SlideCoverEventManager;

    invoke-static {v1}, Lmiui/slide/SlideCoverEventManager;->access$900(Lmiui/slide/SlideCoverEventManager;)V

    :cond_5
    :goto_2
    return-void
.end method
