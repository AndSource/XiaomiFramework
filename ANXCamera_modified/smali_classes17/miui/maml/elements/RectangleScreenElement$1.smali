.class Lmiui/maml/elements/RectangleScreenElement$1;
.super Lmiui/maml/folme/AnimatedProperty;
.source "RectangleScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/RectangleScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/maml/folme/AnimatedProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1}, Lmiui/maml/elements/RectangleScreenElement$1;->getValue(Lmiui/maml/elements/AnimatedScreenElement;)F

    move-result p1

    return p1
.end method

.method public getValue(Lmiui/maml/elements/AnimatedScreenElement;)F
    .locals 2

    instance-of v0, p1, Lmiui/maml/elements/RectangleScreenElement;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lmiui/maml/elements/RectangleScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/RectangleScreenElement;->access$000(Lmiui/maml/elements/RectangleScreenElement;)Lmiui/maml/folme/PropertyWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/RectangleScreenElement$1;->setValue(Lmiui/maml/elements/AnimatedScreenElement;F)V

    return-void
.end method

.method public setValue(Lmiui/maml/elements/AnimatedScreenElement;F)V
    .locals 3

    instance-of v0, p1, Lmiui/maml/elements/RectangleScreenElement;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lmiui/maml/elements/RectangleScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/RectangleScreenElement;->access$000(Lmiui/maml/elements/RectangleScreenElement;)Lmiui/maml/folme/PropertyWrapper;

    move-result-object v0

    float-to-double v1, p2

    invoke-virtual {v0, v1, v2}, Lmiui/maml/folme/PropertyWrapper;->setValue(D)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setVelocityValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/RectangleScreenElement$1;->setVelocityValue(Lmiui/maml/elements/AnimatedScreenElement;F)V

    return-void
.end method

.method public setVelocityValue(Lmiui/maml/elements/AnimatedScreenElement;F)V
    .locals 3

    instance-of v0, p1, Lmiui/maml/elements/RectangleScreenElement;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lmiui/maml/elements/RectangleScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/RectangleScreenElement;->access$000(Lmiui/maml/elements/RectangleScreenElement;)Lmiui/maml/folme/PropertyWrapper;

    move-result-object v0

    float-to-double v1, p2

    invoke-virtual {v0, v1, v2}, Lmiui/maml/folme/PropertyWrapper;->setVelocity(D)V

    :cond_0
    return-void
.end method
