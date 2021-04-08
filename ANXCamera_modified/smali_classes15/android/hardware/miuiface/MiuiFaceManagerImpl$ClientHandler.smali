.class Landroid/hardware/miuiface/MiuiFaceManagerImpl$ClientHandler;
.super Landroid/os/Handler;
.source "MiuiFaceManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/miuiface/MiuiFaceManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;


# direct methods
.method private constructor <init>(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$ClientHandler;->this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Landroid/content/Context;Landroid/hardware/miuiface/MiuiFaceManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/miuiface/MiuiFaceManagerImpl$ClientHandler;-><init>(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$ClientHandler;->this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Landroid/os/Looper;Landroid/hardware/miuiface/MiuiFaceManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/miuiface/MiuiFaceManagerImpl$ClientHandler;-><init>(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    invoke-static {}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$200()Ljava/lang/String;

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

    const/16 v1, 0x105

    if-eq v0, v1, :cond_2

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$ClientHandler;->this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/miuiface/Miuiface;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$2200(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Landroid/hardware/miuiface/Miuiface;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$ClientHandler;->this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$2100(Landroid/hardware/miuiface/MiuiFaceManagerImpl;JII)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$ClientHandler;->this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    invoke-static {v0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$2000(Landroid/hardware/miuiface/MiuiFaceManagerImpl;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$ClientHandler;->this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/miuiface/Miuiface;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$1900(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Landroid/hardware/miuiface/Miuiface;I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$ClientHandler;->this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$1800(Landroid/hardware/miuiface/MiuiFaceManagerImpl;JII)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$ClientHandler;->this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/miuiface/Miuiface;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$1700(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Landroid/hardware/miuiface/Miuiface;I)V

    goto :goto_0

    :cond_1
    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$ClientHandler;->this$0:Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    invoke-static {v0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->access$2300(Landroid/hardware/miuiface/MiuiFaceManagerImpl;)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
