.class Lcom/android/internal/widget/MiuiDecorCaptionView$5;
.super Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;
.source "MiuiDecorCaptionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/MiuiDecorCaptionView;->registerMiuiGestureControlHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$5;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-direct {p0}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public hideCaptionView()V
    .locals 2

    const-string v0, "MiuiDecorCaptionView"

    const-string v1, "hideCaptionView"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$5;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->access$600(Lcom/android/internal/widget/MiuiDecorCaptionView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/MiuiDecorCaptionView$5$5;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$5$5;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyExitFreeFormApplicationStart()V
    .locals 4

    const-string v0, "MiuiDecorCaptionView"

    const-string/jumbo v1, "notifyExitApplicationStart"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$5;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-virtual {v1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.tencent.qqlive"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$5;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-virtual {v1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getAttachedActivityInstance()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->finishActivityAffinity(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$5;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-static {v1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->access$700(Lcom/android/internal/widget/MiuiDecorCaptionView;)Lcom/android/internal/policy/PhoneWindow;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/policy/PhoneWindow;->dispatchOnWindowDismissed(ZZ)V

    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$5;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-static {v1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->access$800(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    return-void
.end method

.method public notifyExitSmallFreeFormApplicationStart()V
    .locals 4

    const-string v0, "MiuiDecorCaptionView"

    const-string/jumbo v1, "notifyExitSmallFreeFormApplicationStart"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$5;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-virtual {v1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.tencent.qqlive"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$5;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-virtual {v1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getAttachedActivityInstance()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->finishActivityAffinity(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$5;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-static {v1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->access$700(Lcom/android/internal/widget/MiuiDecorCaptionView;)Lcom/android/internal/policy/PhoneWindow;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/policy/PhoneWindow;->dispatchOnWindowDismissed(ZZ)V

    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$5;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-static {v1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->access$800(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    return-void
.end method

.method public notifyFreeFormApplicationResizeEnd(J)V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$5;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-static {v2}, Lcom/android/internal/widget/MiuiDecorCaptionView;->access$600(Lcom/android/internal/widget/MiuiDecorCaptionView;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/internal/widget/MiuiDecorCaptionView$5$3;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/internal/widget/MiuiDecorCaptionView$5$3;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView$5;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyFreeFormApplicationResizeStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$5;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->access$600(Lcom/android/internal/widget/MiuiDecorCaptionView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/MiuiDecorCaptionView$5$2;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$5$2;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyFullScreenWidnowModeStart()V
    .locals 4

    const-string v0, "MiuiDecorCaptionView"

    const-string/jumbo v1, "notifyFullScreenWidnowModeStart"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$5;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-virtual {v1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getAttachedActivityInstance()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityTaskManager;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$5;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-static {v2}, Lcom/android/internal/widget/MiuiDecorCaptionView;->access$300(Lcom/android/internal/widget/MiuiDecorCaptionView;)Lmiui/security/SecurityManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3, v3}, Lmiui/security/SecurityManager;->moveTaskToStack(IIZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$5;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-static {v1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->access$600(Lcom/android/internal/widget/MiuiDecorCaptionView;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/internal/widget/MiuiDecorCaptionView$5$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$5$1;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView$5;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showCaptionView()V
    .locals 2

    const-string v0, "MiuiDecorCaptionView"

    const-string/jumbo v1, "showCaptionViews"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$5;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->access$600(Lcom/android/internal/widget/MiuiDecorCaptionView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/MiuiDecorCaptionView$5$4;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/MiuiDecorCaptionView$5$4;-><init>(Lcom/android/internal/widget/MiuiDecorCaptionView$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
