.class public abstract Lmiui/imagefilters/IImageFilter$AbstractImageFilter;
.super Ljava/lang/Object;
.source "IImageFilter.java"

# interfaces
.implements Lmiui/imagefilters/IImageFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/imagefilters/IImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractImageFilter"
.end annotation


# instance fields
.field private mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fillRandomParams(Lmiui/imagefilters/ImageData;)V
    .locals 6

    iget-object v0, p0, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;->mParams:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Lmiui/imagefilters/ImageData;->generalRandomNum(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p0, v2, v5}, Lmiui/imagefilters/ImageFilterUtils;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public canConcurrence()Z
    .locals 2

    iget-object v0, p0, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;->mParams:Ljava/util/Map;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public initParams(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lmiui/imagefilters/ImageFilterUtils;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;->mParams:Ljava/util/Map;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;->mParams:Ljava/util/Map;

    :cond_1
    iget-object v1, p0, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;->mParams:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v0
.end method

.method public process(Lmiui/imagefilters/ImageData;)V
    .locals 1

    invoke-virtual {p0}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;->canConcurrence()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;->fillRandomParams(Lmiui/imagefilters/ImageData;)V

    invoke-virtual {p0, p1}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;->processData(Lmiui/imagefilters/ImageData;)V

    goto :goto_0

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;->fillRandomParams(Lmiui/imagefilters/ImageData;)V

    invoke-virtual {p0, p1}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;->processData(Lmiui/imagefilters/ImageData;)V

    monitor-exit p0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract processData(Lmiui/imagefilters/ImageData;)V
.end method

.method public putOriginalImage(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method
