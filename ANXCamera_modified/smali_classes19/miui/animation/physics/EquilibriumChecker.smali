.class public Lmiui/animation/physics/EquilibriumChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HM:F = 16.666666f

.field public static final MIN_VISIBLE_CHANGE_ALPHA:F = 0.00390625f

.field public static final MIN_VISIBLE_CHANGE_PIXELS:F = 1.0f

.field public static final MIN_VISIBLE_CHANGE_ROTATION_DEGREES:F = 0.1f

.field public static final MIN_VISIBLE_CHANGE_SCALE:F = 0.002f

.field private static final tM:F = 0.75f


# instance fields
.field private EM:F

.field private yM:D

.field private zM:F


# direct methods
.method public constructor <init>(Lmiui/animation/IAnimTarget;Lmiui/animation/property/FloatProperty;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Lmiui/animation/physics/EquilibriumChecker;->yM:D

    invoke-virtual {p1, p2}, Lmiui/animation/IAnimTarget;->getMinVisibleChange(Ljava/lang/Object;)F

    move-result p1

    const/high16 p2, 0x3f400000    # 0.75f

    mul-float/2addr p1, p2

    iput p1, p0, Lmiui/animation/physics/EquilibriumChecker;->zM:F

    iget p1, p0, Lmiui/animation/physics/EquilibriumChecker;->zM:F

    const p2, 0x41855555

    mul-float/2addr p1, p2

    iput p1, p0, Lmiui/animation/physics/EquilibriumChecker;->EM:F

    return-void
.end method

.method private i(DD)Z
    .locals 4

    iget-wide v0, p0, Lmiui/animation/physics/EquilibriumChecker;->yM:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x47efffffe0000000L    # 3.4028234663852886E38

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    sub-double/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    iget p0, p0, Lmiui/animation/physics/EquilibriumChecker;->zM:F

    float-to-double p3, p0

    cmpg-double p0, p1, p3

    if-gez p0, :cond_0

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


# virtual methods
.method public isAtEquilibrium(DD)Z
    .locals 2

    iget-wide v0, p0, Lmiui/animation/physics/EquilibriumChecker;->yM:D

    invoke-direct {p0, p1, p2, v0, v1}, Lmiui/animation/physics/EquilibriumChecker;->i(DD)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    iget p0, p0, Lmiui/animation/physics/EquilibriumChecker;->EM:F

    float-to-double p3, p0

    cmpg-double p0, p1, p3

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setTargetValue(D)V
    .locals 0

    iput-wide p1, p0, Lmiui/animation/physics/EquilibriumChecker;->yM:D

    return-void
.end method
