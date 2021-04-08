.class Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$b;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private stackTop:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$f<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method b(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$f<",
            "TK;TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    if-eqz v0, :cond_0

    iput-object p1, v0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$f;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$f;

    iget-object p1, v0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$f;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$f;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$b;->stackTop:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$f;

    return-void
.end method

.method public next()Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$f;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$f<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$b;->stackTop:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, v0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$f;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$f;

    iput-object v1, v0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$f;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$f;

    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$f;->right:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$f;

    :goto_0
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    if-eqz v2, :cond_1

    iput-object v1, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$f;->parent:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$f;

    iget-object v1, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$f;->left:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$f;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$b;->stackTop:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$f;

    return-object v0
.end method
