.class public Lcom/airbnb/lottie/Q;
.super Landroid/graphics/drawable/Drawable;
.source "LottieDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/Q$a;,
        Lcom/airbnb/lottie/Q$c;,
        Lcom/airbnb/lottie/Q$b;
    }
.end annotation


# static fields
.field public static final INFINITE:I = -0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Q"


# instance fields
.field private alpha:I

.field private final animator:Lcom/airbnb/lottie/d/e;

.field private ha:Lcom/airbnb/lottie/m;

.field private ia:Z

.field private isDirty:Z

.field private ja:Z

.field private final ka:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/airbnb/lottie/Q$a;",
            ">;"
        }
    .end annotation
.end field

.field private final la:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/airbnb/lottie/Q$b;",
            ">;"
        }
    .end annotation
.end field

.field private final ma:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final matrix:Landroid/graphics/Matrix;

.field private na:Lcom/airbnb/lottie/b/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private oa:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private pa:Lcom/airbnb/lottie/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private qa:Lcom/airbnb/lottie/b/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field ra:Lcom/airbnb/lottie/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private scale:F

.field private scaleType:Landroid/widget/ImageView$ScaleType;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field ta:Lcom/airbnb/lottie/ea;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private ua:Z

.field private va:Lcom/airbnb/lottie/model/layer/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private wa:Z

.field private ya:Z

