.class Lmiuix/animation/internal/AnimRunner$5;
.super Ljava/lang/Object;
.source "AnimRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/animation/internal/AnimRunner;->run(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/animation/internal/AnimRunner;

.field final synthetic val$config:Lmiuix/animation/base/AnimConfigLink;

.field final synthetic val$from:Lmiuix/animation/controller/AnimState;

.field final synthetic val$target:Lmiuix/animation/IAnimTarget;

.field final synthetic val$to:Lmiuix/animation/controller/AnimState;


# direct methods
.method constructor <init>(Lmiuix/animation/internal/AnimRunner;Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V
    .locals 0

    iput-object p1, p0, Lmiuix/animation/internal/AnimRunner$5;->this$0:Lmiuix/animation/internal/AnimRunner;

    iput-object p2, p0, Lmiuix/animation/internal/AnimRunner$5;->val$target:Lmiuix/animation/IAnimTarget;

    iput-object p3, p0, Lmiuix/animation/internal/AnimRunner$5;->val$from:Lmiuix/animation/controller/AnimState;

    iput-object p4, p0, Lmiuix/animation/internal/AnimRunner$5;->val$to:Lmiuix/animation/controller/AnimState;

    iput-object p5, p0, Lmiuix/animation/internal/AnimRunner$5;->val$config:Lmiuix/animation/base/AnimConfigLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lmiuix/animation/internal/AnimRunner$5;->val$target:Lmiuix/animation/IAnimTarget;

    iget-object v1, p0, Lmiuix/animation/internal/AnimRunner$5;->this$0:Lmiuix/animation/internal/AnimRunner;

    invoke-static {v1}, Lmiuix/animation/internal/AnimRunner;->access$300(Lmiuix/animation/internal/AnimRunner;)J

    move-result-wide v1

    iget-object v3, p0, Lmiuix/animation/internal/AnimRunner$5;->val$from:Lmiuix/animation/controller/AnimState;

    iget-object v4, p0, Lmiuix/animation/internal/AnimRunner$5;->val$to:Lmiuix/animation/controller/AnimState;

    iget-object v5, p0, Lmiuix/animation/internal/AnimRunner$5;->val$config:Lmiuix/animation/base/AnimConfigLink;

    invoke-static/range {v0 .. v5}, Lmiuix/animation/internal/AnimRunner;->getAnimTask(Lmiuix/animation/IAnimTarget;JLmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)Lmiuix/animation/internal/AnimTask;

    iget-object p0, p0, Lmiuix/animation/internal/AnimRunner$5;->this$0:Lmiuix/animation/internal/AnimRunner;

    invoke-static {p0}, Lmiuix/animation/internal/AnimRunner;->access$400(Lmiuix/animation/internal/AnimRunner;)V

    return-void
.end method
