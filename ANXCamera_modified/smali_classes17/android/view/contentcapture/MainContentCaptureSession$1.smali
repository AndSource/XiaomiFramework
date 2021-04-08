.class Landroid/view/contentcapture/MainContentCaptureSession$1;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "MainContentCaptureSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/contentcapture/MainContentCaptureSession;-><init>(Landroid/content/Context;Landroid/view/contentcapture/ContentCaptureManager;Landroid/os/Handler;Landroid/view/contentcapture/IContentCaptureManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/contentcapture/MainContentCaptureSession;


# direct methods
.method constructor <init>(Landroid/view/contentcapture/MainContentCaptureSession;)V
    .locals 0

    iput-object p1, p0, Landroid/view/contentcapture/MainContentCaptureSession$1;->this$0:Landroid/view/contentcapture/MainContentCaptureSession;

    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$send$0$MainContentCaptureSession$1()V
    .locals 2

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession$1;->this$0:Landroid/view/contentcapture/MainContentCaptureSession;

    const/16 v1, 0x104

    invoke-static {v0, v1}, Landroid/view/contentcapture/MainContentCaptureSession;->access$400(Landroid/view/contentcapture/MainContentCaptureSession;I)V

    return-void
.end method

.method public synthetic lambda$send$1$MainContentCaptureSession$1(ILandroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession$1;->this$0:Landroid/view/contentcapture/MainContentCaptureSession;

    invoke-static {v0, p1, p2}, Landroid/view/contentcapture/MainContentCaptureSession;->access$300(Landroid/view/contentcapture/MainContentCaptureSession;ILandroid/os/IBinder;)V

    return-void
.end method

.method public send(ILandroid/os/Bundle;)V
    .locals 4

    if-eqz p2, :cond_3

    const-string v0, "enabled"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/view/contentcapture/MainContentCaptureSession$1;->this$0:Landroid/view/contentcapture/MainContentCaptureSession;

    invoke-static {v2}, Landroid/view/contentcapture/MainContentCaptureSession;->access$000(Landroid/view/contentcapture/MainContentCaptureSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_1
    const-string v1, "binder"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Landroid/view/contentcapture/MainContentCaptureSession;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "No binder extra result"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/view/contentcapture/MainContentCaptureSession$1;->this$0:Landroid/view/contentcapture/MainContentCaptureSession;

    invoke-static {v2}, Landroid/view/contentcapture/MainContentCaptureSession;->access$200(Landroid/view/contentcapture/MainContentCaptureSession;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Landroid/view/contentcapture/-$$Lambda$MainContentCaptureSession$1$JPRO-nNGZpgXrKr4QC_iQiTbQx0;

    invoke-direct {v3, p0}, Landroid/view/contentcapture/-$$Lambda$MainContentCaptureSession$1$JPRO-nNGZpgXrKr4QC_iQiTbQx0;-><init>(Landroid/view/contentcapture/MainContentCaptureSession$1;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSession$1;->this$0:Landroid/view/contentcapture/MainContentCaptureSession;

    invoke-static {v0}, Landroid/view/contentcapture/MainContentCaptureSession;->access$200(Landroid/view/contentcapture/MainContentCaptureSession;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Landroid/view/contentcapture/-$$Lambda$MainContentCaptureSession$1$Xhq3WJibbalS1G_W3PRC2m7muhM;

    invoke-direct {v2, p0, p1, v1}, Landroid/view/contentcapture/-$$Lambda$MainContentCaptureSession$1$Xhq3WJibbalS1G_W3PRC2m7muhM;-><init>(Landroid/view/contentcapture/MainContentCaptureSession$1;ILandroid/os/IBinder;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
