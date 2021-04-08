.class public Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;
.super Ljava/lang/Object;
.source "SmoothPathProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/smooth/SmoothPathProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CornerData"
.end annotation


# static fields
.field public static final BOTTOM_LEFT:I = 0x3

.field public static final BOTTOM_RIGHT:I = 0x2

.field public static final TOP_LEFT:I = 0x0

.field public static final TOP_RIGHT:I = 0x1


# instance fields
.field public bezierAnchorHorizontal:[Landroid/graphics/PointF;

.field public bezierAnchorVertical:[Landroid/graphics/PointF;

.field public radius:F

.field public rect:Landroid/graphics/RectF;

.field public smoothForHorizontal:D

.field public smoothForVertical:D

.field public swapAngle:F

.field public thetaForHorizontal:D

.field public thetaForVertical:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-array v0, v0, [Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public build(FIIDI)V
    .locals 30

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move/from16 v5, p1

    move/from16 v6, p6

    iput v5, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    iget v5, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    invoke-static {v1, v5, v3, v4}, Lcom/miui/internal/smooth/SmoothPathProvider;->access$000(IFD)D

    move-result-wide v7

    iput-wide v7, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    iget v5, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    invoke-static {v2, v5, v3, v4}, Lcom/miui/internal/smooth/SmoothPathProvider;->access$100(IFD)D

    move-result-wide v3

    iput-wide v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    iget-wide v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    invoke-static {v3, v4}, Lcom/miui/internal/smooth/SmoothPathProvider;->access$200(D)D

    move-result-wide v3

    iput-wide v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    iget-wide v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    invoke-static {v3, v4}, Lcom/miui/internal/smooth/SmoothPathProvider;->access$300(D)D

    move-result-wide v3

    iput-wide v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForVertical:D

    iget-wide v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForVertical:D

    const-wide v7, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v7, v3

    iget-wide v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    sub-double/2addr v7, v3

    invoke-static {v7, v8}, Lcom/miui/internal/smooth/SmoothPathProvider;->access$400(D)D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    iget-wide v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    iget-wide v7, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    invoke-static {v3, v4, v7, v8}, Lcom/miui/internal/smooth/SmoothPathProvider;->access$500(DD)D

    move-result-wide v3

    iget v5, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-wide v7, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    invoke-static {v5, v7, v8}, Lcom/miui/internal/smooth/SmoothPathProvider;->access$600(FD)D

    move-result-wide v7

    iget v5, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-wide v9, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    invoke-static {v5, v9, v10}, Lcom/miui/internal/smooth/SmoothPathProvider;->access$700(FD)D

    move-result-wide v9

    iget v5, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-wide v11, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    invoke-static {v5, v11, v12}, Lcom/miui/internal/smooth/SmoothPathProvider;->access$800(FD)D

    move-result-wide v11

    iget v5, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-wide v13, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    invoke-static {v5, v13, v14}, Lcom/miui/internal/smooth/SmoothPathProvider;->access$900(FD)D

    move-result-wide v13

    invoke-static {v3, v4, v13, v14}, Lcom/miui/internal/smooth/SmoothPathProvider;->access$1000(DD)D

    move-result-wide v3

    iget-wide v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    move-wide/from16 p4, v3

    iget-wide v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForVertical:D

    invoke-static {v1, v2, v3, v4}, Lcom/miui/internal/smooth/SmoothPathProvider;->access$1100(DD)D

    move-result-wide v1

    iget v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-wide v4, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForVertical:D

    invoke-static {v3, v4, v5}, Lcom/miui/internal/smooth/SmoothPathProvider;->access$1200(FD)D

    move-result-wide v3

    iget v5, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    move-wide v15, v3

    iget-wide v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForVertical:D

    invoke-static {v5, v3, v4}, Lcom/miui/internal/smooth/SmoothPathProvider;->access$1300(FD)D

    move-result-wide v3

    iget v5, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    move-wide/from16 v17, v3

    iget-wide v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForVertical:D

    invoke-static {v5, v3, v4}, Lcom/miui/internal/smooth/SmoothPathProvider;->access$1400(FD)D

    move-result-wide v3

    iget v5, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    move-wide/from16 v19, v3

    iget-wide v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->thetaForVertical:D

    invoke-static {v5, v3, v4}, Lcom/miui/internal/smooth/SmoothPathProvider;->access$1500(FD)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/miui/internal/smooth/SmoothPathProvider;->access$1600(DD)D

    move-result-wide v1

    const/high16 v21, 0x40000000    # 2.0f

    if-nez v6, :cond_0

    new-instance v6, Landroid/graphics/RectF;

    iget v5, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    move-wide/from16 v22, v15

    mul-float v15, v5, v21

    mul-float v5, v5, v21

    move-wide/from16 v24, v1

    const/4 v1, 0x0

    invoke-direct {v6, v1, v1, v15, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v6, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v5, Landroid/graphics/PointF;

    double-to-float v6, v7

    double-to-float v7, v9

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v6, 0x0

    aput-object v5, v2, v6

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v5, Landroid/graphics/PointF;

    double-to-float v6, v11

    invoke-direct {v5, v6, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v6, 0x1

    aput-object v5, v2, v6

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v5, Landroid/graphics/PointF;

    add-double/2addr v11, v13

    double-to-float v6, v11

    invoke-direct {v5, v6, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v6, 0x2

    aput-object v5, v2, v6

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v5, Landroid/graphics/PointF;

    add-double v11, v11, p4

    double-to-float v6, v11

    invoke-direct {v5, v6, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v6, 0x3

    aput-object v5, v2, v6

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v5, Landroid/graphics/PointF;

    add-double v3, v19, v3

    add-double v6, v3, v24

    double-to-float v6, v6

    invoke-direct {v5, v1, v6}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v6, 0x0

    aput-object v5, v2, v6

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v5, Landroid/graphics/PointF;

    double-to-float v3, v3

    invoke-direct {v5, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x1

    aput-object v5, v2, v3

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    move-wide/from16 v4, v19

    double-to-float v4, v4

    invoke-direct {v3, v1, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x2

    aput-object v3, v2, v1

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    move-wide/from16 v2, v22

    double-to-float v2, v2

    move-wide/from16 v3, v17

    double-to-float v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v24, v1

    move-wide v1, v15

    move-wide/from16 v26, v19

    const/4 v5, 0x1

    move-wide v15, v3

    move-wide/from16 v3, v17

    if-ne v6, v5, :cond_1

    new-instance v5, Landroid/graphics/RectF;

    move/from16 v6, p2

    move-wide/from16 v17, v15

    int-to-float v15, v6

    move-wide/from16 v19, v3

    iget v3, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    mul-float v4, v3, v21

    sub-float v4, v15, v4

    mul-float v3, v3, v21

    move-wide/from16 v22, v1

    const/4 v1, 0x0

    invoke-direct {v5, v4, v1, v15, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    int-to-double v4, v6

    sub-double v11, v4, v11

    sub-double v13, v11, v13

    move-wide/from16 v28, v9

    sub-double v9, v13, p4

    double-to-float v6, v9

    invoke-direct {v3, v6, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v6, 0x0

    aput-object v3, v2, v6

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    double-to-float v6, v13

    invoke-direct {v3, v6, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v6, 0x1

    aput-object v3, v2, v6

    iget-object v2, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    double-to-float v6, v11

    invoke-direct {v3, v6, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x2

    aput-object v3, v2, v1

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/PointF;

    sub-double v6, v4, v7

    double-to-float v3, v6

    move-wide/from16 v9, v28

    double-to-float v6, v9

    invoke-direct {v2, v3, v6}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/PointF;

    sub-double v4, v4, v22

    double-to-float v3, v4

    move-wide/from16 v4, v19

    double-to-float v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/PointF;

    move-wide/from16 v3, v26

    double-to-float v5, v3

    invoke-direct {v2, v15, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x1

    aput-object v2, v1, v5

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/PointF;

    add-double v3, v3, v17

    double-to-float v5, v3

    invoke-direct {v2, v15, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    add-double v3, v3, v24

    double-to-float v2, v3

    invoke-direct {v1, v15, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    goto/16 :goto_0

    :cond_1
    move-wide/from16 v22, v1

    move-wide v4, v3

    move-wide/from16 v17, v15

    move-wide/from16 v2, v26

    const/4 v15, 0x2

    move/from16 v1, p2

    if-ne v6, v15, :cond_2

    new-instance v6, Landroid/graphics/RectF;

    int-to-float v15, v1

    move-wide/from16 v19, v4

    iget v4, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    mul-float v5, v4, v21

    sub-float v5, v15, v5

    move-wide/from16 v26, v2

    move/from16 v2, p3

    int-to-float v3, v2

    mul-float v4, v4, v21

    sub-float v4, v3, v4

    invoke-direct {v6, v5, v4, v15, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v6, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v5, Landroid/graphics/PointF;

    move-wide/from16 v28, v13

    int-to-double v13, v1

    sub-double v6, v13, v7

    double-to-float v1, v6

    int-to-double v6, v2

    sub-double v8, v6, v9

    double-to-float v2, v8

    invoke-direct {v5, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x0

    aput-object v5, v4, v1

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/PointF;

    sub-double v4, v13, v11

    double-to-float v8, v4

    invoke-direct {v2, v8, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v8, 0x1

    aput-object v2, v1, v8

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/PointF;

    sub-double v4, v4, v28

    double-to-float v8, v4

    invoke-direct {v2, v8, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v8, 0x2

    aput-object v2, v1, v8

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/PointF;

    sub-double v4, v4, p4

    double-to-float v4, v4

    invoke-direct {v2, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/PointF;

    sub-double v3, v6, v26

    sub-double v8, v3, v17

    sub-double v10, v8, v24

    double-to-float v5, v10

    invoke-direct {v2, v15, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x0

    aput-object v2, v1, v5

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/PointF;

    double-to-float v5, v8

    invoke-direct {v2, v15, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x1

    aput-object v2, v1, v5

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/PointF;

    double-to-float v3, v3

    invoke-direct {v2, v15, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    sub-double v13, v13, v22

    double-to-float v2, v13

    sub-double v6, v6, v19

    double-to-float v3, v6

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    goto/16 :goto_0

    :cond_2
    move-wide/from16 v26, v2

    move-wide/from16 v19, v4

    move-wide/from16 v28, v13

    const/4 v3, 0x3

    move/from16 v2, p3

    if-ne v6, v3, :cond_3

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v3, v2

    iget v4, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->radius:F

    mul-float v5, v4, v21

    sub-float v5, v3, v5

    mul-float v4, v4, v21

    const/4 v6, 0x0

    invoke-direct {v1, v6, v5, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    add-double v13, v11, v28

    add-double v5, v13, p4

    double-to-float v5, v5

    invoke-direct {v4, v5, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x0

    aput-object v4, v1, v5

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    double-to-float v5, v13

    invoke-direct {v4, v5, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x1

    aput-object v4, v1, v5

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    double-to-float v5, v11

    invoke-direct {v4, v5, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x2

    aput-object v4, v1, v3

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    double-to-float v4, v7

    int-to-double v5, v2

    sub-double v7, v5, v9

    double-to-float v2, v7

    invoke-direct {v3, v4, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x3

    aput-object v3, v1, v2

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/PointF;

    move-wide/from16 v3, v22

    double-to-float v3, v3

    sub-double v7, v5, v19

    double-to-float v4, v7

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/PointF;

    sub-double v5, v5, v26

    double-to-float v3, v5

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v1, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/PointF;

    sub-double v5, v5, v17

    double-to-float v3, v5

    invoke-direct {v2, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v0, v0, Lcom/miui/internal/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    sub-double v5, v5, v24

    double-to-float v2, v5

    invoke-direct {v1, v4, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    :cond_3
    :goto_0
    return-void
.end method
