.class Lmiui/animation/physics/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/animation/physics/AnimationHandler$c;-><init>(Lmiui/animation/physics/AnimationHandler$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic j:Lmiui/animation/physics/AnimationHandler$c;


# direct methods
.method constructor <init>(Lmiui/animation/physics/AnimationHandler$c;)V
    .locals 0

    iput-object p1, p0, Lmiui/animation/physics/a;->j:Lmiui/animation/physics/AnimationHandler$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lmiui/animation/physics/a;->j:Lmiui/animation/physics/AnimationHandler$c;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lmiui/animation/physics/AnimationHandler$c;->a(Lmiui/animation/physics/AnimationHandler$c;J)J

    iget-object p0, p0, Lmiui/animation/physics/a;->j:Lmiui/animation/physics/AnimationHandler$c;

    iget-object p0, p0, Lmiui/animation/physics/AnimationHandler$b;->mDispatcher:Lmiui/animation/physics/AnimationHandler$a;

    invoke-virtual {p0}, Lmiui/animation/physics/AnimationHandler$a;->dispatchAnimationFrame()V

    return-void
.end method
