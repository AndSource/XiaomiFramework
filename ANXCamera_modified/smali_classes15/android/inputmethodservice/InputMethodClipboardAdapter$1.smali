.class Landroid/inputmethodservice/InputMethodClipboardAdapter$1;
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

.field final synthetic val$viewHolder:Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodClipboardAdapter;Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;I)V
    .locals 0

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$1;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    iput-object p2, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$1;->val$viewHolder:Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;

    iput p3, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$1;->val$viewHolder:Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;->checkMoreImage:Landroid/widget/ImageView;

    const v1, 0x11070056

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$1;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->access$000(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$1;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    invoke-static {v2}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->access$100(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Z

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;-><init>(Landroid/content/Context;Z)V

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$1;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->access$200(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;->initPopupWindow(Landroid/view/View;)V

    new-instance v1, Landroid/inputmethodservice/InputMethodClipboardAdapter$1$1;

    invoke-direct {v1, p0, v0}, Landroid/inputmethodservice/InputMethodClipboardAdapter$1$1;-><init>(Landroid/inputmethodservice/InputMethodClipboardAdapter$1;Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;)V

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;->setCheckMoreListener(Landroid/inputmethodservice/InputMethodClipboardCheckMoreView$CheckMoreListener;)V

    new-instance v1, Landroid/inputmethodservice/InputMethodClipboardAdapter$1$2;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/InputMethodClipboardAdapter$1$2;-><init>(Landroid/inputmethodservice/InputMethodClipboardAdapter$1;)V

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$1;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->access$400(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

    move-result-object v1

    new-instance v2, Landroid/inputmethodservice/InputMethodClipboardAdapter$1$3;

    invoke-direct {v2, p0, v0}, Landroid/inputmethodservice/InputMethodClipboardAdapter$1$3;-><init>(Landroid/inputmethodservice/InputMethodClipboardAdapter$1;Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;)V

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method
