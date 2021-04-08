.class Lcom/airbnb/lottie/A;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Lcom/airbnb/lottie/Q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/Q;->b(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/Q;

.field final synthetic vb:Ljava/lang/String;

.field final synthetic wb:Ljava/lang/String;

.field final synthetic xb:Z


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/Q;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/A;->this$0:Lcom/airbnb/lottie/Q;

    iput-object p2, p0, Lcom/airbnb/lottie/A;->vb:Ljava/lang/String;

    iput-object p3, p0, Lcom/airbnb/lottie/A;->wb:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/airbnb/lottie/A;->xb:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/airbnb/lottie/m;)V
    .locals 2

    iget-object p1, p0, Lcom/airbnb/lottie/A;->this$0:Lcom/airbnb/lottie/Q;

    iget-object v0, p0, Lcom/airbnb/lottie/A;->vb:Ljava/lang/String;

    iget-object v1, p0, Lcom/airbnb/lottie/A;->wb:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/airbnb/lottie/A;->xb:Z

    invoke-virtual {p1, v0, v1, p0}, Lcom/airbnb/lottie/Q;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
