.class Lcom/airbnb/lottie/c/y;
.super Ljava/lang/Object;
.source "PathKeyframeParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/m;)Lcom/airbnb/lottie/a/b/i;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v0

    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/airbnb/lottie/d/h;->oc()F

    move-result v1

    sget-object v2, Lcom/airbnb/lottie/c/z;->INSTANCE:Lcom/airbnb/lottie/c/z;

    invoke-static {p0, p1, v1, v2, v0}, Lcom/airbnb/lottie/c/r;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/m;FLcom/airbnb/lottie/c/L;Z)Lcom/airbnb/lottie/e/a;

    move-result-object p0

    new-instance v0, Lcom/airbnb/lottie/a/b/i;

    invoke-direct {v0, p1, p0}, Lcom/airbnb/lottie/a/b/i;-><init>(Lcom/airbnb/lottie/m;Lcom/airbnb/lottie/e/a;)V

    return-object v0
.end method
