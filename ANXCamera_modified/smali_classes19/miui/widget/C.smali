.class Lmiui/widget/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DynamicListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private QX:I

.field private RX:I

.field private UX:I

.field private VX:I

.field private WX:I

.field final synthetic j:Lmiui/widget/DynamicListView;


# direct methods
.method constructor <init>(Lmiui/widget/DynamicListView;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/C;->j:Lmiui/widget/DynamicListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lmiui/widget/C;->QX:I

    iput p1, p0, Lmiui/widget/C;->RX:I

    return-void
.end method

.method private uf()V
    .locals 1

    iget v0, p0, Lmiui/widget/C;->VX:I

    if-lez v0, :cond_1

    iget v0, p0, Lmiui/widget/C;->WX:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/widget/C;->j:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->b(Lmiui/widget/DynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/C;->j:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->l(Lmiui/widget/DynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmiui/widget/C;->j:Lmiui/widget/DynamicListView;

    invoke-static {p0}, Lmiui/widget/DynamicListView;->c(Lmiui/widget/DynamicListView;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/widget/C;->j:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->d(Lmiui/widget/DynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lmiui/widget/C;->j:Lmiui/widget/DynamicListView;

    invoke-static {p0}, Lmiui/widget/DynamicListView;->e(Lmiui/widget/DynamicListView;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public P()V
    .locals 4

    iget v0, p0, Lmiui/widget/C;->UX:I

    iget v1, p0, Lmiui/widget/C;->QX:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmiui/widget/C;->j:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->b(Lmiui/widget/DynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/C;->j:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->a(Lmiui/widget/DynamicListView;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/C;->j:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->a(Lmiui/widget/DynamicListView;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lmiui/widget/DynamicListView;->c(Lmiui/widget/DynamicListView;J)V

    iget-object p0, p0, Lmiui/widget/C;->j:Lmiui/widget/DynamicListView;

    invoke-static {p0}, Lmiui/widget/DynamicListView;->f(Lmiui/widget/DynamicListView;)V

    :cond_0
    return-void
.end method

.method public Q()V
    .locals 4

    iget v0, p0, Lmiui/widget/C;->UX:I

    iget v1, p0, Lmiui/widget/C;->VX:I

    add-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/C;->QX:I

    iget v2, p0, Lmiui/widget/C;->RX:I

    add-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmiui/widget/C;->j:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->b(Lmiui/widget/DynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/C;->j:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->a(Lmiui/widget/DynamicListView;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/C;->j:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->a(Lmiui/widget/DynamicListView;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lmiui/widget/DynamicListView;->c(Lmiui/widget/DynamicListView;J)V

    iget-object p0, p0, Lmiui/widget/C;->j:Lmiui/widget/DynamicListView;

    invoke-static {p0}, Lmiui/widget/DynamicListView;->f(Lmiui/widget/DynamicListView;)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    iget-object v0, p0, Lmiui/widget/C;->j:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->n(Lmiui/widget/DynamicListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/C;->j:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->n(Lmiui/widget/DynamicListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    iput p2, p0, Lmiui/widget/C;->UX:I

    iput p3, p0, Lmiui/widget/C;->VX:I

    iget p1, p0, Lmiui/widget/C;->QX:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    iget p1, p0, Lmiui/widget/C;->UX:I

    :cond_1
    iput p1, p0, Lmiui/widget/C;->QX:I

    iget p1, p0, Lmiui/widget/C;->RX:I

    if-ne p1, p2, :cond_2

    iget p1, p0, Lmiui/widget/C;->VX:I

    :cond_2
    iput p1, p0, Lmiui/widget/C;->RX:I

    invoke-virtual {p0}, Lmiui/widget/C;->P()V

    invoke-virtual {p0}, Lmiui/widget/C;->Q()V

    iget p1, p0, Lmiui/widget/C;->UX:I

    iput p1, p0, Lmiui/widget/C;->QX:I

    iget p1, p0, Lmiui/widget/C;->VX:I

    iput p1, p0, Lmiui/widget/C;->RX:I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    iget-object v0, p0, Lmiui/widget/C;->j:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->n(Lmiui/widget/DynamicListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/C;->j:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->n(Lmiui/widget/DynamicListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    iput p2, p0, Lmiui/widget/C;->WX:I

    iget-object p1, p0, Lmiui/widget/C;->j:Lmiui/widget/DynamicListView;

    invoke-static {p1, p2}, Lmiui/widget/DynamicListView;->b(Lmiui/widget/DynamicListView;I)I

    invoke-direct {p0}, Lmiui/widget/C;->uf()V

    return-void
.end method
