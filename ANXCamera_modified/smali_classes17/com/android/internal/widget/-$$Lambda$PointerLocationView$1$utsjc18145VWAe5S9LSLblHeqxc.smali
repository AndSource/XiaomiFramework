.class public final synthetic Lcom/android/internal/widget/-$$Lambda$PointerLocationView$1$utsjc18145VWAe5S9LSLblHeqxc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/widget/PointerLocationView$1;

.field private final synthetic f$1:Landroid/graphics/Region;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/widget/PointerLocationView$1;Landroid/graphics/Region;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/-$$Lambda$PointerLocationView$1$utsjc18145VWAe5S9LSLblHeqxc;->f$0:Lcom/android/internal/widget/PointerLocationView$1;

    iput-object p2, p0, Lcom/android/internal/widget/-$$Lambda$PointerLocationView$1$utsjc18145VWAe5S9LSLblHeqxc;->f$1:Landroid/graphics/Region;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/-$$Lambda$PointerLocationView$1$utsjc18145VWAe5S9LSLblHeqxc;->f$0:Lcom/android/internal/widget/PointerLocationView$1;

    iget-object v1, p0, Lcom/android/internal/widget/-$$Lambda$PointerLocationView$1$utsjc18145VWAe5S9LSLblHeqxc;->f$1:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView$1;->lambda$onSystemGestureExclusionChanged$0$PointerLocationView$1(Landroid/graphics/Region;)V

    return-void
.end method
