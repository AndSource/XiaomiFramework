.class Lcom/miui/internal/view/l;
.super Lmiui/animation/property/FloatProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/animation/property/FloatProperty<",
        "Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic j:Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;


# direct methods
.method constructor <init>(Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/view/l;->j:Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;

    invoke-direct {p0, p2}, Lmiui/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;)F
    .locals 0

    invoke-virtual {p1}, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;->getBlackAlpha()F

    move-result p0

    return p0
.end method

.method public a(Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;F)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;->setBlackAlpha(F)V

    return-void
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/l;->a(Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;)F

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/view/l;->a(Lcom/miui/internal/view/SeekBarBackGroundShapeDrawable;F)V

    return-void
.end method
