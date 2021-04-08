.class public Lmiui/animation/internal/AnimRunningInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final STATUS_PENDING:I = -0x1

.field static final STATUS_RUNNING:I = 0x1

.field static final STATUS_STOP:I = 0x3

.field static final VL:I = 0x0

.field static final WL:I = 0x2


# instance fields
.field OL:Ljava/lang/Number;

.field QL:J

.field private RL:Ljava/lang/Number;

.field private UL:J

.field public anim:Lmiui/animation/styles/PropertyStyle;

.field public config:Lmiui/animation/base/AnimConfigLink;

.field public ease:Lmiui/animation/utils/EaseManager$EaseStyle;

.field public flags:J

.field private mUpdate:Lmiui/animation/listener/UpdateInfo;

.field pending:Lmiui/animation/internal/AnimRunningInfo;

.field public property:Lmiui/animation/property/FloatProperty;

.field private startTime:J

.field public status:I

.field public target:Lmiui/animation/IAnimTarget;

.field public toTag:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/animation/internal/AnimRunningInfo;->status:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/animation/internal/AnimRunningInfo;->startTime:J

    new-instance v0, Lmiui/animation/listener/UpdateInfo;

    invoke-direct {v0}, Lmiui/animation/listener/UpdateInfo;-><init>()V

    iput-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->mUpdate:Lmiui/animation/listener/UpdateInfo;

    return-void
.end method

.method private a(Lmiui/animation/IAnimTarget;Lmiui/animation/styles/PropertyStyle;)Z
    .locals 7

    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    instance-of v0, v0, Lmiui/animation/property/IIntValueProperty;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lmiui/animation/internal/AnimRunningInfo;->OL:Ljava/lang/Number;

    iget-wide v5, p0, Lmiui/animation/internal/AnimRunningInfo;->UL:J

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Lmiui/animation/internal/AnimValueUtils;->b(Lmiui/animation/IAnimTarget;Lmiui/animation/styles/PropertyStyle;Lmiui/animation/internal/AnimRunningInfo;Ljava/lang/Number;J)Z

    move-result p0

    return p0

    :cond_0
    iget-object v3, p0, Lmiui/animation/internal/AnimRunningInfo;->OL:Ljava/lang/Number;

    iget-wide v4, p0, Lmiui/animation/internal/AnimRunningInfo;->UL:J

    move-object v0, p1

    move-object v1, p2

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lmiui/animation/internal/AnimValueUtils;->a(Lmiui/animation/IAnimTarget;Lmiui/animation/styles/PropertyStyle;Lmiui/animation/internal/AnimRunningInfo;Ljava/lang/Number;J)Z

    move-result p0

    return p0
.end method

.method private ke()V
    .locals 3

    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->RL:Ljava/lang/Number;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    instance-of v2, v1, Lmiui/animation/property/IIntValueProperty;

    if-eqz v2, :cond_1

    iget-object p0, p0, Lmiui/animation/internal/AnimRunningInfo;->target:Lmiui/animation/IAnimTarget;

    check-cast v1, Lmiui/animation/property/IIntValueProperty;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lmiui/animation/IAnimTarget;->setIntValue(Lmiui/animation/property/IIntValueProperty;I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lmiui/animation/internal/AnimRunningInfo;->target:Lmiui/animation/IAnimTarget;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v1, v0}, Lmiui/animation/IAnimTarget;->setValue(Lmiui/animation/property/FloatProperty;F)V

    :goto_0
    return-void
.end method

.method private setStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lmiui/animation/internal/AnimRunningInfo;->startTime:J

    iget-object p0, p0, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmiui/animation/styles/PropertyStyle;->resetRunningTime()V

    :cond_0
    return-void
.end method


