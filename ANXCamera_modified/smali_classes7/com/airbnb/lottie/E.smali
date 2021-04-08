.class Lcom/airbnb/lottie/E;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Lcom/airbnb/lottie/Q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/Q;->setProgress(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Db:F

.field final synthetic this$0:Lcom/airbnb/lottie/Q;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/Q;F)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/E;->this$0:Lcom/airbnb/lottie/Q;

    iput p2, p0, Lcom/airbnb/lottie/E;->Db:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/airbnb/lottie/m;)V
    .locals 0

    iget-object p1, p0, Lcom/airbnb/lottie/E;->this$0:Lcom/airbnb/lottie/Q;

    iget p0, p0, Lcom/airbnb/lottie/E;->Db:F

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/Q;->setProgress(F)V

    return-void
.end method
