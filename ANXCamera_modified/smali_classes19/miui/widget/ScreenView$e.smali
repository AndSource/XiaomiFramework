.class Lmiui/widget/ScreenView$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field private XY:F

.field final synthetic j:Lmiui/widget/ScreenView;


# direct methods
.method public constructor <init>(Lmiui/widget/ScreenView;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/ScreenView$e;->j:Lmiui/widget/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lmiui/widget/ScreenView;->g(Lmiui/widget/ScreenView;)F

    move-result p1

    iput p1, p0, Lmiui/widget/ScreenView$e;->XY:F

    return-void
.end method

.method static synthetic a(Lmiui/widget/ScreenView$e;F)F
    .locals 0

    iput p1, p0, Lmiui/widget/ScreenView$e;->XY:F

    return p1
.end method


# virtual methods
.method public R()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/ScreenView$e;->XY:F

    return-void
.end method

.method public e(II)V
    .locals 0

    if-lez p1, :cond_0

    iget-object p2, p0, Lmiui/widget/ScreenView$e;->j:Lmiui/widget/ScreenView;

    invoke-static {p2}, Lmiui/widget/ScreenView;->g(Lmiui/widget/ScreenView;)F

    move-result p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmiui/widget/ScreenView$e;->j:Lmiui/widget/ScreenView;

    invoke-static {p1}, Lmiui/widget/ScreenView;->g(Lmiui/widget/ScreenView;)F

    move-result p2

    :goto_0
    iput p2, p0, Lmiui/widget/ScreenView$e;->XY:F

    return-void
.end method

.method public getInterpolation(F)F
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    mul-float v1, p1, p1

    iget p0, p0, Lmiui/widget/ScreenView$e;->XY:F

    add-float v2, p0, v0

    mul-float/2addr v2, p1

    add-float/2addr v2, p0

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    return v1
.end method
