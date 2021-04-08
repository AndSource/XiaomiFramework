.class public Lmiui/util/concurrent/ConcurrentRingQueue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/util/concurrent/Queue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/concurrent/ConcurrentRingQueue$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lmiui/util/concurrent/Queue<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final DW:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile EW:Lmiui/util/concurrent/ConcurrentRingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/concurrent/ConcurrentRingQueue$Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile FW:Lmiui/util/concurrent/ConcurrentRingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/concurrent/ConcurrentRingQueue$Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile HW:I

.field private final mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

.field private xW:I

.field private final yW:Z

.field private final zW:Z


# direct methods
.method public constructor <init>(IZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->xW:I

    iput-boolean p2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->yW:Z

    iput-boolean p3, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->zW:Z

    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->DW:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p2, Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lmiui/util/concurrent/ConcurrentRingQueue$Node;-><init>(Lmiui/util/concurrent/a;)V

    iput-object p2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->EW:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iget-object p2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->EW:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iput-object p2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->FW:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iget-object p2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->EW:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    :goto_0
    if-ge p3, p1, :cond_0

    new-instance v1, Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    invoke-direct {v1, v0}, Lmiui/util/concurrent/ConcurrentRingQueue$Node;-><init>(Lmiui/util/concurrent/a;)V

    iput-object v1, p2, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iget-object p2, p2, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->EW:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iput-object p0, p2, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    return-void
.end method


# virtual methods
.method public clear()I
    .locals 4

    :goto_0
    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->DW:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->DW:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->EW:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    move v1, v2

    :goto_1
    iget-object v3, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->FW:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    if-eq v0, v3, :cond_1

    const/4 v3, 0x0

    iput-object v3, v0, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->wW:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    iget-object v0, v0, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->EW:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iget-object p0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->DW:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return v1

    :cond_2
    :goto_2
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0
.end method

.method public decreaseCapacity(I)V
    .locals 3

    iget-boolean v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->zW:Z

    if-eqz v0, :cond_3

    if-gtz p1, :cond_0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->xW:I

    sub-int/2addr v0, p1

    iput v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->xW:I

    iput p1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->HW:I

    iget-object p0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->DW:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->DW:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->EW:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->FW:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    const/4 v3, 0x0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v3

    :goto_1
    if-nez v0, :cond_1

    if-eq v1, v4, :cond_1

    iget-object v0, v1, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->wW:Ljava/lang/Object;

    iput-object v3, v1, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->wW:Ljava/lang/Object;

    iget-object v1, v1, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iget-object v4, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->FW:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    iput-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->EW:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    :cond_2
    iget-object p0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->DW:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-object v0

    :cond_3
    :goto_2
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0
.end method

.method public getCapacity()I
    .locals 1

    iget v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->HW:I

    iget p0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->xW:I

    if-lez v0, :cond_0

    add-int/2addr p0, v0

    :cond_0
    return p0
.end method

.method public increaseCapacity(I)V
    .locals 3

    iget-boolean v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->yW:Z

    if-nez v0, :cond_3

    if-gtz p1, :cond_0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    neg-int v0, p1

    iput v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->HW:I

    iget v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->xW:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->xW:I

    iget-object p0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->FW:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iget-object p0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->EW:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public put(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->EW:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iget-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->FW:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iget v3, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->HW:I

    iget-object v4, v2, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    const/4 v5, 0x1

    if-eq v4, v1, :cond_3

    iput-object p1, v2, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->wW:Ljava/lang/Object;

    iget-object p1, v4, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    if-eq p1, v1, :cond_2

    iget-boolean v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->zW:Z

    if-eqz v1, :cond_2

    if-lez v3, :cond_2

    iput-object p1, v2, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    sub-int/2addr v3, v5

    iput v3, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->HW:I

    :cond_2
    iget-object p1, v2, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iput-object p1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->FW:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    goto :goto_2

    :cond_3
    iget-boolean v4, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->yW:Z

    if-nez v4, :cond_5

    if-gez v3, :cond_4

    goto :goto_1

    :cond_4
    move v5, v0

    goto :goto_2

    :cond_5
    :goto_1
    new-instance v4, Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Lmiui/util/concurrent/ConcurrentRingQueue$Node;-><init>(Lmiui/util/concurrent/a;)V

    iput-object v4, v2, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iget-object v4, v2, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iput-object v1, v4, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iput-object p1, v2, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->wW:Ljava/lang/Object;

    add-int/2addr v3, v5

    iput v3, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->HW:I

    iget-object p1, v2, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    iput-object p1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->FW:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    :goto_2
    iget-object p0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->mWriteLock:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return v5

    :cond_6
    :goto_3
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0
.end method

.method public remove(Lmiui/util/concurrent/Queue$Predicate;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/concurrent/Queue$Predicate<",
            "TT;>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->DW:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->DW:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    :try_start_0
    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->EW:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    move v2, v0

    :goto_1
    iget-object v3, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->FW:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    if-eq v1, v3, :cond_3

    iget-object v3, v1, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->wW:Ljava/lang/Object;

    invoke-interface {p1, v3}, Lmiui/util/concurrent/Queue$Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    iput-object v3, v1, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->wW:Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    :cond_2
    iget-object v1, v1, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->DW:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return v2

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->DW:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    throw p1

    :cond_4
    :goto_2
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->DW:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->DW:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    iget-object v1, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->EW:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    :goto_1
    iget-object v2, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->FW:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    if-eq v1, v2, :cond_3

    iget-object v2, v1, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->wW:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x0

    iput-object p1, v1, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->wW:Ljava/lang/Object;

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    iget-object v1, v1, Lmiui/util/concurrent/ConcurrentRingQueue$Node;->next:Lmiui/util/concurrent/ConcurrentRingQueue$Node;

    goto :goto_1

    :cond_3
    move p1, v0

    :goto_2
    iget-object p0, p0, Lmiui/util/concurrent/ConcurrentRingQueue;->DW:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return p1

    :cond_4
    :goto_3
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0
.end method
