.class Lmiui/animation/physics/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/animation/physics/AnimationHandler$d;-><init>(Lmiui/animation/physics/AnimationHandler$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic j:Lmiui/animation/physics/AnimationHandler$d;


# direct methods
.method constructor <init>(Lmiui/animation/physics/AnimationHandler$d;)V
    .locals 0

    iput-object p1, p0, Lmiui/animation/physics/b;->j:Lmiui/animation/physics/AnimationHandler$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 0

    iget-object p0, p0, Lmiui/animation/physics/b;->j:Lmiui/animation/physics/AnimationHandler$d;

    iget-object p0, p0, Lmiui/animation/physics/AnimationHandler$b;->mDispatcher:Lmiui/animation/physics/AnimationHandler$a;

    invoke-virtual {p0}, Lmiui/animation/physics/AnimationHandler$a;->dispatchAnimationFrame()V

    return-void
.end method
