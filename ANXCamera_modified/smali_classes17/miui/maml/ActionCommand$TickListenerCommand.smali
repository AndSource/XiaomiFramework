.class Lmiui/maml/ActionCommand$TickListenerCommand;
.super Lmiui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TickListenerCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "TickListenerCommand"


# instance fields
.field private mCommand:Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;

.field private mFunNameExp:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lmiui/maml/ActionCommand$TargetCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$TickListenerCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "function"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$TickListenerCommand;->mFunNameExp:Lmiui/maml/data/Expression;

    const-string v0, "command"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x1bc62

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    const v2, 0x6a47b29

    if-eq v1, v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string/jumbo v1, "unset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_3

    goto :goto_2

    :cond_3
    sget-object v1, Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;->UNSET:Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;

    iput-object v1, p0, Lmiui/maml/ActionCommand$TickListenerCommand;->mCommand:Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;

    goto :goto_2

    :cond_4
    sget-object v1, Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;->SET:Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;

    iput-object v1, p0, Lmiui/maml/ActionCommand$TickListenerCommand;->mCommand:Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;

    nop

    :goto_2
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 5

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$TickListenerCommand;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v1, v0, Lmiui/maml/elements/AnimatedScreenElement;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, v0

    check-cast v1, Lmiui/maml/elements/AnimatedScreenElement;

    sget-object v2, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$TickListenerCommand$CommandType:[I

    iget-object v3, p0, Lmiui/maml/ActionCommand$TickListenerCommand;->mCommand:Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;

    invoke-virtual {v3}, Lmiui/maml/ActionCommand$TickListenerCommand$CommandType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->unsetOnTickListener()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lmiui/maml/ActionCommand$TickListenerCommand;->mFunNameExp:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$TickListenerCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v3

    invoke-virtual {v3, v2}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v3

    if-eqz v3, :cond_3

    instance-of v4, v3, Lmiui/maml/elements/FunctionElement;

    if-eqz v4, :cond_3

    move-object v4, v3

    check-cast v4, Lmiui/maml/elements/FunctionElement;

    invoke-virtual {v1, v4}, Lmiui/maml/elements/AnimatedScreenElement;->setOnTickListener(Lmiui/maml/elements/FunctionElement;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method
