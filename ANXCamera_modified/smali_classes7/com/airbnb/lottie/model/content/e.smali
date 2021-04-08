.class public Lcom/airbnb/lottie/model/content/e;
.super Ljava/lang/Object;
.source "GradientStroke.java"

# interfaces
.implements Lcom/airbnb/lottie/model/content/b;


# instance fields
.field private final _d:Lcom/airbnb/lottie/model/content/GradientType;

.field private final bd:Lcom/airbnb/lottie/model/a/c;

.field private final be:Lcom/airbnb/lottie/model/a/f;

.field private final ee:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

.field private final endPoint:Lcom/airbnb/lottie/model/a/f;

.field private final fe:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

.field private final ge:F

.field private final he:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private final hidden:Z

.field private final ie:Lcom/airbnb/lottie/model/a/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final opacity:Lcom/airbnb/lottie/model/a/d;

.field private final width:Lcom/airbnb/lottie/model/a/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Lcom/airbnb/lottie/model/a/c;Lcom/airbnb/lottie/model/a/d;Lcom/airbnb/lottie/model/a/f;Lcom/airbnb/lottie/model/a/f;Lcom/airbnb/lottie/model/a/b;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;FLjava/util/List;Lcom/airbnb/lottie/model/a/b;Z)V
    .locals 0
    .param p12    # Lcom/airbnb/lottie/model/a/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/content/GradientType;",
            "Lcom/airbnb/lottie/model/a/c;",
            "Lcom/airbnb/lottie/model/a/d;",
            "Lcom/airbnb/lottie/model/a/f;",
            "Lcom/airbnb/lottie/model/a/f;",
            "Lcom/airbnb/lottie/model/a/b;",
            "Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;",
            "Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;",
            "F",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/a/b;",
            ">;",
            "Lcom/airbnb/lottie/model/a/b;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/content/e;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/airbnb/lottie/model/content/e;->_d:Lcom/airbnb/lottie/model/content/GradientType;

    iput-object p3, p0, Lcom/airbnb/lottie/model/content/e;->bd:Lcom/airbnb/lottie/model/a/c;

    iput-object p4, p0, Lcom/airbnb/lottie/model/content/e;->opacity:Lcom/airbnb/lottie/model/a/d;

    iput-object p5, p0, Lcom/airbnb/lottie/model/content/e;->be:Lcom/airbnb/lottie/model/a/f;

    iput-object p6, p0, Lcom/airbnb/lottie/model/content/e;->endPoint:Lcom/airbnb/lottie/model/a/f;

    iput-object p7, p0, Lcom/airbnb/lottie/model/content/e;->width:Lcom/airbnb/lottie/model/a/b;

    iput-object p8, p0, Lcom/airbnb/lottie/model/content/e;->ee:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    iput-object p9, p0, Lcom/airbnb/lottie/model/content/e;->fe:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    iput p10, p0, Lcom/airbnb/lottie/model/content/e;->ge:F

    iput-object p11, p0, Lcom/airbnb/lottie/model/content/e;->he:Ljava/util/List;

    iput-object p12, p0, Lcom/airbnb/lottie/model/content/e;->ie:Lcom/airbnb/lottie/model/a/b;

    iput-boolean p13, p0, Lcom/airbnb/lottie/model/content/e;->hidden:Z

    return-void
.end method


# virtual methods
.method public Fb()Lcom/airbnb/lottie/model/a/f;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/e;->endPoint:Lcom/airbnb/lottie/model/a/f;

    return-object p0
.end method

.method public Gb()Lcom/airbnb/lottie/model/a/c;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/e;->bd:Lcom/airbnb/lottie/model/a/c;

    return-object p0
.end method

.method public Jb()Lcom/airbnb/lottie/model/a/f;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/e;->be:Lcom/airbnb/lottie/model/a/f;

    return-object p0
.end method

.method public Kb()Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/e;->ee:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    return-object p0
.end method

.method public Lb()Lcom/airbnb/lottie/model/a/b;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/e;->ie:Lcom/airbnb/lottie/model/a/b;

    return-object p0
.end method

.method public Mb()Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/e;->fe:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    return-object p0
.end method

.method public Nb()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/a/b;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/e;->he:Ljava/util/List;

    return-object p0
.end method

.method public Ob()F
    .locals 0

    iget p0, p0, Lcom/airbnb/lottie/model/content/e;->ge:F

    return p0
.end method

.method public a(Lcom/airbnb/lottie/Q;Lcom/airbnb/lottie/model/layer/c;)Lcom/airbnb/lottie/a/a/d;
    .locals 1

    new-instance v0, Lcom/airbnb/lottie/a/a/j;

    invoke-direct {v0, p1, p2, p0}, Lcom/airbnb/lottie/a/a/j;-><init>(Lcom/airbnb/lottie/Q;Lcom/airbnb/lottie/model/layer/c;Lcom/airbnb/lottie/model/content/e;)V

    return-object v0
.end method

.method public getGradientType()Lcom/airbnb/lottie/model/content/GradientType;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/e;->_d:Lcom/airbnb/lottie/model/content/GradientType;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/e;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOpacity()Lcom/airbnb/lottie/model/a/d;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/e;->opacity:Lcom/airbnb/lottie/model/a/d;

    return-object p0
.end method

.method public getWidth()Lcom/airbnb/lottie/model/a/b;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/e;->width:Lcom/airbnb/lottie/model/a/b;

    return-object p0
.end method

.method public isHidden()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/model/content/e;->hidden:Z

    return p0
.end method
