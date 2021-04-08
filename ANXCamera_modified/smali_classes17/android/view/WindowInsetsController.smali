.class public interface abstract Landroid/view/WindowInsetsController;
.super Ljava/lang/Object;
.source "WindowInsetsController.java"


# virtual methods
.method public controlInputMethodAnimation(Landroid/view/WindowInsetsAnimationControlListener;)V
    .locals 1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-interface {p0, v0, p1}, Landroid/view/WindowInsetsController;->controlWindowInsetsAnimation(ILandroid/view/WindowInsetsAnimationControlListener;)V

    return-void
.end method

.method public abstract controlWindowInsetsAnimation(ILandroid/view/WindowInsetsAnimationControlListener;)V
.end method

.method public abstract hide(I)V
.end method

.method public hideInputMethod()V
    .locals 1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-interface {p0, v0}, Landroid/view/WindowInsetsController;->hide(I)V

    return-void
.end method

.method public abstract show(I)V
.end method

.method public showInputMethod()V
    .locals 1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-interface {p0, v0}, Landroid/view/WindowInsetsController;->show(I)V

    return-void
.end method
