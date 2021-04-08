.class Lmiui/maml/data/Expression$Tokenizer;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Tokenizer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/Expression$Tokenizer$Token;,
        Lmiui/maml/data/Expression$Tokenizer$TokenType;
    }
.end annotation


# static fields
.field private static final BRACKET_MODE_NONE:I = 0x0

.field private static final BRACKET_MODE_ROUND:I = 0x1

.field private static final BRACKET_MODE_SQUARE:I = 0x2


# instance fields
.field private mOpeParser:Lmiui/maml/data/Expression$OpeInfo$Parser;

.field private mPos:I

.field private mString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/maml/data/Expression$OpeInfo$Parser;

    invoke-direct {v0}, Lmiui/maml/data/Expression$OpeInfo$Parser;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/Expression$Tokenizer;->mOpeParser:Lmiui/maml/data/Expression$OpeInfo$Parser;

    iput-object p1, p0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/maml/data/Expression$Tokenizer;->reset()V

    return-void
.end method


# virtual methods
.method public getToken()Lmiui/maml/data/Expression$Tokenizer$Token;
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lmiui/maml/data/Expression$Tokenizer$TokenType;->INVALID:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    iget-object v7, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iget v8, v0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    :goto_0
    const-string v9, "Expression"

    const/4 v10, 0x0

    if-ge v8, v7, :cond_1d

    iget-object v11, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/4 v12, 0x1

    if-nez v3, :cond_15

    const/16 v13, 0x23

    if-eq v11, v13, :cond_10

    const/16 v14, 0x40

    if-ne v11, v14, :cond_0

    move/from16 v16, v2

    goto/16 :goto_a

    :cond_0
    const/4 v9, 0x0

    const/16 v10, 0x27

    if-ne v11, v10, :cond_4

    const/4 v13, 0x0

    add-int/lit8 v14, v8, 0x1

    :goto_1
    if-ge v14, v7, :cond_3

    iget-object v15, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-nez v13, :cond_1

    if-ne v15, v10, :cond_1

    goto :goto_3

    :cond_1
    const/16 v10, 0x5c

    if-ne v15, v10, :cond_2

    move v10, v12

    goto :goto_2

    :cond_2
    move v10, v9

    :goto_2
    move v13, v10

    add-int/lit8 v14, v14, 0x1

    const/16 v10, 0x27

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v9, v14, 0x1

    iput v9, v0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    new-instance v9, Lmiui/maml/data/Expression$Tokenizer$Token;

    sget-object v10, Lmiui/maml/data/Expression$Tokenizer$TokenType;->STR:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    iget-object v12, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    add-int/lit8 v15, v8, 0x1

    invoke-virtual {v12, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const-string v15, "\\\'"

    move/from16 v16, v2

    const-string v2, "\'"

    invoke-virtual {v12, v15, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v10, v2}, Lmiui/maml/data/Expression$Tokenizer$Token;-><init>(Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    return-object v9

    :cond_4
    move/from16 v16, v2

    const/16 v2, 0x28

    if-ne v11, v2, :cond_5

    const/4 v2, 0x1

    move v3, v2

    goto/16 :goto_e

    :cond_5
    const/16 v2, 0x5b

    if-ne v11, v2, :cond_6

    const/4 v2, 0x2

    move v3, v2

    goto/16 :goto_e

    :cond_6
    invoke-static {v11}, Lmiui/maml/data/Expression;->access$300(C)Z

    move-result v2

    if-eqz v2, :cond_a

    add-int/lit8 v2, v8, 0x1

    iget-object v9, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x30

    if-ne v9, v10, :cond_7

    if-ge v2, v7, :cond_7

    iget-object v9, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x78

    if-ne v9, v10, :cond_7

    add-int/lit8 v2, v2, 0x1

    :cond_7
    :goto_4
    if-ge v2, v7, :cond_9

    iget-object v9, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lmiui/maml/data/Expression;->access$400(C)Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    :goto_5
    iput v2, v0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    new-instance v9, Lmiui/maml/data/Expression$Tokenizer$Token;

    sget-object v10, Lmiui/maml/data/Expression$Tokenizer$TokenType;->NUM:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    iget-object v12, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v12, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v10, v12}, Lmiui/maml/data/Expression$Tokenizer$Token;-><init>(Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    return-object v9

    :cond_a
    invoke-static {v11}, Lmiui/maml/data/Expression;->access$500(C)Z

    move-result v2

    if-eqz v2, :cond_d

    add-int/lit8 v2, v8, 0x1

    :goto_6
    if-ge v2, v7, :cond_c

    iget-object v9, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lmiui/maml/data/Expression;->access$600(C)Z

    move-result v9

    if-nez v9, :cond_b

    goto :goto_7

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_c
    :goto_7
    iput v2, v0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    new-instance v9, Lmiui/maml/data/Expression$Tokenizer$Token;

    sget-object v10, Lmiui/maml/data/Expression$Tokenizer$TokenType;->FUN:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    iget-object v12, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v12, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v10, v12}, Lmiui/maml/data/Expression$Tokenizer$Token;-><init>(Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    return-object v9

    :cond_d
    iget-object v2, v0, Lmiui/maml/data/Expression$Tokenizer;->mOpeParser:Lmiui/maml/data/Expression$OpeInfo$Parser;

    invoke-virtual {v2, v11, v12}, Lmiui/maml/data/Expression$OpeInfo$Parser;->accept(CZ)Z

    move-result v2

    if-eqz v2, :cond_16

    add-int/lit8 v2, v8, 0x1

    :goto_8
    if-ge v2, v7, :cond_f

    iget-object v10, v0, Lmiui/maml/data/Expression$Tokenizer;->mOpeParser:Lmiui/maml/data/Expression$OpeInfo$Parser;

    iget-object v13, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v10, v13, v9}, Lmiui/maml/data/Expression$OpeInfo$Parser;->accept(CZ)Z

    move-result v10

    if-nez v10, :cond_e

    goto :goto_9

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_f
    :goto_9
    iget-object v9, v0, Lmiui/maml/data/Expression$Tokenizer;->mOpeParser:Lmiui/maml/data/Expression$OpeInfo$Parser;

    invoke-virtual {v9}, Lmiui/maml/data/Expression$OpeInfo$Parser;->getMatch()Lmiui/maml/data/Expression$Ope;

    move-result-object v9

    sget-object v10, Lmiui/maml/data/Expression$Ope;->INVALID:Lmiui/maml/data/Expression$Ope;

    if-eq v9, v10, :cond_16

    iput v2, v0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    new-instance v10, Lmiui/maml/data/Expression$Tokenizer$Token;

    sget-object v12, Lmiui/maml/data/Expression$Tokenizer$TokenType;->OPE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    iget-object v13, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    iget v14, v0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    invoke-virtual {v13, v8, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v12, v13, v9}, Lmiui/maml/data/Expression$Tokenizer$Token;-><init>(Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;Lmiui/maml/data/Expression$Ope;)V

    return-object v10

    :cond_10
    move/from16 v16, v2

    :goto_a
    add-int/lit8 v2, v8, 0x1

    :goto_b
    if-ge v2, v7, :cond_12

    iget-object v12, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lmiui/maml/data/Expression;->access$200(C)Z

    move-result v12

    if-nez v12, :cond_11

    goto :goto_c

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_12
    :goto_c
    add-int/lit8 v12, v8, 0x1

    if-ne v2, v12, :cond_13

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "invalid variable name:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_13
    iput v2, v0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    new-instance v9, Lmiui/maml/data/Expression$Tokenizer$Token;

    if-ne v11, v13, :cond_14

    sget-object v10, Lmiui/maml/data/Expression$Tokenizer$TokenType;->VAR_NUM:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    goto :goto_d

    :cond_14
    sget-object v10, Lmiui/maml/data/Expression$Tokenizer$TokenType;->VAR_STR:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    :goto_d
    iget-object v12, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    add-int/lit8 v13, v8, 0x1

    invoke-virtual {v12, v13, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v10, v12}, Lmiui/maml/data/Expression$Tokenizer$Token;-><init>(Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    return-object v9

    :cond_15
    move/from16 v16, v2

    :cond_16
    :goto_e
    if-eqz v3, :cond_1b

    if-nez v1, :cond_19

    if-eq v3, v12, :cond_18

    const/4 v2, 0x2

    if-eq v3, v2, :cond_17

    goto :goto_f

    :cond_17
    const/16 v2, 0x5b

    const/16 v4, 0x5d

    sget-object v6, Lmiui/maml/data/Expression$Tokenizer$TokenType;->BRACKET_SQUARE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move v5, v4

    move v4, v2

    goto :goto_f

    :cond_18
    const/16 v2, 0x28

    const/16 v4, 0x29

    sget-object v6, Lmiui/maml/data/Expression$Tokenizer$TokenType;->BRACKET_ROUND:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move v5, v4

    move v4, v2

    :goto_f
    add-int/lit8 v2, v8, 0x1

    goto :goto_10

    :cond_19
    move/from16 v2, v16

    :goto_10
    if-ne v11, v4, :cond_1a

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1a
    if-ne v11, v5, :cond_1c

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_1c

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    new-instance v9, Lmiui/maml/data/Expression$Tokenizer$Token;

    iget-object v10, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v10, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v6, v10}, Lmiui/maml/data/Expression$Tokenizer$Token;-><init>(Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    return-object v9

    :cond_1b
    move/from16 v2, v16

    :cond_1c
    :goto_11
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_1d
    move/from16 v16, v2

    if-eqz v1, :cond_1e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mismatched bracket:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    return-object v10
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    return-void
.end method
