.class public Lcom/airbnb/lottie/model/content/Mask;
.super Ljava/lang/Object;
.source "Mask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    }
.end annotation


# instance fields
.field private final je:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

.field private final ke:Lcom/airbnb/lottie/model/a/h;

.field private final le:Z

.field private final opacity:Lcom/airbnb/lottie/model/a/d;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/model/content/Mask$MaskMode;Lcom/airbnb/lottie/model/a/h;Lcom/airbnb/lottie/model/a/d;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/content/Mask;->je:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    iput-object p2, p0, Lcom/airbnb/lottie/model/content/Mask;->ke:Lcom/airbnb/lottie/model/a/h;

    iput-object p3, p0, Lcom/airbnb/lottie/model/content/Mask;->opacity:Lcom/airbnb/lottie/model/a/d;

    iput-boolean p4, p0, Lcom/airbnb/lottie/model/content/Mask;->le:Z

    return-void
.end method


# virtual methods
.method public Pb()Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/Mask;->je:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    return-object p0
.end method

.method public Qb()Lcom/airbnb/lottie/model/a/h;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/Mask;->ke:Lcom/airbnb/lottie/model/a/h;

    return-object p0
.end method

.method public Rb()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/model/content/Mask;->le:Z

    return p0
.end method

.method public getOpacity()Lcom/airbnb/lottie/model/a/d;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/Mask;->opacity:Lcom/airbnb/lottie/model/a/d;

    return-object p0
.end method
