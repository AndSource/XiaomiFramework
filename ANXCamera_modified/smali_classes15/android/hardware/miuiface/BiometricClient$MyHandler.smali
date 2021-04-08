.class Landroid/hardware/miuiface/BiometricClient$MyHandler;
.super Landroid/os/Handler;
.source "BiometricClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/miuiface/BiometricClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/miuiface/BiometricClient;


# direct methods
.method public constructor <init>(Landroid/hardware/miuiface/BiometricClient;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/miuiface/BiometricClient$MyHandler;->this$0:Landroid/hardware/miuiface/BiometricClient;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    sget-boolean v0, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient$MyHandler;->this$0:Landroid/hardware/miuiface/BiometricClient;

    invoke-static {v1}, Landroid/hardware/miuiface/BiometricClient;->access$000(Landroid/hardware/miuiface/BiometricClient;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":handleMessage main what:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient$MyHandler;->this$0:Landroid/hardware/miuiface/BiometricClient;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    invoke-static {v0, v1}, Landroid/hardware/miuiface/BiometricClient;->access$700(Landroid/hardware/miuiface/BiometricClient;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient$MyHandler;->this$0:Landroid/hardware/miuiface/BiometricClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Landroid/hardware/miuiface/BiometricClient;->access$600(Landroid/hardware/miuiface/BiometricClient;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient$MyHandler;->this$0:Landroid/hardware/miuiface/BiometricClient;

    invoke-static {v0}, Landroid/hardware/miuiface/BiometricClient;->access$400(Landroid/hardware/miuiface/BiometricClient;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient$MyHandler;->this$0:Landroid/hardware/miuiface/BiometricClient;

    invoke-static {v0}, Landroid/hardware/miuiface/BiometricClient;->access$500(Landroid/hardware/miuiface/BiometricClient;)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1388
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