.field private za:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/Q;->matrix:Landroid/graphics/Matrix;

    new-instance v0, Lcom/airbnb/lottie/d/e;

    invoke-direct {v0}, Lcom/airbnb/lottie/d/e;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/Q;->animator:Lcom/airbnb/lottie/d/e;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/airbnb/lottie/Q;->scale:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/Q;->ia:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/airbnb/lottie/Q;->ja:Z

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/airbnb/lottie/Q;->ka:Ljava/util/Set;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/airbnb/lottie/Q;->la:Ljava/util/ArrayList;

    new-instance v2, Lcom/airbnb/lottie/H;

    invoke-direct {v2, p0}, Lcom/airbnb/lottie/H;-><init>(Lcom/airbnb/lottie/Q;)V

    iput-object v2, p0, Lcom/airbnb/lottie/Q;->ma:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/16 v2, 0xff

    iput v2, p0, Lcom/airbnb/lottie/Q;->alpha:I

    iput-boolean v0, p0, Lcom/airbnb/lottie/Q;->za:Z

    iput-boolean v1, p0, Lcom/airbnb/lottie/Q;->isDirty:Z

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->animator:Lcom/airbnb/lottie/d/e;

    iget-object p0, p0, Lcom/airbnb/lottie/Q;->ma:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/d/a;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method static synthetic a(Lcom/airbnb/lottie/Q;)Lcom/airbnb/lottie/model/layer/e;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/Q;->va:Lcom/airbnb/lottie/model/layer/e;

    return-object p0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iget-object v1, p0, Lcom/airbnb/lottie/Q;->scaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/Q;->b(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/Q;->c(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/airbnb/lottie/Q;)Lcom/airbnb/lottie/d/e;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/Q;->animator:Lcom/airbnb/lottie/d/e;

    return-object p0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->va:Lcom/airbnb/lottie/model/layer/e;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    invoke-virtual {v3}, Lcom/airbnb/lottie/m;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    invoke-virtual {v4}, Lcom/airbnb/lottie/m;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-boolean v4, p0, Lcom/airbnb/lottie/Q;->za:Z

    if-eqz v4, :cond_2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v6, v4, v5

    if-gez v6, :cond_1

    div-float v6, v5, v4

    div-float/2addr v2, v6

    div-float/2addr v3, v6

    goto :goto_0

    :cond_1
    move v6, v5

    :goto_0
    cmpl-float v5, v6, v5

    if-lez v5, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v7

    mul-float v7, v5, v4

    mul-float/2addr v4, v1

    sub-float/2addr v5, v7

    sub-float/2addr v1, v4

    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v6, v6, v7, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_2
    iget-object v1, p0, Lcom/airbnb/lottie/Q;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Lcom/airbnb/lottie/Q;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v1, p0, Lcom/airbnb/lottie/Q;->va:Lcom/airbnb/lottie/model/layer/e;

    iget-object v2, p0, Lcom/airbnb/lottie/Q;->matrix:Landroid/graphics/Matrix;

    iget p0, p0, Lcom/airbnb/lottie/Q;->alpha:I

    invoke-virtual {v1, p1, v2, p0}, Lcom/airbnb/lottie/model/layer/c;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    if-lez v0, :cond_3

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->va:Lcom/airbnb/lottie/model/layer/e;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/airbnb/lottie/Q;->scale:F

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/Q;->d(Landroid/graphics/Canvas;)F

    move-result v1

    cmpl-float v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v2, :cond_1

    iget v0, p0, Lcom/airbnb/lottie/Q;->scale:F

    div-float/2addr v0, v1

    goto :goto_0

    :cond_1
    move v1, v0

    move v0, v3

    :goto_0
    const/4 v2, -0x1

    cmpl-float v3, v0, v3

    if-lez v3, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget-object v3, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    invoke-virtual {v3}, Lcom/airbnb/lottie/m;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v5, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    invoke-virtual {v5}, Lcom/airbnb/lottie/m;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    mul-float v4, v3, v1

    mul-float v6, v5, v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/Q;->getScale()F

    move-result v7

    mul-float/2addr v7, v3

    sub-float/2addr v7, v4

    invoke-virtual {p0}, Lcom/airbnb/lottie/Q;->getScale()F

    move-result v3

    mul-float/2addr v3, v5

    sub-float/2addr v3, v6

    invoke-virtual {p1, v7, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v0, v0, v4, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/Q;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->va:Lcom/airbnb/lottie/model/layer/e;

    iget-object v1, p0, Lcom/airbnb/lottie/Q;->matrix:Landroid/graphics/Matrix;

    iget p0, p0, Lcom/airbnb/lottie/Q;->alpha:I

    invoke-virtual {v0, p1, v1, p0}, Lcom/airbnb/lottie/model/layer/c;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    if-lez v2, :cond_3

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method private d(Landroid/graphics/Canvas;)F
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    invoke-virtual {v1}, Lcom/airbnb/lottie/m;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object p0, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    invoke-virtual {p0}, Lcom/airbnb/lottie/m;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private dn()V
    .locals 4

    new-instance v0, Lcom/airbnb/lottie/model/layer/e;

    iget-object v1, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    invoke-static {v1}, Lcom/airbnb/lottie/c/t;->e(Lcom/airbnb/lottie/m;)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    invoke-virtual {v2}, Lcom/airbnb/lottie/m;->getLayers()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/airbnb/lottie/model/layer/e;-><init>(Lcom/airbnb/lottie/Q;Lcom/airbnb/lottie/model/layer/Layer;Ljava/util/List;Lcom/airbnb/lottie/m;)V

    iput-object v0, p0, Lcom/airbnb/lottie/Q;->va:Lcom/airbnb/lottie/model/layer/e;

    return-void
.end method

.method private en()Lcom/airbnb/lottie/b/a;
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/Q;->qa:Lcom/airbnb/lottie/b/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/airbnb/lottie/b/a;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/Q;->ra:Lcom/airbnb/lottie/c;

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/b/a;-><init>(Landroid/graphics/drawable/Drawable$Callback;Lcom/airbnb/lottie/c;)V

    iput-object v0, p0, Lcom/airbnb/lottie/Q;->qa:Lcom/airbnb/lottie/b/a;

    :cond_1
    iget-object p0, p0, Lcom/airbnb/lottie/Q;->qa:Lcom/airbnb/lottie/b/a;

    return-object p0
.end method

.method private fn()Lcom/airbnb/lottie/b/b;
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/Q;->na:Lcom/airbnb/lottie/b/b;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/airbnb/lottie/Q;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/b/b;->E(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object v1, p0, Lcom/airbnb/lottie/Q;->na:Lcom/airbnb/lottie/b/b;

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/Q;->na:Lcom/airbnb/lottie/b/b;

    if-nez v0, :cond_2

    new-instance v0, Lcom/airbnb/lottie/b/b;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/Q;->oa:Ljava/lang/String;

    iget-object v3, p0, Lcom/airbnb/lottie/Q;->pa:Lcom/airbnb/lottie/d;

    iget-object v4, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    invoke-virtual {v4}, Lcom/airbnb/lottie/m;->_a()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/airbnb/lottie/b/b;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/airbnb/lottie/d;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/airbnb/lottie/Q;->na:Lcom/airbnb/lottie/b/b;

    :cond_2
    iget-object p0, p0, Lcom/airbnb/lottie/Q;->na:Lcom/airbnb/lottie/b/b;

    return-object p0
.end method

.method private getContext()Landroid/content/Context;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method private gn()V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/Q;->getScale()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    invoke-virtual {v1}, Lcom/airbnb/lottie/m;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget-object v2, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    invoke-virtual {v2}, Lcom/airbnb/lottie/m;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method


# virtual methods
.method public L()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->animator:Lcom/airbnb/lottie/d/e;

    invoke-virtual {v0}, Lcom/airbnb/lottie/d/e;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->animator:Lcom/airbnb/lottie/d/e;

    invoke-virtual {v0}, Lcom/airbnb/lottie/d/e;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    iput-object v0, p0, Lcom/airbnb/lottie/Q;->va:Lcom/airbnb/lottie/model/layer/e;

    iput-object v0, p0, Lcom/airbnb/lottie/Q;->na:Lcom/airbnb/lottie/b/b;

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->animator:Lcom/airbnb/lottie/d/e;

    invoke-virtual {v0}, Lcom/airbnb/lottie/d/e;->L()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/Q;->invalidateSelf()V

    return-void
.end method

.method public N()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/Q;->animator:Lcom/airbnb/lottie/d/e;

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->N()F

    move-result p0

    return p0
.end method

.method public O()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/Q;->animator:Lcom/airbnb/lottie/d/e;

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->O()F

    move-result p0

    return p0
.end method

.method public P()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->la:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/airbnb/lottie/Q;->animator:Lcom/airbnb/lottie/d/e;

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->P()V

    return-void
.end method

.method public Q()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->va:Lcom/airbnb/lottie/model/layer/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->la:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/I;

    invoke-direct {v1, p0}, Lcom/airbnb/lottie/I;-><init>(Lcom/airbnb/lottie/Q;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/airbnb/lottie/Q;->ia:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/Q;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/Q;->animator:Lcom/airbnb/lottie/d/e;

    invoke-virtual {v0}, Lcom/airbnb/lottie/d/e;->Q()V

    :cond_2
    iget-boolean v0, p0, Lcom/airbnb/lottie/Q;->ia:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/airbnb/lottie/Q;->getSpeed()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    invoke-virtual {p0}, Lcom/airbnb/lottie/Q;->O()F

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/Q;->N()F

    move-result v0

    :goto_0
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/Q;->setFrame(I)V

    iget-object p0, p0, Lcom/airbnb/lottie/Q;->animator:Lcom/airbnb/lottie/d/e;

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->endAnimation()V

    :cond_4
    return-void
.end method

.method public S()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->va:Lcom/airbnb/lottie/model/layer/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->la:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/J;

    invoke-direct {v1, p0}, Lcom/airbnb/lottie/J;-><init>(Lcom/airbnb/lottie/Q;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/airbnb/lottie/Q;->ia:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/Q;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/Q;->animator:Lcom/airbnb/lottie/d/e;

    invoke-virtual {v0}, Lcom/airbnb/lottie/d/e;->S()V

    :cond_2
    iget-boolean v0, p0, Lcom/airbnb/lottie/Q;->ia:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/airbnb/lottie/Q;->getSpeed()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    invoke-virtual {p0}, Lcom/airbnb/lottie/Q;->O()F

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/Q;->N()F

    move-result v0

    :goto_0
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/Q;->setFrame(I)V

    iget-object p0, p0, Lcom/airbnb/lottie/Q;->animator:Lcom/airbnb/lottie/d/e;

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->endAnimation()V

    :cond_4
    return-void
.end method

.method public T()V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/Q;->animator:Lcom/airbnb/lottie/d/e;

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->T()V

    return-void
.end method

.method public Y()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/Q;->za:Z

    return-void
.end method

.method public Z()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/Q;->ua:Z

    return p0
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/airbnb/lottie/Q;->fn()Lcom/airbnb/lottie/b/b;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "Cannot update bitmap. Most likely the drawable is not added to a View which prevents Lottie from getting a Context."

    invoke-static {p0}, Lcom/airbnb/lottie/d/d;->warning(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/b/b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0}, Lcom/airbnb/lottie/Q;->invalidateSelf()V

    return-object p1
.end method

.method public a(Lcom/airbnb/lottie/model/d;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/d;",
            ")",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->va:Lcom/airbnb/lottie/model/layer/e;

    if-nez v0, :cond_0

    const-string p0, "Cannot resolve KeyPath. Composition is not set yet."

    invoke-static {p0}, Lcom/airbnb/lottie/d/d;->warning(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/airbnb/lottie/Q;->va:Lcom/airbnb/lottie/model/layer/e;

    new-instance v1, Lcom/airbnb/lottie/model/d;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/airbnb/lottie/model/d;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/airbnb/lottie/model/layer/c;->a(Lcom/airbnb/lottie/model/d;ILjava/util/List;Lcom/airbnb/lottie/model/d;)V

    return-object v0
.end method

.method public a(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/Q;->animator:Lcom/airbnb/lottie/d/e;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/d/a;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public a(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/Q;->animator:Lcom/airbnb/lottie/d/e;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/d/a;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public a(Lcom/airbnb/lottie/c;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/Q;->ra:Lcom/airbnb/lottie/c;

    iget-object p0, p0, Lcom/airbnb/lottie/Q;->qa:Lcom/airbnb/lottie/b/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/b/a;->b(Lcom/airbnb/lottie/c;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/airbnb/lottie/d;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/Q;->pa:Lcom/airbnb/lottie/d;

    iget-object p0, p0, Lcom/airbnb/lottie/Q;->na:Lcom/airbnb/lottie/b/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/b/b;->b(Lcom/airbnb/lottie/d;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/airbnb/lottie/ea;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/Q;->ta:Lcom/airbnb/lottie/ea;

    return-void
.end method

.method public a(Lcom/airbnb/lottie/model/d;Ljava/lang/Object;Lcom/airbnb/lottie/e/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/model/d;",
            "TT;",
            "Lcom/airbnb/lottie/e/j<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->va:Lcom/airbnb/lottie/model/layer/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->la:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/F;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/airbnb/lottie/F;-><init>(Lcom/airbnb/lottie/Q;Lcom/airbnb/lottie/model/d;Ljava/lang/Object;Lcom/airbnb/lottie/e/j;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/d;->Ab()Lcom/airbnb/lottie/model/e;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/d;->Ab()Lcom/airbnb/lottie/model/e;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/airbnb/lottie/model/e;->a(Ljava/lang/Object;Lcom/airbnb/lottie/e/j;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/Q;->a(Lcom/airbnb/lottie/model/d;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/model/d;

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/d;->Ab()Lcom/airbnb/lottie/model/e;

    move-result-object v2

    invoke-interface {v2, p2, p3}, Lcom/airbnb/lottie/model/e;->a(Ljava/lang/Object;Lcom/airbnb/lottie/e/j;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr v1, p1

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/airbnb/lottie/Q;->invalidateSelf()V

    sget-object p1, Lcom/airbnb/lottie/W;->ml:Ljava/lang/Float;

    if-ne p2, p1, :cond_3

    invoke-virtual {p0}, Lcom/airbnb/lottie/Q;->getProgress()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/Q;->setProgress(F)V

    :cond_3
    return-void
.end method

.method public a(Lcom/airbnb/lottie/model/d;Ljava/lang/Object;Lcom/airbnb/lottie/e/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/model/d;",
            "TT;",
            "Lcom/airbnb/lottie/e/l<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/airbnb/lottie/G;

    invoke-direct {v0, p0, p3}, Lcom/airbnb/lottie/G;-><init>(Lcom/airbnb/lottie/Q;Lcom/airbnb/lottie/e/l;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/airbnb/lottie/Q;->a(Lcom/airbnb/lottie/model/d;Ljava/lang/Object;Lcom/airbnb/lottie/e/j;)V

    return-void
.end method

.method public aa()Lcom/airbnb/lottie/m;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    return-object p0
.end method

.method public b(FF)V
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->la:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/C;

    invoke-direct {v1, p0, p1, p2}, Lcom/airbnb/lottie/C;-><init>(Lcom/airbnb/lottie/Q;FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/m;->db()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    invoke-virtual {v1}, Lcom/airbnb/lottie/m;->Za()F

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/airbnb/lottie/d/g;->lerp(FFF)F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    invoke-virtual {v0}, Lcom/airbnb/lottie/m;->db()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    invoke-virtual {v1}, Lcom/airbnb/lottie/m;->Za()F

    move-result v1

    invoke-static {v0, v1, p2}, Lcom/airbnb/lottie/d/g;->lerp(FFF)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/Q;->b(II)V

    return-void
.end method

.method public b(II)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->la:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/B;

    invoke-direct {v1, p0, p1, p2}, Lcom/airbnb/lottie/B;-><init>(Lcom/airbnb/lottie/Q;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/Q;->animator:Lcom/airbnb/lottie/d/e;

    int-to-float p1, p1

    int-to-float p2, p2

    const v0, 0x3f7d70a4    # 0.99f

    add-float/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/d/e;->a(FF)V

    return-void
.end method

.method public b(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/Q;->animator:Lcom/airbnb/lottie/d/e;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/d/a;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public b(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/Q;->animator:Lcom/airbnb/lottie/d/e;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/d/a;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method b(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/airbnb/lottie/Q;->ia:Z

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->la:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/A;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/airbnb/lottie/A;-><init>(Lcom/airbnb/lottie/Q;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/m;->G(Ljava/lang/String;)Lcom/airbnb/lottie/model/g;

    move-result-object v0

    const-string v1, "."

    const-string v2, "Cannot find marker with name "

    if-eqz v0, :cond_3

    iget p1, v0, Lcom/airbnb/lottie/model/g;->hb:F

    float-to-int p1, p1

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/m;->G(Ljava/lang/String;)Lcom/airbnb/lottie/model/g;

    move-result-object v0

    if-eqz p2, :cond_2

    iget p2, v0, Lcom/airbnb/lottie/model/g;->hb:F

    if-eqz p3, :cond_1

    const/high16 p3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    add-float/2addr p2, p3

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/Q;->b(II)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public ba()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/Q;->oa:Ljava/lang/String;

    return-object p0
.end method

.method public c(Lcom/airbnb/lottie/m;)Z
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Lcom/airbnb/lottie/Q;->isDirty:Z

    invoke-virtual {p0}, Lcom/airbnb/lottie/Q;->L()V

    iput-object p1, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    invoke-direct {p0}, Lcom/airbnb/lottie/Q;->dn()V

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->animator:Lcom/airbnb/lottie/d/e;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/d/e;->c(Lcom/airbnb/lottie/m;)V

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->animator:Lcom/airbnb/lottie/d/e;

    invoke-virtual {v0}, Lcom/airbnb/lottie/d/e;->getAnimatedFraction()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/Q;->setProgress(F)V

    iget v0, p0, Lcom/airbnb/lottie/Q;->scale:F

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/Q;->setScale(F)V

    invoke-direct {p0}, Lcom/airbnb/lottie/Q;->gn()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/airbnb/lottie/Q;->la:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/Q$b;

    invoke-interface {v1, p1}, Lcom/airbnb/lottie/Q$b;->b(Lcom/airbnb/lottie/m;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/Q;->la:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-boolean p0, p0, Lcom/airbnb/lottie/Q;->wa:Z

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/m;->s(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public ca()Lcom/airbnb/lottie/ca;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/m;->ca()Lcom/airbnb/lottie/ca;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public cancelAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->la:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/airbnb/lottie/Q;->animator:Lcom/airbnb/lottie/d/e;

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->cancel()V

    return-void
.end method

.method public da()Lcom/airbnb/lottie/ea;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/Q;->ta:Lcom/airbnb/lottie/ea;

    return-object p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/Q;->isDirty:Z

    const-string v0, "Drawable#draw"

    invoke-static {v0}, Lcom/airbnb/lottie/e;->beginSection(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/airbnb/lottie/Q;->ja:Z

    if-eqz v1, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/Q;->a(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "Lottie crashed in draw!"

    invoke-static {p1, p0}, Lcom/airbnb/lottie/d/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/Q;->a(Landroid/graphics/Canvas;)V

    :goto_0
    invoke-static {v0}, Lcom/airbnb/lottie/e;->D(Ljava/lang/String;)F

    return-void
.end method

.method public ea()Z
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/Q;->va:Lcom/airbnb/lottie/model/layer/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/e;->ea()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public endAnimation()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->la:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/airbnb/lottie/Q;->animator:Lcom/airbnb/lottie/d/e;

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->endAnimation()V

    return-void
.end method

.method public f(I)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->la:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/K;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/K;-><init>(Lcom/airbnb/lottie/Q;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/Q;->animator:Lcom/airbnb/lottie/d/e;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/d/e;->f(I)V

    return-void
.end method

.method public fa()Z
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/Q;->va:Lcom/airbnb/lottie/model/layer/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/e;->fa()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public g(F)V
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->la:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/N;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/N;-><init>(Lcom/airbnb/lottie/Q;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/m;->db()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    invoke-virtual {v1}, Lcom/airbnb/lottie/m;->Za()F

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/airbnb/lottie/d/g;->lerp(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/Q;->j(I)V

    return-void
.end method

.method public ga()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/Q;->ya:Z

    return p0
.end method

.method public getAlpha()I
    .locals 0

    iget p0, p0, Lcom/airbnb/lottie/Q;->alpha:I

    return p0
.end method

.method public getFrame()I
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/Q;->animator:Lcom/airbnb/lottie/d/e;

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->getFrame()F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/m;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/Q;->getScale()F

    move-result p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    :goto_0
    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/m;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/Q;->getScale()F

    move-result p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    :goto_0
    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public getProgress()F
    .locals 0
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/Q;->animator:Lcom/airbnb/lottie/d/e;

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->M()F

    move-result p0

    return p0
.end method

.method public getRepeatCount()I
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/Q;->animator:Lcom/airbnb/lottie/d/e;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result p0

    return p0
.end method

.method public getRepeatMode()I
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/Q;->animator:Lcom/airbnb/lottie/d/e;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result p0

    return p0
.end method

.method public getScale()F
    .locals 0

    iget p0, p0, Lcom/airbnb/lottie/Q;->scale:F

    return p0
.end method

.method public getSpeed()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/Q;->animator:Lcom/airbnb/lottie/d/e;

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->getSpeed()F

    move-result p0

    return p0
.end method

.method public h(F)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->la:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/L;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/L;-><init>(Lcom/airbnb/lottie/Q;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/m;->db()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    invoke-virtual {v1}, Lcom/airbnb/lottie/m;->Za()F

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/airbnb/lottie/d/g;->lerp(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/Q;->f(I)V

    return-void
.end method

.method public ha()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/Q;->ua:Z

    return p0
.end method

.method public ia()V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/Q;->animator:Lcom/airbnb/lottie/d/e;

    invoke-virtual {p0}, Lcom/airbnb/lottie/d/a;->removeAllListeners()V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/Q;->isDirty:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/Q;->isDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public isAnimating()Z
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/Q;->animator:Lcom/airbnb/lottie/d/e;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/d/e;->isRunning()Z

    move-result p0

    return p0
.end method

.method public isLooping()Z
    .locals 1

    iget-object p0, p0, Lcom/airbnb/lottie/Q;->animator:Lcom/airbnb/lottie/d/e;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRunning()Z
    .locals 0

    invoke-virtual {p0}, Lcom/airbnb/lottie/Q;->isAnimating()Z

    move-result p0

    return p0
.end method

.method public j(I)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->la:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/M;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/M;-><init>(Lcom/airbnb/lottie/Q;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/Q;->animator:Lcom/airbnb/lottie/d/e;

    int-to-float p1, p1

    const v0, 0x3f7d70a4    # 0.99f

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/d/e;->f(F)V

    return-void
.end method

.method public ja()Z
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->ta:Lcom/airbnb/lottie/ea;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    invoke-virtual {p0}, Lcom/airbnb/lottie/m;->getCharacters()Landroidx/collection/SparseArrayCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public k(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/airbnb/lottie/Q;->fn()Lcom/airbnb/lottie/b/b;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/b/b;->L(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/airbnb/lottie/Q;->en()Lcom/airbnb/lottie/b/a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/b/a;->l(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/airbnb/lottie/Q;->oa:Ljava/lang/String;

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->la:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/P;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/P;-><init>(Lcom/airbnb/lottie/Q;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/m;->G(Ljava/lang/String;)Lcom/airbnb/lottie/model/g;

    move-result-object v0

    if-eqz v0, :cond_1

    iget p1, v0, Lcom/airbnb/lottie/model/g;->hb:F

    iget v0, v0, Lcom/airbnb/lottie/model/g;->Ud:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/Q;->j(I)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find marker with name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public n(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->la:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/z;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/z;-><init>(Lcom/airbnb/lottie/Q;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/m;->G(Ljava/lang/String;)Lcom/airbnb/lottie/model/g;

    move-result-object v0

    if-eqz v0, :cond_1

    iget p1, v0, Lcom/airbnb/lottie/model/g;->hb:F

    float-to-int p1, p1

    iget v0, v0, Lcom/airbnb/lottie/model/g;->Ud:F

    float-to-int v0, v0

    add-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/Q;->b(II)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find marker with name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public o(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->la:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/O;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/O;-><init>(Lcom/airbnb/lottie/Q;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/m;->G(Ljava/lang/String;)Lcom/airbnb/lottie/model/g;

    move-result-object v0

    if-eqz v0, :cond_1

    iget p1, v0, Lcom/airbnb/lottie/model/g;->hb:F

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/Q;->f(I)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find marker with name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public p(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/airbnb/lottie/Q;->ua:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    const-string p0, "Merge paths are not supported pre-Kit Kat."

    invoke-static {p0}, Lcom/airbnb/lottie/d/d;->warning(Ljava/lang/String;)V

    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/airbnb/lottie/Q;->ua:Z

    iget-object p1, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/airbnb/lottie/Q;->dn()V

    :cond_2
    return-void
.end method

.method public q(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/Q;->animator:Lcom/airbnb/lottie/d/e;

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    return-void
.end method

.method public r(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/Q;->ya:Z

    return-void
.end method

.method public removeAllUpdateListeners()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->animator:Lcom/airbnb/lottie/d/e;

    invoke-virtual {v0}, Lcom/airbnb/lottie/d/a;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->animator:Lcom/airbnb/lottie/d/e;

    iget-object p0, p0, Lcom/airbnb/lottie/Q;->ma:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/d/a;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public s(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/Q;->wa:Z

    iget-object p0, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/m;->s(Z)V

    :cond_0
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    iput p1, p0, Lcom/airbnb/lottie/Q;->alpha:I

    invoke-virtual {p0}, Lcom/airbnb/lottie/Q;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string p0, "Use addColorFilter instead."

    invoke-static {p0}, Lcom/airbnb/lottie/d/d;->warning(Ljava/lang/String;)V

    return-void
.end method

.method public setFrame(I)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->la:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/D;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/D;-><init>(Lcom/airbnb/lottie/Q;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/Q;->animator:Lcom/airbnb/lottie/d/e;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/d/e;->e(F)V

    return-void
.end method

.method public setProgress(F)V
    .locals 3
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/Q;->la:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/E;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/E;-><init>(Lcom/airbnb/lottie/Q;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const-string v0, "Drawable#setProgress"

    invoke-static {v0}, Lcom/airbnb/lottie/e;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/airbnb/lottie/Q;->animator:Lcom/airbnb/lottie/d/e;

    iget-object v2, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    invoke-virtual {v2}, Lcom/airbnb/lottie/m;->db()F

    move-result v2

    iget-object p0, p0, Lcom/airbnb/lottie/Q;->ha:Lcom/airbnb/lottie/m;

    invoke-virtual {p0}, Lcom/airbnb/lottie/m;->Za()F

    move-result p0

    invoke-static {v2, p0, p1}, Lcom/airbnb/lottie/d/g;->lerp(FFF)F

    move-result p0

    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/d/e;->e(F)V

    invoke-static {v0}, Lcom/airbnb/lottie/e;->D(Ljava/lang/String;)F

    return-void
.end method

.method public setRepeatCount(I)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/Q;->animator:Lcom/airbnb/lottie/d/e;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/Q;->animator:Lcom/airbnb/lottie/d/e;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/d/e;->setRepeatMode(I)V

    return-void
.end method

.method public setScale(F)V
    .locals 0

    iput p1, p0, Lcom/airbnb/lottie/Q;->scale:F

    invoke-direct {p0}, Lcom/airbnb/lottie/Q;->gn()V

    return-void
.end method

.method setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/Q;->scaleType:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/Q;->animator:Lcom/airbnb/lottie/d/e;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/d/e;->setSpeed(F)V

    return-void
.end method

.method public start()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Lcom/airbnb/lottie/Q;->Q()V

    return-void
.end method

.method public stop()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Lcom/airbnb/lottie/Q;->endAnimation()V

    return-void
.end method

.method public t(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/Q;->ja:Z

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method
