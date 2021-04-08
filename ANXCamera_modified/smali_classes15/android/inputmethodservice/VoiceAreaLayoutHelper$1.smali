.class Landroid/inputmethodservice/VoiceAreaLayoutHelper$1;
.super Ljava/lang/Object;
.source "VoiceAreaLayoutHelper.java"

# interfaces
.implements Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/VoiceAreaLayoutHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)V
    .locals 0

    iput-object p1, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$1;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateAnimation(Landroid/inputmethodservice/RecodingStateAnimatorView$State;)V
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$1;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    invoke-static {v0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->access$000(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/inputmethodservice/RecodingStateAnimatorView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$1;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    invoke-static {v0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->access$000(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/inputmethodservice/RecodingStateAnimatorView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/RecodingStateAnimatorView;->setPreState(Landroid/inputmethodservice/RecodingStateAnimatorView$State;)V

    return-void
.end method

.method public updateText(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper$1;->updateText(Ljava/lang/String;Z)V

    return-void
.end method

.method public updateText(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$1;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    invoke-static {v0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->access$100(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$1;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    invoke-static {v0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->access$100(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/inputmethodservice/VoiceInputHelper;->formatText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
