.class public Lcom/airbnb/lottie/a/a/w;
.super Ljava/lang/Object;
.source "TrimPathContent.java"

# interfaces
.implements Lcom/airbnb/lottie/a/a/d;
.implements Lcom/airbnb/lottie/a/b/b$a;


# instance fields
.field private final Nc:Lcom/airbnb/lottie/a/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/a/b/b<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final Oc:Lcom/airbnb/lottie/a/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/a/b/b<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final Pc:Lcom/airbnb/lottie/a/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/a/b/b<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final hidden:Z

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/a/b/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final type:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/model/layer/c;Lcom/airbnb/lottie/model/content/ShapeTrimPath;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/a/a/w;->listeners:Ljava/util/List;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/a/a/w;->name:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->isHidden()Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/lottie/a/a/w;->hidden:Z

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->getType()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/a/a/w;->type:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->getStart()Lcom/airbnb/lottie/model/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/a/b;->F()Lcom/airbnb/lottie/a/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/a/a/w;->Nc:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->getEnd()Lcom/airbnb/lottie/model/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/a/b;->F()Lcom/airbnb/lottie/a/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/a/a/w;->Oc:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;->getOffset()Lcom/airbnb/lottie/model/a/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/a/b;->F()Lcom/airbnb/lottie/a/b/b;

    move-result-object p2

    iput-object p2, p0, Lcom/airbnb/lottie/a/a/w;->Pc:Lcom/airbnb/lottie/a/b/b;

    iget-object p2, p0, Lcom/airbnb/lottie/a/a/w;->Nc:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/model/layer/c;->a(Lcom/airbnb/lottie/a/b/b;)V

    iget-object p2, p0, Lcom/airbnb/lottie/a/a/w;->Oc:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/model/layer/c;->a(Lcom/airbnb/lottie/a/b/b;)V

    iget-object p2, p0, Lcom/airbnb/lottie/a/a/w;->Pc:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/model/layer/c;->a(Lcom/airbnb/lottie/a/b/b;)V

    iget-object p1, p0, Lcom/airbnb/lottie/a/a/w;->Nc:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/a/b/b;->b(Lcom/airbnb/lottie/a/b/b$a;)V

    iget-object p1, p0, Lcom/airbnb/lottie/a/a/w;->Oc:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/a/b/b;->b(Lcom/airbnb/lottie/a/b/b$a;)V

    iget-object p1, p0, Lcom/airbnb/lottie/a/a/w;->Pc:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/a/b/b;->b(Lcom/airbnb/lottie/a/b/b$a;)V

    return-void
.end method


# virtual methods
.method public G()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/a/a/w;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/airbnb/lottie/a/a/w;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/a/b/b$a;

    invoke-interface {v1}, Lcom/airbnb/lottie/a/b/b$a;->G()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method a(Lcom/airbnb/lottie/a/b/b$a;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/a/a/w;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    return-void
.end method

.method public getEnd()Lcom/airbnb/lottie/a/b/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/a/b/b<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/a/a/w;->Oc:Lcom/airbnb/lottie/a/b/b;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/a/a/w;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOffset()Lcom/airbnb/lottie/a/b/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/a/b/b<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/a/a/w;->Pc:Lcom/airbnb/lottie/a/b/b;

    return-object p0
.end method

.method public getStart()Lcom/airbnb/lottie/a/b/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/a/b/b<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/a/a/w;->Nc:Lcom/airbnb/lottie/a/b/b;

    return-object p0
.end method

.method getType()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/a/a/w;->type:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    return-object p0
.end method

.method public isHidden()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/a/a/w;->hidden:Z

    return p0
.end method
