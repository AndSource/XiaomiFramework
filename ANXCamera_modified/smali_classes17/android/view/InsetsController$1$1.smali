.class Landroid/view/InsetsController$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "InsetsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/InsetsController$1;->onReady(Landroid/view/WindowInsetsAnimationController;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/view/InsetsController$1;


# direct methods
.method constructor <init>(Landroid/view/InsetsController$1;)V
    .locals 0

    iput-object p1, p0, Landroid/view/InsetsController$1$1;->this$1:Landroid/view/InsetsController$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsController$1$1;->this$1:Landroid/view/InsetsController$1;

    invoke-static {v0}, Landroid/view/InsetsController$1;->access$400(Landroid/view/InsetsController$1;)V

    return-void
.end method
