.class public Lcom/airbnb/lottie/a/b/q;
.super Lcom/airbnb/lottie/a/b/b;
.source "ValueCallbackKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/airbnb/lottie/a/b/b<",
        "TK;TA;>;"
    }
.end annotation


# instance fields
.field private final frameInfo:Lcom/airbnb/lottie/e/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/e/b<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final md:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/e/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/e/j<",
            "TA;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/a/b/q;-><init>(Lcom/airbnb/lottie/e/j;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/e/j;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/e/j<",
            "TA;>;TA;)V"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/a/b/b;-><init>(Ljava/util/List;)V

    new-instance v0, Lcom/airbnb/lottie/e/b;

    invoke-direct {v0}, Lcom/airbnb/lottie/e/b;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/a/b/q;->frameInfo:Lcom/airbnb/lottie/e/b;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/a/b/b;->a(Lcom/airbnb/lottie/e/j;)V

    iput-object p2, p0, Lcom/airbnb/lottie/a/b/q;->md:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method H()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method a(Lcom/airbnb/lottie/e/a;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/e/a<",
            "TK;>;F)TA;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/airbnb/lottie/a/b/q;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/a/b/b;->Xc:Lcom/airbnb/lottie/e/j;

    iget-object v4, p0, Lcom/airbnb/lottie/a/b/q;->md:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/airbnb/lottie/a/b/b;->getProgress()F

    move-result v5

    invoke-virtual {p0}, Lcom/airbnb/lottie/a/b/b;->getProgress()F

    move-result v6

    invoke-virtual {p0}, Lcom/airbnb/lottie/a/b/b;->getProgress()F

    move-result v7

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v4

    invoke-virtual/range {v0 .. v7}, Lcom/airbnb/lottie/e/j;->b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public notifyListeners()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/a/b/b;->Xc:Lcom/airbnb/lottie/e/j;

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/airbnb/lottie/a/b/b;->notifyListeners()V

    :cond_0
    return-void
.end method
