.class Lmiui/animation/physics/c;
.super Lmiui/animation/property/FloatProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/animation/physics/DynamicAnimation;-><init>(Lmiui/animation/property/FloatValueHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic j:Lmiui/animation/physics/DynamicAnimation;

.field final synthetic ue:Lmiui/animation/property/FloatValueHolder;


# direct methods
.method constructor <init>(Lmiui/animation/physics/DynamicAnimation;Ljava/lang/String;Lmiui/animation/property/FloatValueHolder;)V
    .locals 0

    iput-object p1, p0, Lmiui/animation/physics/c;->j:Lmiui/animation/physics/DynamicAnimation;

    iput-object p3, p0, Lmiui/animation/physics/c;->ue:Lmiui/animation/property/FloatValueHolder;

    invoke-direct {p0, p2}, Lmiui/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/Object;)F
    .locals 0

    iget-object p0, p0, Lmiui/animation/physics/c;->ue:Lmiui/animation/property/FloatValueHolder;

    invoke-virtual {p0}, Lmiui/animation/property/FloatValueHolder;->getValue()F

    move-result p0

    return p0
.end method

.method public setValue(Ljava/lang/Object;F)V
    .locals 0

    iget-object p0, p0, Lmiui/animation/physics/c;->ue:Lmiui/animation/property/FloatValueHolder;

    invoke-virtual {p0, p2}, Lmiui/animation/property/FloatValueHolder;->setValue(F)V

    return-void
.end method
