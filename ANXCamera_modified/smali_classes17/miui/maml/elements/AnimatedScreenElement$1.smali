.class Lmiui/maml/elements/AnimatedScreenElement$1;
.super Lmiui/animation/listener/TransitionListener;
.source "AnimatedScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/AnimatedScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/AnimatedScreenElement;


# direct methods
.method constructor <init>(Lmiui/maml/elements/AnimatedScreenElement;)V
    .locals 0

    iput-object p1, p0, Lmiui/maml/elements/AnimatedScreenElement$1;->this$0:Lmiui/maml/elements/AnimatedScreenElement;

    invoke-direct {p0}, Lmiui/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement$1;->this$0:Lmiui/maml/elements/AnimatedScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/AnimatedScreenElement;->access$200(Lmiui/maml/elements/AnimatedScreenElement;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/FunctionElement;

    invoke-virtual {v1}, Lmiui/maml/elements/FunctionElement;->perform()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement$1;->this$0:Lmiui/maml/elements/AnimatedScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/AnimatedScreenElement;->access$000(Lmiui/maml/elements/AnimatedScreenElement;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement$1;->this$0:Lmiui/maml/elements/AnimatedScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/AnimatedScreenElement;->access$300(Lmiui/maml/elements/AnimatedScreenElement;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/FunctionElement;

    invoke-virtual {v1}, Lmiui/maml/elements/FunctionElement;->perform()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiui/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/listener/UpdateInfo;

    iget-object v2, v1, Lmiui/animation/listener/UpdateInfo;->property:Lmiui/animation/property/FloatProperty;

    instance-of v3, v2, Lmiui/maml/folme/IAnimatedProperty;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lmiui/maml/folme/IAnimatedProperty;

    iget-object v4, p0, Lmiui/maml/elements/AnimatedScreenElement$1;->this$0:Lmiui/maml/elements/AnimatedScreenElement;

    iget v5, v1, Lmiui/animation/listener/UpdateInfo;->velocity:F

    invoke-interface {v3, v4, v5}, Lmiui/maml/folme/IAnimatedProperty;->setVelocityValue(Ljava/lang/Object;F)V

    :cond_0
    iget-boolean v3, v1, Lmiui/animation/listener/UpdateInfo;->isCompleted:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmiui/maml/elements/AnimatedScreenElement$1;->this$0:Lmiui/maml/elements/AnimatedScreenElement;

    invoke-static {v3}, Lmiui/maml/elements/AnimatedScreenElement;->access$000(Lmiui/maml/elements/AnimatedScreenElement;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement$1;->this$0:Lmiui/maml/elements/AnimatedScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/AnimatedScreenElement;->access$100(Lmiui/maml/elements/AnimatedScreenElement;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/FunctionElement;

    invoke-virtual {v1}, Lmiui/maml/elements/FunctionElement;->perform()V

    goto :goto_1

    :cond_3
    return-void
.end method
