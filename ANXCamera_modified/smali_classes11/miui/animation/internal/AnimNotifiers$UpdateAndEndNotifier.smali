.class Lmiui/animation/internal/AnimNotifiers$UpdateAndEndNotifier;
.super Lmiui/animation/internal/AnimNotifiers$BaseUpdateNotify;
.source "AnimNotifiers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/animation/internal/AnimNotifiers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpdateAndEndNotifier"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/animation/internal/AnimNotifiers$BaseUpdateNotify;-><init>()V

    return-void
.end method


# virtual methods
.method doNotify(Lmiui/animation/listener/TransitionListener;Ljava/lang/Object;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/animation/listener/TransitionListener;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lmiui/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/listener/UpdateInfo;

    iget-object v1, v0, Lmiui/animation/listener/UpdateInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v0}, Lmiui/animation/listener/UpdateInfo;->getFloatValue()F

    move-result v2

    iget-boolean v3, v0, Lmiui/animation/listener/UpdateInfo;->isCompleted:Z

    invoke-virtual {p1, p2, v1, v2, v3}, Lmiui/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;FZ)V

    iget-object v2, v0, Lmiui/animation/listener/UpdateInfo;->property:Lmiui/animation/property/FloatProperty;

    instance-of v1, v2, Lmiui/animation/property/IIntValueProperty;

    if-eqz v1, :cond_0

    check-cast v2, Lmiui/animation/property/IIntValueProperty;

    invoke-virtual {v0}, Lmiui/animation/listener/UpdateInfo;->getIntValue()I

    move-result v3

    iget v4, v0, Lmiui/animation/listener/UpdateInfo;->velocity:F

    iget-boolean v5, v0, Lmiui/animation/listener/UpdateInfo;->isCompleted:Z

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lmiui/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Lmiui/animation/property/IIntValueProperty;IFZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lmiui/animation/listener/UpdateInfo;->getFloatValue()F

    move-result v3

    iget v4, v0, Lmiui/animation/listener/UpdateInfo;->velocity:F

    iget-boolean v5, v0, Lmiui/animation/listener/UpdateInfo;->isCompleted:Z

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lmiui/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;FFZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2, p3}, Lmiui/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/listener/UpdateInfo;

    iget-boolean v2, v1, Lmiui/animation/listener/UpdateInfo;->isCompleted:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1, p2, v1}, Lmiui/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;Lmiui/animation/listener/UpdateInfo;)V

    goto :goto_1

    :cond_3
    return-void
.end method
