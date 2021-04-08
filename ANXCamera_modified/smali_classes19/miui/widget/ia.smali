.class Lmiui/widget/ia;
.super Lmiui/animation/property/FloatProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/SeekBarContainerLinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/animation/property/FloatProperty<",
        "Lmiui/widget/SeekBarContainerLinearLayout;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic j:Lmiui/widget/SeekBarContainerLinearLayout;


# direct methods
.method constructor <init>(Lmiui/widget/SeekBarContainerLinearLayout;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/ia;->j:Lmiui/widget/SeekBarContainerLinearLayout;

    invoke-direct {p0, p2}, Lmiui/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lmiui/widget/SeekBarContainerLinearLayout;)F
    .locals 0

    iget-object p0, p0, Lmiui/widget/ia;->j:Lmiui/widget/SeekBarContainerLinearLayout;

    invoke-virtual {p0}, Lmiui/widget/SeekBarContainerLinearLayout;->getProgress()F

    move-result p0

    return p0
.end method

.method public a(Lmiui/widget/SeekBarContainerLinearLayout;F)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/ia;->j:Lmiui/widget/SeekBarContainerLinearLayout;

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiui/widget/SeekBarContainerLinearLayout;->setProgress(I)V

    return-void
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Lmiui/widget/SeekBarContainerLinearLayout;

    invoke-virtual {p0, p1}, Lmiui/widget/ia;->a(Lmiui/widget/SeekBarContainerLinearLayout;)F

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lmiui/widget/SeekBarContainerLinearLayout;

    invoke-virtual {p0, p1, p2}, Lmiui/widget/ia;->a(Lmiui/widget/SeekBarContainerLinearLayout;F)V

    return-void
.end method
