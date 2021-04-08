.class abstract Lmiui/animation/internal/AnimNotifiers$BaseUpdateNotify;
.super Lmiui/animation/listener/IListenerNotifier;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/animation/internal/AnimNotifiers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BaseUpdateNotify"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/animation/listener/IListenerNotifier<",
        "Lmiui/animation/listener/TransitionListener;",
        ">;"
    }
.end annotation


# instance fields
.field dM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/animation/listener/UpdateInfo;",
            ">;"
        }
    .end annotation
.end field

.field mTag:Ljava/lang/Object;

.field mTarget:Lmiui/animation/IAnimTarget;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiui/animation/listener/IListenerNotifier;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/animation/internal/AnimNotifiers$BaseUpdateNotify;->dM:Ljava/util/List;

    return-void
.end method


# virtual methods
.method D()V
    .locals 2

    iget-object v0, p0, Lmiui/animation/internal/AnimNotifiers$BaseUpdateNotify;->mTarget:Lmiui/animation/IAnimTarget;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmiui/animation/internal/AnimNotifiers$BaseUpdateNotify;->mTag:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Lmiui/animation/internal/AnimNotifiers;->getListenerKey(Lmiui/animation/IAnimTarget;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lmiui/animation/listener/TransitionListener;

    invoke-static {v0, v1, p0}, Lmiui/animation/listener/ListenerBus;->notifyListeners(Ljava/lang/Object;Ljava/lang/Class;Lmiui/animation/listener/IListenerNotifier;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmiui/animation/internal/AnimNotifiers$BaseUpdateNotify;->onNotifyEnd()V

    :goto_0
    return-void
.end method

.method a(Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lmiui/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lmiui/animation/internal/AnimNotifiers$BaseUpdateNotify;->mTag:Ljava/lang/Object;

    iget-object p1, p0, Lmiui/animation/internal/AnimNotifiers$BaseUpdateNotify;->dM:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lmiui/animation/internal/AnimNotifiers$BaseUpdateNotify;->dM:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method varargs a(Ljava/lang/Object;[Lmiui/animation/listener/UpdateInfo;)V
    .locals 0

    iput-object p1, p0, Lmiui/animation/internal/AnimNotifiers$BaseUpdateNotify;->mTag:Ljava/lang/Object;

    iget-object p1, p0, Lmiui/animation/internal/AnimNotifiers$BaseUpdateNotify;->dM:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-static {p2}, Lmiui/animation/utils/CommonUtils;->isArrayEmpty([Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lmiui/animation/internal/AnimNotifiers$BaseUpdateNotify;->dM:Ljava/util/List;

    invoke-static {p0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Lmiui/animation/listener/TransitionListener;)V
    .locals 2

    iget-object v0, p0, Lmiui/animation/internal/AnimNotifiers$BaseUpdateNotify;->mTag:Ljava/lang/Object;

    iget-object v1, p0, Lmiui/animation/internal/AnimNotifiers$BaseUpdateNotify;->dM:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v1}, Lmiui/animation/internal/AnimNotifiers$BaseUpdateNotify;->a(Lmiui/animation/listener/TransitionListener;Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method abstract a(Lmiui/animation/listener/TransitionListener;Ljava/lang/Object;Ljava/util/List;)V
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
.end method

.method public bridge synthetic doNotify(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lmiui/animation/listener/TransitionListener;

    invoke-virtual {p0, p1}, Lmiui/animation/internal/AnimNotifiers$BaseUpdateNotify;->a(Lmiui/animation/listener/TransitionListener;)V

    return-void
.end method

.method public onNotifyEnd()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/animation/internal/AnimNotifiers$BaseUpdateNotify;->mTarget:Lmiui/animation/IAnimTarget;

    iput-object v0, p0, Lmiui/animation/internal/AnimNotifiers$BaseUpdateNotify;->mTag:Ljava/lang/Object;

    iget-object v0, p0, Lmiui/animation/internal/AnimNotifiers$BaseUpdateNotify;->dM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {p0}, Lmiui/animation/utils/ObjectPool;->release(Ljava/lang/Object;)V

    return-void
.end method

.method setTarget(Lmiui/animation/IAnimTarget;)V
    .locals 0

    iput-object p1, p0, Lmiui/animation/internal/AnimNotifiers$BaseUpdateNotify;->mTarget:Lmiui/animation/IAnimTarget;

    return-void
.end method
