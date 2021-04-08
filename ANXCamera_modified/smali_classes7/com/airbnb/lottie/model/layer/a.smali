.class Lcom/airbnb/lottie/model/layer/a;
.super Ljava/lang/Object;
.source "BaseLayer.java"

# interfaces
.implements Lcom/airbnb/lottie/a/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/model/layer/c;->un()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic te:Lcom/airbnb/lottie/a/b/d;

.field final synthetic this$0:Lcom/airbnb/lottie/model/layer/c;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/model/layer/c;Lcom/airbnb/lottie/a/b/d;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/a;->this$0:Lcom/airbnb/lottie/model/layer/c;

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/a;->te:Lcom/airbnb/lottie/a/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public G()V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->this$0:Lcom/airbnb/lottie/model/layer/c;

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/a;->te:Lcom/airbnb/lottie/a/b/d;

    invoke-virtual {p0}, Lcom/airbnb/lottie/a/b/d;->getFloatValue()F

    move-result p0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {v0, p0}, Lcom/airbnb/lottie/model/layer/c;->a(Lcom/airbnb/lottie/model/layer/c;Z)V

    return-void
.end method
