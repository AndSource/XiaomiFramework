.class Lmiui/maml/RenderThread$CommandThreadHandler;
.super Landroid/os/Handler;
.source "RenderThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/RenderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommandThreadHandler"
.end annotation


# static fields
.field private static final MSG_PAUSE:I = 0x0

.field private static final MSG_RESUME:I = 0x1


# instance fields
.field final synthetic this$0:Lmiui/maml/RenderThread;


# direct methods
.method public constructor <init>(Lmiui/maml/RenderThread;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lmiui/maml/RenderThread$CommandThreadHandler;->this$0:Lmiui/maml/RenderThread;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/maml/RenderThread$CommandThreadHandler;->this$0:Lmiui/maml/RenderThread;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/maml/RenderThread;->access$000(Lmiui/maml/RenderThread;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmiui/maml/RenderThread$CommandThreadHandler;->this$0:Lmiui/maml/RenderThread;

    invoke-static {v0, v1}, Lmiui/maml/RenderThread;->access$000(Lmiui/maml/RenderThread;Z)V

    nop

    :goto_0
    return-void
.end method

.method public setPause(Z)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    xor-int/lit8 v1, p1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lmiui/maml/RenderThread$CommandThreadHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
