.class public Lcom/airbnb/lottie/a/a/j;
.super Lcom/airbnb/lottie/a/a/b;
.source "GradientStrokeContent.java"


# static fields
.field private static final kc:I = 0x20


# instance fields
.field private final bc:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final dc:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final ec:Landroid/graphics/RectF;

.field private final fc:I

.field private final gc:Lcom/airbnb/lottie/a/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/a/b/b<",
            "Lcom/airbnb/lottie/model/content/c;",
            "Lcom/airbnb/lottie/model/content/c;",
            ">;"
        }
    .end annotation
.end field

.field private final hc:Lcom/airbnb/lottie/a/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/a/b/b<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final hidden:Z

.field private final ic:Lcom/airbnb/lottie/a/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/a/b/b<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private jc:Lcom/airbnb/lottie/a/b/q;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final type:Lcom/airbnb/lottie/model/content/GradientType;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/Q;Lcom/airbnb/lottie/model/layer/c;Lcom/airbnb/lottie/model/content/e;)V
    .locals 11

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/e;->Kb()Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->Ym()Landroid/graphics/Paint$Cap;

    move-result-object v4

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/e;->Mb()Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->Zm()Landroid/graphics/Paint$Join;

    move-result-object v5

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/e;->Ob()F

    move-result v6

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/e;->getOpacity()Lcom/airbnb/lottie/model/a/d;

    move-result-object v7

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/e;->getWidth()Lcom/airbnb/lottie/model/a/b;

    move-result-object v8

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/e;->Nb()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/e;->Lb()Lcom/airbnb/lottie/model/a/b;

    move-result-object v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lcom/airbnb/lottie/a/a/b;-><init>(Lcom/airbnb/lottie/Q;Lcom/airbnb/lottie/model/layer/c;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLcom/airbnb/lottie/model/a/d;Lcom/airbnb/lottie/model/a/b;Ljava/util/List;Lcom/airbnb/lottie/model/a/b;)V

    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/a/a/j;->bc:Landroidx/collection/LongSparseArray;

    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/a/a/j;->dc:Landroidx/collection/LongSparseArray;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/a/a/j;->ec:Landroid/graphics/RectF;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/e;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/a/a/j;->name:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/e;->getGradientType()Lcom/airbnb/lottie/model/content/GradientType;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/a/a/j;->type:Lcom/airbnb/lottie/model/content/GradientType;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/e;->isHidden()Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/lottie/a/a/j;->hidden:Z

    invoke-virtual {p1}, Lcom/airbnb/lottie/Q;->aa()Lcom/airbnb/lottie/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/m;->getDuration()F

    move-result p1

    const/high16 v0, 0x42000000    # 32.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/airbnb/lottie/a/a/j;->fc:I

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/e;->Gb()Lcom/airbnb/lottie/model/a/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/a/c;->F()Lcom/airbnb/lottie/a/b/b;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/a/a/j;->gc:Lcom/airbnb/lottie/a/b/b;

    iget-object p1, p0, Lcom/airbnb/lottie/a/a/j;->gc:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/a/b/b;->b(Lcom/airbnb/lottie/a/b/b$a;)V

    iget-object p1, p0, Lcom/airbnb/lottie/a/a/j;->gc:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/c;->a(Lcom/airbnb/lottie/a/b/b;)V

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/e;->Jb()Lcom/airbnb/lottie/model/a/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/a/f;->F()Lcom/airbnb/lottie/a/b/b;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/a/a/j;->hc:Lcom/airbnb/lottie/a/b/b;

    iget-object p1, p0, Lcom/airbnb/lottie/a/a/j;->hc:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/a/b/b;->b(Lcom/airbnb/lottie/a/b/b$a;)V

    iget-object p1, p0, Lcom/airbnb/lottie/a/a/j;->hc:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/c;->a(Lcom/airbnb/lottie/a/b/b;)V

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/e;->Fb()Lcom/airbnb/lottie/model/a/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/a/f;->F()Lcom/airbnb/lottie/a/b/b;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/a/a/j;->ic:Lcom/airbnb/lottie/a/b/b;

    iget-object p1, p0, Lcom/airbnb/lottie/a/a/j;->ic:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/a/b/b;->b(Lcom/airbnb/lottie/a/b/b$a;)V

    iget-object p0, p0, Lcom/airbnb/lottie/a/a/j;->ic:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/model/layer/c;->a(Lcom/airbnb/lottie/a/b/b;)V

    return-void
.end method

