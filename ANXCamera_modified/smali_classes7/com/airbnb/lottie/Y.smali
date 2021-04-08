.class Lcom/airbnb/lottie/Y;
.super Ljava/lang/Object;
.source "LottieTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/Z;->notifyListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/Z;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/Z;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/Y;->this$0:Lcom/airbnb/lottie/Z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/Y;->this$0:Lcom/airbnb/lottie/Z;

    invoke-static {v0}, Lcom/airbnb/lottie/Z;->a(Lcom/airbnb/lottie/Z;)Lcom/airbnb/lottie/X;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/Y;->this$0:Lcom/airbnb/lottie/Z;

    invoke-static {v0}, Lcom/airbnb/lottie/Z;->a(Lcom/airbnb/lottie/Z;)Lcom/airbnb/lottie/X;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/X;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/airbnb/lottie/Y;->this$0:Lcom/airbnb/lottie/Z;

    invoke-virtual {v0}, Lcom/airbnb/lottie/X;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/airbnb/lottie/Z;->a(Lcom/airbnb/lottie/Z;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/airbnb/lottie/Y;->this$0:Lcom/airbnb/lottie/Z;

    invoke-virtual {v0}, Lcom/airbnb/lottie/X;->getException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/airbnb/lottie/Z;->a(Lcom/airbnb/lottie/Z;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
