.class final enum Landroid/os/GraphicsEnvironment$OpenGlDriverChoice;
.super Ljava/lang/Enum;
.source "GraphicsEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/GraphicsEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "OpenGlDriverChoice"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/os/GraphicsEnvironment$OpenGlDriverChoice;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/os/GraphicsEnvironment$OpenGlDriverChoice;

.field public static final enum ANGLE:Landroid/os/GraphicsEnvironment$OpenGlDriverChoice;

.field public static final enum DEFAULT:Landroid/os/GraphicsEnvironment$OpenGlDriverChoice;

.field public static final enum NATIVE:Landroid/os/GraphicsEnvironment$OpenGlDriverChoice;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/os/GraphicsEnvironment$OpenGlDriverChoice;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    invoke-direct {v0, v2, v1}, Landroid/os/GraphicsEnvironment$OpenGlDriverChoice;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/GraphicsEnvironment$OpenGlDriverChoice;->DEFAULT:Landroid/os/GraphicsEnvironment$OpenGlDriverChoice;

    new-instance v0, Landroid/os/GraphicsEnvironment$OpenGlDriverChoice;

    const/4 v2, 0x1

    const-string v3, "NATIVE"

    invoke-direct {v0, v3, v2}, Landroid/os/GraphicsEnvironment$OpenGlDriverChoice;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/GraphicsEnvironment$OpenGlDriverChoice;->NATIVE:Landroid/os/GraphicsEnvironment$OpenGlDriverChoice;

    new-instance v0, Landroid/os/GraphicsEnvironment$OpenGlDriverChoice;

    const/4 v3, 0x2

    const-string v4, "ANGLE"

    invoke-direct {v0, v4, v3}, Landroid/os/GraphicsEnvironment$OpenGlDriverChoice;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/GraphicsEnvironment$OpenGlDriverChoice;->ANGLE:Landroid/os/GraphicsEnvironment$OpenGlDriverChoice;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/os/GraphicsEnvironment$OpenGlDriverChoice;

    sget-object v4, Landroid/os/GraphicsEnvironment$OpenGlDriverChoice;->DEFAULT:Landroid/os/GraphicsEnvironment$OpenGlDriverChoice;

    aput-object v4, v0, v1

    sget-object v1, Landroid/os/GraphicsEnvironment$OpenGlDriverChoice;->NATIVE:Landroid/os/GraphicsEnvironment$OpenGlDriverChoice;

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/GraphicsEnvironment$OpenGlDriverChoice;->ANGLE:Landroid/os/GraphicsEnvironment$OpenGlDriverChoice;

    aput-object v1, v0, v3

    sput-object v0, Landroid/os/GraphicsEnvironment$OpenGlDriverChoice;->$VALUES:[Landroid/os/GraphicsEnvironment$OpenGlDriverChoice;

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

.method public static valueOf(Ljava/lang/String;)Landroid/os/GraphicsEnvironment$OpenGlDriverChoice;
    .locals 1

    const-class v0, Landroid/os/GraphicsEnvironment$OpenGlDriverChoice;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/os/GraphicsEnvironment$OpenGlDriverChoice;

    return-object v0
.end method

.method public static values()[Landroid/os/GraphicsEnvironment$OpenGlDriverChoice;
    .locals 1

    sget-object v0, Landroid/os/GraphicsEnvironment$OpenGlDriverChoice;->$VALUES:[Landroid/os/GraphicsEnvironment$OpenGlDriverChoice;

    invoke-virtual {v0}, [Landroid/os/GraphicsEnvironment$OpenGlDriverChoice;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/GraphicsEnvironment$OpenGlDriverChoice;

    return-object v0
.end method
