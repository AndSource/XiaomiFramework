.class Lcom/miui/internal/app/ActionBarImpl$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/app/ActionBarImpl;->getContainerViewAnimator(Z)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/app/ActionBarImpl;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/ActionBarImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$5;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl$5;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    invoke-static {p0}, Lcom/miui/internal/app/ActionBarImpl;->access$300(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/widget/ActionBarContainer;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    return-void
.end method
