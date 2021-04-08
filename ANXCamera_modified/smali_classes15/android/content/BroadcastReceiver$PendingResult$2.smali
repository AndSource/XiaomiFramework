.class Landroid/content/BroadcastReceiver$PendingResult$2;
.super Ljava/lang/Object;
.source "BroadcastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/BroadcastReceiver$PendingResult;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/BroadcastReceiver$PendingResult;

.field final synthetic val$mgr:Landroid/app/IActivityManager;

.field final synthetic val$sendFinishRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/BroadcastReceiver$PendingResult;Ljava/lang/Runnable;Landroid/app/IActivityManager;)V
    .locals 0

    iput-object p1, p0, Landroid/content/BroadcastReceiver$PendingResult$2;->this$0:Landroid/content/BroadcastReceiver$PendingResult;

    iput-object p2, p0, Landroid/content/BroadcastReceiver$PendingResult$2;->val$sendFinishRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Landroid/content/BroadcastReceiver$PendingResult$2;->val$mgr:Landroid/app/IActivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult$2;->this$0:Landroid/content/BroadcastReceiver$PendingResult;

    iget-object v0, v0, Landroid/content/BroadcastReceiver$PendingResult;->mH:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult$2;->this$0:Landroid/content/BroadcastReceiver$PendingResult;

    iget-object v0, v0, Landroid/content/BroadcastReceiver$PendingResult;->mH:Landroid/os/Handler;

    iget-object v1, p0, Landroid/content/BroadcastReceiver$PendingResult$2;->val$sendFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Landroid/content/BroadcastReceiver$PendingResult$2;->this$0:Landroid/content/BroadcastReceiver$PendingResult;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/content/BroadcastReceiver$PendingResult$2;->this$0:Landroid/content/BroadcastReceiver$PendingResult;

    iget-boolean v1, v1, Landroid/content/BroadcastReceiver$PendingResult;->mHaveSendFinish:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/content/BroadcastReceiver$PendingResult$2;->this$0:Landroid/content/BroadcastReceiver$PendingResult;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/content/BroadcastReceiver$PendingResult;->mHaveSendFinish:Z

    iget-object v1, p0, Landroid/content/BroadcastReceiver$PendingResult$2;->this$0:Landroid/content/BroadcastReceiver$PendingResult;

    iget-object v2, p0, Landroid/content/BroadcastReceiver$PendingResult$2;->val$mgr:Landroid/app/IActivityManager;

    invoke-virtual {v1, v2}, Landroid/content/BroadcastReceiver$PendingResult;->sendFinished(Landroid/app/IActivityManager;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
