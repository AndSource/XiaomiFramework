.class public Lcom/airbnb/lottie/model/content/d;
.super Ljava/lang/Object;
.source "GradientFill.java"

# interfaces
.implements Lcom/airbnb/lottie/model/content/b;


# instance fields
.field private final _d:Lcom/airbnb/lottie/model/content/GradientType;

.field private final bd:Lcom/airbnb/lottie/model/a/c;

.field private final be:Lcom/airbnb/lottie/model/a/f;

.field private final ce:Lcom/airbnb/lottie/model/a/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final de:Lcom/airbnb/lottie/model/a/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final endPoint:Lcom/airbnb/lottie/model/a/f;

.field private final fillType:Landroid/graphics/Path$FillType;

.field private final hidden:Z

.field private final name:Ljava/lang/String;

.field private final opacity:Lcom/airbnb/lottie/model/a/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Landroid/graphics/Path$FillType;Lcom/airbnb/lottie/model/a/c;Lcom/airbnb/lottie/model/a/d;Lcom/airbnb/lottie/model/a/f;Lcom/airbnb/lottie/model/a/f;Lcom/airbnb/lottie/model/a/b;Lcom/airbnb/lottie/model/a/b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/airbnb/lottie/model/content/d;->_d:Lcom/airbnb/lottie/model/content/GradientType;

    iput-object p3, p0, Lcom/airbnb/lottie/model/content/d;->fillType:Landroid/graphics/Path$FillType;

    iput-object p4, p0, Lcom/airbnb/lottie/model/content/d;->bd:Lcom/airbnb/lottie/model/a/c;

    iput-object p5, p0, Lcom/airbnb/lottie/model/content/d;->opacity:Lcom/airbnb/lottie/model/a/d;

    iput-object p6, p0, Lcom/airbnb/lottie/model/content/d;->be:Lcom/airbnb/lottie/model/a/f;

    iput-object p7, p0, Lcom/airbnb/lottie/model/content/d;->endPoint:Lcom/airbnb/lottie/model/a/f;

    iput-object p1, p0, Lcom/airbnb/lottie/model/content/d;->name:Ljava/lang/String;

    iput-object p8, p0, Lcom/airbnb/lottie/model/content/d;->ce:Lcom/airbnb/lottie/model/a/b;

    iput-object p9, p0, Lcom/airbnb/lottie/model/content/d;->de:Lcom/airbnb/lottie/model/a/b;

    iput-boolean p10, p0, Lcom/airbnb/lottie/model/content/d;->hidden:Z

    return-void
.end method


# virtual methods
.method public Fb()Lcom/airbnb/lottie/model/a/f;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/d;->endPoint:Lcom/airbnb/lottie/model/a/f;

    return-object p0
.end method

.method public Gb()Lcom/airbnb/lottie/model/a/c;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/d;->bd:Lcom/airbnb/lottie/model/a/c;

    return-object p0
.end method

.method Hb()Lcom/airbnb/lottie/model/a/b;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/d;->de:Lcom/airbnb/lottie/model/a/b;

    return-object p0
.end method

.method Ib()Lcom/airbnb/lottie/model/a/b;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/d;->ce:Lcom/airbnb/lottie/model/a/b;

    return-object p0
.end method

.method public Jb()Lcom/airbnb/lottie/model/a/f;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/d;->be:Lcom/airbnb/lottie/model/a/f;

    return-object p0
.end method

.method public a(Lcom/airbnb/lottie/Q;Lcom/airbnb/lottie/model/layer/c;)Lcom/airbnb/lottie/a/a/d;
    .locals 1

    new-instance v0, Lcom/airbnb/lottie/a/a/i;

    invoke-direct {v0, p1, p2, p0}, Lcom/airbnb/lottie/a/a/i;-><init>(Lcom/airbnb/lottie/Q;Lcom/airbnb/lottie/model/layer/c;Lcom/airbnb/lottie/model/content/d;)V

    return-object v0
.end method

.method public getFillType()Landroid/graphics/Path$FillType;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/d;->fillType:Landroid/graphics/Path$FillType;

    return-object p0
.end method

.method public getGradientType()Lcom/airbnb/lottie/model/content/GradientType;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/d;->_d:Lcom/airbnb/lottie/model/content/GradientType;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/d;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOpacity()Lcom/airbnb/lottie/model/a/d;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/d;->opacity:Lcom/airbnb/lottie/model/a/d;

    return-object p0
.end method

.method public isHidden()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/model/content/d;->hidden:Z

    return p0
.end method
