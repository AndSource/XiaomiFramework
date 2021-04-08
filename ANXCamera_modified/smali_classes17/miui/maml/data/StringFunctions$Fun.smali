.class final enum Lmiui/maml/data/StringFunctions$Fun;
.super Ljava/lang/Enum;
.source "StringFunctions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/StringFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Fun"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/maml/data/StringFunctions$Fun;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum INVALID:Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum STR_CONTAINS:Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum STR_ENDSWITH:Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum STR_INDEXOF:Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum STR_ISEMPTY:Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum STR_LASTINDEXOF:Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum STR_MATCHES:Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum STR_REPLACE:Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum STR_REPLACEALL:Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum STR_REPLACEFIRST:Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum STR_STARTWITH:Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum STR_TOLOWER:Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum STR_TOUPPER:Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum STR_TRIM:Lmiui/maml/data/StringFunctions$Fun;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const/4 v1, 0x0

    const-string v2, "INVALID"

    invoke-direct {v0, v2, v1}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->INVALID:Lmiui/maml/data/StringFunctions$Fun;

    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const/4 v2, 0x1

    const-string v3, "STR_TOLOWER"

    invoke-direct {v0, v3, v2}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->STR_TOLOWER:Lmiui/maml/data/StringFunctions$Fun;

    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const/4 v3, 0x2

    const-string v4, "STR_TOUPPER"

    invoke-direct {v0, v4, v3}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->STR_TOUPPER:Lmiui/maml/data/StringFunctions$Fun;

    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const/4 v4, 0x3

    const-string v5, "STR_TRIM"

    invoke-direct {v0, v5, v4}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->STR_TRIM:Lmiui/maml/data/StringFunctions$Fun;

    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const/4 v5, 0x4

    const-string v6, "STR_REPLACE"

    invoke-direct {v0, v6, v5}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->STR_REPLACE:Lmiui/maml/data/StringFunctions$Fun;

    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const/4 v6, 0x5

    const-string v7, "STR_REPLACEALL"

    invoke-direct {v0, v7, v6}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->STR_REPLACEALL:Lmiui/maml/data/StringFunctions$Fun;

    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const/4 v7, 0x6

    const-string v8, "STR_REPLACEFIRST"

    invoke-direct {v0, v8, v7}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->STR_REPLACEFIRST:Lmiui/maml/data/StringFunctions$Fun;

    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const/4 v8, 0x7

    const-string v9, "STR_CONTAINS"

    invoke-direct {v0, v9, v8}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->STR_CONTAINS:Lmiui/maml/data/StringFunctions$Fun;

    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const/16 v9, 0x8

    const-string v10, "STR_STARTWITH"

    invoke-direct {v0, v10, v9}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->STR_STARTWITH:Lmiui/maml/data/StringFunctions$Fun;

    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const/16 v10, 0x9

    const-string v11, "STR_ENDSWITH"

    invoke-direct {v0, v11, v10}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->STR_ENDSWITH:Lmiui/maml/data/StringFunctions$Fun;

    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const/16 v11, 0xa

    const-string v12, "STR_ISEMPTY"

    invoke-direct {v0, v12, v11}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->STR_ISEMPTY:Lmiui/maml/data/StringFunctions$Fun;

    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const/16 v12, 0xb

    const-string v13, "STR_MATCHES"

    invoke-direct {v0, v13, v12}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->STR_MATCHES:Lmiui/maml/data/StringFunctions$Fun;

    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const/16 v13, 0xc

    const-string v14, "STR_INDEXOF"

    invoke-direct {v0, v14, v13}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->STR_INDEXOF:Lmiui/maml/data/StringFunctions$Fun;

    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const/16 v14, 0xd

    const-string v15, "STR_LASTINDEXOF"

    invoke-direct {v0, v15, v14}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->STR_LASTINDEXOF:Lmiui/maml/data/StringFunctions$Fun;

    const/16 v0, 0xe

    new-array v0, v0, [Lmiui/maml/data/StringFunctions$Fun;

    sget-object v15, Lmiui/maml/data/StringFunctions$Fun;->INVALID:Lmiui/maml/data/StringFunctions$Fun;

    aput-object v15, v0, v1

    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_TOLOWER:Lmiui/maml/data/StringFunctions$Fun;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_TOUPPER:Lmiui/maml/data/StringFunctions$Fun;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_TRIM:Lmiui/maml/data/StringFunctions$Fun;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_REPLACE:Lmiui/maml/data/StringFunctions$Fun;

    aput-object v1, v0, v5

    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_REPLACEALL:Lmiui/maml/data/StringFunctions$Fun;

    aput-object v1, v0, v6

    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_REPLACEFIRST:Lmiui/maml/data/StringFunctions$Fun;

    aput-object v1, v0, v7

    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_CONTAINS:Lmiui/maml/data/StringFunctions$Fun;

    aput-object v1, v0, v8

    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_STARTWITH:Lmiui/maml/data/StringFunctions$Fun;

    aput-object v1, v0, v9

    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_ENDSWITH:Lmiui/maml/data/StringFunctions$Fun;

    aput-object v1, v0, v10

    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_ISEMPTY:Lmiui/maml/data/StringFunctions$Fun;

    aput-object v1, v0, v11

    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_MATCHES:Lmiui/maml/data/StringFunctions$Fun;

    aput-object v1, v0, v12

    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_INDEXOF:Lmiui/maml/data/StringFunctions$Fun;

    aput-object v1, v0, v13

    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_LASTINDEXOF:Lmiui/maml/data/StringFunctions$Fun;

    aput-object v1, v0, v14

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->$VALUES:[Lmiui/maml/data/StringFunctions$Fun;

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

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/data/StringFunctions$Fun;
    .locals 1

    const-class v0, Lmiui/maml/data/StringFunctions$Fun;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/StringFunctions$Fun;

    return-object v0
.end method

.method public static values()[Lmiui/maml/data/StringFunctions$Fun;
    .locals 1

    sget-object v0, Lmiui/maml/data/StringFunctions$Fun;->$VALUES:[Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v0}, [Lmiui/maml/data/StringFunctions$Fun;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/data/StringFunctions$Fun;

    return-object v0
.end method
