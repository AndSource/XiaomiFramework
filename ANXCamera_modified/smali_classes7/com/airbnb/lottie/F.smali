.class Lcom/airbnb/lottie/F;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Lcom/airbnb/lottie/Q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/Q;->a(Lcom/airbnb/lottie/model/d;Ljava/lang/Object;Lcom/airbnb/lottie/e/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Eb:Lcom/airbnb/lottie/model/d;

.field final synthetic this$0:Lcom/airbnb/lottie/Q;

.field final synthetic val$callback:Lcom/airbnb/lottie/e/j;

.field final synthetic val$property:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/Q;Lcom/airbnb/lottie/model/d;Ljava/lang/Object;Lcom/airbnb/lottie/e/j;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/F;->this$0:Lcom/airbnb/lottie/Q;

    iput-object p2, p0, Lcom/airbnb/lottie/F;->Eb:Lcom/airbnb/lottie/model/d;

    iput-object p3, p0, Lcom/airbnb/lottie/F;->val$property:Ljava/lang/Object;

    iput-object p4, p0, Lcom/airbnb/lottie/F;->val$callback:Lcom/airbnb/lottie/e/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/airbnb/lottie/m;)V
    .locals 2

    iget-object p1, p0, Lcom/airbnb/lottie/F;->this$0:Lcom/airbnb/lottie/Q;

    iget-object v0, p0, Lcom/airbnb/lottie/F;->Eb:Lcom/airbnb/lottie/model/d;

    iget-object v1, p0, Lcom/airbnb/lottie/F;->val$property:Ljava/lang/Object;

    iget-object p0, p0, Lcom/airbnb/lottie/F;->val$callback:Lcom/airbnb/lottie/e/j;

    invoke-virtual {p1, v0, v1, p0}, Lcom/airbnb/lottie/Q;->a(Lcom/airbnb/lottie/model/d;Ljava/lang/Object;Lcom/airbnb/lottie/e/j;)V

    return-void
.end method
