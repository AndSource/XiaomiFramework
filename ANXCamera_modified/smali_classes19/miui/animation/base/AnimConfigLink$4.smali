.class Lmiui/animation/base/AnimConfigLink$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/animation/base/AnimConfigLink$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/animation/base/AnimConfigLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmiui/animation/base/AnimConfigLink$a<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lmiui/animation/base/AnimConfig;Lmiui/animation/property/FloatProperty;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0

    iget p0, p1, Lmiui/animation/base/AnimConfig;->fromSpeed:F

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float p0, p0, p2

    if-nez p0, :cond_0

    return-object p3

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p0

    cmpl-float p0, p0, p2

    if-nez p0, :cond_1

    iget p0, p1, Lmiui/animation/base/AnimConfig;->fromSpeed:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iget p1, p1, Lmiui/animation/base/AnimConfig;->fromSpeed:F

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lmiui/animation/base/AnimConfig;Lmiui/animation/property/FloatProperty;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2, p3}, Lmiui/animation/base/AnimConfigLink$4;->a(Lmiui/animation/base/AnimConfig;Lmiui/animation/property/FloatProperty;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
