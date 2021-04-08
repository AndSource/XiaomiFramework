.class final enum Landroid/util/JsonScope;
.super Ljava/lang/Enum;
.source "JsonScope.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/util/JsonScope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/util/JsonScope;

.field public static final enum CLOSED:Landroid/util/JsonScope;

.field public static final enum DANGLING_NAME:Landroid/util/JsonScope;

.field public static final enum EMPTY_ARRAY:Landroid/util/JsonScope;

.field public static final enum EMPTY_DOCUMENT:Landroid/util/JsonScope;

.field public static final enum EMPTY_OBJECT:Landroid/util/JsonScope;

.field public static final enum NONEMPTY_ARRAY:Landroid/util/JsonScope;

.field public static final enum NONEMPTY_DOCUMENT:Landroid/util/JsonScope;

.field public static final enum NONEMPTY_OBJECT:Landroid/util/JsonScope;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Landroid/util/JsonScope;

    const/4 v1, 0x0

    const-string v2, "EMPTY_ARRAY"

    invoke-direct {v0, v2, v1}, Landroid/util/JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonScope;->EMPTY_ARRAY:Landroid/util/JsonScope;

    new-instance v0, Landroid/util/JsonScope;

    const/4 v2, 0x1

    const-string v3, "NONEMPTY_ARRAY"

    invoke-direct {v0, v3, v2}, Landroid/util/JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonScope;->NONEMPTY_ARRAY:Landroid/util/JsonScope;

    new-instance v0, Landroid/util/JsonScope;

    const/4 v3, 0x2

    const-string v4, "EMPTY_OBJECT"

    invoke-direct {v0, v4, v3}, Landroid/util/JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonScope;->EMPTY_OBJECT:Landroid/util/JsonScope;

    new-instance v0, Landroid/util/JsonScope;

    const/4 v4, 0x3

    const-string v5, "DANGLING_NAME"

    invoke-direct {v0, v5, v4}, Landroid/util/JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonScope;->DANGLING_NAME:Landroid/util/JsonScope;

    new-instance v0, Landroid/util/JsonScope;

    const/4 v5, 0x4

    const-string v6, "NONEMPTY_OBJECT"

    invoke-direct {v0, v6, v5}, Landroid/util/JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonScope;->NONEMPTY_OBJECT:Landroid/util/JsonScope;

    new-instance v0, Landroid/util/JsonScope;

    const/4 v6, 0x5

    const-string v7, "EMPTY_DOCUMENT"

    invoke-direct {v0, v7, v6}, Landroid/util/JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonScope;->EMPTY_DOCUMENT:Landroid/util/JsonScope;

    new-instance v0, Landroid/util/JsonScope;

    const/4 v7, 0x6

    const-string v8, "NONEMPTY_DOCUMENT"

    invoke-direct {v0, v8, v7}, Landroid/util/JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonScope;->NONEMPTY_DOCUMENT:Landroid/util/JsonScope;

    new-instance v0, Landroid/util/JsonScope;

    const/4 v8, 0x7

    const-string v9, "CLOSED"

    invoke-direct {v0, v9, v8}, Landroid/util/JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonScope;->CLOSED:Landroid/util/JsonScope;

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/util/JsonScope;

    sget-object v9, Landroid/util/JsonScope;->EMPTY_ARRAY:Landroid/util/JsonScope;

    aput-object v9, v0, v1

    sget-object v1, Landroid/util/JsonScope;->NONEMPTY_ARRAY:Landroid/util/JsonScope;

    aput-object v1, v0, v2

    sget-object v1, Landroid/util/JsonScope;->EMPTY_OBJECT:Landroid/util/JsonScope;

    aput-object v1, v0, v3

    sget-object v1, Landroid/util/JsonScope;->DANGLING_NAME:Landroid/util/JsonScope;

    aput-object v1, v0, v4

    sget-object v1, Landroid/util/JsonScope;->NONEMPTY_OBJECT:Landroid/util/JsonScope;

    aput-object v1, v0, v5

    sget-object v1, Landroid/util/JsonScope;->EMPTY_DOCUMENT:Landroid/util/JsonScope;

    aput-object v1, v0, v6

    sget-object v1, Landroid/util/JsonScope;->NONEMPTY_DOCUMENT:Landroid/util/JsonScope;

    aput-object v1, v0, v7

    sget-object v1, Landroid/util/JsonScope;->CLOSED:Landroid/util/JsonScope;

    aput-object v1, v0, v8

    sput-object v0, Landroid/util/JsonScope;->$VALUES:[Landroid/util/JsonScope;

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

.method public static valueOf(Ljava/lang/String;)Landroid/util/JsonScope;
    .locals 1

    const-class v0, Landroid/util/JsonScope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/util/JsonScope;

    return-object v0
.end method

.method public static values()[Landroid/util/JsonScope;
    .locals 1

    sget-object v0, Landroid/util/JsonScope;->$VALUES:[Landroid/util/JsonScope;

    invoke-virtual {v0}, [Landroid/util/JsonScope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/JsonScope;

    return-object v0
.end method
