.class public Lmiuix/animation/physics/PhysicsUtil;
.super Ljava/lang/Object;
.source "PhysicsUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static willStop(Lmiuix/animation/physics/PhysicsOperator;)Z
    .locals 1

    instance-of v0, p0, Lmiuix/animation/physics/SpringOperator;

    if-nez v0, :cond_1

    instance-of p0, p0, Lmiuix/animation/physics/FrictionOperator;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
