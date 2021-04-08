.class public Lcom/airbnb/lottie/model/a/l;
.super Ljava/lang/Object;
.source "AnimatableTransform.java"

# interfaces
.implements Lcom/airbnb/lottie/a/a/o;
.implements Lcom/airbnb/lottie/model/content/b;


# instance fields
.field private final Ad:Lcom/airbnb/lottie/model/a/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final opacity:Lcom/airbnb/lottie/model/a/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final position:Lcom/airbnb/lottie/model/a/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/model/a/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final rotation:Lcom/airbnb/lottie/model/a/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final scale:Lcom/airbnb/lottie/model/a/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final wd:Lcom/airbnb/lottie/model/a/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final xd:Lcom/airbnb/lottie/model/a/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final yd:Lcom/airbnb/lottie/model/a/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zd:Lcom/airbnb/lottie/model/a/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/airbnb/lottie/model/a/l;-><init>(Lcom/airbnb/lottie/model/a/e;Lcom/airbnb/lottie/model/a/m;Lcom/airbnb/lottie/model/a/g;Lcom/airbnb/lottie/model/a/b;Lcom/airbnb/lottie/model/a/d;Lcom/airbnb/lottie/model/a/b;Lcom/airbnb/lottie/model/a/b;Lcom/airbnb/lottie/model/a/b;Lcom/airbnb/lottie/model/a/b;)V

    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/model/a/e;Lcom/airbnb/lottie/model/a/m;Lcom/airbnb/lottie/model/a/g;Lcom/airbnb/lottie/model/a/b;Lcom/airbnb/lottie/model/a/d;Lcom/airbnb/lottie/model/a/b;Lcom/airbnb/lottie/model/a/b;Lcom/airbnb/lottie/model/a/b;Lcom/airbnb/lottie/model/a/b;)V
    .locals 0
    .param p1    # Lcom/airbnb/lottie/model/a/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/airbnb/lottie/model/a/m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/airbnb/lottie/model/a/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/airbnb/lottie/model/a/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/airbnb/lottie/model/a/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/airbnb/lottie/model/a/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/airbnb/lottie/model/a/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/airbnb/lottie/model/a/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/airbnb/lottie/model/a/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/a/e;",
            "Lcom/airbnb/lottie/model/a/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/airbnb/lottie/model/a/g;",
            "Lcom/airbnb/lottie/model/a/b;",
            "Lcom/airbnb/lottie/model/a/d;",
            "Lcom/airbnb/lottie/model/a/b;",
            "Lcom/airbnb/lottie/model/a/b;",
            "Lcom/airbnb/lottie/model/a/b;",
            "Lcom/airbnb/lottie/model/a/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/a/l;->wd:Lcom/airbnb/lottie/model/a/e;

    iput-object p2, p0, Lcom/airbnb/lottie/model/a/l;->position:Lcom/airbnb/lottie/model/a/m;

    iput-object p3, p0, Lcom/airbnb/lottie/model/a/l;->scale:Lcom/airbnb/lottie/model/a/g;

    iput-object p4, p0, Lcom/airbnb/lottie/model/a/l;->rotation:Lcom/airbnb/lottie/model/a/b;

    iput-object p5, p0, Lcom/airbnb/lottie/model/a/l;->opacity:Lcom/airbnb/lottie/model/a/d;

    iput-object p6, p0, Lcom/airbnb/lottie/model/a/l;->zd:Lcom/airbnb/lottie/model/a/b;

    iput-object p7, p0, Lcom/airbnb/lottie/model/a/l;->Ad:Lcom/airbnb/lottie/model/a/b;

    iput-object p8, p0, Lcom/airbnb/lottie/model/a/l;->xd:Lcom/airbnb/lottie/model/a/b;

    iput-object p9, p0, Lcom/airbnb/lottie/model/a/l;->yd:Lcom/airbnb/lottie/model/a/b;

    return-void
.end method


# virtual methods
.method public Cb()Lcom/airbnb/lottie/model/a/e;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/model/a/l;->wd:Lcom/airbnb/lottie/model/a/e;

    return-object p0
.end method

.method public Db()Lcom/airbnb/lottie/model/a/b;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/model/a/l;->xd:Lcom/airbnb/lottie/model/a/b;

    return-object p0
.end method

.method public Eb()Lcom/airbnb/lottie/model/a/b;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/model/a/l;->yd:Lcom/airbnb/lottie/model/a/b;

    return-object p0
.end method

.method public F()Lcom/airbnb/lottie/a/b/p;
    .locals 1

    new-instance v0, Lcom/airbnb/lottie/a/b/p;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/a/b/p;-><init>(Lcom/airbnb/lottie/model/a/l;)V

    return-object v0
.end method

.method public a(Lcom/airbnb/lottie/Q;Lcom/airbnb/lottie/model/layer/c;)Lcom/airbnb/lottie/a/a/d;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOpacity()Lcom/airbnb/lottie/model/a/d;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/model/a/l;->opacity:Lcom/airbnb/lottie/model/a/d;

    return-object p0
.end method

.method public getPosition()Lcom/airbnb/lottie/model/a/m;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/model/a/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/model/a/l;->position:Lcom/airbnb/lottie/model/a/m;

    return-object p0
.end method

.method public getRotation()Lcom/airbnb/lottie/model/a/b;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/model/a/l;->rotation:Lcom/airbnb/lottie/model/a/b;

    return-object p0
.end method

.method public getScale()Lcom/airbnb/lottie/model/a/g;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/model/a/l;->scale:Lcom/airbnb/lottie/model/a/g;

    return-object p0
.end method

.method public tb()Lcom/airbnb/lottie/model/a/b;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/model/a/l;->Ad:Lcom/airbnb/lottie/model/a/b;

    return-object p0
.end method

.method public ub()Lcom/airbnb/lottie/model/a/b;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/model/a/l;->zd:Lcom/airbnb/lottie/model/a/b;

    return-object p0
.end method
