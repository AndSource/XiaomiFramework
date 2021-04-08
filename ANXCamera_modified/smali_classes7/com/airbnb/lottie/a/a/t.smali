.class public Lcom/airbnb/lottie/a/a/t;
.super Ljava/lang/Object;
.source "RepeaterContent.java"

# interfaces
.implements Lcom/airbnb/lottie/a/a/f;
.implements Lcom/airbnb/lottie/a/a/p;
.implements Lcom/airbnb/lottie/a/a/k;
.implements Lcom/airbnb/lottie/a/b/b$a;
.implements Lcom/airbnb/lottie/a/a/l;


# instance fields
.field private final Ha:Lcom/airbnb/lottie/Q;

.field private final Jc:Lcom/airbnb/lottie/a/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/a/b/b<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final Kc:Lcom/airbnb/lottie/a/b/p;

.field private Lc:Lcom/airbnb/lottie/a/a/e;

.field private final hidden:Z

.field private final layer:Lcom/airbnb/lottie/model/layer/c;

.field private final matrix:Landroid/graphics/Matrix;

.field private final name:Ljava/lang/String;

.field private final offset:Lcom/airbnb/lottie/a/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/a/b/b<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/Q;Lcom/airbnb/lottie/model/layer/c;Lcom/airbnb/lottie/model/content/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/a/a/t;->matrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/a/a/t;->path:Landroid/graphics/Path;

    iput-object p1, p0, Lcom/airbnb/lottie/a/a/t;->Ha:Lcom/airbnb/lottie/Q;

    iput-object p2, p0, Lcom/airbnb/lottie/a/a/t;->layer:Lcom/airbnb/lottie/model/layer/c;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/g;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/a/a/t;->name:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/g;->isHidden()Z

    move-result p1

    iput-boolean p1, p0, Lcom/airbnb/lottie/a/a/t;->hidden:Z

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/g;->getCopies()Lcom/airbnb/lottie/model/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/a/b;->F()Lcom/airbnb/lottie/a/b/b;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/a/a/t;->Jc:Lcom/airbnb/lottie/a/b/b;

    iget-object p1, p0, Lcom/airbnb/lottie/a/a/t;->Jc:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/c;->a(Lcom/airbnb/lottie/a/b/b;)V

    iget-object p1, p0, Lcom/airbnb/lottie/a/a/t;->Jc:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/a/b/b;->b(Lcom/airbnb/lottie/a/b/b$a;)V

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/g;->getOffset()Lcom/airbnb/lottie/model/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/a/b;->F()Lcom/airbnb/lottie/a/b/b;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/a/a/t;->offset:Lcom/airbnb/lottie/a/b/b;

    iget-object p1, p0, Lcom/airbnb/lottie/a/a/t;->offset:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/c;->a(Lcom/airbnb/lottie/a/b/b;)V

    iget-object p1, p0, Lcom/airbnb/lottie/a/a/t;->offset:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/a/b/b;->b(Lcom/airbnb/lottie/a/b/b$a;)V

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/g;->getTransform()Lcom/airbnb/lottie/model/a/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/a/l;->F()Lcom/airbnb/lottie/a/b/p;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/a/a/t;->Kc:Lcom/airbnb/lottie/a/b/p;

    iget-object p1, p0, Lcom/airbnb/lottie/a/a/t;->Kc:Lcom/airbnb/lottie/a/b/p;

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/a/b/p;->a(Lcom/airbnb/lottie/model/layer/c;)V

    iget-object p1, p0, Lcom/airbnb/lottie/a/a/t;->Kc:Lcom/airbnb/lottie/a/b/p;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/a/b/p;->a(Lcom/airbnb/lottie/a/b/b$a;)V

    return-void
.end method


