.class Lcom/airbnb/lottie/D;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Lcom/airbnb/lottie/Q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/Q;->setFrame(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Cb:I

.field final synthetic this$0:Lcom/airbnb/lottie/Q;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/Q;I)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/D;->this$0:Lcom/airbnb/lottie/Q;

    iput p2, p0, Lcom/airbnb/lottie/D;->Cb:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/airbnb/lottie/m;)V
    .locals 0

    iget-object p1, p0, Lcom/airbnb/lottie/D;->this$0:Lcom/airbnb/lottie/Q;

    iget p0, p0, Lcom/airbnb/lottie/D;->Cb:I

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/Q;->setFrame(I)V

    return-void
.end method
