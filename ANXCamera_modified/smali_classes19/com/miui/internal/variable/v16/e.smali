.class Lcom/miui/internal/variable/v16/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/variable/api/v29/Android_Widget_AbsSeekBar$Interface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic j:Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;


# direct methods
.method constructor <init>(Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/variable/v16/e;->j:Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p0, p0, Lcom/miui/internal/variable/v16/e;->j:Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/miui/internal/variable/v16/Android_Widget_AbsSeekBar_class;->handleOnTouchEvent(JLandroid/widget/AbsSeekBar;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
