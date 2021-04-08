.class public abstract Lcom/airbnb/lottie/a/b/b;
.super Ljava/lang/Object;
.source "BaseKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/a/b/b$d;,
        Lcom/airbnb/lottie/a/b/b$e;,
        Lcom/airbnb/lottie/a/b/b$b;,
        Lcom/airbnb/lottie/a/b/b$c;,
        Lcom/airbnb/lottie/a/b/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private Vc:Z

.field private final Wc:Lcom/airbnb/lottie/a/b/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/a/b/b$c<",
            "TK;>;"
        }
    .end annotation
.end field

.field protected Xc:Lcom/airbnb/lottie/e/j;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/e/j<",
            "TA;>;"
        }
    .end annotation
.end field

.field private Yc:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private Zc:F

.field private _c:F

.field final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/a/b/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private progress:F


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/airbnb/lottie/e/a<",
            "TK;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/a/b/b;->listeners:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/a/b/b;->Vc:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/a/b/b;->progress:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/a/b/b;->Yc:Ljava/lang/Object;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/airbnb/lottie/a/b/b;->Zc:F

    iput v0, p0, Lcom/airbnb/lottie/a/b/b;->_c:F

    invoke-static {p1}, Lcom/airbnb/lottie/a/b/b;->f(Ljava/util/List;)Lcom/airbnb/lottie/a/b/b$c;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/a/b/b;->Wc:Lcom/airbnb/lottie/a/b/b$c;

    return-void
.end method

.method private E()F
    .locals 2
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget v0, p0, Lcom/airbnb/lottie/a/b/b;->Zc:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/a/b/b;->Wc:Lcom/airbnb/lottie/a/b/b$c;

    invoke-interface {v0}, Lcom/airbnb/lottie/a/b/b$c;->E()F

    move-result v0

    iput v0, p0, Lcom/airbnb/lottie/a/b/b;->Zc:F

    :cond_0
    iget p0, p0, Lcom/airbnb/lottie/a/b/b;->Zc:F

    return p0
.end method

.method private static f(Ljava/util/List;)Lcom/airbnb/lottie/a/b/b$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Lcom/airbnb/lottie/e/a<",
            "TT;>;>;)",
            "Lcom/airbnb/lottie/a/b/b$c<",
            "TT;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/airbnb/lottie/a/b/b$b;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/a/b/b$b;-><init>(Lcom/airbnb/lottie/a/b/a;)V

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/airbnb/lottie/a/b/b$e;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/a/b/b$e;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/airbnb/lottie/a/b/b$d;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/a/b/b$d;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method protected D()Lcom/airbnb/lottie/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/e/a<",
            "TK;>;"
        }
    .end annotation

    const-string v0, "BaseKeyframeAnimation#getCurrentKeyframe"

    invoke-static {v0}, Lcom/airbnb/lottie/e;->beginSection(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/airbnb/lottie/a/b/b;->Wc:Lcom/airbnb/lottie/a/b/b$c;

    invoke-interface {p0}, Lcom/airbnb/lottie/a/b/b$c;->D()Lcom/airbnb/lottie/e/a;

    move-result-object p0

    invoke-static {v0}, Lcom/airbnb/lottie/e;->D(Ljava/lang/String;)F

    return-object p0
.end method

.method H()F
    .locals 2
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget v0, p0, Lcom/airbnb/lottie/a/b/b;->_c:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/a/b/b;->Wc:Lcom/airbnb/lottie/a/b/b$c;

    invoke-interface {v0}, Lcom/airbnb/lottie/a/b/b$c;->H()F

    move-result v0

    iput v0, p0, Lcom/airbnb/lottie/a/b/b;->_c:F

    :cond_0
    iget p0, p0, Lcom/airbnb/lottie/a/b/b;->_c:F

    return p0
.end method

.method abstract a(Lcom/airbnb/lottie/e/a;F)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/e/a<",
            "TK;>;F)TA;"
        }
    .end annotation
.end method

