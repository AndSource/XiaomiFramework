.class Lcom/android/internal/widget/MiuiDecorCaptionView$5$2;
.super Ljava/lang/Object;
.source "MiuiDecorCaptionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/MiuiDecorCaptionView$5;->notifyFreeFormApplicationResizeStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/widget/MiuiDecorCaptionView$5;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/MiuiDecorCaptionView$5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$5$2;->this$1:Lcom/android/internal/widget/MiuiDecorCaptionView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$5$2;->this$1:Lcom/android/internal/widget/MiuiDecorCaptionView$5;

    iget-object v0, v0, Lcom/android/internal/widget/MiuiDecorCaptionView$5;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->access$000(Lcom/android/internal/widget/MiuiDecorCaptionView;)V

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$5$2;->this$1:Lcom/android/internal/widget/MiuiDecorCaptionView$5;

    iget-object v0, v0, Lcom/android/internal/widget/MiuiDecorCaptionView$5;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/widget/MiuiDecorCaptionView;->access$200(Lcom/android/internal/widget/MiuiDecorCaptionView;IJ)V

    return-void
.end method
