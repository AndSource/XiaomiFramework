.class public Lmiui/animation/internal/AnimTask;
.super Ljava/lang/Object;
.source "AnimTask.java"


# instance fields
.field private mNotRunList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/animation/internal/AnimRunningInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mQueueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/animation/internal/TransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lmiui/animation/internal/AnimRunningInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTarget:Lmiui/animation/IAnimTarget;

.field private mTempList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/animation/internal/AnimRunningInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lmiui/animation/listener/UpdateInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiui/animation/IAnimTarget;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/animation/internal/AnimTask;->mQueueList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/animation/internal/AnimTask;->mTempList:Ljava/util/List;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiui/animation/internal/AnimTask;->mUpdateMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/animation/internal/AnimTask;->mNotRunList:Ljava/util/List;

    iput-object p1, p0, Lmiui/animation/internal/AnimTask;->mTarget:Lmiui/animation/IAnimTarget;

    return-void
.end method

.method private cancelAnim(Lmiui/animation/internal/AnimRunningInfo;)V
    .locals 1

    const/4 p0, 0x0

    iput-object p0, p1, Lmiui/animation/internal/AnimRunningInfo;->pending:Lmiui/animation/internal/AnimRunningInfo;

    invoke-virtual {p1}, Lmiui/animation/internal/AnimRunningInfo;->stop()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cancelAnim, cancel "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "miuisdk_anim"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private checkAndNotifyEnd(Ljava/lang/Object;Z)Z
    .locals 1

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p0, v0, p1}, Lmiui/animation/internal/AnimTask;->isTagRunningIn(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mNotRunList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lmiui/animation/internal/AnimTask;->isTagRunningIn(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lmiui/animation/internal/AnimTask;->notifyAllEnd(Ljava/lang/Object;Z)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private clearRecords()V
    .locals 4

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/internal/AnimRunningInfo;

    iget-object v2, p0, Lmiui/animation/internal/AnimTask;->mTarget:Lmiui/animation/IAnimTarget;

    iget-object v1, v1, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    invoke-static {v2, v1}, Lmiui/animation/internal/AnimNotifiers;->getListenerKey(Lmiui/animation/IAnimTarget;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-class v2, Lmiui/animation/listener/TransitionListener;

    const/4 v3, 0x0

    new-array v3, v3, [Lmiui/animation/listener/TransitionListener;

    invoke-static {v1, v2, v3}, Lmiui/animation/listener/ListenerBus;->removeListener(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mNotRunList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mQueueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lmiui/animation/internal/AnimTask;->mUpdateMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private collectListeners()V
    .locals 5

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/internal/AnimRunningInfo;

    iget-object v2, v1, Lmiui/animation/internal/AnimRunningInfo;->config:Lmiui/animation/base/AnimConfigLink;

    iget-object v3, v1, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    iget-object v1, v1, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    iget-object v4, p0, Lmiui/animation/internal/AnimTask;->mTarget:Lmiui/animation/IAnimTarget;

    invoke-virtual {v2, v3, v1, v4, v3}, Lmiui/animation/base/AnimConfigLink;->collectListeners(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;Lmiui/animation/IAnimTarget;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private collectUpdateInfo()V
    .locals 5

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mUpdateMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/internal/AnimRunningInfo;

    iget-object v2, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    iget v2, v1, Lmiui/animation/internal/AnimRunningInfo;->status:I

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lmiui/animation/internal/AnimRunningInfo;->updateToDate()Lmiui/animation/listener/UpdateInfo;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, v1, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    invoke-direct {p0, v3}, Lmiui/animation/internal/AnimTask;->getUpdateList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-boolean v2, v2, Lmiui/animation/listener/UpdateInfo;->isCompleted:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "anim end, tag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", property = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "miuisdk_anim"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method private doNotify(Ljava/lang/Class;Ljava/lang/Object;Ljava/util/List;Lmiui/animation/listener/UpdateInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lmiui/animation/internal/AnimNotifiers$BaseUpdateNotify;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lmiui/animation/listener/UpdateInfo;",
            ">;",
            "Lmiui/animation/listener/UpdateInfo;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Lmiui/animation/internal/AnimTask;->mTarget:Lmiui/animation/IAnimTarget;

    invoke-static {p1, p0}, Lmiui/animation/internal/AnimNotifiers;->getNotifier(Ljava/lang/Class;Lmiui/animation/IAnimTarget;)Lmiui/animation/internal/AnimNotifiers$BaseUpdateNotify;

    move-result-object p0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p2, p3}, Lmiui/animation/internal/AnimNotifiers$BaseUpdateNotify;->setInfo(Ljava/lang/Object;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Lmiui/animation/listener/UpdateInfo;

    const/4 p3, 0x0

    aput-object p4, p1, p3

    invoke-virtual {p0, p2, p1}, Lmiui/animation/internal/AnimNotifiers$BaseUpdateNotify;->setUpdate(Ljava/lang/Object;[Lmiui/animation/listener/UpdateInfo;)V

    :goto_0
    invoke-virtual {p0}, Lmiui/animation/internal/AnimNotifiers$BaseUpdateNotify;->notifyListeners()V

    return-void
.end method

.method private varargs endQueuedTransitions(Z[Lmiui/animation/property/FloatProperty;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lmiui/animation/internal/AnimTask;->mQueueList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/animation/internal/TransitionInfo;

    invoke-direct {p0, v2, p1, p2}, Lmiui/animation/internal/AnimTask;->endTransitionInfo(Lmiui/animation/internal/TransitionInfo;Z[Lmiui/animation/property/FloatProperty;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lmiui/animation/internal/AnimTask;->mQueueList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private varargs endTransitionInfo(Lmiui/animation/internal/TransitionInfo;Z[Lmiui/animation/property/FloatProperty;)Z
    .locals 4

    iget-object v0, p1, Lmiui/animation/internal/TransitionInfo;->toPropValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/property/FloatProperty;

    array-length v2, p3

    if-lez v2, :cond_0

    invoke-direct {p0, v1, p3}, Lmiui/animation/internal/AnimTask;->isIn(Lmiui/animation/property/FloatProperty;[Lmiui/animation/property/FloatProperty;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-object v2, p1, Lmiui/animation/internal/TransitionInfo;->target:Lmiui/animation/IAnimTarget;

    iget-object v3, p1, Lmiui/animation/internal/TransitionInfo;->toPropValues:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-direct {p0, v2, v1, v3}, Lmiui/animation/internal/AnimTask;->setTargetValue(Lmiui/animation/IAnimTarget;Lmiui/animation/property/FloatProperty;Ljava/lang/Number;)V

    :cond_1
    iget-object v2, p1, Lmiui/animation/internal/TransitionInfo;->toPropValues:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object p0, p1, Lmiui/animation/internal/TransitionInfo;->toPropValues:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    return p0
.end method

.method private findAndHandleSameAnim(Lmiui/animation/internal/AnimRunningInfo;)V
    .locals 6

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/internal/AnimRunningInfo;

    if-eq v1, p1, :cond_0

    iget-wide v2, v1, Lmiui/animation/internal/AnimRunningInfo;->flags:J

    const-wide/16 v4, 0x2

    invoke-static {v2, v3, v4, v5}, Lmiui/animation/utils/CommonUtils;->hasFlags(JJ)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    iget-object v3, p1, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1, p1}, Lmiui/animation/internal/AnimTask;->handleSameAnim(Lmiui/animation/internal/AnimRunningInfo;Lmiui/animation/internal/AnimRunningInfo;)V

    :cond_1
    return-void
.end method

.method private findByStatus(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lmiui/animation/internal/AnimRunningInfo;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/internal/AnimRunningInfo;

    iget v1, v0, Lmiui/animation/internal/AnimRunningInfo;->status:I

    if-ne v1, p1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getTotalList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/animation/internal/AnimRunningInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lmiui/animation/internal/AnimTask;->mNotRunList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lmiui/animation/internal/AnimTask;->mNotRunList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-object v0
.end method

.method private getUpdateList(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lmiui/animation/listener/UpdateInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mUpdateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lmiui/animation/internal/AnimTask;->mUpdateMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private handleBegin(Lmiui/animation/IAnimTarget;J)V
    .locals 8

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mTempList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mTempList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lmiui/animation/internal/AnimTask;->findByStatus(ILjava/util/List;)V

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mTempList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lmiui/animation/internal/AnimTask;->mTempList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/animation/internal/AnimRunningInfo;

    iget-wide v3, v2, Lmiui/animation/internal/AnimRunningInfo;->initTime:J

    sub-long v3, p2, v3

    iget-object v5, v2, Lmiui/animation/internal/AnimRunningInfo;->config:Lmiui/animation/base/AnimConfigLink;

    iget-object v6, v2, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    iget-object v7, v2, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v5, v6, v7}, Lmiui/animation/base/AnimConfigLink;->getDelay(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v2, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    invoke-direct {p0, v3}, Lmiui/animation/internal/AnimTask;->notifyBegin(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v2, p1, p2, p3}, Lmiui/animation/internal/AnimRunningInfo;->begin(Lmiui/animation/IAnimTarget;J)V

    invoke-direct {p0, v2}, Lmiui/animation/internal/AnimTask;->stopSameRunningAnim(Lmiui/animation/internal/AnimRunningInfo;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    invoke-virtual {v2}, Lmiui/animation/internal/AnimRunningInfo;->updateToDate()Lmiui/animation/listener/UpdateInfo;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lmiui/animation/internal/AnimTask;->notifyPropertyBegin(Ljava/lang/Object;Lmiui/animation/listener/UpdateInfo;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private handlePendingAnim(J)V
    .locals 7

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mTempList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mTempList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lmiui/animation/internal/AnimTask;->findByStatus(ILjava/util/List;)V

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mTempList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mTempList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/internal/AnimRunningInfo;

    iget-object v2, v1, Lmiui/animation/internal/AnimRunningInfo;->config:Lmiui/animation/base/AnimConfigLink;

    iget-object v3, v1, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    iget-object v4, v1, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v2, v3, v4}, Lmiui/animation/base/AnimConfigLink;->getMinDuration(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;)J

    move-result-wide v2

    invoke-virtual {v1}, Lmiui/animation/internal/AnimRunningInfo;->getRunningTime()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-gez v6, :cond_2

    sub-long/2addr v2, v4

    cmp-long v2, v2, p1

    if-gez v2, :cond_1

    :cond_2
    invoke-virtual {v1}, Lmiui/animation/internal/AnimRunningInfo;->stop()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lmiui/animation/internal/AnimTask;->notifyUpdateAndEnd()V

    return-void
.end method

.method private handleQueue(J)V
    .locals 2

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mQueueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mQueueList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/internal/TransitionInfo;

    invoke-direct {p0, p1, p2, v0}, Lmiui/animation/internal/AnimTask;->startTransition(JLmiui/animation/internal/TransitionInfo;)V

    :cond_0
    return-void
.end method

.method private handleSameAnim(Lmiui/animation/internal/AnimRunningInfo;Lmiui/animation/internal/AnimRunningInfo;)V
    .locals 4

    iget p0, p1, Lmiui/animation/internal/AnimRunningInfo;->status:I

    if-nez p0, :cond_0

    const/4 p0, 0x3

    iput p0, p1, Lmiui/animation/internal/AnimRunningInfo;->status:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    iget-object p0, p1, Lmiui/animation/internal/AnimRunningInfo;->config:Lmiui/animation/base/AnimConfigLink;

    iget-object v0, p1, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    iget-object v1, p1, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {p0, v0, v1}, Lmiui/animation/base/AnimConfigLink;->getMinDuration(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;)J

    move-result-wide v0

    invoke-virtual {p1}, Lmiui/animation/internal/AnimRunningInfo;->getRunningTime()J

    move-result-wide v2

    cmp-long p0, v2, v0

    if-gez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSameAnim, "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", prev.config.minDuration = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", prev.runningTime = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmiui/animation/internal/AnimRunningInfo;->getRunningTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", pending current info"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "miuisdk_anim"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p2}, Lmiui/animation/internal/AnimRunningInfo;->setPending(Lmiui/animation/internal/AnimRunningInfo;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lmiui/animation/internal/AnimRunningInfo;->stop()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    iget-object p0, p1, Lmiui/animation/internal/AnimRunningInfo;->pending:Lmiui/animation/internal/AnimRunningInfo;

    invoke-virtual {p0}, Lmiui/animation/internal/AnimRunningInfo;->stop()V

    iput-object p2, p1, Lmiui/animation/internal/AnimRunningInfo;->pending:Lmiui/animation/internal/AnimRunningInfo;

    :cond_3
    :goto_0
    return-void
.end method

.method private isAnimEnd(Lmiui/animation/internal/AnimRunningInfo;J)Z
    .locals 0

    invoke-virtual {p1, p2, p3}, Lmiui/animation/internal/AnimRunningInfo;->isStarted(J)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    invoke-virtual {p0}, Lmiui/animation/styles/PropertyStyle;->isRunning()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private varargs isIn(Lmiui/animation/property/FloatProperty;[Lmiui/animation/property/FloatProperty;)Z
    .locals 3

    array-length p0, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, p2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private isRunningTag(Lmiui/animation/internal/AnimRunningInfo;Ljava/lang/Object;)Z
    .locals 1

    iget p0, p1, Lmiui/animation/internal/AnimRunningInfo;->status:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    iget-object p0, p1, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTagRunningIn(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lmiui/animation/internal/AnimRunningInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/internal/AnimRunningInfo;

    invoke-direct {p0, v0, p2}, Lmiui/animation/internal/AnimTask;->isRunningTag(Lmiui/animation/internal/AnimRunningInfo;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private notifyAllEnd(Ljava/lang/Object;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const-class p2, Lmiui/animation/internal/AnimNotifiers$CancelAllNotifier;

    goto :goto_0

    :cond_0
    const-class p2, Lmiui/animation/internal/AnimNotifiers$CompleteNotifier;

    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0, v0}, Lmiui/animation/internal/AnimTask;->doNotify(Ljava/lang/Class;Ljava/lang/Object;Ljava/util/List;Lmiui/animation/listener/UpdateInfo;)V

    return-void
.end method

.method private notifyAnimEnd(Ljava/lang/Object;Lmiui/animation/listener/UpdateInfo;)V
    .locals 2

    const-class v0, Lmiui/animation/internal/AnimNotifiers$AnimEndNotifier;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lmiui/animation/internal/AnimTask;->doNotify(Ljava/lang/Class;Ljava/lang/Object;Ljava/util/List;Lmiui/animation/listener/UpdateInfo;)V

    return-void
.end method

.method private notifyBegin(Ljava/lang/Object;)V
    .locals 2

    const-class v0, Lmiui/animation/internal/AnimNotifiers$BeginNotifier;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v1}, Lmiui/animation/internal/AnimTask;->doNotify(Ljava/lang/Class;Ljava/lang/Object;Ljava/util/List;Lmiui/animation/listener/UpdateInfo;)V

    return-void
.end method

.method private notifyCancel(Ljava/lang/Object;Lmiui/animation/listener/UpdateInfo;)V
    .locals 2

    const-class v0, Lmiui/animation/internal/AnimNotifiers$CancelNotifier;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lmiui/animation/internal/AnimTask;->doNotify(Ljava/lang/Class;Ljava/lang/Object;Ljava/util/List;Lmiui/animation/listener/UpdateInfo;)V

    return-void
.end method

.method private notifyPropertyBegin(Ljava/lang/Object;Lmiui/animation/listener/UpdateInfo;)V
    .locals 2

    const-class v0, Lmiui/animation/internal/AnimNotifiers$PropertyBeginNotifier;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lmiui/animation/internal/AnimTask;->doNotify(Ljava/lang/Class;Ljava/lang/Object;Ljava/util/List;Lmiui/animation/listener/UpdateInfo;)V

    return-void
.end method

.method private notifyUpdateAndEnd()V
    .locals 6

    invoke-direct {p0}, Lmiui/animation/internal/AnimTask;->collectUpdateInfo()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lmiui/animation/internal/AnimTask;->mUpdateMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-ltz v4, :cond_3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/animation/listener/UpdateInfo;

    iget-boolean v5, v5, Lmiui/animation/listener/UpdateInfo;->isCanceled:Z

    if-eqz v5, :cond_2

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0, v3, v2}, Lmiui/animation/internal/AnimTask;->notifyUpdateAndEnd(Ljava/lang/Object;Ljava/util/List;)V

    const/4 v2, 0x0

    invoke-direct {p0, v3, v2}, Lmiui/animation/internal/AnimTask;->checkAndNotifyEnd(Ljava/lang/Object;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lmiui/animation/internal/AnimTask;->mUpdateMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    return-void
.end method

.method private notifyUpdateAndEnd(Ljava/lang/Object;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lmiui/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lmiui/animation/internal/AnimNotifiers$UpdateAndEndNotifier;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lmiui/animation/internal/AnimTask;->doNotify(Ljava/lang/Class;Ljava/lang/Object;Ljava/util/List;Lmiui/animation/listener/UpdateInfo;)V

    return-void
.end method

.method private removeStoppedAnim()V
    .locals 4

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mTempList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/internal/AnimRunningInfo;

    iget v2, v1, Lmiui/animation/internal/AnimRunningInfo;->status:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lmiui/animation/internal/AnimTask;->mTempList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object p0, p0, Lmiui/animation/internal/AnimTask;->mTempList:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private restoreAnim()V
    .locals 2

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p0, Lmiui/animation/internal/AnimTask;->mNotRunList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lmiui/animation/internal/AnimTask;->mNotRunList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private varargs saveNotAllowedAnim([J)V
    .locals 5

    array-length v0, p1

    const-wide/16 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-wide v3, p1, v0

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    cmp-long p1, v3, v1

    if-lez p1, :cond_3

    iget-object p1, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/internal/AnimRunningInfo;

    iget-wide v1, v0, Lmiui/animation/internal/AnimRunningInfo;->flags:J

    invoke-static {v1, v2, v3, v4}, Lmiui/animation/utils/CommonUtils;->hasFlags(JJ)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lmiui/animation/internal/AnimTask;->mNotRunList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object p0, p0, Lmiui/animation/internal/AnimTask;->mNotRunList:Ljava/util/List;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->removeAll(Ljava/util/Collection;)Z

    :cond_3
    return-void
.end method

.method private setTargetValue(Lmiui/animation/IAnimTarget;Lmiui/animation/property/FloatProperty;Ljava/lang/Number;)V
    .locals 0

    instance-of p0, p2, Lmiui/animation/property/IIntValueProperty;

    if-eqz p0, :cond_0

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p0

    const p3, 0x7fffffff

    if-eq p0, p3, :cond_1

    check-cast p2, Lmiui/animation/property/IIntValueProperty;

    invoke-virtual {p1, p2, p0}, Lmiui/animation/IAnimTarget;->setIntValue(Lmiui/animation/property/IIntValueProperty;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p1, p2, p0}, Lmiui/animation/internal/AnimValueUtils;->getValue(Lmiui/animation/IAnimTarget;Lmiui/animation/property/FloatProperty;F)F

    move-result p0

    const p3, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float p3, p0, p3

    if-eqz p3, :cond_1

    invoke-virtual {p1, p2, p0}, Lmiui/animation/IAnimTarget;->setValue(Lmiui/animation/property/FloatProperty;F)V

    :cond_1
    :goto_0
    return-void
.end method

.method private startTransition(JLmiui/animation/internal/TransitionInfo;)V
    .locals 8

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lmiui/animation/internal/AnimRunningInfo;

    iget-object v0, v3, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    iget-object v4, p3, Lmiui/animation/internal/TransitionInfo;->toTag:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p3, Lmiui/animation/internal/TransitionInfo;->toPropValues:Ljava/util/Map;

    iget-object v4, v3, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p3, Lmiui/animation/internal/TransitionInfo;->config:Lmiui/animation/base/AnimConfigLink;

    iget-object v4, v3, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    iget-object v5, v3, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v0, v4, v5}, Lmiui/animation/base/AnimConfigLink;->getDelay(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;)J

    move-result-wide v4

    cmp-long v0, v4, v1

    if-nez v0, :cond_0

    move-object v0, p0

    move-object v1, v3

    move-object v2, p3

    move-object v3, v6

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lmiui/animation/internal/AnimTask;->tryUpdate(Lmiui/animation/internal/AnimRunningInfo;Lmiui/animation/internal/TransitionInfo;Ljava/util/List;J)V

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/animation/property/FloatProperty;

    iget-object v4, p3, Lmiui/animation/internal/TransitionInfo;->toPropValues:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v0, p3, Lmiui/animation/internal/TransitionInfo;->toPropValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mTarget:Lmiui/animation/IAnimTarget;

    invoke-static {v0, p3}, Lmiui/animation/internal/AnimCompositor;->createAnimInfo(Lmiui/animation/IAnimTarget;Lmiui/animation/internal/TransitionInfo;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/internal/AnimRunningInfo;

    iput-wide p1, v0, Lmiui/animation/internal/AnimRunningInfo;->initTime:J

    iget-object v3, v0, Lmiui/animation/internal/AnimRunningInfo;->config:Lmiui/animation/base/AnimConfigLink;

    iget-object v4, v0, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    iget-object v5, v0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v3, v4, v5}, Lmiui/animation/base/AnimConfigLink;->getDelay(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;)J

    move-result-wide v3

    cmp-long v3, v3, v1

    const-wide/16 v4, 0x2

    if-lez v3, :cond_4

    iget-wide v6, v0, Lmiui/animation/internal/AnimRunningInfo;->flags:J

    or-long/2addr v6, v4

    iput-wide v6, v0, Lmiui/animation/internal/AnimRunningInfo;->flags:J

    :cond_4
    iget-wide v6, v0, Lmiui/animation/internal/AnimRunningInfo;->flags:J

    invoke-static {v6, v7, v4, v5}, Lmiui/animation/utils/CommonUtils;->hasFlags(JJ)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-direct {p0, v0}, Lmiui/animation/internal/AnimTask;->findAndHandleSameAnim(Lmiui/animation/internal/AnimRunningInfo;)V

    :cond_5
    iget-object v3, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    return-void
.end method

.method private stopSameRunningAnim(Lmiui/animation/internal/AnimRunningInfo;)Z
    .locals 5

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/animation/internal/AnimRunningInfo;

    if-eq v2, p1, :cond_0

    iget-object v3, v2, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    iget-object v4, p1, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lmiui/animation/internal/AnimRunningInfo;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v2}, Lmiui/animation/internal/AnimRunningInfo;->stop()V

    iget-object v3, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return v1
.end method

.method private tryUpdate(Lmiui/animation/internal/AnimRunningInfo;Lmiui/animation/internal/TransitionInfo;Ljava/util/List;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/animation/internal/AnimRunningInfo;",
            "Lmiui/animation/internal/TransitionInfo;",
            "Ljava/util/List<",
            "Lmiui/animation/property/FloatProperty;",
            ">;J)V"
        }
    .end annotation

    iget-object p0, p2, Lmiui/animation/internal/TransitionInfo;->toPropValues:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/property/FloatProperty;

    iget-object v1, p1, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2, p4, p5}, Lmiui/animation/internal/AnimRunningInfo;->update(Lmiui/animation/internal/TransitionInfo;J)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private updateAndStop(JJ)V
    .locals 3

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/internal/AnimRunningInfo;

    invoke-virtual {v1}, Lmiui/animation/internal/AnimRunningInfo;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p3, p4}, Lmiui/animation/internal/AnimRunningInfo;->run(J)V

    invoke-direct {p0, v1, p1, p2}, Lmiui/animation/internal/AnimTask;->isAnimEnd(Lmiui/animation/internal/AnimRunningInfo;J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lmiui/animation/internal/AnimRunningInfo;->updateToDate()Lmiui/animation/listener/UpdateInfo;

    move-result-object v2

    iget-boolean v2, v2, Lmiui/animation/listener/UpdateInfo;->isCanceled:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lmiui/animation/internal/AnimRunningInfo;->stop(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lmiui/animation/internal/AnimTask;->notifyUpdateAndEnd()V

    return-void
.end method


# virtual methods
.method addTransition(JLmiui/animation/internal/TransitionInfo;)V
    .locals 4

    iget-object v0, p3, Lmiui/animation/internal/TransitionInfo;->config:Lmiui/animation/base/AnimConfigLink;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lmiui/animation/base/AnimConfigLink;->getFlags(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Lmiui/animation/utils/CommonUtils;->hasFlags(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmiui/animation/internal/AnimTask;->mQueueList:Ljava/util/List;

    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lmiui/animation/internal/AnimTask;->startTransition(JLmiui/animation/internal/TransitionInfo;)V

    :goto_0
    return-void
.end method

.method public varargs cancel([Lmiui/animation/property/FloatProperty;)V
    .locals 7

    invoke-direct {p0}, Lmiui/animation/internal/AnimTask;->collectListeners()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lmiui/animation/internal/AnimTask;->getTotalList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/animation/internal/AnimRunningInfo;

    invoke-virtual {v5}, Lmiui/animation/internal/AnimRunningInfo;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_0

    array-length v6, p1

    if-lez v6, :cond_1

    iget-object v6, v5, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-direct {p0, v6, p1}, Lmiui/animation/internal/AnimTask;->isIn(Lmiui/animation/property/FloatProperty;[Lmiui/animation/property/FloatProperty;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v5}, Lmiui/animation/internal/AnimTask;->cancelAnim(Lmiui/animation/internal/AnimRunningInfo;)V

    iget-object v4, v5, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v5}, Lmiui/animation/internal/AnimRunningInfo;->updateToDate()Lmiui/animation/listener/UpdateInfo;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lmiui/animation/internal/AnimTask;->notifyCancel(Ljava/lang/Object;Lmiui/animation/listener/UpdateInfo;)V

    move v4, v2

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_5

    invoke-direct {p0}, Lmiui/animation/internal/AnimTask;->removeStoppedAnim()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lmiui/animation/internal/AnimTask;->checkAndNotifyEnd(Ljava/lang/Object;Z)Z

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_5
    array-length v0, p1

    if-nez v0, :cond_6

    invoke-direct {p0}, Lmiui/animation/internal/AnimTask;->clearRecords()V

    goto :goto_2

    :cond_6
    invoke-direct {p0, v3, p1}, Lmiui/animation/internal/AnimTask;->endQueuedTransitions(Z[Lmiui/animation/property/FloatProperty;)V

    :goto_2
    return-void
.end method

.method varargs end([Lmiui/animation/property/FloatProperty;)V
    .locals 8

    invoke-direct {p0}, Lmiui/animation/internal/AnimTask;->collectListeners()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-direct {p0}, Lmiui/animation/internal/AnimTask;->getTotalList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/animation/internal/AnimRunningInfo;

    array-length v5, p1

    if-lez v5, :cond_0

    iget-object v5, v4, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-direct {p0, v5, p1}, Lmiui/animation/internal/AnimTask;->isIn(Lmiui/animation/property/FloatProperty;[Lmiui/animation/property/FloatProperty;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v5, v4, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    if-eqz v5, :cond_1

    invoke-virtual {v4, v2}, Lmiui/animation/internal/AnimRunningInfo;->stop(Z)V

    goto :goto_1

    :cond_1
    iget-object v5, v4, Lmiui/animation/internal/AnimRunningInfo;->target:Lmiui/animation/IAnimTarget;

    iget-object v6, v4, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    iget-object v7, v4, Lmiui/animation/internal/AnimRunningInfo;->toValue:Ljava/lang/Number;

    invoke-direct {p0, v5, v6, v7}, Lmiui/animation/internal/AnimTask;->setTargetValue(Lmiui/animation/IAnimTarget;Lmiui/animation/property/FloatProperty;Ljava/lang/Number;)V

    :goto_1
    iget-object v5, v4, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v4, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v5, v4, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    invoke-virtual {v4}, Lmiui/animation/internal/AnimRunningInfo;->updateToDate()Lmiui/animation/listener/UpdateInfo;

    move-result-object v4

    invoke-direct {p0, v5, v4}, Lmiui/animation/internal/AnimTask;->notifyAnimEnd(Ljava/lang/Object;Lmiui/animation/listener/UpdateInfo;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v2, p1}, Lmiui/animation/internal/AnimTask;->endQueuedTransitions(Z[Lmiui/animation/property/FloatProperty;)V

    invoke-direct {p0}, Lmiui/animation/internal/AnimTask;->removeStoppedAnim()V

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lmiui/animation/internal/AnimTask;->checkAndNotifyEnd(Ljava/lang/Object;Z)Z

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    array-length p1, p1

    if-nez p1, :cond_5

    invoke-direct {p0}, Lmiui/animation/internal/AnimTask;->clearRecords()V

    :cond_5
    return-void
.end method

.method public isFinished()Z
    .locals 0

    iget-object p0, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lmiui/animation/internal/AnimTask;->mQueueList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public varargs run(JJ[J)V
    .locals 0

    invoke-direct {p0, p5}, Lmiui/animation/internal/AnimTask;->saveNotAllowedAnim([J)V

    iget-object p5, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_0

    invoke-direct {p0}, Lmiui/animation/internal/AnimTask;->collectListeners()V

    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/animation/internal/AnimTask;->updateAndStop(JJ)V

    invoke-direct {p0, p3, p4}, Lmiui/animation/internal/AnimTask;->handlePendingAnim(J)V

    invoke-direct {p0}, Lmiui/animation/internal/AnimTask;->removeStoppedAnim()V

    iget-object p3, p0, Lmiui/animation/internal/AnimTask;->mTarget:Lmiui/animation/IAnimTarget;

    invoke-direct {p0, p3, p1, p2}, Lmiui/animation/internal/AnimTask;->handleBegin(Lmiui/animation/IAnimTarget;J)V

    invoke-direct {p0, p1, p2}, Lmiui/animation/internal/AnimTask;->handleQueue(J)V

    :cond_0
    invoke-direct {p0}, Lmiui/animation/internal/AnimTask;->restoreAnim()V

    return-void
.end method

.method public setToNotify(Lmiui/animation/controller/AnimState;Lmiui/animation/base/AnimConfigLink;)V
    .locals 6

    invoke-virtual {p1}, Lmiui/animation/controller/AnimState;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lmiui/animation/internal/AnimTask;->mTarget:Lmiui/animation/IAnimTarget;

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1, v0}, Lmiui/animation/base/AnimConfigLink;->collectListeners(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;Lmiui/animation/IAnimTarget;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lmiui/animation/internal/AnimTask;->notifyBegin(Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lmiui/animation/controller/AnimState;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/animation/property/FloatProperty;

    iget-object v3, p0, Lmiui/animation/internal/AnimTask;->mTarget:Lmiui/animation/IAnimTarget;

    invoke-virtual {p2, v0, v2, v3, v0}, Lmiui/animation/base/AnimConfigLink;->collectListeners(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;Lmiui/animation/IAnimTarget;Ljava/lang/Object;)V

    new-instance v3, Lmiui/animation/listener/UpdateInfo;

    invoke-direct {v3}, Lmiui/animation/listener/UpdateInfo;-><init>()V

    iput-object v2, v3, Lmiui/animation/listener/UpdateInfo;->property:Lmiui/animation/property/FloatProperty;

    iget-object v4, p0, Lmiui/animation/internal/AnimTask;->mTarget:Lmiui/animation/IAnimTarget;

    invoke-virtual {v4, v2}, Lmiui/animation/IAnimTarget;->getVelocity(Lmiui/animation/property/FloatProperty;)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, v3, Lmiui/animation/listener/UpdateInfo;->velocity:F

    instance-of v4, v2, Lmiui/animation/property/IIntValueProperty;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lmiui/animation/internal/AnimTask;->mTarget:Lmiui/animation/IAnimTarget;

    check-cast v2, Lmiui/animation/property/IIntValueProperty;

    invoke-virtual {v4, v2}, Lmiui/animation/IAnimTarget;->getIntValue(Lmiui/animation/property/IIntValueProperty;)I

    move-result v2

    int-to-float v2, v2

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lmiui/animation/internal/AnimTask;->mTarget:Lmiui/animation/IAnimTarget;

    invoke-virtual {v4, v2}, Lmiui/animation/IAnimTarget;->getValue(Lmiui/animation/property/FloatProperty;)F

    move-result v2

    :goto_1
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v3, v2}, Lmiui/animation/listener/UpdateInfo;->setValue(Ljava/lang/Number;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiui/animation/listener/UpdateInfo;

    invoke-direct {p0, v0, p2}, Lmiui/animation/internal/AnimTask;->notifyPropertyBegin(Ljava/lang/Object;Lmiui/animation/listener/UpdateInfo;)V

    goto :goto_2

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiui/animation/listener/UpdateInfo;

    const/4 v2, 0x1

    iput-boolean v2, p2, Lmiui/animation/listener/UpdateInfo;->isCompleted:Z

    goto :goto_3

    :cond_3
    invoke-direct {p0, v0, v1}, Lmiui/animation/internal/AnimTask;->notifyUpdateAndEnd(Ljava/lang/Object;Ljava/util/List;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lmiui/animation/internal/AnimTask;->notifyAllEnd(Ljava/lang/Object;Z)V

    return-void
.end method