.method private b([I)[I
    .locals 3

    iget-object p0, p0, Lcom/airbnb/lottie/a/a/j;->jc:Lcom/airbnb/lottie/a/b/q;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/a/b/q;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    array-length v0, p1

    array-length v1, p0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    :goto_0
    array-length v0, p1

    if-ge v2, v0, :cond_1

    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length p1, p0

    new-array p1, p1, [I

    :goto_1
    array-length v0, p0

    if-ge v2, v0, :cond_1

    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method private jn()I
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/a/a/j;->hc:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {v0}, Lcom/airbnb/lottie/a/b/b;->getProgress()F

    move-result v0

    iget v1, p0, Lcom/airbnb/lottie/a/a/j;->fc:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/a/a/j;->ic:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {v1}, Lcom/airbnb/lottie/a/b/b;->getProgress()F

    move-result v1

    iget v2, p0, Lcom/airbnb/lottie/a/a/j;->fc:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/airbnb/lottie/a/a/j;->gc:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {v2}, Lcom/airbnb/lottie/a/b/b;->getProgress()F

    move-result v2

    iget p0, p0, Lcom/airbnb/lottie/a/a/j;->fc:I

    int-to-float p0, p0

    mul-float/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    if-eqz v0, :cond_0

    const/16 v2, 0x20f

    mul-int/2addr v2, v0

    goto :goto_0

    :cond_0
    const/16 v2, 0x11

    :goto_0
    if-eqz v1, :cond_1

    mul-int/lit8 v2, v2, 0x1f

    mul-int/2addr v2, v1

    :cond_1
    if-eqz p0, :cond_2

    mul-int/lit8 v2, v2, 0x1f

    mul-int/2addr v2, p0

    :cond_2
    return v2
.end method

.method private kn()Landroid/graphics/LinearGradient;
    .locals 14

    invoke-direct {p0}, Lcom/airbnb/lottie/a/a/j;->jn()I

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/a/a/j;->bc:Landroidx/collection/LongSparseArray;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/a/a/j;->hc:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {v0}, Lcom/airbnb/lottie/a/b/b;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/airbnb/lottie/a/a/j;->ic:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {v1}, Lcom/airbnb/lottie/a/b/b;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/airbnb/lottie/a/a/j;->gc:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {v4}, Lcom/airbnb/lottie/a/b/b;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/model/content/c;

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/c;->getColors()[I

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/airbnb/lottie/a/a/j;->b([I)[I

    move-result-object v11

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/c;->getPositions()[F

    move-result-object v12

    iget v7, v0, Landroid/graphics/PointF;->x:F

    iget v8, v0, Landroid/graphics/PointF;->y:F

    iget v9, v1, Landroid/graphics/PointF;->x:F

    iget v10, v1, Landroid/graphics/PointF;->y:F

    new-instance v0, Landroid/graphics/LinearGradient;

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v0

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object p0, p0, Lcom/airbnb/lottie/a/a/j;->bc:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0, v2, v3, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object v0
.end method

.method private ln()Landroid/graphics/RadialGradient;
    .locals 13

    invoke-direct {p0}, Lcom/airbnb/lottie/a/a/j;->jn()I

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/a/a/j;->dc:Landroidx/collection/LongSparseArray;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RadialGradient;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/a/a/j;->hc:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {v0}, Lcom/airbnb/lottie/a/b/b;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/airbnb/lottie/a/a/j;->ic:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {v1}, Lcom/airbnb/lottie/a/b/b;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/airbnb/lottie/a/a/j;->gc:Lcom/airbnb/lottie/a/b/b;

    invoke-virtual {v4}, Lcom/airbnb/lottie/a/b/b;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/model/content/c;

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/c;->getColors()[I

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/airbnb/lottie/a/a/j;->b([I)[I

    move-result-object v10

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/c;->getPositions()[F

    move-result-object v11

    iget v7, v0, Landroid/graphics/PointF;->x:F

    iget v8, v0, Landroid/graphics/PointF;->y:F

    iget v0, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v7

    float-to-double v4, v0

    sub-float/2addr v1, v8

    float-to-double v0, v1

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v9, v0

    new-instance v0, Landroid/graphics/RadialGradient;

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object p0, p0, Lcom/airbnb/lottie/a/a/j;->dc:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0, v2, v3, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/airbnb/lottie/a/a/j;->hidden:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/a/a/j;->ec:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/airbnb/lottie/a/a/b;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object v0, p0, Lcom/airbnb/lottie/a/a/j;->type:Lcom/airbnb/lottie/model/content/GradientType;

    sget-object v1, Lcom/airbnb/lottie/model/content/GradientType;->LINEAR:Lcom/airbnb/lottie/model/content/GradientType;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/airbnb/lottie/a/a/j;->kn()Landroid/graphics/LinearGradient;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/airbnb/lottie/a/a/j;->ln()Landroid/graphics/RadialGradient;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/airbnb/lottie/a/a/b;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/a/a/b;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

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

    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/a/a/b;->a(Ljava/lang/Object;Lcom/airbnb/lottie/e/j;)V

    sget-object v0, Lcom/airbnb/lottie/W;->ol:[Ljava/lang/Integer;

    if-ne p1, v0, :cond_2

    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/airbnb/lottie/a/a/j;->jc:Lcom/airbnb/lottie/a/b/q;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/airbnb/lottie/a/a/b;->layer:Lcom/airbnb/lottie/model/layer/c;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/c;->b(Lcom/airbnb/lottie/a/b/b;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/airbnb/lottie/a/a/j;->jc:Lcom/airbnb/lottie/a/b/q;

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/airbnb/lottie/a/b/q;

    invoke-direct {p1, p2}, Lcom/airbnb/lottie/a/b/q;-><init>(Lcom/airbnb/lottie/e/j;)V

    iput-object p1, p0, Lcom/airbnb/lottie/a/a/j;->jc:Lcom/airbnb/lottie/a/b/q;

    iget-object p1, p0, Lcom/airbnb/lottie/a/a/j;->jc:Lcom/airbnb/lottie/a/b/q;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/a/b/b;->b(Lcom/airbnb/lottie/a/b/b$a;)V

    iget-object p1, p0, Lcom/airbnb/lottie/a/a/b;->layer:Lcom/airbnb/lottie/model/layer/c;

    iget-object p0, p0, Lcom/airbnb/lottie/a/a/j;->jc:Lcom/airbnb/lottie/a/b/q;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/model/layer/c;->a(Lcom/airbnb/lottie/a/b/b;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/a/a/j;->name:Ljava/lang/String;

    return-object p0
.end method