# virtual methods
.method public G()V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/a/a/t;->Ha:Lcom/airbnb/lottie/Q;

    invoke-virtual {p0}, Lcom/airbnb/lottie/Q;->invalidateSelf()V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 9

    iget-object v0, p0, Lcom/airbnb/lottie/a/a/t;->Jc:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {v0}, Lcom/airbnb/lottie/a/b/b;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/a/a/t;->offset:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {v1}, Lcom/airbnb/lottie/a/b/b;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/airbnb/lottie/a/a/t;->Kc:Lcom/airbnb/lottie/a/b/p;

    invoke-virtual {v2}, Lcom/airbnb/lottie/a/b/p;->ub()Lcom/airbnb/lottie/a/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/lottie/a/b/b;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    iget-object v4, p0, Lcom/airbnb/lottie/a/a/t;->Kc:Lcom/airbnb/lottie/a/b/p;

    invoke-virtual {v4}, Lcom/airbnb/lottie/a/b/p;->tb()Lcom/airbnb/lottie/a/b/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/lottie/a/b/b;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float/2addr v4, v3

    float-to-int v3, v0

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_0

    iget-object v5, p0, Lcom/airbnb/lottie/a/a/t;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v5, p0, Lcom/airbnb/lottie/a/a/t;->matrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/airbnb/lottie/a/a/t;->Kc:Lcom/airbnb/lottie/a/b/p;

    int-to-float v7, v3

    add-float v8, v7, v1

    invoke-virtual {v6, v8}, Lcom/airbnb/lottie/a/b/p;->j(F)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    int-to-float v5, p3

    div-float/2addr v7, v0

    invoke-static {v2, v4, v7}, Lcom/airbnb/lottie/d/g;->lerp(FFF)F

    move-result v6

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/airbnb/lottie/a/a/t;->Lc:Lcom/airbnb/lottie/a/a/e;

    iget-object v7, p0, Lcom/airbnb/lottie/a/a/t;->matrix:Landroid/graphics/Matrix;

    float-to-int v5, v5

    invoke-virtual {v6, p1, v7, v5}, Lcom/airbnb/lottie/a/a/e;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/a/a/t;->Lc:Lcom/airbnb/lottie/a/a/e;

    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/lottie/a/a/e;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method public a(Lcom/airbnb/lottie/model/d;ILjava/util/List;Lcom/airbnb/lottie/model/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/d;",
            "I",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/d;",
            ">;",
            "Lcom/airbnb/lottie/model/d;",
            ")V"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4, p0}, Lcom/airbnb/lottie/d/g;->a(Lcom/airbnb/lottie/model/d;ILjava/util/List;Lcom/airbnb/lottie/model/d;Lcom/airbnb/lottie/a/a/l;)V

    return-void
.end method

.method public a(Ljava/lang/Object;Lcom/airbnb/lottie/e/j;)V
    .locals 1
    .param p2    # Lcom/airbnb/lottie/e/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/airbnb/lottie/e/j<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/a/a/t;->Kc:Lcom/airbnb/lottie/a/b/p;

    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/a/b/p;->b(Ljava/lang/Object;Lcom/airbnb/lottie/e/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/airbnb/lottie/W;->cl:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/airbnb/lottie/a/a/t;->Jc:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/a/b/b;->a(Lcom/airbnb/lottie/e/j;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/airbnb/lottie/W;->dl:Ljava/lang/Float;

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/airbnb/lottie/a/a/t;->offset:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/a/b/b;->a(Lcom/airbnb/lottie/e/j;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/a/a/d;",
            ">;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/a/a/d;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/a/a/t;->Lc:Lcom/airbnb/lottie/a/a/e;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/a/a/e;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/ListIterator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "Lcom/airbnb/lottie/a/a/d;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/a/a/t;->Lc:Lcom/airbnb/lottie/a/a/e;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    :cond_2
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance p1, Lcom/airbnb/lottie/a/a/e;

    iget-object v2, p0, Lcom/airbnb/lottie/a/a/t;->Ha:Lcom/airbnb/lottie/Q;

    iget-object v3, p0, Lcom/airbnb/lottie/a/a/t;->layer:Lcom/airbnb/lottie/model/layer/c;

    iget-boolean v5, p0, Lcom/airbnb/lottie/a/a/t;->hidden:Z

    const/4 v7, 0x0

    const-string v4, "Repeater"

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/airbnb/lottie/a/a/e;-><init>(Lcom/airbnb/lottie/Q;Lcom/airbnb/lottie/model/layer/c;Ljava/lang/String;ZLjava/util/List;Lcom/airbnb/lottie/model/a/l;)V

    iput-object p1, p0, Lcom/airbnb/lottie/a/a/t;->Lc:Lcom/airbnb/lottie/a/a/e;

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/a/a/t;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 6

    iget-object v0, p0, Lcom/airbnb/lottie/a/a/t;->Lc:Lcom/airbnb/lottie/a/a/e;

    invoke-virtual {v0}, Lcom/airbnb/lottie/a/a/e;->getPath()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/a/a/t;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcom/airbnb/lottie/a/a/t;->Jc:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {v1}, Lcom/airbnb/lottie/a/b/b;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/airbnb/lottie/a/a/t;->offset:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {v2}, Lcom/airbnb/lottie/a/b/b;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v3, p0, Lcom/airbnb/lottie/a/a/t;->matrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/airbnb/lottie/a/a/t;->Kc:Lcom/airbnb/lottie/a/b/p;

    int-to-float v5, v1

    add-float/2addr v5, v2

    invoke-virtual {v4, v5}, Lcom/airbnb/lottie/a/b/p;->j(F)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lcom/airbnb/lottie/a/a/t;->path:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/airbnb/lottie/a/a/t;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/a/a/t;->path:Landroid/graphics/Path;

    return-object p0
.end method
