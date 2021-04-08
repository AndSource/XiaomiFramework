.class public Lcom/airbnb/lottie/model/content/g;
.super Ljava/lang/Object;
.source "Repeater.java"

# interfaces
.implements Lcom/airbnb/lottie/model/content/b;


# instance fields
.field private final Jc:Lcom/airbnb/lottie/model/a/b;

.field private final Kc:Lcom/airbnb/lottie/model/a/l;

.field private final hidden:Z

.field private final name:Ljava/lang/String;

.field private final offset:Lcom/airbnb/lottie/model/a/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/a/b;Lcom/airbnb/lottie/model/a/b;Lcom/airbnb/lottie/model/a/l;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/content/g;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/airbnb/lottie/model/content/g;->Jc:Lcom/airbnb/lottie/model/a/b;

    iput-object p3, p0, Lcom/airbnb/lottie/model/content/g;->offset:Lcom/airbnb/lottie/model/a/b;

    iput-object p4, p0, Lcom/airbnb/lottie/model/content/g;->Kc:Lcom/airbnb/lottie/model/a/l;

    iput-boolean p5, p0, Lcom/airbnb/lottie/model/content/g;->hidden:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/Q;Lcom/airbnb/lottie/model/layer/c;)Lcom/airbnb/lottie/a/a/d;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Lcom/airbnb/lottie/a/a/t;

    invoke-direct {v0, p1, p2, p0}, Lcom/airbnb/lottie/a/a/t;-><init>(Lcom/airbnb/lottie/Q;Lcom/airbnb/lottie/model/layer/c;Lcom/airbnb/lottie/model/content/g;)V

    return-object v0
.end method

.method public getCopies()Lcom/airbnb/lottie/model/a/b;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/g;->Jc:Lcom/airbnb/lottie/model/a/b;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/g;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOffset()Lcom/airbnb/lottie/model/a/b;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/g;->offset:Lcom/airbnb/lottie/model/a/b;

    return-object p0
.end method

.method public getTransform()Lcom/airbnb/lottie/model/a/l;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/g;->Kc:Lcom/airbnb/lottie/model/a/l;

    return-object p0
.end method

.method public isHidden()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/model/content/g;->hidden:Z

    return p0
.end method
