.class Lmiui/maml/elements/TextScreenElement$1;
.super Lmiui/maml/folme/AnimatedProperty$AnimatedColorProperty;
.source "TextScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/TextScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/maml/folme/AnimatedProperty$AnimatedColorProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getIntValue(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1}, Lmiui/maml/elements/TextScreenElement$1;->getIntValue(Lmiui/maml/elements/AnimatedScreenElement;)I

    move-result p1

    return p1
.end method

.method public getIntValue(Lmiui/maml/elements/AnimatedScreenElement;)I
    .locals 2

    instance-of v0, p1, Lmiui/maml/elements/TextScreenElement;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lmiui/maml/elements/TextScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/TextScreenElement;->access$000(Lmiui/maml/elements/TextScreenElement;)Lmiui/maml/folme/PropertyWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-long v0, v0

    long-to-int v0, v0

    return v0

    :cond_0
    const/high16 v0, -0x1000000

    return v0
.end method

.method public bridge synthetic setIntValue(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/TextScreenElement$1;->setIntValue(Lmiui/maml/elements/AnimatedScreenElement;I)V

    return-void
.end method

.method public setIntValue(Lmiui/maml/elements/AnimatedScreenElement;I)V
    .locals 3

    instance-of v0, p1, Lmiui/maml/elements/TextScreenElement;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lmiui/maml/elements/TextScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/TextScreenElement;->access$000(Lmiui/maml/elements/TextScreenElement;)Lmiui/maml/folme/PropertyWrapper;

    move-result-object v0

    int-to-double v1, p2

    invoke-virtual {v0, v1, v2}, Lmiui/maml/folme/PropertyWrapper;->setValue(D)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setVelocityValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/TextScreenElement$1;->setVelocityValue(Lmiui/maml/elements/AnimatedScreenElement;F)V

    return-void
.end method

.method public setVelocityValue(Lmiui/maml/elements/AnimatedScreenElement;F)V
    .locals 3

    instance-of v0, p1, Lmiui/maml/elements/TextScreenElement;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lmiui/maml/elements/TextScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/TextScreenElement;->access$000(Lmiui/maml/elements/TextScreenElement;)Lmiui/maml/folme/PropertyWrapper;

    move-result-object v0

    float-to-double v1, p2

    invoke-virtual {v0, v1, v2}, Lmiui/maml/folme/PropertyWrapper;->setVelocity(D)V

    :cond_0
    return-void
.end method
