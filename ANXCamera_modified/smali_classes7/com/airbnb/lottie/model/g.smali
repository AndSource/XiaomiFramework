.class public Lcom/airbnb/lottie/model/g;
.super Ljava/lang/Object;
.source "Marker.java"


# static fields
.field private static CARRIAGE_RETURN:Ljava/lang/String; = "\r"


# instance fields
.field public final Ud:F

.field public final hb:F

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/g;->name:Ljava/lang/String;

    iput p3, p0, Lcom/airbnb/lottie/model/g;->Ud:F

    iput p2, p0, Lcom/airbnb/lottie/model/g;->hb:F

    return-void
.end method


# virtual methods
.method public N(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/model/g;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/g;->name:Ljava/lang/String;

    sget-object v2, Lcom/airbnb/lottie/model/g;->CARRIAGE_RETURN:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/airbnb/lottie/model/g;->name:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v2
.end method
