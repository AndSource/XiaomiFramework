.class final enum Lmiui/maml/util/IntentInfo$Type;
.super Ljava/lang/Enum;
.source "IntentInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/util/IntentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/maml/util/IntentInfo$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/util/IntentInfo$Type;

.field public static final enum BOOLEAN:Lmiui/maml/util/IntentInfo$Type;

.field public static final enum DOUBLE:Lmiui/maml/util/IntentInfo$Type;

.field public static final enum FLOAT:Lmiui/maml/util/IntentInfo$Type;

.field public static final enum INT:Lmiui/maml/util/IntentInfo$Type;

.field public static final enum LONG:Lmiui/maml/util/IntentInfo$Type;

.field public static final enum STRING:Lmiui/maml/util/IntentInfo$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lmiui/maml/util/IntentInfo$Type;

    const/4 v1, 0x0

    const-string v2, "STRING"

    invoke-direct {v0, v2, v1}, Lmiui/maml/util/IntentInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/util/IntentInfo$Type;->STRING:Lmiui/maml/util/IntentInfo$Type;

    new-instance v0, Lmiui/maml/util/IntentInfo$Type;

    const/4 v2, 0x1

    const-string v3, "INT"

    invoke-direct {v0, v3, v2}, Lmiui/maml/util/IntentInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/util/IntentInfo$Type;->INT:Lmiui/maml/util/IntentInfo$Type;

    new-instance v0, Lmiui/maml/util/IntentInfo$Type;

    const/4 v3, 0x2

    const-string v4, "LONG"

    invoke-direct {v0, v4, v3}, Lmiui/maml/util/IntentInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/util/IntentInfo$Type;->LONG:Lmiui/maml/util/IntentInfo$Type;

    new-instance v0, Lmiui/maml/util/IntentInfo$Type;

    const/4 v4, 0x3

    const-string v5, "FLOAT"

    invoke-direct {v0, v5, v4}, Lmiui/maml/util/IntentInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/util/IntentInfo$Type;->FLOAT:Lmiui/maml/util/IntentInfo$Type;

    new-instance v0, Lmiui/maml/util/IntentInfo$Type;

    const/4 v5, 0x4

    const-string v6, "DOUBLE"

    invoke-direct {v0, v6, v5}, Lmiui/maml/util/IntentInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/util/IntentInfo$Type;->DOUBLE:Lmiui/maml/util/IntentInfo$Type;

    new-instance v0, Lmiui/maml/util/IntentInfo$Type;

    const/4 v6, 0x5

    const-string v7, "BOOLEAN"

    invoke-direct {v0, v7, v6}, Lmiui/maml/util/IntentInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/util/IntentInfo$Type;->BOOLEAN:Lmiui/maml/util/IntentInfo$Type;

    const/4 v0, 0x6

    new-array v0, v0, [Lmiui/maml/util/IntentInfo$Type;

    sget-object v7, Lmiui/maml/util/IntentInfo$Type;->STRING:Lmiui/maml/util/IntentInfo$Type;

    aput-object v7, v0, v1

    sget-object v1, Lmiui/maml/util/IntentInfo$Type;->INT:Lmiui/maml/util/IntentInfo$Type;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/util/IntentInfo$Type;->LONG:Lmiui/maml/util/IntentInfo$Type;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/maml/util/IntentInfo$Type;->FLOAT:Lmiui/maml/util/IntentInfo$Type;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/maml/util/IntentInfo$Type;->DOUBLE:Lmiui/maml/util/IntentInfo$Type;

    aput-object v1, v0, v5

    sget-object v1, Lmiui/maml/util/IntentInfo$Type;->BOOLEAN:Lmiui/maml/util/IntentInfo$Type;

    aput-object v1, v0, v6

    sput-object v0, Lmiui/maml/util/IntentInfo$Type;->$VALUES:[Lmiui/maml/util/IntentInfo$Type;

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

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/util/IntentInfo$Type;
    .locals 1

    const-class v0, Lmiui/maml/util/IntentInfo$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/util/IntentInfo$Type;

    return-object v0
.end method

.method public static values()[Lmiui/maml/util/IntentInfo$Type;
    .locals 1

    sget-object v0, Lmiui/maml/util/IntentInfo$Type;->$VALUES:[Lmiui/maml/util/IntentInfo$Type;

    invoke-virtual {v0}, [Lmiui/maml/util/IntentInfo$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/util/IntentInfo$Type;

    return-object v0
.end method
