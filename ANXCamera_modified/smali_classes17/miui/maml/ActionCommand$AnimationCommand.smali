.class Lmiui/maml/ActionCommand$AnimationCommand;
.super Lmiui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ActionCommand$AnimationCommand$CommandType;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "AnimationCommand"


# instance fields
.field private mAllAni:Z

.field private mAniTags:[Ljava/lang/String;

.field private mCommand:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

.field private mPlayParams:[Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lmiui/maml/ActionCommand$TargetCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    const-string v0, "command"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "play"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    sget-object v1, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    iput-object v1, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mCommand:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "pause"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PAUSE:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    iput-object v1, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mCommand:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "resume"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->RESUME:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    iput-object v1, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mCommand:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "play("

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY_WITH_PARAMS:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    iput-object v1, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mCommand:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$AnimationCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    iget-object v1, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    if-eqz v1, :cond_4

    array-length v3, v1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    array-length v1, v1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_4

    const-string v1, "ActionCommand"

    const-string v3, "bad expression format"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-object v1, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->INVALID:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    iput-object v1, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mCommand:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    :cond_4
    :goto_0
    const-string/jumbo v1, "tags"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iput-boolean v2, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mAllAni:Z

    goto :goto_1

    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$AnimationCommand;->mAniTags:[Ljava/lang/String;

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public doPerform()V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/ActionCommand$AnimationCommand;->getTarget()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ScreenElement;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lmiui/maml/ActionCommand$AnimationCommand;->mCommand:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    sget-object v3, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    if-eq v2, v3, :cond_1

    iget-object v2, v0, Lmiui/maml/ActionCommand$AnimationCommand;->mCommand:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    sget-object v3, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY_WITH_PARAMS:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    if-ne v2, v3, :cond_3

    :cond_1
    iget-boolean v2, v0, Lmiui/maml/ActionCommand$AnimationCommand;->mAllAni:Z

    if-nez v2, :cond_2

    iget-object v2, v0, Lmiui/maml/ActionCommand$AnimationCommand;->mAniTags:[Ljava/lang/String;

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, v0, Lmiui/maml/ActionCommand$AnimationCommand;->mAniTags:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/maml/elements/ScreenElement;->setAnim([Ljava/lang/String;)V

    :cond_3
    sget-object v2, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$AnimationCommand$CommandType:[I

    iget-object v3, v0, Lmiui/maml/ActionCommand$AnimationCommand;->mCommand:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-virtual {v3}, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_11

    const/4 v4, 0x2

    if-eq v2, v4, :cond_10

    const/4 v5, 0x3

    if-eq v2, v5, :cond_f

    const/4 v6, 0x4

    if-eq v2, v6, :cond_4

    goto/16 :goto_7

    :cond_4
    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    const/4 v2, 0x0

    const/4 v10, 0x0

    iget-object v11, v0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v12, v11

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    if-lez v12, :cond_6

    aget-object v12, v11, v15

    if-nez v12, :cond_5

    move-wide v11, v13

    goto :goto_0

    :cond_5
    aget-object v11, v11, v15

    invoke-virtual {v11}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v11

    :goto_0
    double-to-long v6, v11

    move-wide v11, v6

    goto :goto_1

    :cond_6
    move-wide v11, v6

    :goto_1
    iget-object v6, v0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v7, v6

    if-le v7, v3, :cond_8

    aget-object v7, v6, v3

    if-nez v7, :cond_7

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    goto :goto_2

    :cond_7
    aget-object v6, v6, v3

    invoke-virtual {v6}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    :goto_2
    double-to-long v6, v6

    move-wide/from16 v16, v6

    goto :goto_3

    :cond_8
    move-wide/from16 v16, v8

    :goto_3
    iget-object v6, v0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v7, v6

    if-le v7, v4, :cond_b

    aget-object v7, v6, v4

    if-nez v7, :cond_a

    :cond_9
    move v4, v15

    goto :goto_4

    :cond_a
    aget-object v4, v6, v4

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    cmpl-double v4, v6, v13

    if-lez v4, :cond_9

    move v4, v3

    :goto_4
    move v2, v4

    move v9, v2

    goto :goto_5

    :cond_b
    move v9, v2

    :goto_5
    iget-object v2, v0, Lmiui/maml/ActionCommand$AnimationCommand;->mPlayParams:[Lmiui/maml/data/Expression;

    array-length v4, v2

    if-le v4, v5, :cond_e

    aget-object v4, v2, v5

    if-nez v4, :cond_d

    :cond_c
    goto :goto_6

    :cond_d
    aget-object v2, v2, v5

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    cmpl-double v2, v4, v13

    if-lez v2, :cond_c

    move v15, v3

    :goto_6
    move v2, v15

    move v10, v2

    :cond_e
    move-object v2, v1

    move-wide v3, v11

    move-wide/from16 v5, v16

    move v7, v9

    move v8, v10

    invoke-virtual/range {v2 .. v8}, Lmiui/maml/elements/ScreenElement;->playAnim(JJZZ)V

    goto :goto_7

    :cond_f
    invoke-virtual {v1}, Lmiui/maml/elements/ScreenElement;->resumeAnim()V

    goto :goto_7

    :cond_10
    invoke-virtual {v1}, Lmiui/maml/elements/ScreenElement;->pauseAnim()V

    goto :goto_7

    :cond_11
    invoke-virtual {v1}, Lmiui/maml/elements/ScreenElement;->playAnim()V

    nop

    :goto_7
    return-void
.end method
