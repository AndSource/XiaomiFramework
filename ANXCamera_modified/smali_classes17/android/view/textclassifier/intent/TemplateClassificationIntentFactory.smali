.class public final Landroid/view/textclassifier/intent/TemplateClassificationIntentFactory;
.super Ljava/lang/Object;
.source "TemplateClassificationIntentFactory.java"

# interfaces
.implements Landroid/view/textclassifier/intent/ClassificationIntentFactory;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "androidtc"


# instance fields
.field private final mFallback:Landroid/view/textclassifier/intent/ClassificationIntentFactory;

.field private final mTemplateIntentFactory:Landroid/view/textclassifier/intent/TemplateIntentFactory;


# direct methods
.method public constructor <init>(Landroid/view/textclassifier/intent/TemplateIntentFactory;Landroid/view/textclassifier/intent/ClassificationIntentFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/intent/TemplateIntentFactory;

    iput-object v0, p0, Landroid/view/textclassifier/intent/TemplateClassificationIntentFactory;->mTemplateIntentFactory:Landroid/view/textclassifier/intent/TemplateIntentFactory;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/intent/ClassificationIntentFactory;

    iput-object v0, p0, Landroid/view/textclassifier/intent/TemplateClassificationIntentFactory;->mFallback:Landroid/view/textclassifier/intent/ClassificationIntentFactory;

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Ljava/lang/String;ZLjava/time/Instant;Lcom/google/android/textclassifier/AnnotatorModel$ClassificationResult;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/time/Instant;",
            "Lcom/google/android/textclassifier/AnnotatorModel$ClassificationResult;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/textclassifier/intent/LabeledIntent;",
            ">;"
        }
    .end annotation

    if-nez p5, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p5}, Lcom/google/android/textclassifier/AnnotatorModel$ClassificationResult;->getRemoteActionTemplates()[Lcom/google/android/textclassifier/RemoteActionTemplate;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "androidtc"

    const-string v2, "RemoteActionTemplate is missing, fallback to LegacyClassificationIntentFactory."

    invoke-static {v1, v2}, Landroid/view/textclassifier/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/view/textclassifier/intent/TemplateClassificationIntentFactory;->mFallback:Landroid/view/textclassifier/intent/ClassificationIntentFactory;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/view/textclassifier/intent/ClassificationIntentFactory;->create(Landroid/content/Context;Ljava/lang/String;ZLjava/time/Instant;Lcom/google/android/textclassifier/AnnotatorModel$ClassificationResult;)Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_1
    iget-object v1, p0, Landroid/view/textclassifier/intent/TemplateClassificationIntentFactory;->mTemplateIntentFactory:Landroid/view/textclassifier/intent/TemplateIntentFactory;

    invoke-virtual {v1, v0}, Landroid/view/textclassifier/intent/TemplateIntentFactory;->create([Lcom/google/android/textclassifier/RemoteActionTemplate;)Ljava/util/List;

    move-result-object v1

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/view/textclassifier/intent/ClassificationIntentFactory;->insertTranslateAction(Ljava/util/List;Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    return-object v1
.end method
