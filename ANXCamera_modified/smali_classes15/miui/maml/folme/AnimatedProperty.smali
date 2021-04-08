.class public abstract Lmiui/maml/folme/AnimatedProperty;
.super Lmiui/animation/property/FloatProperty;
.source "AnimatedProperty.java"

# interfaces
.implements Lmiui/maml/folme/IAnimatedProperty;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/folme/AnimatedProperty$AnimatedColorProperty;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/animation/property/FloatProperty<",
        "Lmiui/maml/elements/AnimatedScreenElement;",
        ">;",
        "Lmiui/maml/folme/IAnimatedProperty<",
        "Lmiui/maml/elements/AnimatedScreenElement;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALPHA:Lmiui/maml/folme/AnimatedProperty;

.field public static final HEIGHT:Lmiui/maml/folme/AnimatedProperty;

.field public static final PIVOT_X:Lmiui/maml/folme/AnimatedProperty;

.field public static final PIVOT_Y:Lmiui/maml/folme/AnimatedProperty;

.field public static final PIVOT_Z:Lmiui/maml/folme/AnimatedProperty;

.field public static final PROPERTY_NAME_ALPHA:Ljava/lang/String; = "alpha"

.field public static final PROPERTY_NAME_H:Ljava/lang/String; = "h"

.field public static final PROPERTY_NAME_PIVOT_X:Ljava/lang/String; = "pivotX"

.field public static final PROPERTY_NAME_PIVOT_Y:Ljava/lang/String; = "pivotY"

.field public static final PROPERTY_NAME_PIVOT_Z:Ljava/lang/String; = "pivotZ"

.field public static final PROPERTY_NAME_ROTATION:Ljava/lang/String; = "rotation"

.field public static final PROPERTY_NAME_ROTATION_X:Ljava/lang/String; = "rotationX"

.field public static final PROPERTY_NAME_ROTATION_Y:Ljava/lang/String; = "rotationY"

.field public static final PROPERTY_NAME_ROTATION_Z:Ljava/lang/String; = "rotationZ"

.field public static final PROPERTY_NAME_SCALE_X:Ljava/lang/String; = "scaleX"

.field public static final PROPERTY_NAME_SCALE_Y:Ljava/lang/String; = "scaleY"

.field public static final PROPERTY_NAME_TINT_COLOR:Ljava/lang/String; = "tintColor"

.field public static final PROPERTY_NAME_W:Ljava/lang/String; = "w"

.field public static final PROPERTY_NAME_X:Ljava/lang/String; = "x"

.field public static final PROPERTY_NAME_Y:Ljava/lang/String; = "y"

.field public static final ROTATION:Lmiui/maml/folme/AnimatedProperty;

.field public static final ROTATION_X:Lmiui/maml/folme/AnimatedProperty;

.field public static final ROTATION_Y:Lmiui/maml/folme/AnimatedProperty;

.field public static final ROTATION_Z:Lmiui/maml/folme/AnimatedProperty;

.field public static final SCALE_X:Lmiui/maml/folme/AnimatedProperty;

.field public static final SCALE_Y:Lmiui/maml/folme/AnimatedProperty;

.field public static final TINT_COLOR:Lmiui/maml/folme/AnimatedProperty$AnimatedColorProperty;

.field public static final WIDTH:Lmiui/maml/folme/AnimatedProperty;

.field public static final X:Lmiui/maml/folme/AnimatedProperty;

.field public static final Y:Lmiui/maml/folme/AnimatedProperty;