.method public a(Lcom/airbnb/lottie/e/j;)V
    .locals 2
    .param p1    # Lcom/airbnb/lottie/e/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/e/j<",
            "TA;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/a/b/b;->Xc:Lcom/airbnb/lottie/e/j;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/e/j;->c(Lcom/airbnb/lottie/a/b/b;)V

    :cond_0
    iput-object p1, p0, Lcom/airbnb/lottie/a/b/b;->Xc:Lcom/airbnb/lottie/e/j;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/e/j;->c(Lcom/airbnb/lottie/a/b/b;)V

    :cond_1
    return-void
.end method

.method public b(Lcom/airbnb/lottie/a/b/b$a;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/a/b/b;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getProgress()F
    .locals 0

    iget p0, p0, Lcom/airbnb/lottie/a/b/b;->progress:F

    return p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/airbnb/lottie/a/b/b;->nb()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/a/b/b;->Xc:Lcom/airbnb/lottie/e/j;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/airbnb/lottie/a/b/b;->Wc:Lcom/airbnb/lottie/a/b/b$c;

    invoke-interface {v1, v0}, Lcom/airbnb/lottie/a/b/b$c;->b(F)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/a/b/b;->Yc:Ljava/lang/Object;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/a/b/b;->D()Lcom/airbnb/lottie/e/a;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/airbnb/lottie/a/b/b;->a(Lcom/airbnb/lottie/e/a;F)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/a/b/b;->Yc:Ljava/lang/Object;

    return-object v0
.end method

.method protected nb()F
    .locals 2

    invoke-virtual {p0}, Lcom/airbnb/lottie/a/b/b;->D()Lcom/airbnb/lottie/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/e/a;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, v0, Lcom/airbnb/lottie/e/a;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Lcom/airbnb/lottie/a/b/b;->ob()F

    move-result p0

    invoke-interface {v0, p0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    return p0
.end method

.method public notifyListeners()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/a/b/b;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/airbnb/lottie/a/b/b;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/a/b/b$a;

    invoke-interface {v1}, Lcom/airbnb/lottie/a/b/b$a;->G()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method ob()F
    .locals 3

    iget-boolean v0, p0, Lcom/airbnb/lottie/a/b/b;->Vc:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/a/b/b;->D()Lcom/airbnb/lottie/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/e/a;->isStatic()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget p0, p0, Lcom/airbnb/lottie/a/b/b;->progress:F

    invoke-virtual {v0}, Lcom/airbnb/lottie/e/a;->ic()F

    move-result v1

    sub-float/2addr p0, v1

    invoke-virtual {v0}, Lcom/airbnb/lottie/e/a;->H()F

    move-result v1

    invoke-virtual {v0}, Lcom/airbnb/lottie/e/a;->ic()F

    move-result v0

    sub-float/2addr v1, v0

    div-float/2addr p0, v1

    return p0
.end method

.method public pb()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/a/b/b;->Vc:Z

    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object v0, p0, Lcom/airbnb/lottie/a/b/b;->Wc:Lcom/airbnb/lottie/a/b/b$c;

    invoke-interface {v0}, Lcom/airbnb/lottie/a/b/b$c;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/a/b/b;->E()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    invoke-direct {p0}, Lcom/airbnb/lottie/a/b/b;->E()F

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/a/b/b;->H()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/airbnb/lottie/a/b/b;->H()F

    move-result p1

    :cond_2
    :goto_0
    iget v0, p0, Lcom/airbnb/lottie/a/b/b;->progress:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iput p1, p0, Lcom/airbnb/lottie/a/b/b;->progress:F

    iget-object v0, p0, Lcom/airbnb/lottie/a/b/b;->Wc:Lcom/airbnb/lottie/a/b/b$c;

    invoke-interface {v0, p1}, Lcom/airbnb/lottie/a/b/b$c;->c(F)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/airbnb/lottie/a/b/b;->notifyListeners()V

    :cond_4
    return-void
.end method
