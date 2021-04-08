.class public Lmiui/maml/elements/FolmeConfigScreenElement;
.super Lmiui/maml/elements/ScreenElement;
.source "FolmeConfigScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/FolmeConfigScreenElement$ConfigData;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "FolmeConfig"


# instance fields
.field private mConfigs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/maml/elements/FolmeConfigScreenElement$ConfigData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/FolmeConfigScreenElement;->mConfigs:Ljava/util/ArrayList;

    iget-object v0, p0, Lmiui/maml/elements/FolmeConfigScreenElement;->mConfigs:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lmiui/maml/elements/FolmeConfigScreenElement;->getConfigData(Lorg/w3c/dom/Element;)Lmiui/maml/elements/FolmeConfigScreenElement$ConfigData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Special"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lmiui/maml/elements/FolmeConfigScreenElement;->mConfigs:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lmiui/maml/elements/FolmeConfigScreenElement;->getConfigData(Lorg/w3c/dom/Element;)Lmiui/maml/elements/FolmeConfigScreenElement$ConfigData;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getConfigData(Lorg/w3c/dom/Element;)Lmiui/maml/elements/FolmeConfigScreenElement$ConfigData;
    .locals 3

    new-instance v0, Lmiui/maml/elements/FolmeConfigScreenElement$ConfigData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/maml/elements/FolmeConfigScreenElement$ConfigData;-><init>(Lmiui/maml/elements/FolmeConfigScreenElement;Lmiui/maml/elements/FolmeConfigScreenElement$1;)V

    invoke-virtual {p0}, Lmiui/maml/elements/FolmeConfigScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    const-string v2, "ease"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, v0, Lmiui/maml/elements/FolmeConfigScreenElement$ConfigData;->easeExps:[Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/FolmeConfigScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    const-string v2, "fromSpeed"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, v0, Lmiui/maml/elements/FolmeConfigScreenElement$ConfigData;->fromSpeedExp:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/FolmeConfigScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    const-string v2, "delay"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, v0, Lmiui/maml/elements/FolmeConfigScreenElement$ConfigData;->delayExp:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/FolmeConfigScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    const-string/jumbo v2, "onBeginCall"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, v0, Lmiui/maml/elements/FolmeConfigScreenElement$ConfigData;->onBeginCallbackExps:[Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/FolmeConfigScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    const-string/jumbo v2, "onComplete"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, v0, Lmiui/maml/elements/FolmeConfigScreenElement$ConfigData;->onCompleteCallbackExps:[Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/FolmeConfigScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    const-string/jumbo v2, "onUpdate"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, v0, Lmiui/maml/elements/FolmeConfigScreenElement$ConfigData;->onUpdateCallbackExps:[Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/FolmeConfigScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    const-string/jumbo v2, "property"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, v0, Lmiui/maml/elements/FolmeConfigScreenElement$ConfigData;->propertyExps:[Lmiui/maml/data/Expression;

    return-object v0
.end method

.method private getEaseFromExpressions([Lmiui/maml/data/Expression;)Lmiui/animation/utils/EaseManager$EaseStyle;
    .locals 7

    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    const/4 v0, 0x0

    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-int v0, v0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [F

    array-length v2, p1

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    if-eqz v4, :cond_0

    add-int/lit8 v4, v3, -0x1

    aget-object v5, p1, v3

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v1, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x0

    aput v5, v1, v4

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Lmiui/animation/utils/EaseManager;->getStyle(I[F)Lmiui/animation/utils/EaseManager$EaseStyle;

    move-result-object v3

    return-object v3

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private getNamesFromExpressions([Lmiui/maml/data/Expression;Landroid/util/ArraySet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lmiui/maml/data/Expression;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/util/ArraySet;->clear()V

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public getConfig()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmiui/maml/folme/FolmeConfigValue;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lmiui/maml/elements/FolmeConfigScreenElement;->mConfigs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    new-instance v3, Lmiui/maml/folme/FolmeConfigValue;

    invoke-direct {v3}, Lmiui/maml/folme/FolmeConfigValue;-><init>()V

    iget-object v4, p0, Lmiui/maml/elements/FolmeConfigScreenElement;->mConfigs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/FolmeConfigScreenElement$ConfigData;

    iget-object v5, v4, Lmiui/maml/elements/FolmeConfigScreenElement$ConfigData;->delayExp:Lmiui/maml/data/Expression;

    if-eqz v5, :cond_0

    iget-object v5, v4, Lmiui/maml/elements/FolmeConfigScreenElement$ConfigData;->delayExp:Lmiui/maml/data/Expression;

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    double-to-long v5, v5

    iput-wide v5, v3, Lmiui/maml/folme/FolmeConfigValue;->delay:J

    :cond_0
    iget-object v5, v4, Lmiui/maml/elements/FolmeConfigScreenElement$ConfigData;->fromSpeedExp:Lmiui/maml/data/Expression;

    if-eqz v5, :cond_1

    iget-object v5, v4, Lmiui/maml/elements/FolmeConfigScreenElement$ConfigData;->fromSpeedExp:Lmiui/maml/data/Expression;

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    double-to-long v5, v5

    long-to-float v5, v5

    iput v5, v3, Lmiui/maml/folme/FolmeConfigValue;->fromSpeed:F

    const/4 v5, 0x1

    iput-boolean v5, v3, Lmiui/maml/folme/FolmeConfigValue;->hasFromSpeed:Z

    :cond_1
    iget-object v5, v4, Lmiui/maml/elements/FolmeConfigScreenElement$ConfigData;->easeExps:[Lmiui/maml/data/Expression;

    invoke-direct {p0, v5}, Lmiui/maml/elements/FolmeConfigScreenElement;->getEaseFromExpressions([Lmiui/maml/data/Expression;)Lmiui/animation/utils/EaseManager$EaseStyle;

    move-result-object v5

    iput-object v5, v3, Lmiui/maml/folme/FolmeConfigValue;->ease:Lmiui/animation/utils/EaseManager$EaseStyle;

    iget-object v5, v4, Lmiui/maml/elements/FolmeConfigScreenElement$ConfigData;->propertyExps:[Lmiui/maml/data/Expression;

    iget-object v6, v3, Lmiui/maml/folme/FolmeConfigValue;->relatedProperty:Landroid/util/ArraySet;

    invoke-direct {p0, v5, v6}, Lmiui/maml/elements/FolmeConfigScreenElement;->getNamesFromExpressions([Lmiui/maml/data/Expression;Landroid/util/ArraySet;)V

    iget-object v5, v4, Lmiui/maml/elements/FolmeConfigScreenElement$ConfigData;->onBeginCallbackExps:[Lmiui/maml/data/Expression;

    iget-object v6, v3, Lmiui/maml/folme/FolmeConfigValue;->onBeginCallback:Landroid/util/ArraySet;

    invoke-direct {p0, v5, v6}, Lmiui/maml/elements/FolmeConfigScreenElement;->getNamesFromExpressions([Lmiui/maml/data/Expression;Landroid/util/ArraySet;)V

    iget-object v5, v4, Lmiui/maml/elements/FolmeConfigScreenElement$ConfigData;->onCompleteCallbackExps:[Lmiui/maml/data/Expression;

    iget-object v6, v3, Lmiui/maml/folme/FolmeConfigValue;->onCompleteCallback:Landroid/util/ArraySet;

    invoke-direct {p0, v5, v6}, Lmiui/maml/elements/FolmeConfigScreenElement;->getNamesFromExpressions([Lmiui/maml/data/Expression;Landroid/util/ArraySet;)V

    iget-object v5, v4, Lmiui/maml/elements/FolmeConfigScreenElement$ConfigData;->onUpdateCallbackExps:[Lmiui/maml/data/Expression;

    iget-object v6, v3, Lmiui/maml/folme/FolmeConfigValue;->onUpdateCallback:Landroid/util/ArraySet;

    invoke-direct {p0, v5, v6}, Lmiui/maml/elements/FolmeConfigScreenElement;->getNamesFromExpressions([Lmiui/maml/data/Expression;Landroid/util/ArraySet;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public tick(J)V
    .locals 0

    return-void
.end method
