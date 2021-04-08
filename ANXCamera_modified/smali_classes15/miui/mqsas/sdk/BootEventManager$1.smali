.class Lmiui/mqsas/sdk/BootEventManager$1;
.super Ljava/lang/Object;
.source "BootEventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/mqsas/sdk/BootEventManager;->reportBootEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$event:Lmiui/mqsas/sdk/event/BootEvent;


# direct methods
.method constructor <init>(Lmiui/mqsas/sdk/event/BootEvent;)V
    .locals 0

    iput-object p1, p0, Lmiui/mqsas/sdk/BootEventManager$1;->val$event:Lmiui/mqsas/sdk/event/BootEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Begin to report boot event"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v0

    iget-object v1, p0, Lmiui/mqsas/sdk/BootEventManager$1;->val$event:Lmiui/mqsas/sdk/event/BootEvent;

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportBootEvent(Lmiui/mqsas/sdk/event/BootEvent;)V

    return-void
.end method
