.class public Lcom/airbnb/lottie/e/b;
.super Ljava/lang/Object;
.source "LottieFrameInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private endValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private hb:F

.field private hg:F

.field private ib:F

.field private ig:F

.field private jg:F

.field private startValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Za()F
    .locals 0

    iget p0, p0, Lcom/airbnb/lottie/e/b;->ib:F

    return p0
.end method

.method public a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Lcom/airbnb/lottie/e/b;
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFTT;TT;FFF)",
            "Lcom/airbnb/lottie/e/b<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/airbnb/lottie/e/b;->hb:F

    iput p2, p0, Lcom/airbnb/lottie/e/b;->ib:F

    iput-object p3, p0, Lcom/airbnb/lottie/e/b;->startValue:Ljava/lang/Object;

    iput-object p4, p0, Lcom/airbnb/lottie/e/b;->endValue:Ljava/lang/Object;

    iput p5, p0, Lcom/airbnb/lottie/e/b;->hg:F

    iput p6, p0, Lcom/airbnb/lottie/e/b;->ig:F

    iput p7, p0, Lcom/airbnb/lottie/e/b;->jg:F

    return-object p0
.end method

.method public db()F
    .locals 0

    iget p0, p0, Lcom/airbnb/lottie/e/b;->hb:F

    return p0
.end method

.method public getEndValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/e/b;->endValue:Ljava/lang/Object;

    return-object p0
.end method

.method public getStartValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/e/b;->startValue:Ljava/lang/Object;

    return-object p0
.end method

.method public uc()F
    .locals 0

    iget p0, p0, Lcom/airbnb/lottie/e/b;->ig:F

    return p0
.end method

.method public vc()F
    .locals 0

    iget p0, p0, Lcom/airbnb/lottie/e/b;->hg:F

    return p0
.end method

.method public wc()F
    .locals 0

    iget p0, p0, Lcom/airbnb/lottie/e/b;->jg:F

    return p0
.end method
