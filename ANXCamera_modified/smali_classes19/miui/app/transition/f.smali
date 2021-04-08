.class Lmiui/app/transition/f;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/transition/i;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic j:Lmiui/app/transition/i;

.field final synthetic k:Landroid/view/ViewGroupOverlay;

.field final synthetic m:Lmiui/view/RoundedFrameLayout;


# direct methods
.method constructor <init>(Lmiui/app/transition/i;Landroid/view/ViewGroupOverlay;Lmiui/view/RoundedFrameLayout;)V
    .locals 0

    iput-object p1, p0, Lmiui/app/transition/f;->j:Lmiui/app/transition/i;

    iput-object p2, p0, Lmiui/app/transition/f;->k:Landroid/view/ViewGroupOverlay;

    iput-object p3, p0, Lmiui/app/transition/f;->m:Lmiui/view/RoundedFrameLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lmiui/app/transition/f;->k:Landroid/view/ViewGroupOverlay;

    invoke-virtual {p0}, Landroid/view/ViewGroupOverlay;->clear()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lmiui/app/transition/f;->k:Landroid/view/ViewGroupOverlay;

    iget-object p0, p0, Lmiui/app/transition/f;->m:Lmiui/view/RoundedFrameLayout;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    return-void
.end method
