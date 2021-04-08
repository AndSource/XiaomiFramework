.class public Lmiui/maml/util/IntentInfo;
.super Ljava/lang/Object;
.source "IntentInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/util/IntentInfo$Extra;,
        Lmiui/maml/util/IntentInfo$Type;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TaskVariable"


# instance fields
.field private mClassNameExp:Lmiui/maml/data/Expression;

.field private mExtraList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/maml/util/IntentInfo$Extra;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageNameExp:Lmiui/maml/data/Expression;

.field private mTask:Lmiui/maml/util/Task;

.field private mUri:Ljava/lang/String;

.field private mUriExp:Lmiui/maml/data/Expression;

.field private mVariables:Lmiui/maml/data/Variables;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/util/IntentInfo;->mExtraList:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lmiui/maml/util/Task;->load(Lorg/w3c/dom/Element;)Lmiui/maml/util/Task;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/util/IntentInfo;->mTask:Lmiui/maml/util/Task;

    iput-object p2, p0, Lmiui/maml/util/IntentInfo;->mVariables:Lmiui/maml/data/Variables;

    const-string/jumbo v0, "packageExp"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/util/IntentInfo;->mPackageNameExp:Lmiui/maml/data/Expression;

    const-string v0, "classExp"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/util/IntentInfo;->mClassNameExp:Lmiui/maml/data/Expression;

    const-string/jumbo v0, "uri"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/util/IntentInfo;->mUri:Ljava/lang/String;

    const-string/jumbo v0, "uriExp"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/util/IntentInfo;->mUriExp:Lmiui/maml/data/Expression;

    invoke-direct {p0, p1}, Lmiui/maml/util/IntentInfo;->loadExtras(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method static synthetic access$000(Lmiui/maml/util/IntentInfo;)Lmiui/maml/data/Variables;
    .locals 1

    iget-object v0, p0, Lmiui/maml/util/IntentInfo;->mVariables:Lmiui/maml/data/Variables;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/maml/util/IntentInfo;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lmiui/maml/util/IntentInfo;->mExtraList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private loadExtras(Lorg/w3c/dom/Element;)V
    .locals 2

    new-instance v0, Lmiui/maml/util/IntentInfo$1;

    invoke-direct {v0, p0}, Lmiui/maml/util/IntentInfo$1;-><init>(Lmiui/maml/util/IntentInfo;)V

    const-string v1, "Extra"

    invoke-static {p1, v1, v0}, Lmiui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/maml/util/IntentInfo;->mTask:Lmiui/maml/util/Task;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lmiui/maml/util/Task;->action:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/maml/util/IntentInfo;->mTask:Lmiui/maml/util/Task;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public set(Lmiui/maml/util/Task;)V
    .locals 0

    iput-object p1, p0, Lmiui/maml/util/IntentInfo;->mTask:Lmiui/maml/util/Task;

    return-void
.end method

.method public update(Landroid/content/Intent;)V
    .locals 13

    iget-object v0, p0, Lmiui/maml/util/IntentInfo;->mTask:Lmiui/maml/util/Task;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lmiui/maml/util/Task;->action:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    iget-object v2, p0, Lmiui/maml/util/IntentInfo;->mTask:Lmiui/maml/util/Task;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lmiui/maml/util/Task;->type:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    iget-object v3, p0, Lmiui/maml/util/IntentInfo;->mTask:Lmiui/maml/util/Task;

    if-eqz v3, :cond_4

    iget-object v3, v3, Lmiui/maml/util/Task;->category:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object v3, v1

    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    iget-object v4, p0, Lmiui/maml/util/IntentInfo;->mTask:Lmiui/maml/util/Task;

    if-eqz v4, :cond_6

    iget-object v4, v4, Lmiui/maml/util/Task;->packageName:Ljava/lang/String;

    goto :goto_3

    :cond_6
    move-object v4, v1

    :goto_3
    iget-object v5, p0, Lmiui/maml/util/IntentInfo;->mPackageNameExp:Lmiui/maml/data/Expression;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v4

    :cond_7
    iget-object v5, p0, Lmiui/maml/util/IntentInfo;->mTask:Lmiui/maml/util/Task;

    if-eqz v5, :cond_8

    iget-object v1, v5, Lmiui/maml/util/Task;->className:Ljava/lang/String;

    :cond_8
    iget-object v5, p0, Lmiui/maml/util/IntentInfo;->mClassNameExp:Lmiui/maml/data/Expression;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    :cond_9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    :cond_a
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_b
    :goto_4
    invoke-static {v4, v1, p1}, Lmiui/maml/util/CustomUtils;->replaceCameraIntentInfoOnF3M(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    iget-object v5, p0, Lmiui/maml/util/IntentInfo;->mUri:Ljava/lang/String;

    iget-object v6, p0, Lmiui/maml/util/IntentInfo;->mUriExp:Lmiui/maml/data/Expression;

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v5

    :cond_c
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_d
    iget-object v6, p0, Lmiui/maml/util/IntentInfo;->mExtraList:Ljava/util/ArrayList;

    if-eqz v6, :cond_10

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/maml/util/IntentInfo$Extra;

    invoke-virtual {v7}, Lmiui/maml/util/IntentInfo$Extra;->isConditionTrue()Z

    move-result v8

    if-eqz v8, :cond_f

    sget-object v8, Lmiui/maml/util/IntentInfo$2;->$SwitchMap$miui$maml$util$IntentInfo$Type:[I

    iget-object v9, v7, Lmiui/maml/util/IntentInfo$Extra;->mType:Lmiui/maml/util/IntentInfo$Type;

    invoke-virtual {v9}, Lmiui/maml/util/IntentInfo$Type;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    goto :goto_7

    :pswitch_0
    invoke-virtual {v7}, Lmiui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lmiui/maml/util/IntentInfo$Extra;->getDouble()D

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-lez v9, :cond_e

    const/4 v9, 0x1

    goto :goto_6

    :cond_e
    const/4 v9, 0x0

    :goto_6
    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_7

    :pswitch_1
    invoke-virtual {v7}, Lmiui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lmiui/maml/util/IntentInfo$Extra;->getDouble()D

    move-result-wide v9

    invoke-virtual {p1, v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    goto :goto_7

    :pswitch_2
    invoke-virtual {v7}, Lmiui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lmiui/maml/util/IntentInfo$Extra;->getDouble()D

    move-result-wide v9

    double-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    goto :goto_7

    :pswitch_3
    invoke-virtual {v7}, Lmiui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lmiui/maml/util/IntentInfo$Extra;->getDouble()D

    move-result-wide v9

    double-to-long v9, v9

    invoke-virtual {p1, v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_7

    :pswitch_4
    invoke-virtual {v7}, Lmiui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lmiui/maml/util/IntentInfo$Extra;->getDouble()D

    move-result-wide v9

    double-to-int v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_7

    :pswitch_5
    invoke-virtual {v7}, Lmiui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lmiui/maml/util/IntentInfo$Extra;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_7

    :cond_f
    invoke-virtual {v7}, Lmiui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :goto_7
    goto :goto_5

    :cond_10
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
