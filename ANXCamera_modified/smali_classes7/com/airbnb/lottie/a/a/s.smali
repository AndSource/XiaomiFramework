.class public Lcom/airbnb/lottie/a/a/s;
.super Ljava/lang/Object;
.source "RectangleContent.java"

# interfaces
.implements Lcom/airbnb/lottie/a/b/b$a;
.implements Lcom/airbnb/lottie/a/a/l;
.implements Lcom/airbnb/lottie/a/a/p;


# instance fields
.field private final Ha:Lcom/airbnb/lottie/Q;

.field private final Ic:Lcom/airbnb/lottie/a/b/b;
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

.field private final name:Ljava/lang/String;

.field private final path:Landroid/graphics/Path;

.field private final qc:Lcom/airbnb/lottie/a/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/a/b/b<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final rc:Lcom/airbnb/lottie/a/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/a/b/b<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final rect:Landroid/graphics/RectF;

.field private tc:Lcom/airbnb/lottie/a/a/c;

.field private uc:Z


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/Q;Lcom/airbnb/lottie/model/layer/c;Lcom/airbnb/lottie/model/content/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/a/a/s;->path:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/a/a/s;->rect:Landroid/graphics/RectF;

    new-instance v0, Lcom/airbnb/lottie/a/a/c;

    invoke-direct {v0}, Lcom/airbnb/lottie/a/a/c;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/a/a/s;->tc:Lcom/airbnb/lottie/a/a/c;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/f;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/a/a/s;->name:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/f;->isHidden()Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/lottie/a/a/s;->hidden:Z

    iput-object p1, p0, Lcom/airbnb/lottie/a/a/s;->Ha:Lcom/airbnb/lottie/Q;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/f;->getPosition()Lcom/airbnb/lottie/model/a/m;

    move-result-object p1

    invoke-interface {p1}, Lcom/airbnb/lottie/model/a/m;->F()Lcom/airbnb/lottie/a/b/b;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/a/a/s;->rc:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/f;->getSize()Lcom/airbnb/lottie/model/a/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/a/f;->F()Lcom/airbnb/lottie/a/b/b;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/a/a/s;->qc:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/f;->getCornerRadius()Lcom/airbnb/lottie/model/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/a/b;->F()Lcom/airbnb/lottie/a/b/b;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/a/a/s;->Ic:Lcom/airbnb/lottie/a/b/b;

    iget-object p1, p0, Lcom/airbnb/lottie/a/a/s;->rc:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/c;->a(Lcom/airbnb/lottie/a/b/b;)V

    iget-object p1, p0, Lcom/airbnb/lottie/a/a/s;->qc:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/c;->a(Lcom/airbnb/lottie/a/b/b;)V

    iget-object p1, p0, Lcom/airbnb/lottie/a/a/s;->Ic:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/c;->a(Lcom/airbnb/lottie/a/b/b;)V

    iget-object p1, p0, Lcom/airbnb/lottie/a/a/s;->rc:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/a/b/b;->b(Lcom/airbnb/lottie/a/b/b$a;)V

    iget-object p1, p0, Lcom/airbnb/lottie/a/a/s;->qc:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/a/b/b;->b(Lcom/airbnb/lottie/a/b/b$a;)V

    iget-object p1, p0, Lcom/airbnb/lottie/a/a/s;->Ic:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/a/b/b;->b(Lcom/airbnb/lottie/a/b/b$a;)V

    return-void
.end method

