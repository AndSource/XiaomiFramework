.class public Lcom/airbnb/lottie/ea;
.super Ljava/lang/Object;
.source "TextDelegate.java"


# instance fields
.field private final Ob:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final Pb:Lcom/airbnb/lottie/LottieAnimationView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private Qb:Z

.field private final drawable:Lcom/airbnb/lottie/Q;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/ea;->Ob:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/ea;->Qb:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/ea;->Pb:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/airbnb/lottie/ea;->drawable:Lcom/airbnb/lottie/Q;

    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/ea;->Ob:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/ea;->Qb:Z

    iput-object p1, p0, Lcom/airbnb/lottie/ea;->Pb:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/airbnb/lottie/ea;->drawable:Lcom/airbnb/lottie/Q;

    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/Q;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/ea;->Ob:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/ea;->Qb:Z

    iput-object p1, p0, Lcom/airbnb/lottie/ea;->drawable:Lcom/airbnb/lottie/Q;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/airbnb/lottie/ea;->Pb:Lcom/airbnb/lottie/LottieAnimationView;

    return-void
.end method

.method private getText(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method private invalidate()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/ea;->Pb:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/ea;->drawable:Lcom/airbnb/lottie/Q;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/Q;->invalidateSelf()V

    :cond_1
    return-void
.end method


# virtual methods
.method public A(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/ea;->Qb:Z

    return-void
.end method

.method public final I(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/ea;->Qb:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/ea;->Ob:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/ea;->Ob:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/ea;->getText(Ljava/lang/String;)Ljava/lang/String;

    iget-boolean v0, p0, Lcom/airbnb/lottie/ea;->Qb:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/airbnb/lottie/ea;->Ob:Ljava/util/Map;

    invoke-interface {p0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p1
.end method

.method public J(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/ea;->Ob:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/airbnb/lottie/ea;->invalidate()V

    return-void
.end method

.method public kb()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/ea;->Ob:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-direct {p0}, Lcom/airbnb/lottie/ea;->invalidate()V

    return-void
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/ea;->Ob:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/airbnb/lottie/ea;->invalidate()V

    return-void
.end method
