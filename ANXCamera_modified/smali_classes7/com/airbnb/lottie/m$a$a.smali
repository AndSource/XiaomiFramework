.class final Lcom/airbnb/lottie/m$a$a;
.super Ljava/lang/Object;
.source "LottieComposition.java"

# interfaces
.implements Lcom/airbnb/lottie/T;
.implements Lcom/airbnb/lottie/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/m$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/T<",
        "Lcom/airbnb/lottie/m;",
        ">;",
        "Lcom/airbnb/lottie/b;"
    }
.end annotation


# instance fields
.field private cancelled:Z

.field private final listener:Lcom/airbnb/lottie/aa;


# direct methods
.method private constructor <init>(Lcom/airbnb/lottie/aa;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/m$a$a;->cancelled:Z

    iput-object p1, p0, Lcom/airbnb/lottie/m$a$a;->listener:Lcom/airbnb/lottie/aa;

    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/lottie/aa;Lcom/airbnb/lottie/l;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/m$a$a;-><init>(Lcom/airbnb/lottie/aa;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/airbnb/lottie/m;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/m$a$a;->d(Lcom/airbnb/lottie/m;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/m$a$a;->cancelled:Z

    return-void
.end method

.method public d(Lcom/airbnb/lottie/m;)V
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/m$a$a;->cancelled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/m$a$a;->listener:Lcom/airbnb/lottie/aa;

    invoke-interface {p0, p1}, Lcom/airbnb/lottie/aa;->a(Lcom/airbnb/lottie/m;)V

    return-void
.end method