.method private invalidate()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/a/a/s;->uc:Z

    iget-object p0, p0, Lcom/airbnb/lottie/a/a/s;->Ha:Lcom/airbnb/lottie/Q;

    invoke-virtual {p0}, Lcom/airbnb/lottie/Q;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public G()V
    .locals 0

    invoke-direct {p0}, Lcom/airbnb/lottie/a/a/s;->invalidate()V

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

    sget-object v0, Lcom/airbnb/lottie/W;->Vk:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/a/a/s;->qc:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/a/b/b;->a(Lcom/airbnb/lottie/e/j;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/airbnb/lottie/W;->POSITION:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/airbnb/lottie/a/a/s;->rc:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/a/b/b;->a(Lcom/airbnb/lottie/e/j;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/airbnb/lottie/W;->Wk:Ljava/lang/Float;

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/airbnb/lottie/a/a/s;->Ic:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/a/b/b;->a(Lcom/airbnb/lottie/e/j;)V

    :cond_2
    :goto_0
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

    iget-object v1, p0, Lcom/airbnb/lottie/a/a/s;->tc:Lcom/airbnb/lottie/a/a/c;

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

    iget-object p0, p0, Lcom/airbnb/lottie/a/a/s;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/airbnb/lottie/a/a/s;->uc:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/airbnb/lottie/a/a/s;->path:Landroid/graphics/Path;

    return-object v0

    :cond_0
    iget-object v1, v0, Lcom/airbnb/lottie/a/a/s;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-boolean v1, v0, Lcom/airbnb/lottie/a/a/s;->hidden:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iput-boolean v2, v0, Lcom/airbnb/lottie/a/a/s;->uc:Z

    iget-object v0, v0, Lcom/airbnb/lottie/a/a/s;->path:Landroid/graphics/Path;

    return-object v0

    :cond_1
    iget-object v1, v0, Lcom/airbnb/lottie/a/a/s;->qc:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {v1}, Lcom/airbnb/lottie/a/b/b;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v4

    iget-object v5, v0, Lcom/airbnb/lottie/a/a/s;->Ic:Lcom/airbnb/lottie/a/b/b;

    const/4 v6, 0x0

    if-nez v5, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    check-cast v5, Lcom/airbnb/lottie/a/b/d;

    invoke-virtual {v5}, Lcom/airbnb/lottie/a/b/d;->getFloatValue()F

    move-result v5

    :goto_0
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v7

    cmpl-float v8, v5, v7

    if-lez v8, :cond_3

    move v5, v7

    :cond_3
    iget-object v7, v0, Lcom/airbnb/lottie/a/a/s;->rc:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {v7}, Lcom/airbnb/lottie/a/b/b;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    iget-object v8, v0, Lcom/airbnb/lottie/a/a/s;->path:Landroid/graphics/Path;

    iget v9, v7, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v3

    iget v10, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v1

    add-float/2addr v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v8, v0, Lcom/airbnb/lottie/a/a/s;->path:Landroid/graphics/Path;

    iget v9, v7, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v3

    iget v10, v7, Landroid/graphics/PointF;->y:F

    add-float/2addr v10, v1

    sub-float/2addr v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    cmpl-float v8, v5, v6

    const/4 v9, 0x0

    const/high16 v10, 0x42b40000    # 90.0f

    if-lez v8, :cond_4

    iget-object v11, v0, Lcom/airbnb/lottie/a/a/s;->rect:Landroid/graphics/RectF;

    iget v12, v7, Landroid/graphics/PointF;->x:F

    add-float v13, v12, v3

    mul-float v14, v5, v4

    sub-float/2addr v13, v14

    iget v15, v7, Landroid/graphics/PointF;->y:F

    add-float v16, v15, v1

    sub-float v14, v16, v14

    add-float/2addr v12, v3

    add-float/2addr v15, v1

    invoke-virtual {v11, v13, v14, v12, v15}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v11, v0, Lcom/airbnb/lottie/a/a/s;->path:Landroid/graphics/Path;

    iget-object v12, v0, Lcom/airbnb/lottie/a/a/s;->rect:Landroid/graphics/RectF;

    invoke-virtual {v11, v12, v6, v10, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_4
    iget-object v6, v0, Lcom/airbnb/lottie/a/a/s;->path:Landroid/graphics/Path;

    iget v11, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v11, v3

    add-float/2addr v11, v5

    iget v12, v7, Landroid/graphics/PointF;->y:F

    add-float/2addr v12, v1

    invoke-virtual {v6, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v8, :cond_5

    iget-object v6, v0, Lcom/airbnb/lottie/a/a/s;->rect:Landroid/graphics/RectF;

    iget v11, v7, Landroid/graphics/PointF;->x:F

    sub-float v12, v11, v3

    iget v13, v7, Landroid/graphics/PointF;->y:F

    add-float v14, v13, v1

    mul-float v15, v5, v4

    sub-float/2addr v14, v15

    sub-float/2addr v11, v3

    add-float/2addr v11, v15

    add-float/2addr v13, v1

    invoke-virtual {v6, v12, v14, v11, v13}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v6, v0, Lcom/airbnb/lottie/a/a/s;->path:Landroid/graphics/Path;

    iget-object v11, v0, Lcom/airbnb/lottie/a/a/s;->rect:Landroid/graphics/RectF;

    invoke-virtual {v6, v11, v10, v10, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_5
    iget-object v6, v0, Lcom/airbnb/lottie/a/a/s;->path:Landroid/graphics/Path;

    iget v11, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v11, v3

    iget v12, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v1

    add-float/2addr v12, v5

    invoke-virtual {v6, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v8, :cond_6

    iget-object v6, v0, Lcom/airbnb/lottie/a/a/s;->rect:Landroid/graphics/RectF;

    iget v11, v7, Landroid/graphics/PointF;->x:F

    sub-float v12, v11, v3

    iget v13, v7, Landroid/graphics/PointF;->y:F

    sub-float v14, v13, v1

    sub-float/2addr v11, v3

    mul-float v15, v5, v4

    add-float/2addr v11, v15

    sub-float/2addr v13, v1

    add-float/2addr v13, v15

    invoke-virtual {v6, v12, v14, v11, v13}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v6, v0, Lcom/airbnb/lottie/a/a/s;->path:Landroid/graphics/Path;

    iget-object v11, v0, Lcom/airbnb/lottie/a/a/s;->rect:Landroid/graphics/RectF;

    const/high16 v12, 0x43340000    # 180.0f

    invoke-virtual {v6, v11, v12, v10, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_6
    iget-object v6, v0, Lcom/airbnb/lottie/a/a/s;->path:Landroid/graphics/Path;

    iget v11, v7, Landroid/graphics/PointF;->x:F

    add-float/2addr v11, v3

    sub-float/2addr v11, v5

    iget v12, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v1

    invoke-virtual {v6, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v8, :cond_7

    iget-object v6, v0, Lcom/airbnb/lottie/a/a/s;->rect:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/PointF;->x:F

    add-float v11, v8, v3

    mul-float/2addr v5, v4

    sub-float/2addr v11, v5

    iget v4, v7, Landroid/graphics/PointF;->y:F

    sub-float v7, v4, v1

    add-float/2addr v8, v3

    sub-float/2addr v4, v1

    add-float/2addr v4, v5

    invoke-virtual {v6, v11, v7, v8, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lcom/airbnb/lottie/a/a/s;->path:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/airbnb/lottie/a/a/s;->rect:Landroid/graphics/RectF;

    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {v1, v3, v4, v10, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_7
    iget-object v1, v0, Lcom/airbnb/lottie/a/a/s;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    iget-object v1, v0, Lcom/airbnb/lottie/a/a/s;->tc:Lcom/airbnb/lottie/a/a/c;

    iget-object v3, v0, Lcom/airbnb/lottie/a/a/s;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/a/a/c;->a(Landroid/graphics/Path;)V

    iput-boolean v2, v0, Lcom/airbnb/lottie/a/a/s;->uc:Z

    iget-object v0, v0, Lcom/airbnb/lottie/a/a/s;->path:Landroid/graphics/Path;

    return-object v0
.end method
