.class Lmiui/slide/SlideCoverEventManager$H;
.super Landroid/os/Handler;
.source "SlideCoverEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/slide/SlideCoverEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/slide/SlideCoverEventManager;


# direct methods
.method public constructor <init>(Lmiui/slide/SlideCoverEventManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lmiui/slide/SlideCoverEventManager$H;->this$0:Lmiui/slide/SlideCoverEventManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager$H;->this$0:Lmiui/slide/SlideCoverEventManager;

    invoke-static {v0}, Lmiui/slide/SlideCoverEventManager;->access$1200(Lmiui/slide/SlideCoverEventManager;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager$H;->this$0:Lmiui/slide/SlideCoverEventManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    invoke-static {v0, v1}, Lmiui/slide/SlideCoverEventManager;->access$1100(Lmiui/slide/SlideCoverEventManager;Lcom/android/internal/os/SomeArgs;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager$H;->this$0:Lmiui/slide/SlideCoverEventManager;

    invoke-static {v0}, Lmiui/slide/SlideCoverEventManager;->access$1000(Lmiui/slide/SlideCoverEventManager;)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
