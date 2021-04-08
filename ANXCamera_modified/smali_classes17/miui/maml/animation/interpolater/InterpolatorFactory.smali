.class public Lmiui/maml/animation/interpolater/InterpolatorFactory;
.super Ljava/lang/Object;
.source "InterpolatorFactory.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "InterpolatorFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;[Lmiui/maml/data/Expression;)Landroid/view/animation/Interpolator;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    return-object v3

    :cond_0
    const/4 v0, 0x0

    if-eqz v2, :cond_1

    array-length v4, v2

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v0

    :goto_0
    const/16 v5, 0x28

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/16 v6, 0x29

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    if-eq v5, v11, :cond_4

    if-eq v6, v11, :cond_4

    const/4 v9, 0x1

    add-int/lit8 v12, v5, 0x1

    invoke-virtual {v1, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move-object v13, v12

    const-string v14, ""

    const-string v15, ","

    invoke-virtual {v12, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-eq v15, v11, :cond_2

    const/4 v10, 0x1

    invoke-virtual {v12, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v0, v15, 0x1

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    :cond_2
    :try_start_0
    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    move v7, v0

    if-eqz v10, :cond_3

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v0

    :cond_3
    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parse error:"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v11, "InterpolatorFactory"

    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    const-string v0, "BackEaseIn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v0, Lmiui/maml/animation/interpolater/BackEaseInInterpolater;

    invoke-direct {v0, v2}, Lmiui/maml/animation/interpolater/BackEaseInInterpolater;-><init>([Lmiui/maml/data/Expression;)V

    return-object v0

    :cond_5
    const-string v3, "BackEaseOut"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    new-instance v0, Lmiui/maml/animation/interpolater/BackEaseOutInterpolater;

    invoke-direct {v0, v2}, Lmiui/maml/animation/interpolater/BackEaseOutInterpolater;-><init>([Lmiui/maml/data/Expression;)V

    return-object v0

    :cond_6
    const-string v11, "BackEaseInOut"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    new-instance v0, Lmiui/maml/animation/interpolater/BackEaseInOutInterpolater;

    invoke-direct {v0, v2}, Lmiui/maml/animation/interpolater/BackEaseInOutInterpolater;-><init>([Lmiui/maml/data/Expression;)V

    return-object v0

    :cond_7
    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    if-eqz v4, :cond_8

    new-instance v0, Lmiui/maml/animation/interpolater/BackEaseInOutInterpolater;

    invoke-direct {v0, v2}, Lmiui/maml/animation/interpolater/BackEaseInOutInterpolater;-><init>([Lmiui/maml/data/Expression;)V

    return-object v0

    :cond_8
    if-eqz v9, :cond_32

    new-instance v0, Lmiui/maml/animation/interpolater/BackEaseInOutInterpolater;

    invoke-direct {v0, v7}, Lmiui/maml/animation/interpolater/BackEaseInOutInterpolater;-><init>(F)V

    return-object v0

    :cond_9
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz v4, :cond_a

    new-instance v0, Lmiui/maml/animation/interpolater/BackEaseInInterpolater;

    invoke-direct {v0, v2}, Lmiui/maml/animation/interpolater/BackEaseInInterpolater;-><init>([Lmiui/maml/data/Expression;)V

    return-object v0

    :cond_a
    if-eqz v9, :cond_32

    new-instance v0, Lmiui/maml/animation/interpolater/BackEaseInInterpolater;

    invoke-direct {v0, v7}, Lmiui/maml/animation/interpolater/BackEaseInInterpolater;-><init>(F)V

    return-object v0

    :cond_b
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz v4, :cond_c

    new-instance v0, Lmiui/maml/animation/interpolater/BackEaseOutInterpolater;

    invoke-direct {v0, v2}, Lmiui/maml/animation/interpolater/BackEaseOutInterpolater;-><init>([Lmiui/maml/data/Expression;)V

    return-object v0

    :cond_c
    if-eqz v9, :cond_32

    new-instance v0, Lmiui/maml/animation/interpolater/BackEaseOutInterpolater;

    invoke-direct {v0, v7}, Lmiui/maml/animation/interpolater/BackEaseOutInterpolater;-><init>(F)V

    return-object v0

    :cond_d
    const-string v0, "BounceEaseIn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lmiui/maml/animation/interpolater/BounceEaseInInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/BounceEaseInInterpolater;-><init>()V

    return-object v0

    :cond_e
    const-string v0, "BounceEaseOut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lmiui/maml/animation/interpolater/BounceEaseOutInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/BounceEaseOutInterpolater;-><init>()V

    return-object v0

    :cond_f
    const-string v0, "BounceEaseInOut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Lmiui/maml/animation/interpolater/BounceEaseInOutInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/BounceEaseInOutInterpolater;-><init>()V

    return-object v0

    :cond_10
    const-string v0, "CircEaseIn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Lmiui/maml/animation/interpolater/CircEaseInInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/CircEaseInInterpolater;-><init>()V

    return-object v0

    :cond_11
    const-string v0, "CircEaseOut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Lmiui/maml/animation/interpolater/CircEaseOutInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/CircEaseOutInterpolater;-><init>()V

    return-object v0

    :cond_12
    const-string v0, "CircEaseInOut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Lmiui/maml/animation/interpolater/CircEaseInOutInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/CircEaseInOutInterpolater;-><init>()V

    return-object v0

    :cond_13
    const-string v0, "CubicEaseIn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Lmiui/maml/animation/interpolater/CubicEaseInInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/CubicEaseInInterpolater;-><init>()V

    return-object v0

    :cond_14
    const-string v0, "CubicEaseOut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    return-object v0

    :cond_15
    const-string v0, "CubicEaseInOut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance v0, Lmiui/maml/animation/interpolater/CubicEaseInOutInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/CubicEaseInOutInterpolater;-><init>()V

    return-object v0

    :cond_16
    const-string v0, "ElasticEaseIn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v0, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;

    invoke-direct {v0, v2}, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;-><init>([Lmiui/maml/data/Expression;)V

    return-object v0

    :cond_17
    const-string v3, "ElasticEaseOut"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_18

    new-instance v0, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;

    invoke-direct {v0, v2}, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;-><init>([Lmiui/maml/data/Expression;)V

    return-object v0

    :cond_18
    const-string v11, "ElasticEaseInOut"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_19

    new-instance v0, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;

    invoke-direct {v0, v2}, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;-><init>([Lmiui/maml/data/Expression;)V

    return-object v0

    :cond_19
    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1b

    if-eqz v4, :cond_1a

    new-instance v0, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;

    invoke-direct {v0, v2}, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;-><init>([Lmiui/maml/data/Expression;)V

    return-object v0

    :cond_1a
    if-eqz v10, :cond_32

    new-instance v0, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;

    invoke-direct {v0, v7, v8}, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;-><init>(FF)V

    return-object v0

    :cond_1b
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    if-eqz v4, :cond_1c

    new-instance v0, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;

    invoke-direct {v0, v2}, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;-><init>([Lmiui/maml/data/Expression;)V

    return-object v0

    :cond_1c
    if-eqz v10, :cond_32

    new-instance v0, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;

    invoke-direct {v0, v7, v8}, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;-><init>(FF)V

    return-object v0

    :cond_1d
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    if-eqz v4, :cond_1e

    new-instance v0, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;

    invoke-direct {v0, v2}, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;-><init>([Lmiui/maml/data/Expression;)V

    return-object v0

    :cond_1e
    if-eqz v10, :cond_32

    new-instance v0, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;

    invoke-direct {v0, v7, v8}, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;-><init>(FF)V

    return-object v0

    :cond_1f
    const-string v0, "ExpoEaseIn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Lmiui/maml/animation/interpolater/ExpoEaseInInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/ExpoEaseInInterpolater;-><init>()V

    return-object v0

    :cond_20
    const-string v0, "ExpoEaseOut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    new-instance v0, Lmiui/maml/animation/interpolater/ExpoEaseOutInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/ExpoEaseOutInterpolater;-><init>()V

    return-object v0

    :cond_21
    const-string v0, "ExpoEaseInOut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Lmiui/maml/animation/interpolater/ExpoEaseInOutInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/ExpoEaseInOutInterpolater;-><init>()V

    return-object v0

    :cond_22
    const-string v0, "QuadEaseIn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    new-instance v0, Lmiui/maml/animation/interpolater/QuadEaseInInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/QuadEaseInInterpolater;-><init>()V

    return-object v0

    :cond_23
    const-string v0, "QuadEaseOut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Lmiui/maml/animation/interpolater/QuadEaseOutInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/QuadEaseOutInterpolater;-><init>()V

    return-object v0

    :cond_24
    const-string v0, "QuadEaseInOut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance v0, Lmiui/maml/animation/interpolater/QuadEaseInOutInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/QuadEaseInOutInterpolater;-><init>()V

    return-object v0

    :cond_25
    const-string v0, "QuartEaseIn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Lmiui/maml/animation/interpolater/QuartEaseInInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/QuartEaseInInterpolater;-><init>()V

    return-object v0

    :cond_26
    const-string v0, "QuartEaseOut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance v0, Lmiui/maml/animation/interpolater/QuartEaseOutInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/QuartEaseOutInterpolater;-><init>()V

    return-object v0

    :cond_27
    const-string v0, "QuartEaseInOut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance v0, Lmiui/maml/animation/interpolater/QuartEaseInOutInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/QuartEaseInOutInterpolater;-><init>()V

    return-object v0

    :cond_28
    const-string v0, "QuintEaseIn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    new-instance v0, Lmiui/maml/animation/interpolater/QuintEaseInInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/QuintEaseInInterpolater;-><init>()V

    return-object v0

    :cond_29
    const-string v0, "QuintEaseOut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    new-instance v0, Lmiui/maml/animation/interpolater/QuintEaseOutInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/QuintEaseOutInterpolater;-><init>()V

    return-object v0

    :cond_2a
    const-string v0, "QuintEaseInOut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Lmiui/maml/animation/interpolater/QuintEaseInOutInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/QuintEaseInOutInterpolater;-><init>()V

    return-object v0

    :cond_2b
    const-string v0, "SineEaseIn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    new-instance v0, Lmiui/maml/animation/interpolater/SineEaseInInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/SineEaseInInterpolater;-><init>()V

    return-object v0

    :cond_2c
    const-string v0, "SineEaseOut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    new-instance v0, Lmiui/maml/animation/interpolater/SineEaseOutInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/SineEaseOutInterpolater;-><init>()V

    return-object v0

    :cond_2d
    const-string v0, "SineEaseInOut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    new-instance v0, Lmiui/maml/animation/interpolater/SineEaseInOutInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/SineEaseInOutInterpolater;-><init>()V

    return-object v0

    :cond_2e
    const-string v0, "Linear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    new-instance v0, Lmiui/maml/animation/interpolater/LinearInterpolater;

    invoke-direct {v0}, Lmiui/maml/animation/interpolater/LinearInterpolater;-><init>()V

    return-object v0

    :cond_2f
    const-string v0, "PhysicBased"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    new-instance v0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;

    invoke-direct {v0, v2}, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;-><init>([Lmiui/maml/data/Expression;)V

    return-object v0

    :cond_30
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    if-eqz v4, :cond_31

    new-instance v0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;

    invoke-direct {v0, v2}, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;-><init>([Lmiui/maml/data/Expression;)V

    return-object v0

    :cond_31
    if-eqz v10, :cond_32

    new-instance v0, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;

    invoke-direct {v0, v7, v8}, Lmiui/maml/animation/interpolater/PhysicBasedInterpolator;-><init>(FF)V

    return-object v0

    :cond_32
    const/4 v3, 0x0

    return-object v3
.end method
