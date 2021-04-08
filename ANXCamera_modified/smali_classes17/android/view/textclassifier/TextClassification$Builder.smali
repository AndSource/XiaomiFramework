.class public final Landroid/view/textclassifier/TextClassification$Builder;
.super Ljava/lang/Object;
.source "TextClassification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mActionIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field

.field private final mClassificationResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/textclassifier/AnnotatorModel$ClassificationResult;",
            ">;"
        }
    .end annotation
.end field

.field private mExtras:Landroid/os/Bundle;

.field private mForeignLanguageExtra:Landroid/os/Bundle;

.field private mId:Ljava/lang/String;

.field private mLegacyIcon:Landroid/graphics/drawable/Drawable;

.field private mLegacyIntent:Landroid/content/Intent;

.field private mLegacyLabel:Ljava/lang/String;

.field private mLegacyOnClickListener:Landroid/view/View$OnClickListener;

.field private mText:Ljava/lang/String;

.field private final mTypeScoreMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassification$Builder;->mActions:Ljava/util/List;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassification$Builder;->mTypeScoreMap:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassification$Builder;->mClassificationResults:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassification$Builder;->mActionIntents:Ljava/util/ArrayList;

    return-void
.end method

.method private buildExtras(Landroid/view/textclassifier/EntityConfidence;)Landroid/os/Bundle;
    .locals 6

    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Builder;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iget-object v1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mActionIntents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Landroid/view/textclassifier/-$$Lambda$L_UQMPjXwBN0ch4zL2dD82nf9RI;->INSTANCE:Landroid/view/textclassifier/-$$Lambda$L_UQMPjXwBN0ch4zL2dD82nf9RI;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mActionIntents:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Landroid/view/textclassifier/ExtrasUtils;->putActionsIntents(Landroid/os/Bundle;Ljava/util/ArrayList;)V

    :cond_1
    iget-object v1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mForeignLanguageExtra:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    invoke-static {v0, v1}, Landroid/view/textclassifier/ExtrasUtils;->putForeignLanguageExtra(Landroid/os/Bundle;Landroid/os/Bundle;)V

    :cond_2
    invoke-virtual {p1}, Landroid/view/textclassifier/EntityConfidence;->getEntities()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Landroid/view/textclassifier/TextClassification$Builder;->mClassificationResults:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/textclassifier/AnnotatorModel$ClassificationResult;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/textclassifier/AnnotatorModel$ClassificationResult;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/textclassifier/AnnotatorModel$ClassificationResult;

    invoke-static {v0, v3}, Landroid/view/textclassifier/ExtrasUtils;->putEntities(Landroid/os/Bundle;[Lcom/google/android/textclassifier/AnnotatorModel$ClassificationResult;)V

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_1

    :cond_4
    move-object v3, v0

    :goto_1
    return-object v3
.end method

.method private setEntityType(Ljava/lang/String;FLcom/google/android/textclassifier/AnnotatorModel$ClassificationResult;)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 2

    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Builder;->mTypeScoreMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Builder;->mClassificationResults:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public addAction(Landroid/app/RemoteAction;)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/textclassifier/TextClassification$Builder;->addAction(Landroid/app/RemoteAction;Landroid/content/Intent;)Landroid/view/textclassifier/TextClassification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addAction(Landroid/app/RemoteAction;Landroid/content/Intent;)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Builder;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Builder;->mActionIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroid/view/textclassifier/TextClassification;
    .locals 13

    new-instance v0, Landroid/view/textclassifier/EntityConfidence;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mTypeScoreMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Landroid/view/textclassifier/EntityConfidence;-><init>(Ljava/util/Map;)V

    new-instance v1, Landroid/view/textclassifier/TextClassification;

    iget-object v3, p0, Landroid/view/textclassifier/TextClassification$Builder;->mText:Ljava/lang/String;

    iget-object v4, p0, Landroid/view/textclassifier/TextClassification$Builder;->mLegacyIcon:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/view/textclassifier/TextClassification$Builder;->mLegacyLabel:Ljava/lang/String;

    iget-object v6, p0, Landroid/view/textclassifier/TextClassification$Builder;->mLegacyIntent:Landroid/content/Intent;

    iget-object v7, p0, Landroid/view/textclassifier/TextClassification$Builder;->mLegacyOnClickListener:Landroid/view/View$OnClickListener;

    iget-object v8, p0, Landroid/view/textclassifier/TextClassification$Builder;->mActions:Ljava/util/List;

    iget-object v10, p0, Landroid/view/textclassifier/TextClassification$Builder;->mId:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/view/textclassifier/TextClassification$Builder;->buildExtras(Landroid/view/textclassifier/EntityConfidence;)Landroid/os/Bundle;

    move-result-object v11

    const/4 v12, 0x0

    move-object v2, v1

    move-object v9, v0

    invoke-direct/range {v2 .. v12}, Landroid/view/textclassifier/TextClassification;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/Intent;Landroid/view/View$OnClickListener;Ljava/util/List;Landroid/view/textclassifier/EntityConfidence;Ljava/lang/String;Landroid/os/Bundle;Landroid/view/textclassifier/TextClassification$1;)V

    return-object v1
.end method

.method public setEntityType(Lcom/google/android/textclassifier/AnnotatorModel$ClassificationResult;)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 2

    nop

    invoke-virtual {p1}, Lcom/google/android/textclassifier/AnnotatorModel$ClassificationResult;->getCollection()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/textclassifier/AnnotatorModel$ClassificationResult;->getScore()F

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Landroid/view/textclassifier/TextClassification$Builder;->setEntityType(Ljava/lang/String;FLcom/google/android/textclassifier/AnnotatorModel$ClassificationResult;)Landroid/view/textclassifier/TextClassification$Builder;

    return-object p0
.end method

.method public setEntityType(Ljava/lang/String;F)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/textclassifier/TextClassification$Builder;->setEntityType(Ljava/lang/String;FLcom/google/android/textclassifier/AnnotatorModel$ClassificationResult;)Landroid/view/textclassifier/TextClassification$Builder;

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setForeignLanguageExtra(Landroid/os/Bundle;)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mForeignLanguageExtra:Landroid/os/Bundle;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mLegacyIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mLegacyIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mLegacyLabel:Ljava/lang/String;

    return-object p0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mLegacyOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setText(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mText:Ljava/lang/String;

    return-object p0
.end method
