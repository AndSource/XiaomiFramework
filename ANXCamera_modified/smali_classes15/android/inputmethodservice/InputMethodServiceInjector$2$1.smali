.class Landroid/inputmethodservice/InputMethodServiceInjector$2$1;
.super Ljava/lang/Object;
.source "InputMethodServiceInjector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/InputMethodServiceInjector$2;->onPrimaryClipChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InputMethodServiceInjector$2;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodServiceInjector$2;)V
    .locals 0

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodServiceInjector$2$1;->this$0:Landroid/inputmethodservice/InputMethodServiceInjector$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodServiceInjector$2$1;->this$0:Landroid/inputmethodservice/InputMethodServiceInjector$2;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodServiceInjector$2;->val$clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodServiceInjector$2$1;->this$0:Landroid/inputmethodservice/InputMethodServiceInjector$2;

    iget-object v3, v3, Landroid/inputmethodservice/InputMethodServiceInjector$2;->val$clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v3}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v3

    const-string v4, ""

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    return-void

    :cond_1
    const-string v6, "miui_input_no_need_show_pop"

    invoke-static {v6, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/inputmethodservice/InputMethodServiceInjector$2$1;->this$0:Landroid/inputmethodservice/InputMethodServiceInjector$2;

    iget-object v6, v6, Landroid/inputmethodservice/InputMethodServiceInjector$2;->val$context:Landroid/content/Context;

    invoke-static {v6}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$800(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    return-void

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$1202(J)J

    invoke-static {v5}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$902(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$2402(I)I

    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$2500()V

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodServiceInjector$2$1;->this$0:Landroid/inputmethodservice/InputMethodServiceInjector$2;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodServiceInjector$2;->val$context:Landroid/content/Context;

    invoke-static {v1, v4}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$2600(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$2400()I

    move-result v1

    iget-object v6, p0, Landroid/inputmethodservice/InputMethodServiceInjector$2$1;->this$0:Landroid/inputmethodservice/InputMethodServiceInjector$2;

    iget-object v6, v6, Landroid/inputmethodservice/InputMethodServiceInjector$2;->val$context:Landroid/content/Context;

    invoke-static {v4, v5, v1, v6}, Landroid/inputmethodservice/InputMethodUtil;->addClipboard(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    :cond_3
    return-void
.end method
