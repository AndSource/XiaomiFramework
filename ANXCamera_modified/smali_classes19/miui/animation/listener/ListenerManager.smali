.class public Lmiui/animation/listener/ListenerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ListenerManager"


# instance fields
.field private fM:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation
.end field

.field private gM:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation
.end field

.field private hM:Lmiui/animation/listener/IListenerNotifier;

.field private iM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/animation/listener/IListenerNotifier;",
            ">;"
        }
    .end annotation
.end field

.field private jM:Z

.field protected mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/animation/listener/ListenerManager;->mListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/animation/listener/ListenerManager;->fM:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/animation/listener/ListenerManager;->gM:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/animation/listener/ListenerManager;->iM:Ljava/util/List;

    return-void
.end method

.method private b(Lmiui/animation/listener/IListenerNotifier;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/animation/listener/ListenerManager;->jM:Z

    iput-object p1, p0, Lmiui/animation/listener/ListenerManager;->hM:Lmiui/animation/listener/IListenerNotifier;

    return-void
.end method

.method private re()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/animation/listener/ListenerManager;->jM:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/animation/listener/ListenerManager;->hM:Lmiui/animation/listener/IListenerNotifier;

    iget-object v0, p0, Lmiui/animation/listener/ListenerManager;->mListeners:Ljava/util/Set;

    iget-object v1, p0, Lmiui/animation/listener/ListenerManager;->fM:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lmiui/animation/listener/ListenerManager;->fM:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lmiui/animation/listener/ListenerManager;->mListeners:Ljava/util/Set;

    iget-object v1, p0, Lmiui/animation/listener/ListenerManager;->gM:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lmiui/animation/listener/ListenerManager;->gM:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lmiui/animation/listener/ListenerManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lmiui/animation/listener/ListenerBus;->a(Lmiui/animation/listener/ListenerManager;)V

    :cond_0
    return-void
.end method

.method private se()V
    .locals 2

    iget-object v0, p0, Lmiui/animation/listener/ListenerManager;->iM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lmiui/animation/listener/ListenerManager;->iM:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lmiui/animation/listener/ListenerManager;->iM:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/listener/IListenerNotifier;

    invoke-virtual {p0, v1}, Lmiui/animation/listener/ListenerManager;->a(Lmiui/animation/listener/IListenerNotifier;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method declared-synchronized a(Lmiui/animation/listener/IListenerNotifier;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lmiui/animation/listener/ListenerManager;->jM:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/animation/listener/ListenerManager;->hM:Lmiui/animation/listener/IListenerNotifier;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lmiui/animation/listener/ListenerManager;->iM:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/animation/listener/ListenerManager;->iM:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lmiui/animation/listener/ListenerManager;->b(Lmiui/animation/listener/IListenerNotifier;)V

    iget-object v0, p0, Lmiui/animation/listener/ListenerManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1, v1}, Lmiui/animation/listener/IListenerNotifier;->doNotify(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "ListenerManager"

    const-string v3, "notify failed, %s"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lmiui/animation/listener/IListenerNotifier;->onNotifyEnd()V

    invoke-direct {p0}, Lmiui/animation/listener/ListenerManager;->re()V

    invoke-direct {p0}, Lmiui/animation/listener/ListenerManager;->se()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method varargs declared-synchronized a([Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lmiui/animation/listener/ListenerManager;->jM:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/animation/listener/ListenerManager;->gM:Ljava/util/Set;

    array-length v1, p1

    if-lez v1, :cond_0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmiui/animation/listener/ListenerManager;->mListeners:Ljava/util/Set;

    :goto_0
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    array-length v0, p1

    if-lez v0, :cond_2

    iget-object v0, p0, Lmiui/animation/listener/ListenerManager;->mListeners:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lmiui/animation/listener/ListenerManager;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    :goto_1
    iget-object p1, p0, Lmiui/animation/listener/ListenerManager;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addListener(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lmiui/animation/listener/ListenerManager;->jM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/animation/listener/ListenerManager;->fM:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/animation/listener/ListenerManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ListenerManager{mListeners="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmiui/animation/listener/ListenerManager;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
