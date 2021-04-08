.class Landroid/inputmethodservice/XiaoAiVoiceInputController$1;
.super Ljava/lang/Object;
.source "XiaoAiVoiceInputController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/XiaoAiVoiceInputController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    invoke-static {p2}, Lcom/xiaomi/inputmethod/IVoiceIMInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/inputmethod/IVoiceIMInterface;

    move-result-object v0

    invoke-static {v0}, Landroid/inputmethodservice/XiaoAiVoiceInputController;->access$002(Lcom/xiaomi/inputmethod/IVoiceIMInterface;)Lcom/xiaomi/inputmethod/IVoiceIMInterface;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sXiaoAiService : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/inputmethodservice/XiaoAiVoiceInputController;->access$000()Lcom/xiaomi/inputmethod/IVoiceIMInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XiaoAiVoiceInputController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/inputmethodservice/XiaoAiVoiceInputController;->access$002(Lcom/xiaomi/inputmethod/IVoiceIMInterface;)Lcom/xiaomi/inputmethod/IVoiceIMInterface;

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/inputmethodservice/XiaoAiVoiceInputController;->access$102(Z)Z

    return-void
.end method
