.class final Lcom/airbnb/lottie/a/b/b$e;
.super Ljava/lang/Object;
.source "BaseKeyframeAnimation.java"

# interfaces
.implements Lcom/airbnb/lottie/a/b/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/a/b/b$c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private Tc:F

.field private final Uc:Lcom/airbnb/lottie/e/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/e/a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/airbnb/lottie/e/a<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/airbnb/lottie/a/b/b$e;->Tc:F

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/e/a;

    iput-object p1, p0, Lcom/airbnb/lottie/a/b/b$e;->Uc:Lcom/airbnb/lottie/e/a;

    return-void
.end method


# virtual methods
.method public D()Lcom/airbnb/lottie/e/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/e/a<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/a/b/b$e;->Uc:Lcom/airbnb/lottie/e/a;

    return-object p0
.end method

.method public E()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/a/b/b$e;->Uc:Lcom/airbnb/lottie/e/a;

    invoke-virtual {p0}, Lcom/airbnb/lottie/e/a;->ic()F

    move-result p0

    return p0
.end method

.method public H()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/a/b/b$e;->Uc:Lcom/airbnb/lottie/e/a;

    invoke-virtual {p0}, Lcom/airbnb/lottie/e/a;->H()F

    move-result p0

    return p0
.end method

.method public b(F)Z
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/a/b/b$e;->Tc:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iput p1, p0, Lcom/airbnb/lottie/a/b/b$e;->Tc:F

    const/4 p0, 0x0

    return p0
.end method

.method public c(F)Z
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/a/b/b$e;->Uc:Lcom/airbnb/lottie/e/a;

    invoke-virtual {p0}, Lcom/airbnb/lottie/e/a;->isStatic()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
