.class public Lmiui/animation/listener/ListenerBus;
.super Ljava/lang/Object;
.source "ListenerBus.java"


# static fields
.field private static final sListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Object;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lmiui/animation/listener/ListenerManager;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lmiui/animation/listener/ListenerBus;->sListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs addListener(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;[TT;)V"
        }
    .end annotation

    if-eqz p0, :cond_2

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lmiui/animation/listener/ListenerBus;->getManager(Ljava/lang/Object;Ljava/lang/Class;Z)Lmiui/animation/listener/ListenerManager;

    move-result-object p0

    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    aget-object v1, p2, v0

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lmiui/animation/listener/ListenerManager;->addListener(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static addListener(Ljava/lang/Object;Lmiui/animation/base/AnimConfig;)V
    .locals 2

    const-class v0, Lmiui/animation/listener/TransitionListener;

    iget-object p1, p1, Lmiui/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    const/4 v1, 0x0

    new-array v1, v1, [Lmiui/animation/listener/TransitionListener;

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmiui/animation/listener/TransitionListener;

    invoke-static {p0, v0, p1}, Lmiui/animation/listener/ListenerBus;->addListener(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method

.method private static getManager(Ljava/lang/Object;Ljava/lang/Class;Z)Lmiui/animation/listener/ListenerManager;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;Z)",
            "Lmiui/animation/listener/ListenerManager<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lmiui/animation/listener/ListenerBus;->sListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lmiui/animation/listener/ListenerBus;->sListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/animation/listener/ListenerManager;

    if-nez p0, :cond_3

    if-eqz p2, :cond_2

    new-instance p0, Lmiui/animation/listener/ListenerManager;

    invoke-direct {p0}, Lmiui/animation/listener/ListenerManager;-><init>()V

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-object v1

    :cond_3
    :goto_1
    return-object p0
.end method

.method public static notifyListeners(Ljava/lang/Object;Ljava/lang/Class;Lmiui/animation/listener/IListenerNotifier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lmiui/animation/listener/IListenerNotifier<",
            "TT;>;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-virtual {p2}, Lmiui/animation/listener/IListenerNotifier;->onNotifyEnd()V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiui/animation/listener/ListenerBus;->getManager(Ljava/lang/Object;Ljava/lang/Class;Z)Lmiui/animation/listener/ListenerManager;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Lmiui/animation/listener/ListenerManager;->notifyListeners(Lmiui/animation/listener/IListenerNotifier;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lmiui/animation/listener/IListenerNotifier;->onNotifyEnd()V

    :goto_0
    return-void
.end method

.method public static varargs removeListener(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;[TT;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiui/animation/listener/ListenerBus;->getManager(Ljava/lang/Object;Ljava/lang/Class;Z)Lmiui/animation/listener/ListenerManager;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Lmiui/animation/listener/ListenerManager;->removeListeners([Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lmiui/animation/listener/ListenerBus;->removeManager(Lmiui/animation/listener/ListenerManager;)V

    :cond_1
    return-void
.end method

.method static removeManager(Lmiui/animation/listener/ListenerManager;)V
    .locals 6

    sget-object v0, Lmiui/animation/listener/ListenerBus;->sListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p0, :cond_1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lmiui/animation/listener/ListenerBus;->sListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method
