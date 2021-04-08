.class public Lmiui/util/LongScreenshotUtils$ContentPort$H;
.super Landroid/os/Handler;
.source "LongScreenshotUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/LongScreenshotUtils$ContentPort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "H"
.end annotation


# static fields
.field public static final MSG_BROADCAST_CALLBACK:I = 0x3

.field public static final MSG_FINISH:I = 0x4

.field public static final MSG_SCROLL:I = 0x2

.field public static final MSG_START:I = 0x1


# instance fields
.field final synthetic this$0:Lmiui/util/LongScreenshotUtils$ContentPort;


# direct methods
.method public constructor <init>(Lmiui/util/LongScreenshotUtils$ContentPort;)V
    .locals 1

    iput-object p1, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$0:Lmiui/util/LongScreenshotUtils$ContentPort;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$0:Lmiui/util/LongScreenshotUtils$ContentPort;

    invoke-static {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->access$400(Lmiui/util/LongScreenshotUtils$ContentPort;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$0:Lmiui/util/LongScreenshotUtils$ContentPort;

    invoke-static {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->access$100(Lmiui/util/LongScreenshotUtils$ContentPort;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$0:Lmiui/util/LongScreenshotUtils$ContentPort;

    invoke-static {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->access$300(Lmiui/util/LongScreenshotUtils$ContentPort;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$0:Lmiui/util/LongScreenshotUtils$ContentPort;

    invoke-static {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->access$100(Lmiui/util/LongScreenshotUtils$ContentPort;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$0:Lmiui/util/LongScreenshotUtils$ContentPort;

    invoke-static {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->access$200(Lmiui/util/LongScreenshotUtils$ContentPort;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v2, v0, v1}, Lmiui/util/LongScreenshotUtils$ContentPort$H;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$ContentPort$H;->this$0:Lmiui/util/LongScreenshotUtils$ContentPort;

    invoke-static {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;->access$000(Lmiui/util/LongScreenshotUtils$ContentPort;)V

    nop

    :cond_4
    :goto_0
    return-void
.end method
