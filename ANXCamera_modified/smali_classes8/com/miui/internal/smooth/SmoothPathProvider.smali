.class public Lcom/miui/internal/smooth/SmoothPathProvider;
.super Ljava/lang/Object;
.source "SmoothPathProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;,
        Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;
    }
.end annotation


# static fields
.field public static final DEFAULT_SMOOTH:F = 0.7f


# instance fields
.field private mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    return-void
.end method

.method static synthetic access$000(IFD)D
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/internal/smooth/SmoothPathProvider;->smoothForWidth(IFD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$100(IFD)D
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/internal/smooth/SmoothPathProvider;->smoothForHeight(IFD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1000(DD)D
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/internal/smooth/SmoothPathProvider;->yForWidth(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1100(DD)D
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/internal/smooth/SmoothPathProvider;->kForHeight(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1200(FD)D
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/internal/smooth/SmoothPathProvider;->mForHeight(FD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1300(FD)D
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/internal/smooth/SmoothPathProvider;->nForHeight(FD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1400(FD)D
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/internal/smooth/SmoothPathProvider;->pForHeight(FD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1500(FD)D
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/internal/smooth/SmoothPathProvider;->xForHeight(FD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1600(DD)D
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/internal/smooth/SmoothPathProvider;->yForHeight(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$200(D)D
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/internal/smooth/SmoothPathProvider;->thetaForWidth(D)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$300(D)D
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/internal/smooth/SmoothPathProvider;->thetaForHeight(D)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$400(D)D
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/internal/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$500(DD)D
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/internal/smooth/SmoothPathProvider;->kForWidth(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$600(FD)D
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/internal/smooth/SmoothPathProvider;->mForWidth(FD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$700(FD)D
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/internal/smooth/SmoothPathProvider;->nForWidth(FD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$800(FD)D
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/internal/smooth/SmoothPathProvider;->pForWidth(FD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$900(FD)D
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/internal/smooth/SmoothPathProvider;->xForWidth(FD)D

    move-result-wide p0

    return-wide p0
.end method

.method private ensureFourCornerData()V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    invoke-direct {v1}, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;-><init>()V

    iput-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    if-nez v1, :cond_1

    new-instance v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    invoke-direct {v1}, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;-><init>()V

    iput-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    if-nez v1, :cond_2

    new-instance v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    invoke-direct {v1}, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;-><init>()V

    iput-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    :cond_2
    iget-object p0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    if-nez v0, :cond_3

    new-instance v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    invoke-direct {v0}, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    :cond_3
    return-void
.end method

.method private isFourCornerDataValid()Z
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isHeightCollapsed(IFFD)Z
    .locals 4

    int-to-double v0, p0

    add-float/2addr p1, p2

    float-to-double p0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr p3, v2

    mul-double/2addr p0, p3

    cmpg-double p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isWidthCollapsed(IFFD)Z
    .locals 4

    int-to-double v0, p0

    add-float/2addr p1, p2

    float-to-double p0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr p3, v2

    mul-double/2addr p0, p3

    cmpg-double p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static kForHeight(DD)D
    .locals 6

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    add-double/2addr p0, v4

    mul-double/2addr p0, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr p2, v0

    mul-double/2addr p0, p2

    const-wide/high16 p2, 0x4008000000000000L    # 3.0

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double/2addr v2, p2

    div-double/2addr p0, v2

    sub-double/2addr p0, v0

    return-wide p0
.end method

.method private static kForWidth(DD)D
    .locals 6

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    add-double/2addr p0, v4

    mul-double/2addr p0, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr p2, v0

    mul-double/2addr p0, p2

    const-wide/high16 p2, 0x4008000000000000L    # 3.0

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double/2addr v2, p2

    div-double/2addr p0, v2

    sub-double/2addr p0, v0

    return-wide p0
.end method

.method private static mForHeight(FD)D
    .locals 4

    float-to-double v0, p0

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, p0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private static mForWidth(FD)D
    .locals 4

    float-to-double v0, p0

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, p0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private static nForHeight(FD)D
    .locals 4

    float-to-double v0, p0

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, p0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private static nForWidth(FD)D
    .locals 4

    float-to-double v0, p0

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, p0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private static pForHeight(FD)D
    .locals 4

    float-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, p0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private static pForWidth(FD)D
    .locals 4

    float-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, p0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private static radToAngle(D)D
    .locals 2

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double/2addr p0, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private static smoothForHeight(IFD)D
    .locals 1

    invoke-static {p0, p1, p1, p2, p3}, Lcom/miui/internal/smooth/SmoothPathProvider;->isHeightCollapsed(IFFD)Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-float p0, p0

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    div-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-double p0, p0

    return-wide p0

    :cond_0
    return-wide p2
.end method

.method private static smoothForWidth(IFD)D
    .locals 1

    invoke-static {p0, p1, p1, p2, p3}, Lcom/miui/internal/smooth/SmoothPathProvider;->isWidthCollapsed(IFFD)Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-float p0, p0

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    div-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-double p0, p0

    return-wide p0

    :cond_0
    return-wide p2
.end method

.method private static thetaForHeight(D)D
    .locals 2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private static thetaForWidth(D)D
    .locals 2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private static xForHeight(FD)D
    .locals 4

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr p0, v2

    div-double/2addr v0, p0

    return-wide v0
.end method

.method private static xForWidth(FD)D
    .locals 4

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr p0, v2

    div-double/2addr v0, p0

    return-wide v0
.end method

.method private static yForHeight(DD)D
    .locals 0

    mul-double/2addr p0, p2

    return-wide p0
.end method

.method private static yForWidth(DD)D
    .locals 0

    mul-double/2addr p0, p2

    return-wide p0
.end method


# virtual methods
.method public buildSmoothData(IIFD)V
    .locals 7

    const/16 v0, 0x8

    new-array v4, v0, [F

    const/4 v0, 0x0

    aput p3, v4, v0

    const/4 v0, 0x1

    aput p3, v4, v0

    const/4 v0, 0x2

    aput p3, v4, v0

    const/4 v0, 0x3

    aput p3, v4, v0

    const/4 v0, 0x4

    aput p3, v4, v0

    const/4 v0, 0x5

    aput p3, v4, v0

    const/4 v0, 0x6

    aput p3, v4, v0

    const/4 v0, 0x7

    aput p3, v4, v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/miui/internal/smooth/SmoothPathProvider;->buildSmoothData(II[FD)V

    return-void
.end method

.method public buildSmoothData(II[FD)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v1, p3

    new-instance v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    move-wide/from16 v10, p4

    invoke-direct {v2, v8, v9, v10, v11}, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;-><init>(IID)V

    iput-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x8

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, v2

    array-length v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v4, v5, :cond_1

    aget v5, v1, v4

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    aget v1, v2, v3

    const/4 v4, 0x1

    aget v5, v2, v4

    const/4 v6, 0x2

    aget v7, v2, v6

    const/4 v12, 0x3

    aget v13, v2, v12

    const/4 v14, 0x4

    aget v15, v2, v14

    const/16 v16, 0x5

    aget v17, v2, v16

    const/16 v18, 0x6

    aget v19, v2, v18

    const/16 v20, 0x7

    aget v21, v2, v20

    add-float v22, v1, v7

    int-to-float v4, v8

    cmpl-float v22, v22, v4

    if-lez v22, :cond_2

    aget v1, v2, v3

    mul-float/2addr v1, v4

    aget v7, v2, v3

    aget v22, v2, v6

    add-float v7, v7, v22

    div-float/2addr v1, v7

    aget v7, v2, v6

    mul-float/2addr v7, v4

    aget v3, v2, v3

    aget v6, v2, v6

    add-float/2addr v3, v6

    div-float/2addr v7, v3

    :cond_2
    add-float v3, v13, v17

    int-to-float v6, v9

    cmpl-float v3, v3, v6

    if-lez v3, :cond_3

    aget v3, v2, v12

    mul-float/2addr v3, v6

    aget v13, v2, v12

    aget v17, v2, v16

    add-float v13, v13, v17

    div-float v13, v3, v13

    aget v3, v2, v16

    mul-float/2addr v3, v6

    aget v12, v2, v12

    aget v16, v2, v16

    add-float v12, v12, v16

    div-float v17, v3, v12

    :cond_3
    move/from16 v12, v17

    add-float v3, v15, v19

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    aget v3, v2, v14

    mul-float/2addr v3, v4

    aget v15, v2, v14

    aget v16, v2, v18

    add-float v15, v15, v16

    div-float v15, v3, v15

    aget v3, v2, v18

    mul-float/2addr v4, v3

    aget v3, v2, v14

    aget v14, v2, v18

    add-float/2addr v3, v14

    div-float v19, v4, v3

    :cond_4
    move/from16 v14, v19

    add-float v3, v21, v5

    cmpl-float v3, v3, v6

    if-lez v3, :cond_5

    aget v3, v2, v20

    mul-float/2addr v3, v6

    aget v4, v2, v20

    const/4 v5, 0x1

    aget v16, v2, v5

    add-float v4, v4, v16

    div-float v21, v3, v4

    aget v3, v2, v5

    mul-float/2addr v6, v3

    aget v3, v2, v20

    aget v2, v2, v5

    add-float/2addr v3, v2

    div-float v5, v6, v3

    :cond_5
    move/from16 v6, v21

    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/smooth/SmoothPathProvider;->ensureFourCornerData()V

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/16 v16, 0x0

    move-object v1, v2

    move v2, v3

    move/from16 v3, p1

    move/from16 v4, p2

    move v8, v6

    move-wide/from16 v5, p4

    move v9, v7

    move/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->build(FIIDI)V

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    invoke-static {v9, v13}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->build(FIIDI)V

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    invoke-static {v15, v12}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v7, 0x2

    invoke-virtual/range {v1 .. v7}, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->build(FIIDI)V

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    invoke-static {v14, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v6, 0x3

    move/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->build(FIIDI)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public drawPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIZ)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/smooth/SmoothPathProvider;->isFourCornerDataValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p2 .. p3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/RectF;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->width:I

    int-to-float v2, v2

    iget v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->height:I

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    :cond_0
    if-eqz p7, :cond_1

    move/from16 v1, p6

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v4, 0x42b40000    # 90.0f

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    const/4 v3, 0x0

    iget v4, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->width:I

    int-to-float v4, v4

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    sub-float/2addr v4, v1

    const/4 v5, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    const/high16 v3, 0x43870000    # 270.0f

    const/high16 v4, 0x42b40000    # 90.0f

    const/4 v5, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget v2, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->width:I

    int-to-float v3, v2

    iget-object v4, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v4, v4, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    int-to-float v5, v2

    iget v2, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->height:I

    int-to-float v2, v2

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    sub-float v6, v2, v1

    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/high16 v4, 0x42b40000    # 90.0f

    const/4 v5, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget v2, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->width:I

    int-to-float v2, v2

    iget-object v3, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    sub-float/2addr v2, v3

    iget v3, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->height:I

    int-to-float v4, v3

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v5, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    int-to-float v6, v3

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, 0x42b40000    # 90.0f

    const/4 v5, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget v3, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->height:I

    int-to-float v3, v3

    iget-object v4, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v4, v4, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v5, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    iget-wide v5, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForVertical:D

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Lcom/miui/internal/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v4, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    const/4 v12, 0x0

    aget-object v3, v2, v12

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iput v3, v11, Landroid/graphics/PointF;->x:F

    aget-object v2, v2, v12

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, v11, Landroid/graphics/PointF;->y:F

    iget-wide v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    const-wide/16 v13, 0x0

    cmpl-double v1, v1, v13

    const/4 v15, 0x2

    const/16 v16, 0x1

    const/16 v17, 0x3

    if-eqz v1, :cond_2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v3, v2, v16

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aget-object v4, v2, v16

    iget v4, v4, Landroid/graphics/PointF;->y:F

    aget-object v5, v2, v15

    iget v5, v5, Landroid/graphics/PointF;->x:F

    aget-object v6, v2, v15

    iget v6, v6, Landroid/graphics/PointF;->y:F

    aget-object v15, v2, v17

    iget v15, v15, Landroid/graphics/PointF;->x:F

    aget-object v2, v2, v17

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v1

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v15

    move/from16 v24, v2

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v1, v17

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v17

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    :cond_2
    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget v2, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->width:I

    iget-object v3, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v4, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v4, v4, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-wide v5, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->smooth:D

    invoke-static {v2, v3, v4, v5, v6}, Lcom/miui/internal/smooth/SmoothPathProvider;->isWidthCollapsed(IFFD)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual/range {p2 .. p3}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v4, v1, v12

    iget v4, v4, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v12

    iget v5, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v1, v12

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    :cond_3
    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-wide v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    cmpl-double v1, v1, v13

    if-eqz v1, :cond_4

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v3, v2, v16

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aget-object v4, v2, v16

    iget v4, v4, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x2

    aget-object v6, v2, v5

    iget v6, v6, Landroid/graphics/PointF;->x:F

    aget-object v15, v2, v5

    iget v5, v15, Landroid/graphics/PointF;->y:F

    aget-object v15, v2, v17

    iget v15, v15, Landroid/graphics/PointF;->x:F

    aget-object v2, v2, v17

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v1

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v6

    move/from16 v22, v5

    move/from16 v23, v15

    move/from16 v24, v2

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v1, v17

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v17

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    :cond_4
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    const-wide v3, 0x4012d97c7f3321d2L    # 4.71238898038469

    iget-wide v5, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Lcom/miui/internal/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v4, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v3, v2, v12

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iput v3, v11, Landroid/graphics/PointF;->x:F

    aget-object v2, v2, v12

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, v11, Landroid/graphics/PointF;->y:F

    iget-wide v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    cmpl-double v1, v1, v13

    if-eqz v1, :cond_5

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v3, v2, v16

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aget-object v4, v2, v16

    iget v4, v4, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x2

    aget-object v6, v2, v5

    iget v6, v6, Landroid/graphics/PointF;->x:F

    aget-object v15, v2, v5

    iget v5, v15, Landroid/graphics/PointF;->y:F

    aget-object v15, v2, v17

    iget v15, v15, Landroid/graphics/PointF;->x:F

    aget-object v2, v2, v17

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v1

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v6

    move/from16 v22, v5

    move/from16 v23, v15

    move/from16 v24, v2

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v1, v17

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v17

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    :cond_5
    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget v2, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->height:I

    iget-object v3, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v4, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v4, v4, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-wide v5, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->smooth:D

    invoke-static {v2, v3, v4, v5, v6}, Lcom/miui/internal/smooth/SmoothPathProvider;->isHeightCollapsed(IFFD)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual/range {p2 .. p3}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v4, v1, v12

    iget v4, v4, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v12

    iget v5, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v1, v12

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    :cond_6
    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-wide v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    cmpl-double v1, v1, v13

    if-eqz v1, :cond_7

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v3, v2, v16

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aget-object v4, v2, v16

    iget v4, v4, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x2

    aget-object v6, v2, v5

    iget v6, v6, Landroid/graphics/PointF;->x:F

    aget-object v15, v2, v5

    iget v5, v15, Landroid/graphics/PointF;->y:F

    aget-object v15, v2, v17

    iget v15, v15, Landroid/graphics/PointF;->x:F

    aget-object v2, v2, v17

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v1

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v6

    move/from16 v22, v5

    move/from16 v23, v15

    move/from16 v24, v2

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v1, v17

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v17

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    :cond_7
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    iget-wide v3, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForVertical:D

    invoke-static {v3, v4}, Lcom/miui/internal/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v4, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v3, v2, v12

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iput v3, v11, Landroid/graphics/PointF;->x:F

    aget-object v2, v2, v12

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, v11, Landroid/graphics/PointF;->y:F

    iget-wide v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    cmpl-double v1, v1, v13

    if-eqz v1, :cond_8

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v3, v2, v16

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aget-object v4, v2, v16

    iget v4, v4, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x2

    aget-object v6, v2, v5

    iget v6, v6, Landroid/graphics/PointF;->x:F

    aget-object v15, v2, v5

    iget v5, v15, Landroid/graphics/PointF;->y:F

    aget-object v15, v2, v17

    iget v15, v15, Landroid/graphics/PointF;->x:F

    aget-object v2, v2, v17

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v1

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v6

    move/from16 v22, v5

    move/from16 v23, v15

    move/from16 v24, v2

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v1, v17

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v17

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    :cond_8
    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget v2, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->width:I

    iget-object v3, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v4, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v4, v4, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-wide v5, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->smooth:D

    invoke-static {v2, v3, v4, v5, v6}, Lcom/miui/internal/smooth/SmoothPathProvider;->isWidthCollapsed(IFFD)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual/range {p2 .. p3}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v4, v1, v12

    iget v4, v4, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v12

    iget v5, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v1, v12

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    :cond_9
    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-wide v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    cmpl-double v1, v1, v13

    if-eqz v1, :cond_a

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v3, v2, v16

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aget-object v4, v2, v16

    iget v4, v4, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x2

    aget-object v6, v2, v5

    iget v6, v6, Landroid/graphics/PointF;->x:F

    aget-object v15, v2, v5

    iget v5, v15, Landroid/graphics/PointF;->y:F

    aget-object v15, v2, v17

    iget v15, v15, Landroid/graphics/PointF;->x:F

    aget-object v2, v2, v17

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v1

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v6

    move/from16 v22, v5

    move/from16 v23, v15

    move/from16 v24, v2

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v1, v17

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v17

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    :cond_a
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    iget-wide v5, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Lcom/miui/internal/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v4, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v3, v2, v12

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iput v3, v11, Landroid/graphics/PointF;->x:F

    aget-object v2, v2, v12

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, v11, Landroid/graphics/PointF;->y:F

    iget-wide v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    cmpl-double v1, v1, v13

    if-eqz v1, :cond_b

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v3, v2, v16

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aget-object v4, v2, v16

    iget v4, v4, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x2

    aget-object v6, v2, v5

    iget v6, v6, Landroid/graphics/PointF;->x:F

    aget-object v9, v2, v5

    iget v5, v9, Landroid/graphics/PointF;->y:F

    aget-object v9, v2, v17

    iget v9, v9, Landroid/graphics/PointF;->x:F

    aget-object v2, v2, v17

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v1

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v6

    move/from16 v22, v5

    move/from16 v23, v9

    move/from16 v24, v2

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v1, v17

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v17

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    :cond_b
    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget v2, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->height:I

    iget-object v3, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v4, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v4, v4, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-wide v5, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->smooth:D

    invoke-static {v2, v3, v4, v5, v6}, Lcom/miui/internal/smooth/SmoothPathProvider;->isHeightCollapsed(IFFD)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual/range {p2 .. p3}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v4, v1, v12

    iget v4, v4, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v12

    iget v5, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v1, v12

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    :cond_c
    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-wide v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    cmpl-double v1, v1, v13

    if-eqz v1, :cond_d

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v3, v2, v16

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aget-object v4, v2, v16

    iget v4, v4, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x2

    aget-object v6, v2, v5

    iget v6, v6, Landroid/graphics/PointF;->x:F

    aget-object v5, v2, v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    aget-object v9, v2, v17

    iget v9, v9, Landroid/graphics/PointF;->x:F

    aget-object v2, v2, v17

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v1

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v6

    move/from16 v22, v5

    move/from16 v23, v9

    move/from16 v24, v2

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v0, v17

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v11, Landroid/graphics/PointF;->x:F

    aget-object v0, v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, v11, Landroid/graphics/PointF;->y:F

    :cond_d
    return-void
.end method

.method public getSmoothPath()Landroid/graphics/Path;
    .locals 15

    invoke-direct {p0}, Lcom/miui/internal/smooth/SmoothPathProvider;->isFourCornerDataValid()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    new-instance v1, Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget v2, p0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->width:I

    int-to-float v2, v2

    iget p0, p0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->height:I

    int-to-float p0, p0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object p0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    iget-wide v5, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForVertical:D

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Lcom/miui/internal/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide v3

    double-to-float v1, v3

    iget-object v3, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    invoke-virtual {v0, v2, v1, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v1, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-wide v2, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    const-wide/16 v9, 0x0

    cmpl-double v2, v2, v9

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v1, v13

    iget v3, v2, Landroid/graphics/PointF;->x:F

    aget-object v2, v1, v13

    iget v4, v2, Landroid/graphics/PointF;->y:F

    aget-object v2, v1, v12

    iget v5, v2, Landroid/graphics/PointF;->x:F

    aget-object v2, v1, v12

    iget v6, v2, Landroid/graphics/PointF;->y:F

    aget-object v2, v1, v11

    iget v7, v2, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v11

    iget v8, v1, Landroid/graphics/PointF;->y:F

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_1
    iget-object v1, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget v2, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->width:I

    iget-object v3, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v4, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v4, v4, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-wide v5, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->smooth:D

    invoke-static {v2, v3, v4, v5, v6}, Lcom/miui/internal/smooth/SmoothPathProvider;->isWidthCollapsed(IFFD)Z

    move-result v1

    const/4 v14, 0x0

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v1, v14

    iget v2, v2, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v14

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_2
    iget-object v1, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-wide v2, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    cmpl-double v2, v2, v9

    if-eqz v2, :cond_3

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v1, v13

    iget v3, v2, Landroid/graphics/PointF;->x:F

    aget-object v2, v1, v13

    iget v4, v2, Landroid/graphics/PointF;->y:F

    aget-object v2, v1, v12

    iget v5, v2, Landroid/graphics/PointF;->x:F

    aget-object v2, v1, v12

    iget v6, v2, Landroid/graphics/PointF;->y:F

    aget-object v2, v1, v11

    iget v7, v2, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v11

    iget v8, v1, Landroid/graphics/PointF;->y:F

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_3
    iget-object v1, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    const-wide v3, 0x4012d97c7f3321d2L    # 4.71238898038469

    iget-wide v5, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Lcom/miui/internal/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide v3

    double-to-float v1, v3

    iget-object v3, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    invoke-virtual {v0, v2, v1, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v1, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-wide v2, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    cmpl-double v2, v2, v9

    if-eqz v2, :cond_4

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v1, v13

    iget v3, v2, Landroid/graphics/PointF;->x:F

    aget-object v2, v1, v13

    iget v4, v2, Landroid/graphics/PointF;->y:F

    aget-object v2, v1, v12

    iget v5, v2, Landroid/graphics/PointF;->x:F

    aget-object v2, v1, v12

    iget v6, v2, Landroid/graphics/PointF;->y:F

    aget-object v2, v1, v11

    iget v7, v2, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v11

    iget v8, v1, Landroid/graphics/PointF;->y:F

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_4
    iget-object v1, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget v2, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->height:I

    iget-object v3, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v4, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v4, v4, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-wide v5, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->smooth:D

    invoke-static {v2, v3, v4, v5, v6}, Lcom/miui/internal/smooth/SmoothPathProvider;->isHeightCollapsed(IFFD)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v1, v14

    iget v2, v2, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v14

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_5
    iget-object v1, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-wide v2, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    cmpl-double v2, v2, v9

    if-eqz v2, :cond_6

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v1, v13

    iget v3, v2, Landroid/graphics/PointF;->x:F

    aget-object v2, v1, v13

    iget v4, v2, Landroid/graphics/PointF;->y:F

    aget-object v2, v1, v12

    iget v5, v2, Landroid/graphics/PointF;->x:F

    aget-object v2, v1, v12

    iget v6, v2, Landroid/graphics/PointF;->y:F

    aget-object v2, v1, v11

    iget v7, v2, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v11

    iget v8, v1, Landroid/graphics/PointF;->y:F

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_6
    iget-object v1, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    iget-wide v3, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForVertical:D

    invoke-static {v3, v4}, Lcom/miui/internal/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide v3

    double-to-float v1, v3

    iget-object v3, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    invoke-virtual {v0, v2, v1, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v1, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-wide v2, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    cmpl-double v2, v2, v9

    if-eqz v2, :cond_7

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v1, v13

    iget v3, v2, Landroid/graphics/PointF;->x:F

    aget-object v2, v1, v13

    iget v4, v2, Landroid/graphics/PointF;->y:F

    aget-object v2, v1, v12

    iget v5, v2, Landroid/graphics/PointF;->x:F

    aget-object v2, v1, v12

    iget v6, v2, Landroid/graphics/PointF;->y:F

    aget-object v2, v1, v11

    iget v7, v2, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v11

    iget v8, v1, Landroid/graphics/PointF;->y:F

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_7
    iget-object v1, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget v2, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->width:I

    iget-object v3, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v4, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v4, v4, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-wide v5, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->smooth:D

    invoke-static {v2, v3, v4, v5, v6}, Lcom/miui/internal/smooth/SmoothPathProvider;->isWidthCollapsed(IFFD)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v1, v14

    iget v2, v2, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v14

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_8
    iget-object v1, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-wide v2, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    cmpl-double v2, v2, v9

    if-eqz v2, :cond_9

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v1, v13

    iget v3, v2, Landroid/graphics/PointF;->x:F

    aget-object v2, v1, v13

    iget v4, v2, Landroid/graphics/PointF;->y:F

    aget-object v2, v1, v12

    iget v5, v2, Landroid/graphics/PointF;->x:F

    aget-object v2, v1, v12

    iget v6, v2, Landroid/graphics/PointF;->y:F

    aget-object v2, v1, v11

    iget v7, v2, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v11

    iget v8, v1, Landroid/graphics/PointF;->y:F

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_9
    iget-object v1, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    iget-wide v5, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Lcom/miui/internal/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide v3

    double-to-float v1, v3

    iget-object v3, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    invoke-virtual {v0, v2, v1, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v1, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-wide v2, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    cmpl-double v2, v2, v9

    if-eqz v2, :cond_a

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v1, v13

    iget v3, v2, Landroid/graphics/PointF;->x:F

    aget-object v2, v1, v13

    iget v4, v2, Landroid/graphics/PointF;->y:F

    aget-object v2, v1, v12

    iget v5, v2, Landroid/graphics/PointF;->x:F

    aget-object v2, v1, v12

    iget v6, v2, Landroid/graphics/PointF;->y:F

    aget-object v2, v1, v11

    iget v7, v2, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v11

    iget v8, v1, Landroid/graphics/PointF;->y:F

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_a
    iget-object v1, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget v2, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->height:I

    iget-object v3, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v3, v3, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v4, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget v4, v4, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-wide v5, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->smooth:D

    invoke-static {v2, v3, v4, v5, v6}, Lcom/miui/internal/smooth/SmoothPathProvider;->isHeightCollapsed(IFFD)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v1, v14

    iget v2, v2, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v14

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_b
    iget-object p0, p0, Lcom/miui/internal/smooth/SmoothPathProvider;->mAllData:Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;

    iget-object p0, p0, Lcom/miui/internal/smooth/SmoothPathProvider$SmoothData;->topLeft:Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;

    iget-wide v1, p0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    cmpl-double v1, v1, v9

    if-eqz v1, :cond_c

    iget-object p0, p0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, p0, v13

    iget v3, v1, Landroid/graphics/PointF;->x:F

    aget-object v1, p0, v13

    iget v4, v1, Landroid/graphics/PointF;->y:F

    aget-object v1, p0, v12

    iget v5, v1, Landroid/graphics/PointF;->x:F

    aget-object v1, p0, v12

    iget v6, v1, Landroid/graphics/PointF;->y:F

    aget-object v1, p0, v11

    iget v7, v1, Landroid/graphics/PointF;->x:F

    aget-object p0, p0, v11

    iget v8, p0, Landroid/graphics/PointF;->y:F

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_c
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-object v0
.end method
