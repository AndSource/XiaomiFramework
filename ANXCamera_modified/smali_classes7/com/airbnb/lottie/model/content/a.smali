.class public Lcom/airbnb/lottie/model/content/a;
.super Ljava/lang/Object;
.source "CircleShape.java"

# interfaces
.implements Lcom/airbnb/lottie/model/content/b;


# instance fields
.field private final Xd:Z

.field private final hidden:Z

.field private final name:Ljava/lang/String;

.field private final position:Lcom/airbnb/lottie/model/a/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/model/a/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final size:Lcom/airbnb/lottie/model/a/f;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/a/m;Lcom/airbnb/lottie/model/a/f;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/a/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/airbnb/lottie/model/a/f;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/content/a;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/airbnb/lottie/model/content/a;->position:Lcom/airbnb/lottie/model/a/m;

    iput-object p3, p0, Lcom/airbnb/lottie/model/content/a;->size:Lcom/airbnb/lottie/model/a/f;

    iput-boolean p4, p0, Lcom/airbnb/lottie/model/content/a;->Xd:Z

    iput-boolean p5, p0, Lcom/airbnb/lottie/model/content/a;->hidden:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/Q;Lcom/airbnb/lottie/model/layer/c;)Lcom/airbnb/lottie/a/a/d;
    .locals 1

    new-instance v0, Lcom/airbnb/lottie/a/a/g;

    invoke-direct {v0, p1, p2, p0}, Lcom/airbnb/lottie/a/a/g;-><init>(Lcom/airbnb/lottie/Q;Lcom/airbnb/lottie/model/layer/c;Lcom/airbnb/lottie/model/content/a;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/a;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPosition()Lcom/airbnb/lottie/model/a/m;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/model/a/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/a;->position:Lcom/airbnb/lottie/model/a/m;

    return-object p0
.end method

.method public getSize()Lcom/airbnb/lottie/model/a/f;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/a;->size:Lcom/airbnb/lottie/model/a/f;

    return-object p0
.end method

.method public isHidden()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/model/content/a;->hidden:Z

    return p0
.end method

.method public isReversed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/model/content/a;->Xd:Z

    return p0
.end method
