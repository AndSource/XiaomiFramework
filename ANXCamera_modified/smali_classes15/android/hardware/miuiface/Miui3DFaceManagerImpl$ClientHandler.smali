.class Landroid/hardware/miuiface/Miui3DFaceManagerImpl$ClientHandler;
.super Landroid/os/Handler;
.source "Miui3DFaceManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/miuiface/Miui3DFaceManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/miuiface/Miui3DFaceManagerImpl;


# direct methods
.method private constructor <init>(Landroid/hardware/miuiface/Miui3DFaceManagerImpl;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$ClientHandler;->this$0:Landroid/hardware/miuiface/Miui3DFaceManagerImpl;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/miuiface/Miui3DFaceManagerImpl;Landroid/content/Context;Landroid/hardware/miuiface/Miui3DFaceManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$ClientHandler;-><init>(Landroid/hardware/miuiface/Miui3DFaceManagerImpl;Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Landroid/hardware/miuiface/Miui3DFaceManagerImpl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$ClientHandler;->this$0:Landroid/hardware/miuiface/Miui3DFaceManagerImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/miuiface/Miui3DFaceManagerImpl;Landroid/os/Looper;Landroid/hardware/miuiface/Miui3DFaceManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$ClientHandler;-><init>(Landroid/hardware/miuiface/Miui3DFaceManagerImpl;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-static {}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->access$1100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " handleMessage  callback what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$ClientHandler;->this$0:Landroid/hardware/miuiface/Miui3DFaceManagerImpl;

    invoke-static {v0}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->access$1300(Landroid/hardware/miuiface/Miui3DFaceManagerImpl;)Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->access$1100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "xiaomi ---> RECEIVER_ON_AUTHENTICATION_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$ClientHandler;->this$0:Landroid/hardware/miuiface/Miui3DFaceManagerImpl;

    invoke-static {v0}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->access$1300(Landroid/hardware/miuiface/Miui3DFaceManagerImpl;)Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;->onAuthenticationFailed()V

    iget-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$ClientHandler;->this$0:Landroid/hardware/miuiface/Miui3DFaceManagerImpl;

    invoke-static {v0}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->access$500(Landroid/hardware/miuiface/Miui3DFaceManagerImpl;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$ClientHandler;->this$0:Landroid/hardware/miuiface/Miui3DFaceManagerImpl;

    invoke-static {v0}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->access$1200(Landroid/hardware/miuiface/Miui3DFaceManagerImpl;)Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$ClientHandler;->this$0:Landroid/hardware/miuiface/Miui3DFaceManagerImpl;

    invoke-static {v0}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->access$1200(Landroid/hardware/miuiface/Miui3DFaceManagerImpl;)Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;

    move-result-object v0

    const/16 v1, 0x42

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    invoke-static {}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->access$1100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RECEIVER_ON_ENROLL_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$ClientHandler;->this$0:Landroid/hardware/miuiface/Miui3DFaceManagerImpl;

    invoke-static {v0}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->access$700(Landroid/hardware/miuiface/Miui3DFaceManagerImpl;)V

    :cond_3
    :goto_0
    return-void
.end method