# virtual methods
.method B()Z
    .locals 4

    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->ease:Lmiui/animation/utils/EaseManager$EaseStyle;

    iget v0, v0, Lmiui/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {v0}, Lmiui/animation/utils/EaseManager;->isPhysicsStyle(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->target:Lmiui/animation/IAnimTarget;

    iget-object p0, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v0, p0}, Lmiui/animation/IAnimTarget;->getVelocity(Lmiui/animation/property/FloatProperty;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method C()Lmiui/animation/listener/UpdateInfo;
    .locals 3

    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    instance-of v1, v0, Lmiui/animation/property/IIntValueProperty;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/animation/internal/AnimRunningInfo;->mUpdate:Lmiui/animation/listener/UpdateInfo;

    iget-object v2, p0, Lmiui/animation/internal/AnimRunningInfo;->target:Lmiui/animation/IAnimTarget;

    check-cast v0, Lmiui/animation/property/IIntValueProperty;

    invoke-virtual {v2, v0}, Lmiui/animation/IAnimTarget;->getIntValue(Lmiui/animation/property/IIntValueProperty;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiui/animation/listener/UpdateInfo;->setValue(Ljava/lang/Number;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmiui/animation/internal/AnimRunningInfo;->mUpdate:Lmiui/animation/listener/UpdateInfo;

    iget-object v2, p0, Lmiui/animation/internal/AnimRunningInfo;->target:Lmiui/animation/IAnimTarget;

    invoke-virtual {v2, v0}, Lmiui/animation/IAnimTarget;->getValue(Lmiui/animation/property/FloatProperty;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiui/animation/listener/UpdateInfo;->setValue(Ljava/lang/Number;)V

    :goto_0
    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->mUpdate:Lmiui/animation/listener/UpdateInfo;

    iget-object v1, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    iput-object v1, v0, Lmiui/animation/listener/UpdateInfo;->property:Lmiui/animation/property/FloatProperty;

    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->ease:Lmiui/animation/utils/EaseManager$EaseStyle;

    iget v0, v0, Lmiui/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {v0}, Lmiui/animation/utils/EaseManager;->isPhysicsStyle(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->mUpdate:Lmiui/animation/listener/UpdateInfo;

    iget-object v1, p0, Lmiui/animation/internal/AnimRunningInfo;->target:Lmiui/animation/IAnimTarget;

    iget-object v2, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v1, v2}, Lmiui/animation/IAnimTarget;->getVelocity(Lmiui/animation/property/FloatProperty;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lmiui/animation/listener/UpdateInfo;->velocity:F

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->mUpdate:Lmiui/animation/listener/UpdateInfo;

    const/4 v1, 0x0

    iput v1, v0, Lmiui/animation/listener/UpdateInfo;->velocity:F

    :goto_1
    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->mUpdate:Lmiui/animation/listener/UpdateInfo;

    iget-object v1, p0, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    iput-object v1, v0, Lmiui/animation/listener/UpdateInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    invoke-virtual {p0}, Lmiui/animation/internal/AnimRunningInfo;->isFinished()Z

    move-result v1

    iput-boolean v1, v0, Lmiui/animation/listener/UpdateInfo;->isCompleted:Z

    iget-object p0, p0, Lmiui/animation/internal/AnimRunningInfo;->mUpdate:Lmiui/animation/listener/UpdateInfo;

    return-object p0
.end method

.method a(Lmiui/animation/IAnimTarget;J)V
    .locals 3

    const/4 v0, 0x1

    iput v0, p0, Lmiui/animation/internal/AnimRunningInfo;->status:I

    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->mUpdate:Lmiui/animation/listener/UpdateInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lmiui/animation/listener/UpdateInfo;->isCanceled:Z

    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    iget-object v1, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    iget-object v2, p0, Lmiui/animation/internal/AnimRunningInfo;->config:Lmiui/animation/base/AnimConfigLink;

    invoke-static {p1, v0, v1, v2}, Lmiui/animation/styles/StyleFactory;->createAnimStyle(Lmiui/animation/IAnimTarget;Ljava/lang/Object;Lmiui/animation/property/FloatProperty;Lmiui/animation/base/AnimConfigLink;)Lmiui/animation/styles/PropertyStyle;

    move-result-object v0

    iput-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    :cond_0
    invoke-direct {p0, p2, p3}, Lmiui/animation/internal/AnimRunningInfo;->setStartTime(J)V

    invoke-direct {p0}, Lmiui/animation/internal/AnimRunningInfo;->ke()V

    iget-object p2, p0, Lmiui/animation/internal/AnimRunningInfo;->config:Lmiui/animation/base/AnimConfigLink;

    iget-object p3, p0, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {p2, p3, v0}, Lmiui/animation/base/AnimConfigLink;->getFromSpeed(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;)F

    move-result p2

    const p3, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float p3, p2, p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    float-to-double v0, p2

    invoke-virtual {p1, p3, v0, v1}, Lmiui/animation/IAnimTarget;->setVelocity(Lmiui/animation/property/FloatProperty;D)V

    :cond_1
    iget-object p2, p0, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    invoke-direct {p0, p1, p2}, Lmiui/animation/internal/AnimRunningInfo;->a(Lmiui/animation/IAnimTarget;Lmiui/animation/styles/PropertyStyle;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lmiui/animation/internal/AnimRunningInfo;->stop()V

    return-void

    :cond_2
    iget-object p1, p0, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    invoke-virtual {p1}, Lmiui/animation/styles/PropertyStyle;->isRunning()Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AnimRunningInfo, begin "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {p2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", toTag = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "miuisdk_anim"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    invoke-virtual {p0}, Lmiui/animation/styles/PropertyStyle;->start()V

    :cond_3
    return-void
.end method

.method a(Lmiui/animation/internal/AnimRunningInfo;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lmiui/animation/internal/AnimRunningInfo;->status:I

    iput-object p1, p0, Lmiui/animation/internal/AnimRunningInfo;->pending:Lmiui/animation/internal/AnimRunningInfo;

    const/4 p0, -0x1

    iput p0, p1, Lmiui/animation/internal/AnimRunningInfo;->status:I

    return-void
.end method

.method a(Lmiui/animation/internal/g;)V
    .locals 1

    iget-object p1, p1, Lmiui/animation/internal/g;->bM:Ljava/util/Map;

    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    iput-object p1, p0, Lmiui/animation/internal/AnimRunningInfo;->RL:Ljava/lang/Number;

    return-void
.end method

.method a(Lmiui/animation/internal/g;J)V
    .locals 4

    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->ease:Lmiui/animation/utils/EaseManager$EaseStyle;

    iget v0, v0, Lmiui/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {v0}, Lmiui/animation/utils/EaseManager;->isPhysicsStyle(I)Z

    move-result v0

    iget-object v1, p1, Lmiui/animation/internal/g;->config:Lmiui/animation/base/AnimConfigLink;

    iget-object v2, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v1, v2}, Lmiui/animation/base/AnimConfigLink;->getEase(Lmiui/animation/property/FloatProperty;)Lmiui/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    iput-object v1, p0, Lmiui/animation/internal/AnimRunningInfo;->ease:Lmiui/animation/utils/EaseManager$EaseStyle;

    iget-object v1, p0, Lmiui/animation/internal/AnimRunningInfo;->ease:Lmiui/animation/utils/EaseManager$EaseStyle;

    iget v1, v1, Lmiui/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {v1}, Lmiui/animation/utils/EaseManager;->isPhysicsStyle(I)Z

    move-result v1

    invoke-virtual {p0, p1}, Lmiui/animation/internal/AnimRunningInfo;->b(Lmiui/animation/internal/g;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update anim for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", to = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiui/animation/internal/AnimRunningInfo;->OL:Ljava/lang/Number;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", newEase = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiui/animation/internal/AnimRunningInfo;->ease:Lmiui/animation/utils/EaseManager$EaseStyle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "miuisdk_anim"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    if-eqz v2, :cond_1

    if-ne v0, v1, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "update anim values"

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    iget-object p1, p1, Lmiui/animation/internal/g;->config:Lmiui/animation/base/AnimConfigLink;

    invoke-virtual {p2, p1}, Lmiui/animation/styles/PropertyStyle;->setConfig(Lmiui/animation/base/AnimConfigLink;)V

    iget-object p1, p0, Lmiui/animation/internal/AnimRunningInfo;->target:Lmiui/animation/IAnimTarget;

    iget-object p2, p0, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    invoke-direct {p0, p1, p2}, Lmiui/animation/internal/AnimRunningInfo;->a(Lmiui/animation/IAnimTarget;Lmiui/animation/styles/PropertyStyle;)Z

    goto :goto_2

    :cond_1
    :goto_0
    const-string v0, "update anim, clear old and begin new"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lmiui/animation/styles/PropertyStyle;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->RL:Ljava/lang/Number;

    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    iget-object p1, p1, Lmiui/animation/internal/g;->config:Lmiui/animation/base/AnimConfigLink;

    invoke-virtual {v0, p1}, Lmiui/animation/styles/PropertyStyle;->setConfig(Lmiui/animation/base/AnimConfigLink;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->target:Lmiui/animation/IAnimTarget;

    iget-object v1, p0, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    iget-object v2, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    iget-object p1, p1, Lmiui/animation/internal/g;->config:Lmiui/animation/base/AnimConfigLink;

    invoke-static {v0, v1, v2, p1}, Lmiui/animation/styles/StyleFactory;->createAnimStyle(Lmiui/animation/IAnimTarget;Ljava/lang/Object;Lmiui/animation/property/FloatProperty;Lmiui/animation/base/AnimConfigLink;)Lmiui/animation/styles/PropertyStyle;

    move-result-object p1

    iput-object p1, p0, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    :goto_1
    iget-object p1, p0, Lmiui/animation/internal/AnimRunningInfo;->target:Lmiui/animation/IAnimTarget;

    invoke-virtual {p0, p1, p2, p3}, Lmiui/animation/internal/AnimRunningInfo;->a(Lmiui/animation/IAnimTarget;J)V

    :goto_2
    return-void
.end method

.method a(J)Z
    .locals 2

    iget-wide v0, p0, Lmiui/animation/internal/AnimRunningInfo;->startTime:J

    cmp-long p0, v0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method b(Lmiui/animation/internal/g;)V
    .locals 2

    iget-object v0, p1, Lmiui/animation/internal/g;->cM:Ljava/util/Map;

    iget-object v1, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    iput-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->OL:Ljava/lang/Number;

    iget-object v0, p1, Lmiui/animation/internal/g;->toTag:Ljava/lang/Object;

    iput-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    iget-object p1, p1, Lmiui/animation/internal/g;->UL:Ljava/util/Map;

    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/animation/internal/AnimRunningInfo;->UL:J

    :cond_0
    return-void
.end method

.method getRunningTime()J
    .locals 2

    iget-object p0, p0, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmiui/animation/styles/PropertyStyle;->getRunningTime()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method isFinished()Z
    .locals 1

    iget p0, p0, Lmiui/animation/internal/AnimRunningInfo;->status:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isRunning()Z
    .locals 2

    iget p0, p0, Lmiui/animation/internal/AnimRunningInfo;->status:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method run(J)V
    .locals 1

    invoke-virtual {p0}, Lmiui/animation/internal/AnimRunningInfo;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lmiui/animation/styles/PropertyStyle;->update(J)V

    :cond_0
    return-void
.end method

.method setConfig(Lmiui/animation/base/AnimConfigLink;)V
    .locals 2

    iput-object p1, p0, Lmiui/animation/internal/AnimRunningInfo;->config:Lmiui/animation/base/AnimConfigLink;

    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {p1, v0}, Lmiui/animation/base/AnimConfigLink;->getEase(Lmiui/animation/property/FloatProperty;)Lmiui/animation/utils/EaseManager$EaseStyle;

    move-result-object v0

    iput-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->ease:Lmiui/animation/utils/EaseManager$EaseStyle;

    iget-object v0, p0, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    iget-object v1, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {p1, v0, v1}, Lmiui/animation/base/AnimConfigLink;->getFlags(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;)J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/animation/internal/AnimRunningInfo;->flags:J

    return-void
.end method

.method stop()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/animation/internal/AnimRunningInfo;->stop(Z)V

    return-void
.end method

.method stop(Z)V
    .locals 2

    invoke-virtual {p0}, Lmiui/animation/internal/AnimRunningInfo;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimRunningInfo, stop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", toTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", property = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", anim.getCurrentValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    instance-of v1, v1, Lmiui/animation/property/IIntValueProperty;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    invoke-virtual {v1}, Lmiui/animation/styles/PropertyStyle;->getCurrentIntValue()I

    move-result v1

    int-to-float v1, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    invoke-virtual {v1}, Lmiui/animation/styles/PropertyStyle;->getCurrentValue()F

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miuisdk_anim"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    iput v0, p0, Lmiui/animation/internal/AnimRunningInfo;->status:I

    if-eqz p1, :cond_2

    iget-object p1, p0, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    invoke-virtual {p1}, Lmiui/animation/styles/PropertyStyle;->end()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lmiui/animation/internal/AnimRunningInfo;->mUpdate:Lmiui/animation/listener/UpdateInfo;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lmiui/animation/listener/UpdateInfo;->isCanceled:Z

    iget-object p1, p0, Lmiui/animation/internal/AnimRunningInfo;->anim:Lmiui/animation/styles/PropertyStyle;

    invoke-virtual {p1}, Lmiui/animation/styles/PropertyStyle;->cancel()V

    :goto_1
    iget-object p0, p0, Lmiui/animation/internal/AnimRunningInfo;->pending:Lmiui/animation/internal/AnimRunningInfo;

    if-eqz p0, :cond_3

    const/4 p1, 0x0

    iput p1, p0, Lmiui/animation/internal/AnimRunningInfo;->status:I

    :cond_3
    return-void
.end method
