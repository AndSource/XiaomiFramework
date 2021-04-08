.class public Landroid/view/LayoutInflaterMap;
.super Ljava/lang/Object;
.source "LayoutInflaterMap.java"


# static fields
.field private static volatile sLayoutMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLayoutPairs:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/view/LayoutInflaterMap;->sLayoutPairs:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x110b000b
        0x110b0028
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildLayoutMap(Landroid/content/Context;)V
    .locals 6

    sget-object v0, Landroid/view/LayoutInflaterMap;->sLayoutMap:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-class v0, Landroid/view/LayoutInflaterMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/view/LayoutInflaterMap;->sLayoutMap:Landroid/util/SparseArray;

    if-nez v1, :cond_3

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Landroid/view/LayoutInflaterMap;->sLayoutPairs:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    sget-object v3, Landroid/view/LayoutInflaterMap;->sLayoutPairs:[I

    aget v3, v3, v2

    invoke-static {v3}, Landroid/view/LayoutInflaterMap;->needResolveReference(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Landroid/view/LayoutInflaterMap;->sLayoutPairs:[I

    aget v4, v4, v2

    invoke-static {v3, v4}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/res/Resources;I)I

    move-result v3

    goto :goto_1

    :cond_1
    sget-object v3, Landroid/view/LayoutInflaterMap;->sLayoutPairs:[I

    aget v3, v3, v2

    :goto_1
    sget-object v4, Landroid/view/LayoutInflaterMap;->sLayoutPairs:[I

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    sput-object v1, Landroid/view/LayoutInflaterMap;->sLayoutMap:Landroid/util/SparseArray;

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static getResourceId(Landroid/content/Context;I)I
    .locals 2

    move v0, p1

    invoke-static {p0}, Lmiui/os/Environment;->isUsingMiui(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflaterMap;->buildLayoutMap(Landroid/content/Context;)V

    sget-object v1, Landroid/view/LayoutInflaterMap;->sLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    return v0
.end method

.method private static needResolveReference(I)Z
    .locals 2

    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    const/high16 v1, 0x1000000

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
