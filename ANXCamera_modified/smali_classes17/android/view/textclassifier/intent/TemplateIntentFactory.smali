.class public final Landroid/view/textclassifier/intent/TemplateIntentFactory;
.super Ljava/lang/Object;
.source "TemplateIntentFactory.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "androidtc"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createIntent(Lcom/google/android/textclassifier/RemoteActionTemplate;)Landroid/content/Intent;
    .locals 7

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/textclassifier/RemoteActionTemplate;->action:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/textclassifier/RemoteActionTemplate;->data:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/textclassifier/RemoteActionTemplate;->data:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/textclassifier/RemoteActionTemplate;->type:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/google/android/textclassifier/RemoteActionTemplate;->type:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/textclassifier/RemoteActionTemplate;->flags:Ljava/lang/Integer;

    const/4 v4, 0x0

    if-nez v3, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/google/android/textclassifier/RemoteActionTemplate;->flags:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_2
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/textclassifier/RemoteActionTemplate;->category:[Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/textclassifier/RemoteActionTemplate;->category:[Ljava/lang/String;

    array-length v5, v3

    :goto_3
    if-ge v4, v5, :cond_4

    aget-object v6, v3, v4

    if-eqz v6, :cond_3

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/google/android/textclassifier/RemoteActionTemplate;->extras:[Lcom/google/android/textclassifier/NamedVariant;

    invoke-static {v3}, Landroid/view/textclassifier/intent/TemplateIntentFactory;->nameVariantsToBundle([Lcom/google/android/textclassifier/NamedVariant;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method private static isValidTemplate(Lcom/google/android/textclassifier/RemoteActionTemplate;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "androidtc"

    if-nez p0, :cond_0

    const-string v2, "Invalid RemoteActionTemplate: is null"

    invoke-static {v1, v2}, Landroid/view/textclassifier/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    iget-object v2, p0, Lcom/google/android/textclassifier/RemoteActionTemplate;->titleWithEntity:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/textclassifier/RemoteActionTemplate;->titleWithoutEntity:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Invalid RemoteActionTemplate: title is null"

    invoke-static {v1, v2}, Landroid/view/textclassifier/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    iget-object v2, p0, Lcom/google/android/textclassifier/RemoteActionTemplate;->description:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Invalid RemoteActionTemplate: description is null"

    invoke-static {v1, v2}, Landroid/view/textclassifier/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    iget-object v2, p0, Lcom/google/android/textclassifier/RemoteActionTemplate;->packageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "Invalid RemoteActionTemplate: package name is set"

    invoke-static {v1, v2}, Landroid/view/textclassifier/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_3
    iget-object v2, p0, Lcom/google/android/textclassifier/RemoteActionTemplate;->action:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "Invalid RemoteActionTemplate: intent action not set"

    invoke-static {v1, v2}, Landroid/view/textclassifier/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public static nameVariantsToBundle([Lcom/google/android/textclassifier/NamedVariant;)Landroid/os/Bundle;
    .locals 7

    if-nez p0, :cond_0

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/google/android/textclassifier/NamedVariant;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported type found in nameVariantsToBundle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/google/android/textclassifier/NamedVariant;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "androidtc"

    invoke-static {v5, v4}, Landroid/view/textclassifier/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    invoke-virtual {v3}, Lcom/google/android/textclassifier/NamedVariant;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/textclassifier/NamedVariant;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {v3}, Lcom/google/android/textclassifier/NamedVariant;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/textclassifier/NamedVariant;->getBool()Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {v3}, Lcom/google/android/textclassifier/NamedVariant;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/textclassifier/NamedVariant;->getDouble()D

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {v3}, Lcom/google/android/textclassifier/NamedVariant;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/textclassifier/NamedVariant;->getFloat()F

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {v3}, Lcom/google/android/textclassifier/NamedVariant;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/textclassifier/NamedVariant;->getLong()J

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {v3}, Lcom/google/android/textclassifier/NamedVariant;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/textclassifier/NamedVariant;->getInt()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    nop

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    nop

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


# virtual methods
.method public create([Lcom/google/android/textclassifier/RemoteActionTemplate;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/textclassifier/RemoteActionTemplate;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/textclassifier/intent/LabeledIntent;",
            ">;"
        }
    .end annotation

    array-length v0, p1

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p1, v3

    invoke-static {v4}, Landroid/view/textclassifier/intent/TemplateIntentFactory;->isValidTemplate(Lcom/google/android/textclassifier/RemoteActionTemplate;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "androidtc"

    const-string v6, "Invalid RemoteActionTemplate skipped."

    invoke-static {v5, v6}, Landroid/view/textclassifier/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    new-instance v5, Landroid/view/textclassifier/intent/LabeledIntent;

    iget-object v8, v4, Lcom/google/android/textclassifier/RemoteActionTemplate;->titleWithoutEntity:Ljava/lang/String;

    iget-object v9, v4, Lcom/google/android/textclassifier/RemoteActionTemplate;->titleWithEntity:Ljava/lang/String;

    iget-object v10, v4, Lcom/google/android/textclassifier/RemoteActionTemplate;->description:Ljava/lang/String;

    iget-object v11, v4, Lcom/google/android/textclassifier/RemoteActionTemplate;->descriptionWithAppName:Ljava/lang/String;

    invoke-static {v4}, Landroid/view/textclassifier/intent/TemplateIntentFactory;->createIntent(Lcom/google/android/textclassifier/RemoteActionTemplate;)Landroid/content/Intent;

    move-result-object v12

    iget-object v6, v4, Lcom/google/android/textclassifier/RemoteActionTemplate;->requestCode:Ljava/lang/Integer;

    if-nez v6, :cond_2

    move v13, v2

    goto :goto_1

    :cond_2
    iget-object v6, v4, Lcom/google/android/textclassifier/RemoteActionTemplate;->requestCode:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v13, v6

    :goto_1
    move-object v7, v5

    invoke-direct/range {v7 .. v13}, Landroid/view/textclassifier/intent/LabeledIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method
