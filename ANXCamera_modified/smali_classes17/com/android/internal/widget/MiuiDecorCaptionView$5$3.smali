.class Lcom/android/internal/widget/MiuiDecorCaptionView$5$3;
.super Ljava/lang/Object;
.source "MiuiDecorCaptionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/MiuiDecorCaptionView$5;->notifyFreeFormApplicationResizeEnd(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/widget/MiuiDecorCaptionView$5;

.field final synthetic val$millisecond:J


# direct methods
.method constructor <init>(Lcom/android/internal/widget/MiuiDecorCaptionView$5;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$5$3;->this$1:Lcom/android/internal/widget/MiuiDecorCaptionView$5;

    iput-wide p2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$5$3;->val$millisecond:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-wide v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$5$3;->val$millisecond:J

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$5$3;->this$1:Lcom/android/internal/widget/MiuiDecorCaptionView$5;

    iget-object v0, v0, Lcom/android/internal/widget/MiuiDecorCaptionView$5;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    const/4 v1, 0x2

    iget-wide v4, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$5$3;->val$millisecond:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/widget/MiuiDecorCaptionView;->access$200(Lcom/android/internal/widget/MiuiDecorCaptionView;IJ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$5$3;->this$1:Lcom/android/internal/widget/MiuiDecorCaptionView$5;

    iget-object v0, v0, Lcom/android/internal/widget/MiuiDecorCaptionView$5;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/widget/MiuiDecorCaptionView;->access$200(Lcom/android/internal/widget/MiuiDecorCaptionView;IJ)V

    :goto_0
    return-void
.end method
