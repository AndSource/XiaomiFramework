.class public Lcom/airbnb/lottie/a/a/u;
.super Ljava/lang/Object;
.source "ShapeContent.java"

# interfaces
.implements Lcom/airbnb/lottie/a/a/p;
.implements Lcom/airbnb/lottie/a/b/b$a;


# instance fields
.field private final Ha:Lcom/airbnb/lottie/Q;

.field private final Mc:Lcom/airbnb/lottie/a/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/a/b/b<",
            "*",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final hidden:Z

.field private final name:Ljava/lang/String;

.field private final path:Landroid/graphics/Path;

.field private tc:Lcom/airbnb/lottie/a/a/c;

.field private uc:Z


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/Q;Lcom/airbnb/lottie/model/layer/c;Lcom/airbnb/lottie/model/content/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/a/a/u;->path:Landroid/graphics/Path;

    new-instance v0, Lcom/airbnb/lottie/a/a/c;

    invoke-direct {v0}, Lcom/airbnb/lottie/a/a/c;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/a/a/u;->tc:Lcom/airbnb/lottie/a/a/c;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/k;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/a/a/u;->name:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/k;->isHidden()Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/lottie/a/a/u;->hidden:Z

    iput-object p1, p0, Lcom/airbnb/lottie/a/a/u;->Ha:Lcom/airbnb/lottie/Q;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/k;->Xb()Lcom/airbnb/lottie/model/a/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/a/h;->F()Lcom/airbnb/lottie/a/b/b;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/a/a/u;->Mc:Lcom/airbnb/lottie/a/b/b;

    iget-object p1, p0, Lcom/airbnb/lottie/a/a/u;->Mc:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/c;->a(Lcom/airbnb/lottie/a/b/b;)V

    iget-object p1, p0, Lcom/airbnb/lottie/a/a/u;->Mc:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/a/b/b;->b(Lcom/airbnb/lottie/a/b/b$a;)V

    return-void
.end method

.method private invalidate()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/a/a/u;->uc:Z

    iget-object p0, p0, Lcom/airbnb/lottie/a/a/u;->Ha:Lcom/airbnb/lottie/Q;

    invoke-virtual {p0}, Lcom/airbnb/lottie/Q;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public G()V
    .locals 0

    invoke-direct {p0}, Lcom/airbnb/lottie/a/a/u;->invalidate()V

    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 3
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

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/a/a/d;

    instance-of v1, v0, Lcom/airbnb/lottie/a/a/w;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/airbnb/lottie/a/a/w;

    invoke-virtual {v0}, Lcom/airbnb/lottie/a/a/w;->getType()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v1

    sget-object v2, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->Tj:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/airbnb/lottie/a/a/u;->tc:Lcom/airbnb/lottie/a/a/c;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/a/a/c;->a(Lcom/airbnb/lottie/a/a/w;)V

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/a/a/w;->a(Lcom/airbnb/lottie/a/b/b$a;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/a/a/u;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 3

    iget-boolean v0, p0, Lcom/airbnb/lottie/a/a/u;->uc:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/a/a/u;->path:Landroid/graphics/Path;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/a/a/u;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-boolean v0, p0, Lcom/airbnb/lottie/a/a/u;->hidden:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/airbnb/lottie/a/a/u;->uc:Z

    iget-object p0, p0, Lcom/airbnb/lottie/a/a/u;->path:Landroid/graphics/Path;

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/a/a/u;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/airbnb/lottie/a/a/u;->Mc:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {v2}, Lcom/airbnb/lottie/a/b/b;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object v0, p0, Lcom/airbnb/lottie/a/a/u;->path:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v0, p0, Lcom/airbnb/lottie/a/a/u;->tc:Lcom/airbnb/lottie/a/a/c;

    iget-object v2, p0, Lcom/airbnb/lottie/a/a/u;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/a/a/c;->a(Landroid/graphics/Path;)V

    iput-boolean v1, p0, Lcom/airbnb/lottie/a/a/u;->uc:Z

    iget-object p0, p0, Lcom/airbnb/lottie/a/a/u;->path:Landroid/graphics/Path;

    return-object p0
.end method
