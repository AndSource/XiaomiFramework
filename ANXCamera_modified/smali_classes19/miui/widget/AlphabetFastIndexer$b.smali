.class Lmiui/widget/AlphabetFastIndexer$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/AlphabetFastIndexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final mListener:Landroid/widget/AbsListView$OnScrollListener;

.field private final qX:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/widget/AlphabetFastIndexer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiui/widget/AlphabetFastIndexer;Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/widget/AlphabetFastIndexer$b;->qX:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lmiui/widget/AlphabetFastIndexer$b;->mListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$b;->qX:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/widget/AlphabetFastIndexer;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lmiui/widget/AlphabetFastIndexer;->d(Lmiui/widget/AlphabetFastIndexer;)V

    :cond_0
    iget-object p0, p0, Lmiui/widget/AlphabetFastIndexer$b;->mListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$b;->qX:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/widget/AlphabetFastIndexer;

    if-eqz v0, :cond_0

    invoke-static {v0, p2}, Lmiui/widget/AlphabetFastIndexer;->b(Lmiui/widget/AlphabetFastIndexer;I)I

    :cond_0
    iget-object p0, p0, Lmiui/widget/AlphabetFastIndexer$b;->mListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_1
    return-void
.end method
