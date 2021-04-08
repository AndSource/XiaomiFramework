.class public Lcom/airbnb/lottie/a/b/l;
.super Lcom/airbnb/lottie/a/b/g;
.source "ScaleKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/a/b/g<",
        "Lcom/airbnb/lottie/e/k;",
        ">;"
    }
.end annotation


# instance fields
.field private final gd:Lcom/airbnb/lottie/e/k;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/e/a<",
            "Lcom/airbnb/lottie/e/k;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/a/b/g;-><init>(Ljava/util/List;)V

    new-instance p1, Lcom/airbnb/lottie/e/k;

    invoke-direct {p1}, Lcom/airbnb/lottie/e/k;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/a/b/l;->gd:Lcom/airbnb/lottie/e/k;

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/e/a;F)Lcom/airbnb/lottie/e/k;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/e/a<",
            "Lcom/airbnb/lottie/e/k;",
            ">;F)",
            "Lcom/airbnb/lottie/e/k;"
        }
    .end annotation

    iget-object v0, p1, Lcom/airbnb/lottie/e/a;->startValue:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/airbnb/lottie/e/a;->endValue:Ljava/lang/Object;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/airbnb/lottie/e/k;

    check-cast v1, Lcom/airbnb/lottie/e/k;

    iget-object v2, p0, Lcom/airbnb/lottie/a/b/b;->Xc:Lcom/airbnb/lottie/e/j;

    if-eqz v2, :cond_0

    iget v3, p1, Lcom/airbnb/lottie/e/a;->hb:F

    iget-object p1, p1, Lcom/airbnb/lottie/e/a;->ib:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p0}, Lcom/airbnb/lottie/a/b/b;->ob()F

    move-result v8

    invoke-virtual {p0}, Lcom/airbnb/lottie/a/b/b;->getProgress()F

    move-result v9

    move-object v5, v0

    move-object v6, v1

    move v7, p2

    invoke-virtual/range {v2 .. v9}, Lcom/airbnb/lottie/e/j;->b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/e/k;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/airbnb/lottie/a/b/l;->gd:Lcom/airbnb/lottie/e/k;

    invoke-virtual {v0}, Lcom/airbnb/lottie/e/k;->getScaleX()F

    move-result v2

    invoke-virtual {v1}, Lcom/airbnb/lottie/e/k;->getScaleX()F

    move-result v3

    invoke-static {v2, v3, p2}, Lcom/airbnb/lottie/d/g;->lerp(FFF)F

    move-result v2

    invoke-virtual {v0}, Lcom/airbnb/lottie/e/k;->getScaleY()F

    move-result v0

    invoke-virtual {v1}, Lcom/airbnb/lottie/e/k;->getScaleY()F

    move-result v1

    invoke-static {v0, v1, p2}, Lcom/airbnb/lottie/d/g;->lerp(FFF)F

    move-result p2

    invoke-virtual {p1, v2, p2}, Lcom/airbnb/lottie/e/k;->set(FF)V

    iget-object p0, p0, Lcom/airbnb/lottie/a/b/l;->gd:Lcom/airbnb/lottie/e/k;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing values for keyframe."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic a(Lcom/airbnb/lottie/e/a;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/a/b/l;->a(Lcom/airbnb/lottie/e/a;F)Lcom/airbnb/lottie/e/k;

    move-result-object p0

    return-object p0
.end method
