.class Lmiui/animation/internal/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field UL:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lmiui/animation/property/FloatProperty;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field bM:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lmiui/animation/property/FloatProperty;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field cM:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lmiui/animation/property/FloatProperty;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field config:Lmiui/animation/base/AnimConfigLink;

.field target:Lmiui/animation/IAnimTarget;

.field toTag:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lmiui/animation/IAnimTarget;Lmiui/animation/controller/AnimState;Lmiui/animation/controller/AnimState;Lmiui/animation/base/AnimConfigLink;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiui/animation/internal/g;->bM:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiui/animation/internal/g;->cM:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiui/animation/internal/g;->UL:Ljava/util/Map;

    iput-object p1, p0, Lmiui/animation/internal/g;->target:Lmiui/animation/IAnimTarget;

    iget-object p1, p0, Lmiui/animation/internal/g;->bM:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lmiui/animation/internal/g;->a(Ljava/util/Map;Lmiui/animation/controller/AnimState;)V

    iget-object p1, p0, Lmiui/animation/internal/g;->cM:Ljava/util/Map;

    invoke-direct {p0, p1, p3}, Lmiui/animation/internal/g;->a(Ljava/util/Map;Lmiui/animation/controller/AnimState;)V

    invoke-virtual {p3}, Lmiui/animation/controller/AnimState;->getTag()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lmiui/animation/internal/g;->toTag:Ljava/lang/Object;

    iput-object p4, p0, Lmiui/animation/internal/g;->config:Lmiui/animation/base/AnimConfigLink;

    iget-object p0, p0, Lmiui/animation/internal/g;->config:Lmiui/animation/base/AnimConfigLink;

    invoke-virtual {p3, p0}, Lmiui/animation/controller/AnimState;->getAllConfig(Lmiui/animation/base/AnimConfigLink;)V

    return-void
.end method

.method private a(Lmiui/animation/controller/AnimState;Lmiui/animation/property/FloatProperty;)Ljava/lang/Number;
    .locals 0

    instance-of p0, p2, Lmiui/animation/property/IIntValueProperty;

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2}, Lmiui/animation/controller/AnimState;->getInt(Lmiui/animation/property/FloatProperty;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1, p2}, Lmiui/animation/controller/AnimState;->getFloat(Lmiui/animation/property/FloatProperty;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/Map;Lmiui/animation/controller/AnimState;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lmiui/animation/property/FloatProperty;",
            "Ljava/lang/Number;",
            ">;",
            "Lmiui/animation/controller/AnimState;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lmiui/animation/controller/AnimState;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/property/FloatProperty;

    invoke-direct {p0, p2, v1}, Lmiui/animation/internal/g;->a(Lmiui/animation/controller/AnimState;Lmiui/animation/property/FloatProperty;)Ljava/lang/Number;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v1}, Lmiui/animation/controller/AnimState;->getFlags(Lmiui/animation/property/FloatProperty;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lmiui/animation/internal/g;->UL:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransitionInfo{target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/animation/internal/g;->target:Lmiui/animation/IAnimTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/animation/internal/g;->bM:Ljava/util/Map;

    const-string v2, "    "

    invoke-static {v1, v2}, Lmiui/animation/utils/CommonUtils;->mapToString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/animation/internal/g;->cM:Ljava/util/Map;

    invoke-static {v1, v2}, Lmiui/animation/utils/CommonUtils;->mapToString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmiui/animation/internal/g;->config:Lmiui/animation/base/AnimConfigLink;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
