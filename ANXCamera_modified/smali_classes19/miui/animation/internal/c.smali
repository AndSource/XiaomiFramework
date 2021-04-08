.class Lmiui/animation/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/animation/internal/AnimRunner;->doAnimationFrame(J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic j:Lmiui/animation/internal/AnimRunner;

.field final synthetic sL:Lmiui/animation/IAnimTarget;

.field final synthetic tL:J

.field final synthetic uL:J


# direct methods
.method constructor <init>(Lmiui/animation/internal/AnimRunner;Lmiui/animation/IAnimTarget;JJ)V
    .locals 0

    iput-object p1, p0, Lmiui/animation/internal/c;->j:Lmiui/animation/internal/AnimRunner;

    iput-object p2, p0, Lmiui/animation/internal/c;->sL:Lmiui/animation/IAnimTarget;

    iput-wide p3, p0, Lmiui/animation/internal/c;->tL:J

    iput-wide p5, p0, Lmiui/animation/internal/c;->uL:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lmiui/animation/internal/c;->sL:Lmiui/animation/IAnimTarget;

    invoke-virtual {v0}, Lmiui/animation/IAnimTarget;->getAnimTask()Lmiui/animation/internal/AnimTask;

    move-result-object v0

    iget-object v1, p0, Lmiui/animation/internal/c;->j:Lmiui/animation/internal/AnimRunner;

    iget-wide v3, p0, Lmiui/animation/internal/c;->tL:J

    iget-wide v5, p0, Lmiui/animation/internal/c;->uL:J

    const/4 v2, 0x0

    new-array v7, v2, [J

    move-object v2, v0

    invoke-static/range {v1 .. v7}, Lmiui/animation/internal/AnimRunner;->a(Lmiui/animation/internal/AnimRunner;Lmiui/animation/internal/AnimTask;JJ[J)V

    iget-object v1, p0, Lmiui/animation/internal/c;->sL:Lmiui/animation/IAnimTarget;

    invoke-virtual {v0}, Lmiui/animation/internal/AnimTask;->isFinished()Z

    move-result v0

    invoke-virtual {v1, v0}, Lmiui/animation/IAnimTarget;->onFrameEnd(Z)V

    iget-object v0, p0, Lmiui/animation/internal/c;->j:Lmiui/animation/internal/AnimRunner;

    iget-object p0, p0, Lmiui/animation/internal/c;->sL:Lmiui/animation/IAnimTarget;

    invoke-static {v0, p0}, Lmiui/animation/internal/AnimRunner;->a(Lmiui/animation/internal/AnimRunner;Lmiui/animation/IAnimTarget;)V

    return-void
.end method
