.class Lmiui/vip/VipPortraitView$7;
.super Landroid/content/BroadcastReceiver;
.source "VipPortraitView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/vip/VipPortraitView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/vip/VipPortraitView;


# direct methods
.method constructor <init>(Lmiui/vip/VipPortraitView;)V
    .locals 0

    iput-object p1, p0, Lmiui/vip/VipPortraitView$7;->this$0:Lmiui/vip/VipPortraitView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v3, "VipPortraitView.mReceiver, action = %s"

    invoke-static {v3, v1}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lmiui/vip/VipPortraitView$7;->this$0:Lmiui/vip/VipPortraitView;

    invoke-static {v1}, Lmiui/vip/VipPortraitView;->access$600(Lmiui/vip/VipPortraitView;)V

    const-string v1, "android.accounts.LOGIN_ACCOUNTS_POST_CHANGED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "extra_update_type"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "mReciever, user is added, connect vip service"

    invoke-static {v2, v1}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lmiui/vip/VipPortraitView$7;->this$0:Lmiui/vip/VipPortraitView;

    invoke-virtual {v1}, Lmiui/vip/VipPortraitView;->connect()V

    goto :goto_0

    :cond_0
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "mReciever, user is removed, disconnect vip service"

    invoke-static {v2, v1}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lmiui/vip/VipPortraitView$7;->this$0:Lmiui/vip/VipPortraitView;

    invoke-virtual {v1}, Lmiui/vip/VipPortraitView;->disconnect()V

    :cond_1
    :goto_0
    return-void
.end method
