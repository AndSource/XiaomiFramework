.class final Landroid/view/ViewRootImpl$TrackballAxis;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TrackballAxis"
.end annotation


# static fields
.field static final ACCEL_MOVE_SCALING_FACTOR:F = 0.025f

.field static final FAST_MOVE_TIME:J = 0x96L

.field static final FIRST_MOVEMENT_THRESHOLD:F = 0.5f

.field static final MAX_ACCELERATION:F = 20.0f

.field static final SECOND_CUMULATIVE_MOVEMENT_THRESHOLD:F = 2.0f

.field static final SUBSEQUENT_INCREMENTAL_MOVEMENT_THRESHOLD:F = 1.0f


# instance fields
.field acceleration:F

.field dir:I

.field lastMoveTime:J

.field nonAccelMovement:I

.field position:F

.field step:I


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    return-void
.end method


# virtual methods
.method collect(FJLjava/lang/String;)F
    .locals 11

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const/4 v2, 0x0

    const/high16 v3, 0x43160000    # 150.0f

    const-wide/16 v4, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-lez v1, :cond_1

    mul-float/2addr v3, p1

    float-to-long v7, v3

    iget v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    if-gez v1, :cond_0

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    iput v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    iput-wide v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    goto :goto_0

    :cond_1
    cmpg-float v1, p1, v0

    if-gez v1, :cond_3

    neg-float v1, p1

    mul-float/2addr v1, v3

    float-to-long v7, v1

    iget v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    if-lez v1, :cond_2

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    iput v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    iput-wide v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    goto :goto_0

    :cond_3
    const-wide/16 v7, 0x0

    :goto_0
    cmp-long v0, v7, v4

    if-lez v0, :cond_9

    iget-wide v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    sub-long v0, p2, v0

    iput-wide p2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    iget v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    cmp-long v3, v0, v7

    const v4, 0x3ccccccd    # 0.025f

    if-gez v3, :cond_6

    sub-long v9, v7, v0

    long-to-float v3, v9

    mul-float/2addr v3, v4

    cmpl-float v4, v3, v6

    if-lez v4, :cond_4

    mul-float/2addr v2, v3

    :cond_4
    const/high16 v4, 0x41a00000    # 20.0f

    cmpg-float v5, v2, v4

    if-gez v5, :cond_5

    move v4, v2

    :cond_5
    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    goto :goto_1

    :cond_6
    sub-long v9, v0, v7

    long-to-float v3, v9

    mul-float/2addr v3, v4

    cmpl-float v4, v3, v6

    if-lez v4, :cond_7

    div-float/2addr v2, v3

    :cond_7
    cmpl-float v4, v2, v6

    if-lez v4, :cond_8

    move v6, v2

    :cond_8
    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    :cond_9
    :goto_1
    iget v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    iget v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method generate()I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    :goto_0
    iget v1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v2, 0x1

    if-ltz v1, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    const/4 v1, -0x1

    :goto_1
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    if-eqz v3, :cond_5

    if-eq v3, v2, :cond_3

    iget v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    return v0

    :cond_1
    add-int/2addr v0, v1

    iget v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    int-to-float v4, v1

    mul-float/2addr v4, v3

    sub-float/2addr v2, v4

    iput v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    iget v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    const v3, 0x3f8ccccd    # 1.1f

    mul-float/2addr v2, v3

    const/high16 v3, 0x41a00000    # 20.0f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    :goto_2
    iput v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    goto :goto_3

    :cond_3
    iget v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    return v0

    :cond_4
    add-int/2addr v0, v1

    iget v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    iget v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    int-to-float v4, v1

    mul-float/2addr v4, v3

    sub-float/2addr v2, v4

    iput v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    const/4 v2, 0x2

    iput v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    goto :goto_3

    :cond_5
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    return v0

    :cond_6
    add-int/2addr v0, v1

    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    add-int/2addr v3, v1

    iput v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    iput v2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    nop

    :goto_3
    goto :goto_0
.end method

.method reset(I)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    iput p1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    return-void
.end method
