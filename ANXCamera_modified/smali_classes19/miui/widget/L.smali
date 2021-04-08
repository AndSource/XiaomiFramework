.class Lmiui/widget/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/FilterSortView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aY:Landroid/view/View$OnClickListener;

.field final synthetic j:Lmiui/widget/FilterSortView$TabView;


# direct methods
.method constructor <init>(Lmiui/widget/FilterSortView$TabView;Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/L;->j:Lmiui/widget/FilterSortView$TabView;

    iput-object p2, p0, Lmiui/widget/L;->aY:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lmiui/widget/L;->j:Lmiui/widget/FilterSortView$TabView;

    invoke-static {v0}, Lmiui/widget/FilterSortView$TabView;->c(Lmiui/widget/FilterSortView$TabView;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/L;->j:Lmiui/widget/FilterSortView$TabView;

    invoke-static {v0}, Lmiui/widget/FilterSortView$TabView;->d(Lmiui/widget/FilterSortView$TabView;)Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lmiui/widget/FilterSortView$TabView;->c(Lmiui/widget/FilterSortView$TabView;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/widget/L;->j:Lmiui/widget/FilterSortView$TabView;

    invoke-static {v0, v1}, Lmiui/widget/FilterSortView$TabView;->b(Lmiui/widget/FilterSortView$TabView;Z)V

    :goto_0
    iget-object p0, p0, Lmiui/widget/L;->aY:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
