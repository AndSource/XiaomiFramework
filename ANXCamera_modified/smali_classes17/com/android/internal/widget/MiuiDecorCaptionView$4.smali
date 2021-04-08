.class Lcom/android/internal/widget/MiuiDecorCaptionView$4;
.super Ljava/lang/Object;
.source "MiuiDecorCaptionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/MiuiDecorCaptionView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$4;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$4;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/widget/MiuiDecorCaptionView;->access$200(Lcom/android/internal/widget/MiuiDecorCaptionView;IJ)V

    return-void
.end method
