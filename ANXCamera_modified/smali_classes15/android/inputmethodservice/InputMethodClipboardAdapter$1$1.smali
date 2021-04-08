.class Landroid/inputmethodservice/InputMethodClipboardAdapter$1$1;
.super Ljava/lang/Object;
.source "InputMethodClipboardAdapter.java"

# interfaces
.implements Landroid/inputmethodservice/InputMethodClipboardCheckMoreView$CheckMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/InputMethodClipboardAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/inputmethodservice/InputMethodClipboardAdapter$1;

.field final synthetic val$checkMoreView:Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodClipboardAdapter$1;Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;)V
    .locals 0

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$1$1;->this$1:Landroid/inputmethodservice/InputMethodClipboardAdapter$1;

    iput-object p2, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$1$1;->val$checkMoreView:Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickCopy()V
    .locals 6

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$1$1;->this$1:Landroid/inputmethodservice/InputMethodClipboardAdapter$1;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodClipboardAdapter$1;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->access$300(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$1$1;->this$1:Landroid/inputmethodservice/InputMethodClipboardAdapter$1;

    iget v1, v1, Landroid/inputmethodservice/InputMethodClipboardAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/ClipboardContentModel;

    invoke-virtual {v0}, Landroid/inputmethodservice/ClipboardContentModel;->getContent()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$1$1;->this$1:Landroid/inputmethodservice/InputMethodClipboardAdapter$1;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodClipboardAdapter$1;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->access$000(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    const-string v2, "miui_input_no_need_show_pop"

    invoke-static {v2, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_0

    :cond_0
    const-string v3, "InputClipboardAdapter"

    const-string v4, "ClipboardManager is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$1$1;->this$1:Landroid/inputmethodservice/InputMethodClipboardAdapter$1;

    iget-object v3, v3, Landroid/inputmethodservice/InputMethodClipboardAdapter$1;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    invoke-static {v3}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->access$000(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$1$1;->this$1:Landroid/inputmethodservice/InputMethodClipboardAdapter$1;

    iget-object v4, v4, Landroid/inputmethodservice/InputMethodClipboardAdapter$1;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    invoke-static {v4}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->access$000(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x110e00a7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$1$1;->val$checkMoreView:Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;

    invoke-virtual {v3}, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;->dismiss()V

    return-void
.end method

.method public onClickDelete()V
    .locals 3

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$1$1;->this$1:Landroid/inputmethodservice/InputMethodClipboardAdapter$1;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodClipboardAdapter$1;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->access$300(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$1$1;->this$1:Landroid/inputmethodservice/InputMethodClipboardAdapter$1;

    iget v1, v1, Landroid/inputmethodservice/InputMethodClipboardAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$1$1;->this$1:Landroid/inputmethodservice/InputMethodClipboardAdapter$1;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodClipboardAdapter$1;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$1$1;->this$1:Landroid/inputmethodservice/InputMethodClipboardAdapter$1;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodClipboardAdapter$1;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->access$000(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$1$1;->this$1:Landroid/inputmethodservice/InputMethodClipboardAdapter$1;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodClipboardAdapter$1;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->access$300(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/inputmethodservice/InputMethodUtil;->setClipboardModelList(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$1$1;->this$1:Landroid/inputmethodservice/InputMethodClipboardAdapter$1;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodClipboardAdapter$1;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->access$000(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$1$1;->this$1:Landroid/inputmethodservice/InputMethodClipboardAdapter$1;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodClipboardAdapter$1;->this$0:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->access$000(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110e00a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter$1$1;->val$checkMoreView:Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;->dismiss()V

    return-void
.end method

.method public onInsertToPhrase()V
    .locals 0

    return-void
.end method
