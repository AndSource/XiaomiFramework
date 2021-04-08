.class Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$2;
.super Ljava/lang/Object;
.source "InputMethodClipboardPhrasePopupView.java"

# interfaces
.implements Landroid/inputmethodservice/InputMethodAlertDialog$ConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;)V
    .locals 0

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$2;->this$0:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm()V
    .locals 2

    const-string v0, "InputMethodClipboard"

    const-string v1, "clipboard_clear_button"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$2;->this$0:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->access$000(Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$2;->this$0:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->access$400(Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;)Landroid/inputmethodservice/InputMethodClipboardAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$2;->this$0:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->access$100(Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$2;->this$0:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->access$000(Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/inputmethodservice/InputMethodUtil;->setClipboardModelList(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method
