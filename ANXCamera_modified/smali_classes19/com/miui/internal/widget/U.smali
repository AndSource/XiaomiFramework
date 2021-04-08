.class Lcom/miui/internal/widget/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/SlidingButtonHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic j:Lcom/miui/internal/widget/SlidingButtonHelper;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/SlidingButtonHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/U;->j:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lmiui/animation/physics/DynamicAnimation;FF)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/U;->j:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-static {p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->d(Lcom/miui/internal/widget/SlidingButtonHelper;)Landroid/widget/CompoundButton;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method
