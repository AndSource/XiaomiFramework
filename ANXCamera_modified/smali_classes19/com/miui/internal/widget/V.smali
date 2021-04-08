.class Lcom/miui/internal/widget/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/animation/physics/DynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/widget/SlidingButtonHelper;->animateToState(Landroid/animation/Animator;ZILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic RG:Ljava/lang/Runnable;

.field final synthetic j:Lcom/miui/internal/widget/SlidingButtonHelper;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/SlidingButtonHelper;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/V;->j:Lcom/miui/internal/widget/SlidingButtonHelper;

    iput-object p2, p0, Lcom/miui/internal/widget/V;->RG:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lmiui/animation/physics/DynamicAnimation;ZFF)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/V;->RG:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
