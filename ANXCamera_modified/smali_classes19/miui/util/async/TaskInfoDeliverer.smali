.class Lmiui/util/async/TaskInfoDeliverer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/async/TaskInfoDeliverer$a;,
        Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;
    }
.end annotation


# static fields
.field private static final bW:Lmiui/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/Pools$Pool<",
            "Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aW:Lmiui/util/concurrent/ConcurrentRingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/concurrent/ConcurrentRingQueue<",
            "Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private kJ:Lmiui/util/async/TaskManager;

.field private mHandler:Lmiui/util/async/TaskInfoDeliverer$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmiui/util/async/TaskInfoDeliverer$1;

    invoke-direct {v0}, Lmiui/util/async/TaskInfoDeliverer$1;-><init>()V

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lmiui/util/Pools;->createSimplePool(Lmiui/util/Pools$Manager;I)Lmiui/util/Pools$SimplePool;

    move-result-object v0

    sput-object v0, Lmiui/util/async/TaskInfoDeliverer;->bW:Lmiui/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>(Lmiui/util/async/TaskManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/util/async/TaskInfoDeliverer;->kJ:Lmiui/util/async/TaskManager;

    new-instance p1, Lmiui/util/async/TaskInfoDeliverer$a;

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Lmiui/util/async/TaskInfoDeliverer$a;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lmiui/util/async/TaskInfoDeliverer;->mHandler:Lmiui/util/async/TaskInfoDeliverer$a;

    new-instance p1, Lmiui/util/concurrent/ConcurrentRingQueue;

    const/4 v0, 0x1

    const/16 v1, 0x14

    invoke-direct {p1, v1, v0, v0}, Lmiui/util/concurrent/ConcurrentRingQueue;-><init>(IZZ)V

    iput-object p1, p0, Lmiui/util/async/TaskInfoDeliverer;->aW:Lmiui/util/concurrent/ConcurrentRingQueue;

    return-void
.end method

.method static synthetic a(Lmiui/util/async/TaskInfoDeliverer;Lmiui/util/async/TaskInfoDeliverer$a;)Lmiui/util/async/TaskInfoDeliverer$a;
    .locals 0

    iput-object p1, p0, Lmiui/util/async/TaskInfoDeliverer;->mHandler:Lmiui/util/async/TaskInfoDeliverer$a;

    return-object p1
.end method

.method static synthetic b(Lmiui/util/async/TaskInfoDeliverer;)V
    .locals 0

    invoke-direct {p0}, Lmiui/util/async/TaskInfoDeliverer;->lf()V

    return-void
.end method

.method private lf()V
    .locals 5

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lmiui/util/async/TaskInfoDeliverer;->mHandler:Lmiui/util/async/TaskInfoDeliverer$a;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lmiui/util/async/TaskInfoDeliverer;->aW:Lmiui/util/concurrent/ConcurrentRingQueue;

    invoke-virtual {v0}, Lmiui/util/concurrent/ConcurrentRingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmiui/util/async/TaskInfoDeliverer;->aW:Lmiui/util/concurrent/ConcurrentRingQueue;

    invoke-virtual {v0}, Lmiui/util/concurrent/ConcurrentRingQueue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;->ZV:Lmiui/util/async/Task;

    iget-object v2, p0, Lmiui/util/async/TaskInfoDeliverer;->kJ:Lmiui/util/async/TaskManager;

    iget-object v3, v0, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;->_V:Lmiui/util/async/Task$Delivery;

    iget-object v4, v0, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;->info:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lmiui/util/async/Task;->a(Lmiui/util/async/TaskManager;Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V

    sget-object v1, Lmiui/util/async/TaskInfoDeliverer;->bW:Lmiui/util/Pools$Pool;

    invoke-interface {v1, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmiui/util/async/TaskInfoDeliverer;->mHandler:Lmiui/util/async/TaskInfoDeliverer$a;

    invoke-virtual {v0, p0}, Lmiui/util/async/TaskInfoDeliverer$a;->a(Lmiui/util/async/TaskInfoDeliverer;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lmiui/util/async/Task;Lmiui/util/async/Task$Delivery;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/Task<",
            "*>;",
            "Lmiui/util/async/Task$Delivery;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    sget-object v0, Lmiui/util/async/TaskInfoDeliverer;->bW:Lmiui/util/Pools$Pool;

    invoke-interface {v0}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;

    iput-object p1, v0, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;->ZV:Lmiui/util/async/Task;

    iput-object p2, v0, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;->_V:Lmiui/util/async/Task$Delivery;

    iput-object p3, v0, Lmiui/util/async/TaskInfoDeliverer$TaskDeliveryInfo;->info:Ljava/lang/Object;

    sget-object v1, Lmiui/util/async/Task$Delivery;->dJ:Lmiui/util/async/Task$Delivery;

    if-ne p2, v1, :cond_0

    if-nez p3, :cond_0

    iget-object p2, p0, Lmiui/util/async/TaskInfoDeliverer;->aW:Lmiui/util/concurrent/ConcurrentRingQueue;

    new-instance p3, Lmiui/util/async/c;

    invoke-direct {p3, p0, p1}, Lmiui/util/async/c;-><init>(Lmiui/util/async/TaskInfoDeliverer;Lmiui/util/async/Task;)V

    invoke-virtual {p2, p3}, Lmiui/util/concurrent/ConcurrentRingQueue;->remove(Lmiui/util/concurrent/Queue$Predicate;)I

    :cond_0
    iget-object p1, p0, Lmiui/util/async/TaskInfoDeliverer;->aW:Lmiui/util/concurrent/ConcurrentRingQueue;

    invoke-virtual {p1, v0}, Lmiui/util/concurrent/ConcurrentRingQueue;->put(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lmiui/util/async/TaskInfoDeliverer;->lf()V

    return-void
.end method

.method public setCallbackThread(Z)V
    .locals 2

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lmiui/util/async/TaskInfoDeliverer;->mHandler:Lmiui/util/async/TaskInfoDeliverer$a;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v1, v0, :cond_0

    iget-object p1, p0, Lmiui/util/async/TaskInfoDeliverer;->mHandler:Lmiui/util/async/TaskInfoDeliverer$a;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    new-instance p1, Lmiui/util/async/TaskInfoDeliverer$a;

    invoke-direct {p1, v0}, Lmiui/util/async/TaskInfoDeliverer$a;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lmiui/util/async/TaskInfoDeliverer;->mHandler:Lmiui/util/async/TaskInfoDeliverer$a;

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lmiui/util/async/TaskInfoDeliverer;->mHandler:Lmiui/util/async/TaskInfoDeliverer$a;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    if-ne p1, v0, :cond_1

    new-instance p1, Lmiui/util/async/b;

    invoke-direct {p1, p0}, Lmiui/util/async/b;-><init>(Lmiui/util/async/TaskInfoDeliverer;)V

    const-string p0, "TaskInfoDeliverer-Callback"

    invoke-virtual {p1, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method
