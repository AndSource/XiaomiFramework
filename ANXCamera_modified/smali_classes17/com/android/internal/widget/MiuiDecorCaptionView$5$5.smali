.class Lcom/android/internal/widget/MiuiDecorCaptionView$5$5;
.super Ljava/lang/Object;
.source "MiuiDecorCaptionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/MiuiDecorCaptionView$5;->hideCaptionView()V
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

    iput-object p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$5$5;->this$1:Lcom/android/internal/widget/MiuiDecorCaptionView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$5$5;->this$1:Lcom/android/internal/widget/MiuiDecorCaptionView$5;

    iget-object v0, v0, Lcom/android/internal/widget/MiuiDecorCaptionView$5;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->access$400(Lcom/android/internal/widget/MiuiDecorCaptionView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$5$5;->this$1:Lcom/android/internal/widget/MiuiDecorCaptionView$5;

    iget-object v0, v0, Lcom/android/internal/widget/MiuiDecorCaptionView$5;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->access$500(Lcom/android/internal/widget/MiuiDecorCaptionView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
