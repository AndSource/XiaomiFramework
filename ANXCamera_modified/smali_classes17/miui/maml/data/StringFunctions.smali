.class public Lmiui/maml/data/StringFunctions;
.super Lmiui/maml/data/Expression$FunctionImpl;
.source "StringFunctions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/StringFunctions$Fun;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Expression"


# instance fields
.field private final mFun:Lmiui/maml/data/StringFunctions$Fun;


# direct methods
.method private constructor <init>(Lmiui/maml/data/StringFunctions$Fun;I)V
    .locals 0

    invoke-direct {p0, p2}, Lmiui/maml/data/Expression$FunctionImpl;-><init>(I)V

    iput-object p1, p0, Lmiui/maml/data/StringFunctions;->mFun:Lmiui/maml/data/StringFunctions$Fun;

    return-void
.end method

.method public static load()V
    .locals 4

    new-instance v0, Lmiui/maml/data/StringFunctions;

    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_TOLOWER:Lmiui/maml/data/StringFunctions$Fun;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    const-string/jumbo v1, "strToLowerCase"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/StringFunctions;

    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_TOUPPER:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    const-string/jumbo v1, "strToUpperCase"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/StringFunctions;

    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_TRIM:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    const-string/jumbo v1, "strTrim"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/StringFunctions;

    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_REPLACE:Lmiui/maml/data/StringFunctions$Fun;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    const-string/jumbo v1, "strReplace"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/StringFunctions;

    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_REPLACEALL:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    const-string/jumbo v1, "strReplaceAll"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/StringFunctions;

    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_REPLACEFIRST:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    const-string/jumbo v1, "strReplaceFirst"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/StringFunctions;

    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_CONTAINS:Lmiui/maml/data/StringFunctions$Fun;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    const-string/jumbo v1, "strContains"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/StringFunctions;

    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_STARTWITH:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    const-string/jumbo v1, "strStartsWith"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/StringFunctions;

    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_ENDSWITH:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    const-string/jumbo v1, "strEndsWith"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/StringFunctions;

    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_ISEMPTY:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    const-string/jumbo v1, "strIsEmpty"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/StringFunctions;

    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_MATCHES:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    const-string/jumbo v1, "strMatches"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/StringFunctions;

    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_INDEXOF:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    const-string/jumbo v1, "strIndexOf"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    new-instance v0, Lmiui/maml/data/StringFunctions;

    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_LASTINDEXOF:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    const-string/jumbo v1, "strLastIndexOf"

    invoke-static {v1, v0}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    return-void
.end method


# virtual methods
.method public evaluate([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)D
    .locals 10

    sget-object v0, Lmiui/maml/data/StringFunctions$1;->$SwitchMap$miui$maml$data$StringFunctions$Fun:[I

    iget-object v1, p0, Lmiui/maml/data/StringFunctions;->mFun:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/StringFunctions$Fun;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v1, 0x0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lmiui/maml/data/StringFunctions$1;->$SwitchMap$miui$maml$data$StringFunctions$Fun:[I

    iget-object v4, p0, Lmiui/maml/data/StringFunctions;->mFun:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v4}, Lmiui/maml/data/StringFunctions$Fun;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x7

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-eq v3, v4, :cond_6

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmiui/maml/data/StringFunctions$1;->$SwitchMap$miui$maml$data$StringFunctions$Fun:[I

    iget-object v7, p0, Lmiui/maml/data/StringFunctions;->mFun:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v7}, Lmiui/maml/data/StringFunctions$Fun;->ordinal()I

    move-result v7

    aget v4, v4, v7

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    const-string v9, "Expression"

    packed-switch v4, :pswitch_data_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to evalute FunctionExpression, invalid function: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lmiui/maml/data/StringFunctions;->mFun:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v5}, Lmiui/maml/data/StringFunctions$Fun;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lmiui/maml/data/StringFunctions;->evaluateStr([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->stringToDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0

    :pswitch_1
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    int-to-double v7, v1

    :cond_0
    return-wide v7

    :pswitch_2
    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    int-to-double v7, v1

    :cond_1
    return-wide v7

    :pswitch_3
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    :try_start_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_2

    move-wide v1, v5

    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invaid pattern of matches: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_2
    :goto_0
    return-wide v1

    :pswitch_4
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-wide v1, v5

    :cond_3
    return-wide v1

    :pswitch_5
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-wide v1, v5

    :cond_4
    return-wide v1

    :pswitch_6
    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-wide v1, v5

    :cond_5
    return-wide v1

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    move-wide v1, v5

    :cond_8
    return-wide v1

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public evaluateStr([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)Ljava/lang/String;
    .locals 7

    sget-object v0, Lmiui/maml/data/StringFunctions$1;->$SwitchMap$miui$maml$data$StringFunctions$Fun:[I

    iget-object v1, p0, Lmiui/maml/data/StringFunctions;->mFun:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/StringFunctions$Fun;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lmiui/maml/data/StringFunctions;->evaluate([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v2, Lmiui/maml/data/StringFunctions$1;->$SwitchMap$miui$maml$data$StringFunctions$Fun:[I

    iget-object v3, p0, Lmiui/maml/data/StringFunctions;->mFun:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v3}, Lmiui/maml/data/StringFunctions$Fun;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_2

    if-nez v3, :cond_1

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_2
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_3
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    sget-object v4, Lmiui/maml/data/StringFunctions$1;->$SwitchMap$miui$maml$data$StringFunctions$Fun:[I

    iget-object v5, p0, Lmiui/maml/data/StringFunctions;->mFun:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v5}, Lmiui/maml/data/StringFunctions$Fun;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const-string v5, "Expression"

    packed-switch v4, :pswitch_data_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to evaluteStr FunctionExpression, invalid function: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lmiui/maml/data/StringFunctions;->mFun:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v6}, Lmiui/maml/data/StringFunctions$Fun;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :pswitch_4
    :try_start_0
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invaid pattern of replaceFirst:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_5
    :try_start_1
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_1
    move-exception v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invaid pattern of replaceAll: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_6
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x8
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public reset()V
    .locals 0

    return-void
.end method
