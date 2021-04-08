.class Lmiui/animation/physics/AnimationHandler$d;
.super Lmiui/animation/physics/AnimationHandler$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/animation/physics/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final mChoreographer:Landroid/view/Choreographer;

.field private final mM:Landroid/view/Choreographer$FrameCallback;


# direct methods
.method constructor <init>(Lmiui/animation/physics/AnimationHandler$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/animation/physics/AnimationHandler$b;-><init>(Lmiui/animation/physics/AnimationHandler$a;)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Lmiui/animation/physics/AnimationHandler$d;->mChoreographer:Landroid/view/Choreographer;

    new-instance p1, Lmiui/animation/physics/b;

    invoke-direct {p1, p0}, Lmiui/animation/physics/b;-><init>(Lmiui/animation/physics/AnimationHandler$d;)V

    iput-object p1, p0, Lmiui/animation/physics/AnimationHandler$d;->mM:Landroid/view/Choreographer$FrameCallback;

    return-void
.end method


# virtual methods
.method postFrameCallback()V
    .locals 1

    iget-object v0, p0, Lmiui/animation/physics/AnimationHandler$d;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Lmiui/animation/physics/AnimationHandler$d;->mM:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
