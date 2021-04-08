.class final enum Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;
.super Ljava/lang/Enum;
.source "MandatoryStreamCombination.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/params/MandatoryStreamCombination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ReprocessType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

.field public static final enum NONE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

.field public static final enum PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

.field public static final enum YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->NONE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const/4 v2, 0x1

    const-string v3, "PRIVATE"

    invoke-direct {v0, v3, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const/4 v3, 0x2

    const-string v4, "YUV"

    invoke-direct {v0, v4, v3}, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    sget-object v4, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->NONE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    aput-object v4, v0, v1

    sget-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    aput-object v1, v0, v3

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->$VALUES:[Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;
    .locals 1

    const-class v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    return-object v0
.end method

.method public static values()[Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;
    .locals 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->$VALUES:[Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-virtual {v0}, [Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    return-object v0
.end method
