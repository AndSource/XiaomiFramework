.class Lcom/airbnb/lottie/G;
.super Lcom/airbnb/lottie/e/j;
.source "LottieDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/Q;->a(Lcom/airbnb/lottie/model/d;Ljava/lang/Object;Lcom/airbnb/lottie/e/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/e/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/Q;

.field final synthetic val$callback:Lcom/airbnb/lottie/e/l;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/Q;Lcom/airbnb/lottie/e/l;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/G;->this$0:Lcom/airbnb/lottie/Q;

    iput-object p2, p0, Lcom/airbnb/lottie/G;->val$callback:Lcom/airbnb/lottie/e/l;

    invoke-direct {p0}, Lcom/airbnb/lottie/e/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/e/b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/e/b<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/G;->val$callback:Lcom/airbnb/lottie/e/l;

    invoke-interface {p0, p1}, Lcom/airbnb/lottie/e/l;->a(Lcom/airbnb/lottie/e/b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