.field public static sPropertyNameMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lmiui/animation/property/FloatProperty;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lmiui/maml/folme/AnimatedProperty;->sPropertyNameMap:Landroid/util/ArrayMap;

    new-instance v0, Lmiui/maml/folme/AnimatedProperty$1;

    const-string/jumbo v1, "x"

    invoke-direct {v0, v1}, Lmiui/maml/folme/AnimatedProperty$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/maml/folme/AnimatedProperty;->X:Lmiui/maml/folme/AnimatedProperty;

    new-instance v0, Lmiui/maml/folme/AnimatedProperty$2;

    const-string/jumbo v2, "y"

    invoke-direct {v0, v2}, Lmiui/maml/folme/AnimatedProperty$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/maml/folme/AnimatedProperty;->Y:Lmiui/maml/folme/AnimatedProperty;

    new-instance v0, Lmiui/maml/folme/AnimatedProperty$3;

    const-string/jumbo v3, "scaleX"

    invoke-direct {v0, v3}, Lmiui/maml/folme/AnimatedProperty$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/maml/folme/AnimatedProperty;->SCALE_X:Lmiui/maml/folme/AnimatedProperty;

    new-instance v0, Lmiui/maml/folme/AnimatedProperty$4;

    const-string/jumbo v4, "scaleY"

    invoke-direct {v0, v4}, Lmiui/maml/folme/AnimatedProperty$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/maml/folme/AnimatedProperty;->SCALE_Y:Lmiui/maml/folme/AnimatedProperty;

    new-instance v0, Lmiui/maml/folme/AnimatedProperty$5;

    const-string/jumbo v5, "rotation"

    invoke-direct {v0, v5}, Lmiui/maml/folme/AnimatedProperty$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/maml/folme/AnimatedProperty;->ROTATION:Lmiui/maml/folme/AnimatedProperty;

    new-instance v0, Lmiui/maml/folme/AnimatedProperty$6;

    const-string/jumbo v6, "rotationX"

    invoke-direct {v0, v6}, Lmiui/maml/folme/AnimatedProperty$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/maml/folme/AnimatedProperty;->ROTATION_X:Lmiui/maml/folme/AnimatedProperty;

    new-instance v0, Lmiui/maml/folme/AnimatedProperty$7;

    const-string/jumbo v7, "rotationY"

    invoke-direct {v0, v7}, Lmiui/maml/folme/AnimatedProperty$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/maml/folme/AnimatedProperty;->ROTATION_Y:Lmiui/maml/folme/AnimatedProperty;

    new-instance v0, Lmiui/maml/folme/AnimatedProperty$8;

    const-string/jumbo v8, "rotationZ"

    invoke-direct {v0, v8}, Lmiui/maml/folme/AnimatedProperty$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/maml/folme/AnimatedProperty;->ROTATION_Z:Lmiui/maml/folme/AnimatedProperty;

    new-instance v0, Lmiui/maml/folme/AnimatedProperty$9;

    const-string v9, "h"

    invoke-direct {v0, v9}, Lmiui/maml/folme/AnimatedProperty$9;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/maml/folme/AnimatedProperty;->HEIGHT:Lmiui/maml/folme/AnimatedProperty;

    new-instance v0, Lmiui/maml/folme/AnimatedProperty$10;

    const-string/jumbo v10, "w"

    invoke-direct {v0, v10}, Lmiui/maml/folme/AnimatedProperty$10;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/maml/folme/AnimatedProperty;->WIDTH:Lmiui/maml/folme/AnimatedProperty;

    new-instance v0, Lmiui/maml/folme/AnimatedProperty$11;

    const-string v11, "alpha"

    invoke-direct {v0, v11}, Lmiui/maml/folme/AnimatedProperty$11;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/maml/folme/AnimatedProperty;->ALPHA:Lmiui/maml/folme/AnimatedProperty;

    new-instance v0, Lmiui/maml/folme/AnimatedProperty$12;

    const-string/jumbo v12, "tintColor"

    invoke-direct {v0, v12}, Lmiui/maml/folme/AnimatedProperty$12;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/maml/folme/AnimatedProperty;->TINT_COLOR:Lmiui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    new-instance v0, Lmiui/maml/folme/AnimatedProperty$13;

    const-string/jumbo v13, "pivotX"

    invoke-direct {v0, v13}, Lmiui/maml/folme/AnimatedProperty$13;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/maml/folme/AnimatedProperty;->PIVOT_X:Lmiui/maml/folme/AnimatedProperty;

    new-instance v0, Lmiui/maml/folme/AnimatedProperty$14;

    const-string/jumbo v14, "pivotY"

    invoke-direct {v0, v14}, Lmiui/maml/folme/AnimatedProperty$14;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/maml/folme/AnimatedProperty;->PIVOT_Y:Lmiui/maml/folme/AnimatedProperty;

    new-instance v0, Lmiui/maml/folme/AnimatedProperty$15;

    const-string/jumbo v15, "pivotZ"

    invoke-direct {v0, v15}, Lmiui/maml/folme/AnimatedProperty$15;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/maml/folme/AnimatedProperty;->PIVOT_Z:Lmiui/maml/folme/AnimatedProperty;

    sget-object v0, Lmiui/maml/folme/AnimatedProperty;->sPropertyNameMap:Landroid/util/ArrayMap;

    move-object/from16 v16, v15

    sget-object v15, Lmiui/maml/folme/AnimatedProperty;->X:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedProperty;->sPropertyNameMap:Landroid/util/ArrayMap;

    sget-object v1, Lmiui/maml/folme/AnimatedProperty;->Y:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedProperty;->sPropertyNameMap:Landroid/util/ArrayMap;

    sget-object v1, Lmiui/maml/folme/AnimatedProperty;->SCALE_X:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedProperty;->sPropertyNameMap:Landroid/util/ArrayMap;

    sget-object v1, Lmiui/maml/folme/AnimatedProperty;->SCALE_Y:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedProperty;->sPropertyNameMap:Landroid/util/ArrayMap;

    sget-object v1, Lmiui/maml/folme/AnimatedProperty;->ALPHA:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v11, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedProperty;->sPropertyNameMap:Landroid/util/ArrayMap;

    sget-object v1, Lmiui/maml/folme/AnimatedProperty;->HEIGHT:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v9, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedProperty;->sPropertyNameMap:Landroid/util/ArrayMap;

    sget-object v1, Lmiui/maml/folme/AnimatedProperty;->WIDTH:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v10, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedProperty;->sPropertyNameMap:Landroid/util/ArrayMap;

    sget-object v1, Lmiui/maml/folme/AnimatedProperty;->ROTATION:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedProperty;->sPropertyNameMap:Landroid/util/ArrayMap;

    sget-object v1, Lmiui/maml/folme/AnimatedProperty;->ROTATION_X:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v6, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedProperty;->sPropertyNameMap:Landroid/util/ArrayMap;

    sget-object v1, Lmiui/maml/folme/AnimatedProperty;->ROTATION_Y:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v7, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedProperty;->sPropertyNameMap:Landroid/util/ArrayMap;

    sget-object v1, Lmiui/maml/folme/AnimatedProperty;->ROTATION_Z:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v8, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedProperty;->sPropertyNameMap:Landroid/util/ArrayMap;

    sget-object v1, Lmiui/maml/folme/AnimatedProperty;->TINT_COLOR:Lmiui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    invoke-virtual {v0, v12, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedProperty;->sPropertyNameMap:Landroid/util/ArrayMap;

    sget-object v1, Lmiui/maml/folme/AnimatedProperty;->PIVOT_X:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v13, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedProperty;->sPropertyNameMap:Landroid/util/ArrayMap;

    sget-object v1, Lmiui/maml/folme/AnimatedProperty;->PIVOT_Y:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v14, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedProperty;->sPropertyNameMap:Landroid/util/ArrayMap;

    sget-object v1, Lmiui/maml/folme/AnimatedProperty;->PIVOT_Z:Lmiui/maml/folme/AnimatedProperty;

    move-object/from16 v2, v16

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static getPropertyByName(Ljava/lang/String;)Lmiui/animation/property/FloatProperty;
    .locals 1

    sget-object v0, Lmiui/maml/folme/AnimatedProperty;->sPropertyNameMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/property/FloatProperty;

    return-object v0
.end method
