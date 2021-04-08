.class Lmiui/animation/internal/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/animation/internal/AnimRunner;->run(Lmiui/animation/IAnimTarget;Lmiui/animation/controller/AnimState;Lmiui/animation/controller/AnimState;Lmiui/animation/base/AnimConfigLink;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic YK:Lmiui/animation/base/AnimConfigLink;

.field final synthetic j:Lmiui/animation/internal/AnimRunner;

.field final synthetic sL:Lmiui/animation/IAnimTarget;

.field final synthetic wL:Lmiui/animation/controller/AnimState;

.field final synthetic xL:Lmiui/animation/controller/AnimState;


# direct methods
.method constructor <init>(Lmiui/animation/internal/AnimRunner;Lmiui/animation/IAnimTarget;Lmiui/animation/controller/AnimState;Lmiui/animation/controller/AnimState;Lmiui/animation/base/AnimConfigLink;)V
    .locals 0

    iput-object p1, p0, Lmiui/animation/internal/f;->j:Lmiui/animation/internal/AnimRunner;

    iput-object p2, p0, Lmiui/animation/internal/f;->sL:Lmiui/animation/IAnimTarget;

    iput-object p3, p0, Lmiui/animation/internal/f;->wL:Lmiui/animation/controller/AnimState;

    iput-object p4, p0, Lmiui/animation/internal/f;->xL:Lmiui/animation/controller/AnimState;

    iput-object p5, p0, Lmiui/animation/internal/f;->YK:Lmiui/animation/base/AnimConfigLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lmiui/animation/internal/f;->sL:Lmiui/animation/IAnimTarget;

    iget-object v1, p0, Lmiui/animation/internal/f;->j:Lmiui/animation/internal/AnimRunner;

    invoke-static {v1}, Lmiui/animation/internal/AnimRunner;->b(Lmiui/animation/internal/AnimRunner;)J

    move-result-wide v1

    iget-object v3, p0, Lmiui/animation/internal/f;->wL:Lmiui/animation/controller/AnimState;

    iget-object v4, p0, Lmiui/animation/internal/f;->xL:Lmiui/animation/controller/AnimState;

    iget-object v5, p0, Lmiui/animation/internal/f;->YK:Lmiui/animation/base/AnimConfigLink;

    invoke-static/range {v0 .. v5}, Lmiui/animation/internal/AnimRunner;->getAnimTask(Lmiui/animation/IAnimTarget;JLmiui/animation/controller/AnimState;Lmiui/animation/controller/AnimState;Lmiui/animation/base/AnimConfigLink;)Lmiui/animation/internal/AnimTask;

    iget-object p0, p0, Lmiui/animation/internal/f;->j:Lmiui/animation/internal/AnimRunner;

    invoke-static {p0}, Lmiui/animation/internal/AnimRunner;->c(Lmiui/animation/internal/AnimRunner;)V

    return-void
.end method
