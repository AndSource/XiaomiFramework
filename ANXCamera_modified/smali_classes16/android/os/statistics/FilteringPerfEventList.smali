.class public final Landroid/os/statistics/FilteringPerfEventList;
.super Landroid/os/statistics/FilteringPerfEventListNode;
.source "FilteringPerfEventList.java"


# instance fields
.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/statistics/FilteringPerfEventListNode;-><init>()V

    iput-object p0, p0, Landroid/os/statistics/FilteringPerfEventList;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    iput-object p0, p0, Landroid/os/statistics/FilteringPerfEventList;->previous:Landroid/os/statistics/FilteringPerfEventListNode;

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/statistics/FilteringPerfEventList;->size:I

    return-void
.end method


# virtual methods
.method public final addAfter(Landroid/os/statistics/FilteringPerfEventListNode;Landroid/os/statistics/FilteringPerfEvent;)V
    .locals 1

    iget v0, p0, Landroid/os/statistics/FilteringPerfEventList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/statistics/FilteringPerfEventList;->size:I

    iget-object v0, p1, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    iput-object v0, p2, Landroid/os/statistics/FilteringPerfEvent;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    iput-object p1, p2, Landroid/os/statistics/FilteringPerfEvent;->previous:Landroid/os/statistics/FilteringPerfEventListNode;

    iput-object p2, p1, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    iput-object p2, v0, Landroid/os/statistics/FilteringPerfEventListNode;->previous:Landroid/os/statistics/FilteringPerfEventListNode;

    return-void
.end method

.method public final addLast(Landroid/os/statistics/FilteringPerfEvent;)V
    .locals 2

    iget-object v0, p0, Landroid/os/statistics/FilteringPerfEventList;->previous:Landroid/os/statistics/FilteringPerfEventListNode;

    iget v1, p0, Landroid/os/statistics/FilteringPerfEventList;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/statistics/FilteringPerfEventList;->size:I

    iput-object p0, p1, Landroid/os/statistics/FilteringPerfEvent;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    iput-object v0, p1, Landroid/os/statistics/FilteringPerfEvent;->previous:Landroid/os/statistics/FilteringPerfEventListNode;

    iput-object p1, p0, Landroid/os/statistics/FilteringPerfEventList;->previous:Landroid/os/statistics/FilteringPerfEventListNode;

    iput-object p1, v0, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    return-void
.end method

.method public detachElements()V
    .locals 1

    iput-object p0, p0, Landroid/os/statistics/FilteringPerfEventList;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    iput-object p0, p0, Landroid/os/statistics/FilteringPerfEventList;->previous:Landroid/os/statistics/FilteringPerfEventListNode;

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/statistics/FilteringPerfEventList;->size:I

    return-void
.end method

.method public final moveAllFrom(Landroid/os/statistics/FilteringPerfEventList;)V
    .locals 4

    iget v0, p1, Landroid/os/statistics/FilteringPerfEventList;->size:I

    if-lez v0, :cond_0

    iget-object v1, p1, Landroid/os/statistics/FilteringPerfEventList;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    iget-object v2, p1, Landroid/os/statistics/FilteringPerfEventList;->previous:Landroid/os/statistics/FilteringPerfEventListNode;

    invoke-virtual {p1}, Landroid/os/statistics/FilteringPerfEventList;->detachElements()V

    iget v3, p0, Landroid/os/statistics/FilteringPerfEventList;->size:I

    add-int/2addr v3, v0

    iput v3, p0, Landroid/os/statistics/FilteringPerfEventList;->size:I

    iget-object v3, p0, Landroid/os/statistics/FilteringPerfEventList;->previous:Landroid/os/statistics/FilteringPerfEventListNode;

    iput-object v1, v3, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    iput-object v3, v1, Landroid/os/statistics/FilteringPerfEventListNode;->previous:Landroid/os/statistics/FilteringPerfEventListNode;

    iput-object v2, p0, Landroid/os/statistics/FilteringPerfEventList;->previous:Landroid/os/statistics/FilteringPerfEventListNode;

    iput-object p0, v2, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    :cond_0
    return-void
.end method

.method public final pollFirst()Landroid/os/statistics/FilteringPerfEvent;
    .locals 3

    iget v0, p0, Landroid/os/statistics/FilteringPerfEventList;->size:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/os/statistics/FilteringPerfEventList;->size:I

    iget-object v0, p0, Landroid/os/statistics/FilteringPerfEventList;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    iget-object v1, v0, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    iput-object v1, p0, Landroid/os/statistics/FilteringPerfEventList;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    iput-object p0, v1, Landroid/os/statistics/FilteringPerfEventListNode;->previous:Landroid/os/statistics/FilteringPerfEventListNode;

    iget-object v2, v0, Landroid/os/statistics/FilteringPerfEventListNode;->value:Landroid/os/statistics/FilteringPerfEvent;

    return-object v2

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method final pollFirstUnchecked()Landroid/os/statistics/FilteringPerfEvent;
    .locals 3

    iget v0, p0, Landroid/os/statistics/FilteringPerfEventList;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/os/statistics/FilteringPerfEventList;->size:I

    iget-object v0, p0, Landroid/os/statistics/FilteringPerfEventList;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    iget-object v1, v0, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    iput-object v1, p0, Landroid/os/statistics/FilteringPerfEventList;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    iput-object p0, v1, Landroid/os/statistics/FilteringPerfEventListNode;->previous:Landroid/os/statistics/FilteringPerfEventListNode;

    iget-object v2, v0, Landroid/os/statistics/FilteringPerfEventListNode;->value:Landroid/os/statistics/FilteringPerfEvent;

    return-object v2
.end method

.method public final remove(Landroid/os/statistics/FilteringPerfEvent;)V
    .locals 2

    iget v0, p0, Landroid/os/statistics/FilteringPerfEventList;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/os/statistics/FilteringPerfEventList;->size:I

    iget-object v0, p1, Landroid/os/statistics/FilteringPerfEvent;->previous:Landroid/os/statistics/FilteringPerfEventListNode;

    iget-object v1, p1, Landroid/os/statistics/FilteringPerfEvent;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    iput-object v1, v0, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    iput-object v0, v1, Landroid/os/statistics/FilteringPerfEventListNode;->previous:Landroid/os/statistics/FilteringPerfEventListNode;

    return-void
.end method
