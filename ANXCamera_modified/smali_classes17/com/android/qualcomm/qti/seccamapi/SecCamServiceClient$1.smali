.class Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$1;
.super Ljava/lang/Object;
.source "SecCamServiceClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;


# direct methods
.method constructor <init>(Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;)V
    .locals 0

    iput-object p1, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$1;->this$0:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "SECCAM-SERVICE-CLIENT"

    const-string/jumbo v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$1;->this$0:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->access$002(Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$1;->this$0:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->access$502(Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;Z)Z

    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$1;->this$0:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->access$202(Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;Z)Z

    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$1;->this$0:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    invoke-static {v0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->access$300(Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$1;->this$0:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    invoke-static {v0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->access$400(Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;)Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$1;->this$0:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    invoke-static {v0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->access$400(Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;)Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;->serviceConnected()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "SECCAM-SERVICE-CLIENT"

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$1;->this$0:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->access$002(Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$1;->this$0:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->access$102(Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;Z)Z

    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$1;->this$0:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    invoke-static {v0, v1}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->access$202(Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;Z)Z

    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$1;->this$0:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    invoke-static {v0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->access$300(Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$1;->this$0:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    invoke-static {v0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->access$400(Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;)Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$1;->this$0:Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    invoke-static {v0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->access$400(Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;)Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;->serviceDisconnected()V

    :cond_0
    return-void
.end method
