.class Lmiui/animation/internal/AnimCompositor;
.super Ljava/lang/Object;
.source "AnimCompositor.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createAnimInfo(Lmiui/animation/IAnimTarget;Lmiui/animation/internal/TransitionInfo;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/animation/IAnimTarget;",
            "Lmiui/animation/internal/TransitionInfo;",
            ")",
            "Ljava/util/Map<",
            "Lmiui/animation/property/FloatProperty;",
            "Lmiui/animation/internal/AnimRunningInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object v1, p1, Lmiui/animation/internal/TransitionInfo;->toPropValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/animation/property/FloatProperty;

    invoke-static {p0, v2, p1}, Lmiui/animation/internal/AnimCompositor;->createRunningInfo(Lmiui/animation/IAnimTarget;Lmiui/animation/property/FloatProperty;Lmiui/animation/internal/TransitionInfo;)Lmiui/animation/internal/AnimRunningInfo;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static createRunningInfo(Lmiui/animation/IAnimTarget;Lmiui/animation/property/FloatProperty;Lmiui/animation/internal/TransitionInfo;)Lmiui/animation/internal/AnimRunningInfo;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAnimInfo for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", toTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lmiui/animation/internal/TransitionInfo;->toTag:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miuisdk_anim"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lmiui/animation/internal/AnimRunningInfo;

    invoke-direct {v0}, Lmiui/animation/internal/AnimRunningInfo;-><init>()V

    iput-object p0, v0, Lmiui/animation/internal/AnimRunningInfo;->target:Lmiui/animation/IAnimTarget;

    iput-object p1, v0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v0, p2}, Lmiui/animation/internal/AnimRunningInfo;->setFromInfo(Lmiui/animation/internal/TransitionInfo;)V

    invoke-virtual {v0, p2}, Lmiui/animation/internal/AnimRunningInfo;->setToInfo(Lmiui/animation/internal/TransitionInfo;)V

    iget-object p0, p2, Lmiui/animation/internal/TransitionInfo;->config:Lmiui/animation/base/AnimConfigLink;

    invoke-virtual {v0, p0}, Lmiui/animation/internal/AnimRunningInfo;->setConfig(Lmiui/animation/base/AnimConfigLink;)V

    return-object v0
.end method
