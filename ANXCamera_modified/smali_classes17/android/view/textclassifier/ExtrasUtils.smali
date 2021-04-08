.class public final Landroid/view/textclassifier/ExtrasUtils;
.super Ljava/lang/Object;
.source "ExtrasUtils.java"


# static fields
.field private static final ACTIONS_INTENTS:Ljava/lang/String; = "actions-intents"

.field private static final ACTION_INTENT:Ljava/lang/String; = "action-intent"

.field private static final ENTITIES:Ljava/lang/String; = "entities"

.field private static final ENTITIES_EXTRAS:Ljava/lang/String; = "entities-extras"

.field private static final ENTITY_TYPE:Ljava/lang/String; = "entity-type"

.field private static final FOREIGN_LANGUAGE:Ljava/lang/String; = "foreign-language"

.field private static final IS_SERIALIZED_ENTITY_DATA_ENABLED:Ljava/lang/String; = "is-serialized-entity-data-enabled"

.field private static final MODEL_NAME:Ljava/lang/String; = "model-name"

.field private static final MODEL_VERSION:Ljava/lang/String; = "model-version"

.field private static final SCORE:Ljava/lang/String; = "score"

.field private static final SERIALIZED_ENTITIES_DATA:Ljava/lang/String; = "serialized-entities-data"

.field private static final TEXT_LANGUAGES:Ljava/lang/String; = "text-languages"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createForeignLanguageExtra(Ljava/lang/String;FI)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "entity-type"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "score"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v1, "model-version"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "langId_v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "model-name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static findAction(Landroid/view/textclassifier/TextClassification;Ljava/lang/String;)Landroid/app/RemoteAction;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Landroid/view/textclassifier/ExtrasUtils;->getActionsIntents(Landroid/view/textclassifier/TextClassification;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/RemoteAction;

    return-object v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static findTranslateAction(Landroid/view/textclassifier/TextClassification;)Landroid/app/RemoteAction;
    .locals 1

    const-string v0, "android.intent.action.TRANSLATE"

    invoke-static {p0, v0}, Landroid/view/textclassifier/ExtrasUtils;->findAction(Landroid/view/textclassifier/TextClassification;Ljava/lang/String;)Landroid/app/RemoteAction;

    move-result-object v0

    return-object v0
.end method

.method public static getActionIntent(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1

    const-string v0, "action-intent"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public static getActionsIntents(Landroid/view/textclassifier/TextClassification;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/textclassifier/TextClassification;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassification;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "actions-intents"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getCopyText(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    const-string v0, "entities-extras"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getEntities(Landroid/os/Bundle;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const-string v0, "entities"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getEntityType(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "entity-type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getForeignLanguageExtra(Landroid/view/textclassifier/TextClassification;)Landroid/os/Bundle;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassification;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "foreign-language"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static getModelName(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string/jumbo v0, "model-name"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getScore(Landroid/os/Bundle;)F
    .locals 3

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    if-nez p0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v2, "score"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public static getSerializedEntityData(Landroid/os/Bundle;)[B
    .locals 1

    const-string/jumbo v0, "serialized-entities-data"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getTopLanguage(Landroid/content/Intent;)Landroid/icu/util/ULocale;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "android.view.textclassifier.extra.FROM_TEXT_CLASSIFIER"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const-string/jumbo v2, "text-languages"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v0

    :cond_2
    const-string v3, "entity-type"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "score"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v4

    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    array-length v5, v3

    if-eqz v5, :cond_6

    array-length v5, v3

    array-length v6, v4

    if-eq v5, v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    const/4 v5, 0x1

    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_5

    aget v6, v4, v0

    aget v7, v4, v5

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    move v0, v5

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    aget-object v5, v3, v0

    invoke-static {v5}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v5

    return-object v5

    :cond_6
    :goto_1
    return-object v0
.end method

.method public static isSerializedEntityDataEnabled(Landroid/view/textclassifier/TextLinks$Request;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/textclassifier/TextLinks$Request;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is-serialized-entity-data-enabled"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putActionIntent(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "action-intent"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method static putActionsIntents(Landroid/os/Bundle;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "actions-intents"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static putEntities(Landroid/os/Bundle;[Lcom/google/android/textclassifier/AnnotatorModel$ClassificationResult;)V
    .locals 7

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3}, Lcom/google/android/textclassifier/AnnotatorModel$ClassificationResult;->getCollection()Ljava/lang/String;

    move-result-object v5

    const-string v6, "entity-type"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    nop

    invoke-virtual {v3}, Lcom/google/android/textclassifier/AnnotatorModel$ClassificationResult;->getSerializedEntityData()[B

    move-result-object v5

    const-string/jumbo v6, "serialized-entities-data"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "entities"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_3
    return-void
.end method

.method public static putEntitiesExtras(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "entities-extras"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method static putForeignLanguageExtra(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "foreign-language"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public static putIsSerializedEntityDataEnabled(Landroid/os/Bundle;Z)V
    .locals 1

    const-string v0, "is-serialized-entity-data-enabled"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static putSerializedEntityData(Landroid/os/Bundle;[B)V
    .locals 1

    const-string/jumbo v0, "serialized-entities-data"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method public static putTextLanguagesExtra(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "text-languages"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static putTopLanguageScores(Landroid/os/Bundle;Landroid/view/textclassifier/EntityConfidence;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/textclassifier/EntityConfidence;->getEntities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/textclassifier/EntityConfidence;->getEntities()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    array-length v2, v1

    new-array v2, v2, [F

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {p1, v4}, Landroid/view/textclassifier/EntityConfidence;->getConfidenceScore(Ljava/lang/String;)F

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "entity-type"

    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v3, "score"

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    return-void
.end method
