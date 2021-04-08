.class public final enum Lmiui/maml/ActionCommand$TargetCommand$TargetType;
.super Ljava/lang/Enum;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand$TargetCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "TargetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/maml/ActionCommand$TargetCommand$TargetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/ActionCommand$TargetCommand$TargetType;

.field public static final enum ANIMATION_ITEM:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

.field public static final enum CONSTRUCTOR:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

.field public static final enum SCREEN_ELEMENT:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

.field public static final enum VARIABLE:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

.field public static final enum VARIABLE_BINDER:Lmiui/maml/ActionCommand$TargetCommand$TargetType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    const/4 v1, 0x0

    const-string v2, "SCREEN_ELEMENT"

    invoke-direct {v0, v2, v1}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->SCREEN_ELEMENT:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    new-instance v0, Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    const/4 v2, 0x1

    const-string v3, "VARIABLE"

    invoke-direct {v0, v3, v2}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->VARIABLE:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    new-instance v0, Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    const/4 v3, 0x2

    const-string v4, "CONSTRUCTOR"

    invoke-direct {v0, v4, v3}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->CONSTRUCTOR:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    new-instance v0, Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    const/4 v4, 0x3

    const-string v5, "ANIMATION_ITEM"

    invoke-direct {v0, v5, v4}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->ANIMATION_ITEM:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    new-instance v0, Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    const/4 v5, 0x4

    const-string v6, "VARIABLE_BINDER"

    invoke-direct {v0, v6, v5}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->VARIABLE_BINDER:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    const/4 v0, 0x5

    new-array v0, v0, [Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    sget-object v6, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->SCREEN_ELEMENT:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    aput-object v6, v0, v1

    sget-object v1, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->VARIABLE:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->CONSTRUCTOR:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->ANIMATION_ITEM:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->VARIABLE_BINDER:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    aput-object v1, v0, v5

    sput-object v0, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->$VALUES:[Lmiui/maml/ActionCommand$TargetCommand$TargetType;

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

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/ActionCommand$TargetCommand$TargetType;
    .locals 1

    const-class v0, Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    return-object v0
.end method

.method public static values()[Lmiui/maml/ActionCommand$TargetCommand$TargetType;
    .locals 1

    sget-object v0, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->$VALUES:[Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v0}, [Lmiui/maml/ActionCommand$TargetCommand$TargetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    return-object v0
.end method
