.class final enum Lmiui/maml/data/BaseFunctions$Fun;
.super Ljava/lang/Enum;
.source "BaseFunctions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/BaseFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Fun"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/maml/data/BaseFunctions$Fun;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum ABS:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum ACOS:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum AND:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum ASIN:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum ATAN:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum CEIL:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum COS:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum COSH:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum DIGIT:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum EQ:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum EQS:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum EVAL:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum FLOOR:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum GE:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum GT:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum HASH:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum IFELSE:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum INT:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum INVALID:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum ISNULL:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum LE:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum LEN:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum LOG:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum LOG10:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum LT:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum MAX:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum MIN:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum NE:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum NOT:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum NUM:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum OR:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum POW:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum PRECISE_EVAL:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum RAND:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum ROUND:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum SIN:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum SINH:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum SQRT:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum SUBSTR:Lmiui/maml/data/BaseFunctions$Fun;

.field public static final enum TAN:Lmiui/maml/data/BaseFunctions$Fun;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const/4 v1, 0x0

    const-string v2, "INVALID"

    invoke-direct {v0, v2, v1}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->INVALID:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const/4 v2, 0x1

    const-string v3, "RAND"

    invoke-direct {v0, v3, v2}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->RAND:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const/4 v3, 0x2

    const-string v4, "SIN"

    invoke-direct {v0, v4, v3}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->SIN:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const/4 v4, 0x3

    const-string v5, "COS"

    invoke-direct {v0, v5, v4}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->COS:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const/4 v5, 0x4

    const-string v6, "TAN"

    invoke-direct {v0, v6, v5}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->TAN:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const/4 v6, 0x5

    const-string v7, "ASIN"

    invoke-direct {v0, v7, v6}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->ASIN:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const/4 v7, 0x6

    const-string v8, "ACOS"

    invoke-direct {v0, v8, v7}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->ACOS:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const/4 v8, 0x7

    const-string v9, "ATAN"

    invoke-direct {v0, v9, v8}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->ATAN:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v9, 0x8

    const-string v10, "SINH"

    invoke-direct {v0, v10, v9}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->SINH:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v10, 0x9

    const-string v11, "COSH"

    invoke-direct {v0, v11, v10}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->COSH:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v11, 0xa

    const-string v12, "SQRT"

    invoke-direct {v0, v12, v11}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->SQRT:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v12, 0xb

    const-string v13, "ABS"

    invoke-direct {v0, v13, v12}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->ABS:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v13, 0xc

    const-string v14, "LEN"

    invoke-direct {v0, v14, v13}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->LEN:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v14, 0xd

    const-string v15, "EVAL"

    invoke-direct {v0, v15, v14}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->EVAL:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v15, 0xe

    const-string v14, "PRECISE_EVAL"

    invoke-direct {v0, v14, v15}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->PRECISE_EVAL:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v14, "ROUND"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->ROUND:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v14, "INT"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->INT:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v14, "NUM"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->NUM:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v14, "MIN"

    const/16 v15, 0x12

    invoke-direct {v0, v14, v15}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->MIN:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v14, "MAX"

    const/16 v15, 0x13

    invoke-direct {v0, v14, v15}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->MAX:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v14, "POW"

    const/16 v15, 0x14

    invoke-direct {v0, v14, v15}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->POW:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v14, "LOG"

    const/16 v15, 0x15

    invoke-direct {v0, v14, v15}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->LOG:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v14, "LOG10"

    const/16 v15, 0x16

    invoke-direct {v0, v14, v15}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->LOG10:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v14, "DIGIT"

    const/16 v15, 0x17

    invoke-direct {v0, v14, v15}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->DIGIT:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v14, "EQ"

    const/16 v15, 0x18

    invoke-direct {v0, v14, v15}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->EQ:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v14, "NE"

    const/16 v15, 0x19

    invoke-direct {v0, v14, v15}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->NE:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v14, "GE"

    const/16 v15, 0x1a

    invoke-direct {v0, v14, v15}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->GE:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v14, "GT"

    const/16 v15, 0x1b

    invoke-direct {v0, v14, v15}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->GT:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v14, "LE"

    const/16 v15, 0x1c

    invoke-direct {v0, v14, v15}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->LE:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v14, "LT"

    const/16 v15, 0x1d

    invoke-direct {v0, v14, v15}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->LT:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v14, "ISNULL"

    const/16 v15, 0x1e

    invoke-direct {v0, v14, v15}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->ISNULL:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v14, "NOT"

    const/16 v15, 0x1f

    invoke-direct {v0, v14, v15}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->NOT:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v14, "IFELSE"

    const/16 v15, 0x20

    invoke-direct {v0, v14, v15}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->IFELSE:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v14, "AND"

    const/16 v15, 0x21

    invoke-direct {v0, v14, v15}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->AND:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v14, "OR"

    const/16 v15, 0x22

    invoke-direct {v0, v14, v15}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->OR:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v14, "EQS"

    const/16 v15, 0x23

    invoke-direct {v0, v14, v15}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->EQS:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v14, "SUBSTR"

    const/16 v15, 0x24

    invoke-direct {v0, v14, v15}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->SUBSTR:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v14, "HASH"

    const/16 v15, 0x25

    invoke-direct {v0, v14, v15}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->HASH:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v14, "FLOOR"

    const/16 v15, 0x26

    invoke-direct {v0, v14, v15}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->FLOOR:Lmiui/maml/data/BaseFunctions$Fun;

    new-instance v0, Lmiui/maml/data/BaseFunctions$Fun;

    const-string v14, "CEIL"

    const/16 v15, 0x27

    invoke-direct {v0, v14, v15}, Lmiui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->CEIL:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v0, 0x28

    new-array v0, v0, [Lmiui/maml/data/BaseFunctions$Fun;

    sget-object v14, Lmiui/maml/data/BaseFunctions$Fun;->INVALID:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v14, v0, v1

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->RAND:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->SIN:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->COS:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->TAN:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v1, v0, v5

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->ASIN:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v1, v0, v6

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->ACOS:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v1, v0, v7

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->ATAN:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v1, v0, v8

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->SINH:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v1, v0, v9

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->COSH:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v1, v0, v10

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->SQRT:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v1, v0, v11

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->ABS:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v1, v0, v12

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->LEN:Lmiui/maml/data/BaseFunctions$Fun;

    aput-object v1, v0, v13

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->EVAL:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->PRECISE_EVAL:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->ROUND:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->INT:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->NUM:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->MIN:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->MAX:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->POW:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->LOG:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->LOG10:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->DIGIT:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->EQ:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->NE:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->GE:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->GT:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->LE:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->LT:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->ISNULL:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->NOT:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->IFELSE:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->AND:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->OR:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->EQS:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->SUBSTR:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->HASH:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->FLOOR:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->CEIL:Lmiui/maml/data/BaseFunctions$Fun;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sput-object v0, Lmiui/maml/data/BaseFunctions$Fun;->$VALUES:[Lmiui/maml/data/BaseFunctions$Fun;

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

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/data/BaseFunctions$Fun;
    .locals 1

    const-class v0, Lmiui/maml/data/BaseFunctions$Fun;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/BaseFunctions$Fun;

    return-object v0
.end method

.method public static values()[Lmiui/maml/data/BaseFunctions$Fun;
    .locals 1

    sget-object v0, Lmiui/maml/data/BaseFunctions$Fun;->$VALUES:[Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v0}, [Lmiui/maml/data/BaseFunctions$Fun;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/data/BaseFunctions$Fun;

    return-object v0
.end method
