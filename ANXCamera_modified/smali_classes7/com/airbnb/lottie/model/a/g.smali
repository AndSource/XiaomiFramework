.class public Lcom/airbnb/lottie/model/a/g;
.super Lcom/airbnb/lottie/model/a/n;
.source "AnimatableScaleValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/model/a/n<",
        "Lcom/airbnb/lottie/e/k;",
        "Lcom/airbnb/lottie/e/k;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    new-instance v0, Lcom/airbnb/lottie/e/k;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1}, Lcom/airbnb/lottie/e/k;-><init>(FF)V

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/model/a/g;-><init>(Lcom/airbnb/lottie/e/k;)V

    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/e/k;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/a/n;-><init>(Ljava/lang/Object;)V

    return-void
.end method

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

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/a/n;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public F()Lcom/airbnb/lottie/a/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/a/b/b<",
            "Lcom/airbnb/lottie/e/k;",
            "Lcom/airbnb/lottie/e/k;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/airbnb/lottie/a/b/l;

    iget-object p0, p0, Lcom/airbnb/lottie/model/a/n;->Qc:Ljava/util/List;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/a/b/l;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic getKeyframes()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/airbnb/lottie/model/a/n;->getKeyframes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic isStatic()Z
    .locals 0

    invoke-super {p0}, Lcom/airbnb/lottie/model/a/n;->isStatic()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/airbnb/lottie/model/a/n;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
