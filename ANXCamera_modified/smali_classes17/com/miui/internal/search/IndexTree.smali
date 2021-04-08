.class public abstract Lcom/miui/internal/search/IndexTree;
.super Ljava/lang/Object;
.source "IndexTree.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IndexTree"


# instance fields
.field private volatile mChanged:Z

.field final mLock:Ljava/lang/Object;

.field private mParent:Lcom/miui/internal/search/IndexTree;

.field private mSon:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/miui/internal/search/IndexTree;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/miui/internal/search/IndexTree;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/search/IndexTree;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/miui/internal/search/IndexTree;->mParent:Lcom/miui/internal/search/IndexTree;

    return-void
.end method


# virtual methods
.method protected final addSon(ILcom/miui/internal/search/IndexTree;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/search/IndexTree;->mChanged:Z

    iget-object v0, p0, Lcom/miui/internal/search/IndexTree;->mSon:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/search/IndexTree;->mSon:Ljava/util/LinkedList;

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/search/IndexTree;->mSon:Ljava/util/LinkedList;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method protected final addSon(Lcom/miui/internal/search/IndexTree;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/search/IndexTree;->mSon:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/miui/internal/search/IndexTree;->addSon(ILcom/miui/internal/search/IndexTree;)V

    return-void
.end method

.method public abstract commit(Ljava/lang/StringBuilder;)V
.end method

.method public abstract delete(Ljava/lang/String;[Ljava/lang/String;)Z
.end method

.method public final dispatchCommit(Ljava/lang/StringBuilder;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/miui/internal/search/IndexTree;->commit(Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/search/IndexTree;->mChanged:Z

    iget-object v0, p0, Lcom/miui/internal/search/IndexTree;->mSon:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/search/IndexTree;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/internal/search/IndexTree;->mSon:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/search/IndexTree;

    invoke-virtual {v2, p1}, Lcom/miui/internal/search/IndexTree;->dispatchCommit(Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method public final dispatchDelete(Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 7

    const/4 v0, 0x0

    if-nez p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/search/IndexTree;->delete(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/miui/internal/search/IndexTree;->mParent:Lcom/miui/internal/search/IndexTree;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/search/IndexTree;->removeSelf()V

    :cond_0
    if-eqz p3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    invoke-virtual {p0}, Lcom/miui/internal/search/IndexTree;->getSons()Ljava/util/LinkedList;

    move-result-object v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    iget-object v2, p0, Lcom/miui/internal/search/IndexTree;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/internal/search/IndexTree;

    invoke-virtual {v5, p1, p2, p3}, Lcom/miui/internal/search/IndexTree;->dispatchDelete(Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v6

    add-int/2addr v0, v6

    goto :goto_0

    :cond_3
    monitor-exit v2

    return v0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public final dispatchInsert(Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0, p1}, Lcom/miui/internal/search/IndexTree;->insert(Landroid/content/ContentValues;)Lcom/miui/internal/search/IndexTree;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/internal/search/IndexTree;->mChanged:Z

    iput-boolean v1, v0, Lcom/miui/internal/search/IndexTree;->mChanged:Z

    invoke-virtual {v0}, Lcom/miui/internal/search/IndexTree;->getUri()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/search/IndexTree;->getSons()Ljava/util/LinkedList;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    iget-object v3, p0, Lcom/miui/internal/search/IndexTree;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/internal/search/IndexTree;

    invoke-virtual {v5, p1}, Lcom/miui/internal/search/IndexTree;->dispatchInsert(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    monitor-exit v3

    return-object v6

    :cond_2
    goto :goto_0

    :cond_3
    monitor-exit v3

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public final dispatchQuery(Lcom/miui/internal/search/RankedCursor;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12

    invoke-virtual/range {p0 .. p6}, Lcom/miui/internal/search/IndexTree;->query(Lcom/miui/internal/search/RankedCursor;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/search/IndexTree;->getSons()Ljava/util/LinkedList;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    move-object v2, p0

    iget-object v3, v2, Lcom/miui/internal/search/IndexTree;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/miui/internal/search/IndexTree;

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    invoke-virtual/range {v5 .. v11}, Lcom/miui/internal/search/IndexTree;->dispatchQuery(Lcom/miui/internal/search/RankedCursor;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final dispatchUpdate(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/search/IndexTree;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/internal/search/IndexTree;->mChanged:Z

    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/search/IndexTree;->getSons()Ljava/util/LinkedList;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v2, p0, Lcom/miui/internal/search/IndexTree;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/internal/search/IndexTree;

    invoke-virtual {v4, p1, p2, p3}, Lcom/miui/internal/search/IndexTree;->dispatchUpdate(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_0

    :cond_2
    monitor-exit v2

    return v0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getParent()Lcom/miui/internal/search/IndexTree;
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/search/IndexTree;->mParent:Lcom/miui/internal/search/IndexTree;

    return-object v0
.end method

.method public getSons()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "+",
            "Lcom/miui/internal/search/IndexTree;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/internal/search/IndexTree;->mSon:Ljava/util/LinkedList;

    return-object v0
.end method

.method protected abstract getUri()Ljava/lang/String;
.end method

.method public abstract insert(Landroid/content/ContentValues;)Lcom/miui/internal/search/IndexTree;
.end method

.method public final needCommit()Z
    .locals 5

    iget-boolean v0, p0, Lcom/miui/internal/search/IndexTree;->mChanged:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/search/IndexTree;->mSon:Ljava/util/LinkedList;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/search/IndexTree;

    invoke-virtual {v3}, Lcom/miui/internal/search/IndexTree;->needCommit()Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    :cond_2
    goto :goto_0

    :cond_3
    return v2
.end method

.method public abstract query(Lcom/miui/internal/search/RankedCursor;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public removeSelf()V
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/search/IndexTree;->mParent:Lcom/miui/internal/search/IndexTree;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/miui/internal/search/IndexTree;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/internal/search/IndexTree;->mParent:Lcom/miui/internal/search/IndexTree;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/miui/internal/search/IndexTree;->mChanged:Z

    iget-object v1, p0, Lcom/miui/internal/search/IndexTree;->mParent:Lcom/miui/internal/search/IndexTree;

    iget-object v1, v1, Lcom/miui/internal/search/IndexTree;->mSon:Ljava/util/LinkedList;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method protected replaceBy(Lcom/miui/internal/search/IndexTree;)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/internal/search/IndexTree;->getParent()Lcom/miui/internal/search/IndexTree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/search/IndexTree;->getSons()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public abstract update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z
.end method
