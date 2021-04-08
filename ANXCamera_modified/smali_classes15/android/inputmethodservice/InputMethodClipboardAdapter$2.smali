.class Landroid/inputmethodservice/InputMethodClipboardAdapter$2;
.super Ljava/lang/Object;
.source "InputMethodClipboardAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/InputMethodClipboardAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodClipboardAdapter;I)V
    .locals 0

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$2;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    iput p2, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$2;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->access$300(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$2;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/ClipboardContentModel;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$2;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->access$500(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-virtual {v0}, Landroid/inputmethodservice/ClipboardContentModel;->getContent()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$2;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->access$400(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->dismiss()V

    invoke-virtual {v0}, Landroid/inputmethodservice/ClipboardContentModel;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/inputmethodservice/ClipboardContentModel;->getType()I

    move-result v2

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$2;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    invoke-static {v3}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->access$000(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Landroid/content/Context;

    move-result-object v3

    const-string v4, ""

    invoke-static {v4, v1, v2, v3}, Landroid/inputmethodservice/InputMethodUtil;->addClipboard(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    return-void
.end method
