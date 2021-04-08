.class Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardContentObserver;
.super Landroid/database/ContentObserver;
.source "InputMethodServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CloudClipboardContentObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardContentObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$800(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$902(Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$1002(Z)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$1102(J)J

    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$1100()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$1202(J)J

    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$1300()Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    move-result-object v1

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$1400(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$1002(Z)Z

    :cond_1
    return-void
.end method
