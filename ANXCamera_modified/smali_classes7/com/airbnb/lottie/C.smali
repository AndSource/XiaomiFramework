.class Lcom/airbnb/lottie/C;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Lcom/airbnb/lottie/Q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/Q;->b(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ab:F

.field final synthetic Bb:F

.field final synthetic this$0:Lcom/airbnb/lottie/Q;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/Q;FF)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/C;->this$0:Lcom/airbnb/lottie/Q;

    iput p2, p0, Lcom/airbnb/lottie/C;->Ab:F

    iput p3, p0, Lcom/airbnb/lottie/C;->Bb:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/airbnb/lottie/m;)V
    .locals 1

    iget-object p1, p0, Lcom/airbnb/lottie/C;->this$0:Lcom/airbnb/lottie/Q;

    iget v0, p0, Lcom/airbnb/lottie/C;->Ab:F

    iget p0, p0, Lcom/airbnb/lottie/C;->Bb:F

    invoke-virtual {p1, v0, p0}, Lcom/airbnb/lottie/Q;->b(FF)V

    return-void
.end method
