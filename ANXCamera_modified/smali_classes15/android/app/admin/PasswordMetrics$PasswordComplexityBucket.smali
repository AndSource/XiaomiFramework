.class Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;
.super Ljava/lang/Object;
.source "PasswordMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/PasswordMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PasswordComplexityBucket"
.end annotation


# static fields
.field private static final BUCKETS:[Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;

.field private static final HIGH:Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;

.field private static final LOW:Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;

.field private static final MEDIUM:Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;

.field private static final NONE:Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;


# instance fields
.field private final mComplexityLevel:I

.field private final mMetrics:[Landroid/app/admin/PasswordMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;

    const/4 v1, 0x3

    new-array v2, v1, [Landroid/app/admin/PasswordMetrics;

    new-instance v3, Landroid/app/admin/PasswordMetrics;

    const/high16 v4, 0x30000

    const/16 v5, 0x8

    invoke-direct {v3, v4, v5}, Landroid/app/admin/PasswordMetrics;-><init>(II)V

    const/4 v5, 0x0

    aput-object v3, v2, v5

    new-instance v3, Landroid/app/admin/PasswordMetrics;

    const/4 v6, 0x6

    const/high16 v7, 0x40000

    invoke-direct {v3, v7, v6}, Landroid/app/admin/PasswordMetrics;-><init>(II)V

    const/4 v8, 0x1

    aput-object v3, v2, v8

    new-instance v3, Landroid/app/admin/PasswordMetrics;

    const/high16 v9, 0x50000

    invoke-direct {v3, v9, v6}, Landroid/app/admin/PasswordMetrics;-><init>(II)V

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-direct {v0, v9, v2}, Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;-><init>(I[Landroid/app/admin/PasswordMetrics;)V

    sput-object v0, Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;->HIGH:Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;

    new-instance v0, Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;

    new-array v2, v1, [Landroid/app/admin/PasswordMetrics;

    new-instance v3, Landroid/app/admin/PasswordMetrics;

    const/4 v10, 0x4

    invoke-direct {v3, v4, v10}, Landroid/app/admin/PasswordMetrics;-><init>(II)V

    aput-object v3, v2, v5

    new-instance v3, Landroid/app/admin/PasswordMetrics;

    invoke-direct {v3, v7, v10}, Landroid/app/admin/PasswordMetrics;-><init>(II)V

    aput-object v3, v2, v8

    new-instance v3, Landroid/app/admin/PasswordMetrics;

    invoke-direct {v3, v9, v10}, Landroid/app/admin/PasswordMetrics;-><init>(II)V

    aput-object v3, v2, v6

    invoke-direct {v0, v4, v2}, Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;-><init>(I[Landroid/app/admin/PasswordMetrics;)V

    sput-object v0, Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;->MEDIUM:Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;

    new-instance v0, Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;

    const/4 v2, 0x5

    new-array v2, v2, [Landroid/app/admin/PasswordMetrics;

    new-instance v3, Landroid/app/admin/PasswordMetrics;

    const/high16 v11, 0x10000

    invoke-direct {v3, v11}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    aput-object v3, v2, v5

    new-instance v3, Landroid/app/admin/PasswordMetrics;

    const/high16 v12, 0x20000

    invoke-direct {v3, v12}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    aput-object v3, v2, v8

    new-instance v3, Landroid/app/admin/PasswordMetrics;

    invoke-direct {v3, v4}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    aput-object v3, v2, v6

    new-instance v3, Landroid/app/admin/PasswordMetrics;

    invoke-direct {v3, v7}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    aput-object v3, v2, v1

    new-instance v3, Landroid/app/admin/PasswordMetrics;

    invoke-direct {v3, v9}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    aput-object v3, v2, v10

    invoke-direct {v0, v11, v2}, Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;-><init>(I[Landroid/app/admin/PasswordMetrics;)V

    sput-object v0, Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;->LOW:Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;

    new-instance v0, Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;

    new-array v2, v8, [Landroid/app/admin/PasswordMetrics;

    new-instance v3, Landroid/app/admin/PasswordMetrics;

    invoke-direct {v3}, Landroid/app/admin/PasswordMetrics;-><init>()V

    aput-object v3, v2, v5

    invoke-direct {v0, v5, v2}, Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;-><init>(I[Landroid/app/admin/PasswordMetrics;)V

    sput-object v0, Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;->NONE:Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;

    new-array v0, v1, [Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;

    sget-object v1, Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;->HIGH:Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;

    aput-object v1, v0, v5

    sget-object v1, Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;->MEDIUM:Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;

    aput-object v1, v0, v8

    sget-object v1, Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;->LOW:Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;

    aput-object v1, v0, v6

    sput-object v0, Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;->BUCKETS:[Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;

    return-void
.end method

.method private varargs constructor <init>(I[Landroid/app/admin/PasswordMetrics;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p2, v2

    iget v4, v3, Landroid/app/admin/PasswordMetrics;->quality:I

    if-lt v4, v0, :cond_0

    iget v0, v3, Landroid/app/admin/PasswordMetrics;->quality:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "metricsArray must be sorted in ascending order of quality"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iput-object p2, p0, Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;->mMetrics:[Landroid/app/admin/PasswordMetrics;

    iput p1, p0, Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;->mComplexityLevel:I

    return-void
.end method

.method static synthetic access$000(I)Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;
    .locals 1

    invoke-static {p0}, Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;->complexityLevelToBucket(I)Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;)[Landroid/app/admin/PasswordMetrics;
    .locals 1

    iget-object v0, p0, Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;->mMetrics:[Landroid/app/admin/PasswordMetrics;

    return-object v0
.end method

.method static synthetic access$200(Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;)I
    .locals 1

    iget v0, p0, Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;->mComplexityLevel:I

    return v0
.end method

.method static synthetic access$400()[Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;
    .locals 1

    sget-object v0, Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;->BUCKETS:[Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;

    return-object v0
.end method

.method private static complexityLevelToBucket(I)Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;
    .locals 5

    sget-object v0, Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;->BUCKETS:[Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;->mComplexityLevel:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;->NONE:Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;

    return-object v0
.end method
