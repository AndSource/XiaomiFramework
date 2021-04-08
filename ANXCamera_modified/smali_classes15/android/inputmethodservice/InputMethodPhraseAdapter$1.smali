.class Landroid/inputmethodservice/InputMethodPhraseAdapter$1;
.super Ljava/lang/Object;
.source "InputMethodPhraseAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/InputMethodPhraseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InputMethodPhraseAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodPhraseAdapter;I)V
    .locals 0

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodPhraseAdapter$1;->this$0:Landroid/inputmethodservice/InputMethodPhraseAdapter;

    iput p2, p0, Landroid/inputmethodservice/InputMethodPhraseAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodPhraseAdapter$1;->this$0:Landroid/inputmethodservice/InputMethodPhraseAdapter;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodPhraseAdapter;->access$100(Landroid/inputmethodservice/InputMethodPhraseAdapter;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodPhraseAdapter$1;->this$0:Landroid/inputmethodservice/InputMethodPhraseAdapter;

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodPhraseAdapter;->access$000(Landroid/inputmethodservice/InputMethodPhraseAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/InputMethodPhraseAdapter$1;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodPhraseAdapter$1;->this$0:Landroid/inputmethodservice/InputMethodPhraseAdapter;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodPhraseAdapter;->access$200(Landroid/inputmethodservice/InputMethodPhraseAdapter;)Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->dismiss()V

    return-void
.end method
