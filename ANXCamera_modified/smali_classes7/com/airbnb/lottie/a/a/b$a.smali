.class final Lcom/airbnb/lottie/a/a/b$a;
.super Ljava/lang/Object;
.source "BaseStrokeContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final Rb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/a/a/p;",
            ">;"
        }
    .end annotation
.end field

.field private final Sb:Lcom/airbnb/lottie/a/a/w;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/airbnb/lottie/a/a/w;)V
    .locals 1
    .param p1    # Lcom/airbnb/lottie/a/a/w;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/a/a/b$a;->Rb:Ljava/util/List;

    iput-object p1, p0, Lcom/airbnb/lottie/a/a/b$a;->Sb:Lcom/airbnb/lottie/a/a/w;

    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/lottie/a/a/w;Lcom/airbnb/lottie/a/a/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/a/a/b$a;-><init>(Lcom/airbnb/lottie/a/a/w;)V

    return-void
.end method

.method static synthetic a(Lcom/airbnb/lottie/a/a/b$a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/a/a/b$a;->Rb:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/airbnb/lottie/a/a/b$a;)Lcom/airbnb/lottie/a/a/w;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/a/a/b$a;->Sb:Lcom/airbnb/lottie/a/a/w;

    return-object p0
.end method
