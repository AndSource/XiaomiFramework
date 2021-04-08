.class Landroid/inputmethodservice/InputMethodClipBubblePopupView$1;
.super Ljava/lang/Object;
.source "InputMethodClipBubblePopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/InputMethodClipBubblePopupView;->initPopupWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InputMethodClipBubblePopupView;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodClipBubblePopupView;)V
    .locals 0

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView$1;->this$0:Landroid/inputmethodservice/InputMethodClipBubblePopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView$1;->this$0:Landroid/inputmethodservice/InputMethodClipBubblePopupView;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->dismiss()V

    return-void
.end method
