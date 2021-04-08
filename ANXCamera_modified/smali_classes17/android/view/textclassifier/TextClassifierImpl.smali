.class public final Landroid/view/textclassifier/TextClassifierImpl;
.super Ljava/lang/Object;
.source "TextClassifierImpl.java"

# interfaces
.implements Landroid/view/textclassifier/TextClassifier;


# static fields
.field private static final ACTIONS_FACTORY_MODEL_FILENAME_REGEX:Ljava/lang/String; = "actions_suggestions\\.(.*)\\.model"

.field private static final ANNOTATOR_FACTORY_MODEL_FILENAME_REGEX:Ljava/lang/String; = "textclassifier\\.(.*)\\.model"

.field private static final ANNOTATOR_UPDATED_MODEL_FILE:Ljava/io/File;

.field private static final DEBUG:Z = false

.field private static final FACTORY_MODEL_DIR:Ljava/io/File;

.field private static final LANG_ID_FACTORY_MODEL_FILENAME_REGEX:Ljava/lang/String; = "lang_id.model"

.field private static final LOG_TAG:Ljava/lang/String; = "androidtc"

.field private static final UPDATED_ACTIONS_MODEL:Ljava/io/File;

.field private static final UPDATED_LANG_ID_MODEL_FILE:Ljava/io/File;


# instance fields
.field private mActionModelInUse:Landroid/view/textclassifier/ModelFileManager$ModelFile;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mActionsImpl:Lcom/google/android/textclassifier/ActionsSuggestionsModel;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mActionsModelFileManager:Landroid/view/textclassifier/ModelFileManager;

.field private final mActionsModelParamsSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/textclassifier/ActionsModelParamsSupplier$ActionsModelParams;",
            ">;"
        }
    .end annotation
.end field

.field private mAnnotatorImpl:Lcom/google/android/textclassifier/AnnotatorModel;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mAnnotatorModelFileManager:Landroid/view/textclassifier/ModelFileManager;

.field private mAnnotatorModelInUse:Landroid/view/textclassifier/ModelFileManager$ModelFile;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mClassificationIntentFactory:Landroid/view/textclassifier/intent/ClassificationIntentFactory;

.field private final mContext:Landroid/content/Context;

.field private final mFallback:Landroid/view/textclassifier/TextClassifier;

.field private final mGenerateLinksLogger:Landroid/view/textclassifier/GenerateLinksLogger;

.field private mLangIdImpl:Lcom/google/android/textclassifier/LangIdModel;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLangIdModelFileManager:Landroid/view/textclassifier/ModelFileManager;

.field private mLangIdModelInUse:Landroid/view/textclassifier/ModelFileManager$ModelFile;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mSessionLogger:Landroid/view/textclassifier/SelectionSessionLogger;

.field private final mSettings:Landroid/view/textclassifier/TextClassificationConstants;

.field private final mTemplateIntentFactory:Landroid/view/textclassifier/intent/TemplateIntentFactory;

.field private final mTextClassifierEventTronLogger:Landroid/view/textclassifier/TextClassifierEventTronLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/etc/textclassifier/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/view/textclassifier/TextClassifierImpl;->FACTORY_MODEL_DIR:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/textclassifier/textclassifier.model"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/view/textclassifier/TextClassifierImpl;->ANNOTATOR_UPDATED_MODEL_FILE:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/textclassifier/lang_id.model"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/view/textclassifier/TextClassifierImpl;->UPDATED_LANG_ID_MODEL_FILE:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/textclassifier/actions_suggestions.model"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/view/textclassifier/TextClassifierImpl;->UPDATED_ACTIONS_MODEL:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/textclassifier/TextClassificationConstants;)V
    .locals 1

    sget-object v0, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    invoke-direct {p0, p1, p2, v0}, Landroid/view/textclassifier/TextClassifierImpl;-><init>(Landroid/content/Context;Landroid/view/textclassifier/TextClassificationConstants;Landroid/view/textclassifier/TextClassifier;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/textclassifier/TextClassificationConstants;Landroid/view/textclassifier/TextClassifier;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/view/textclassifier/SelectionSessionLogger;

    invoke-direct {v0}, Landroid/view/textclassifier/SelectionSessionLogger;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSessionLogger:Landroid/view/textclassifier/SelectionSessionLogger;

    new-instance v0, Landroid/view/textclassifier/TextClassifierEventTronLogger;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassifierEventTronLogger;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mTextClassifierEventTronLogger:Landroid/view/textclassifier/TextClassifierEventTronLogger;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassifier;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mFallback:Landroid/view/textclassifier/TextClassifier;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationConstants;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    new-instance v0, Landroid/view/textclassifier/GenerateLinksLogger;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassificationConstants;->getGenerateLinksLogSampleRate()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/view/textclassifier/GenerateLinksLogger;-><init>(I)V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mGenerateLinksLogger:Landroid/view/textclassifier/GenerateLinksLogger;

    new-instance v0, Landroid/view/textclassifier/ModelFileManager;

    new-instance v7, Landroid/view/textclassifier/ModelFileManager$ModelFileSupplierImpl;

    sget-object v2, Landroid/view/textclassifier/TextClassifierImpl;->FACTORY_MODEL_DIR:Ljava/io/File;

    sget-object v4, Landroid/view/textclassifier/TextClassifierImpl;->ANNOTATOR_UPDATED_MODEL_FILE:Ljava/io/File;

    sget-object v5, Landroid/view/textclassifier/-$$Lambda$jJq8RXuVdjYF3lPq-77PEw1NJLM;->INSTANCE:Landroid/view/textclassifier/-$$Lambda$jJq8RXuVdjYF3lPq-77PEw1NJLM;

    sget-object v6, Landroid/view/textclassifier/-$$Lambda$NxwbyZSxofZ4Z5SQhfXmtLQ1nxk;->INSTANCE:Landroid/view/textclassifier/-$$Lambda$NxwbyZSxofZ4Z5SQhfXmtLQ1nxk;

    const-string/jumbo v3, "textclassifier\\.(.*)\\.model"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/view/textclassifier/ModelFileManager$ModelFileSupplierImpl;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/io/File;Ljava/util/function/Function;Ljava/util/function/Function;)V

    invoke-direct {v0, v7}, Landroid/view/textclassifier/ModelFileManager;-><init>(Ljava/util/function/Supplier;)V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mAnnotatorModelFileManager:Landroid/view/textclassifier/ModelFileManager;

    new-instance v0, Landroid/view/textclassifier/ModelFileManager;

    new-instance v7, Landroid/view/textclassifier/ModelFileManager$ModelFileSupplierImpl;

    sget-object v2, Landroid/view/textclassifier/TextClassifierImpl;->FACTORY_MODEL_DIR:Ljava/io/File;

    sget-object v4, Landroid/view/textclassifier/TextClassifierImpl;->UPDATED_LANG_ID_MODEL_FILE:Ljava/io/File;

    sget-object v5, Landroid/view/textclassifier/-$$Lambda$0biFK4yZBmWN1EO2wtnXskzuEcE;->INSTANCE:Landroid/view/textclassifier/-$$Lambda$0biFK4yZBmWN1EO2wtnXskzuEcE;

    sget-object v6, Landroid/view/textclassifier/-$$Lambda$TextClassifierImpl$RRbXefHgcUymI9-P95ArUyMvfbw;->INSTANCE:Landroid/view/textclassifier/-$$Lambda$TextClassifierImpl$RRbXefHgcUymI9-P95ArUyMvfbw;

    const-string v3, "lang_id.model"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/view/textclassifier/ModelFileManager$ModelFileSupplierImpl;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/io/File;Ljava/util/function/Function;Ljava/util/function/Function;)V

    invoke-direct {v0, v7}, Landroid/view/textclassifier/ModelFileManager;-><init>(Ljava/util/function/Supplier;)V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mLangIdModelFileManager:Landroid/view/textclassifier/ModelFileManager;

    new-instance v0, Landroid/view/textclassifier/ModelFileManager;

    new-instance v7, Landroid/view/textclassifier/ModelFileManager$ModelFileSupplierImpl;

    sget-object v2, Landroid/view/textclassifier/TextClassifierImpl;->FACTORY_MODEL_DIR:Ljava/io/File;

    sget-object v4, Landroid/view/textclassifier/TextClassifierImpl;->UPDATED_ACTIONS_MODEL:Ljava/io/File;

    sget-object v5, Landroid/view/textclassifier/-$$Lambda$9N8WImc0VBjy2oxI_Gk5_Pbye_A;->INSTANCE:Landroid/view/textclassifier/-$$Lambda$9N8WImc0VBjy2oxI_Gk5_Pbye_A;

    sget-object v6, Landroid/view/textclassifier/-$$Lambda$XeE_KI7QgMKzF9vYRSoFWAolyuA;->INSTANCE:Landroid/view/textclassifier/-$$Lambda$XeE_KI7QgMKzF9vYRSoFWAolyuA;

    const-string v3, "actions_suggestions\\.(.*)\\.model"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/view/textclassifier/ModelFileManager$ModelFileSupplierImpl;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/io/File;Ljava/util/function/Function;Ljava/util/function/Function;)V

    invoke-direct {v0, v7}, Landroid/view/textclassifier/ModelFileManager;-><init>(Ljava/util/function/Supplier;)V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mActionsModelFileManager:Landroid/view/textclassifier/ModelFileManager;

    new-instance v0, Landroid/view/textclassifier/intent/TemplateIntentFactory;

    invoke-direct {v0}, Landroid/view/textclassifier/intent/TemplateIntentFactory;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mTemplateIntentFactory:Landroid/view/textclassifier/intent/TemplateIntentFactory;

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationConstants;->isTemplateIntentFactoryEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/textclassifier/intent/TemplateClassificationIntentFactory;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mTemplateIntentFactory:Landroid/view/textclassifier/intent/TemplateIntentFactory;

    new-instance v2, Landroid/view/textclassifier/intent/LegacyClassificationIntentFactory;

    invoke-direct {v2}, Landroid/view/textclassifier/intent/LegacyClassificationIntentFactory;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/view/textclassifier/intent/TemplateClassificationIntentFactory;-><init>(Landroid/view/textclassifier/intent/TemplateIntentFactory;Landroid/view/textclassifier/intent/ClassificationIntentFactory;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/textclassifier/intent/LegacyClassificationIntentFactory;

    invoke-direct {v0}, Landroid/view/textclassifier/intent/LegacyClassificationIntentFactory;-><init>()V

    :goto_0
    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mClassificationIntentFactory:Landroid/view/textclassifier/intent/ClassificationIntentFactory;

    new-instance v0, Landroid/view/textclassifier/ActionsModelParamsSupplier;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/view/textclassifier/-$$Lambda$TextClassifierImpl$iSt_Guet-O6Vtdk0MA4z-Z4lzaM;

    invoke-direct {v2, p0}, Landroid/view/textclassifier/-$$Lambda$TextClassifierImpl$iSt_Guet-O6Vtdk0MA4z-Z4lzaM;-><init>(Landroid/view/textclassifier/TextClassifierImpl;)V

    invoke-direct {v0, v1, v2}, Landroid/view/textclassifier/ActionsModelParamsSupplier;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mActionsModelParamsSupplier:Ljava/util/function/Supplier;

    return-void
.end method

.method private static concatenateLocales(Landroid/os/LocaleList;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private createClassificationResult([Lcom/google/android/textclassifier/AnnotatorModel$ClassificationResult;Ljava/lang/String;IILjava/time/Instant;)Landroid/view/textclassifier/TextClassification;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {p2 .. p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    new-instance v5, Landroid/view/textclassifier/TextClassification$Builder;

    invoke-direct {v5}, Landroid/view/textclassifier/TextClassification$Builder;-><init>()V

    invoke-virtual {v5, v11}, Landroid/view/textclassifier/TextClassification$Builder;->setText(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;

    move-result-object v12

    array-length v13, v1

    const/4 v5, 0x0

    if-lez v13, :cond_0

    aget-object v6, v1, v5

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    move-object v14, v6

    :goto_1
    if-ge v7, v13, :cond_2

    aget-object v6, v1, v7

    invoke-virtual {v12, v6}, Landroid/view/textclassifier/TextClassification$Builder;->setEntityType(Lcom/google/android/textclassifier/AnnotatorModel$ClassificationResult;)Landroid/view/textclassifier/TextClassification$Builder;

    aget-object v6, v1, v7

    invoke-virtual {v6}, Lcom/google/android/textclassifier/AnnotatorModel$ClassificationResult;->getScore()F

    move-result v6

    invoke-virtual {v14}, Lcom/google/android/textclassifier/AnnotatorModel$ClassificationResult;->getScore()F

    move-result v8

    cmpl-float v6, v6, v8

    if-lez v6, :cond_1

    aget-object v14, v1, v7

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {v0, v2, v3, v4}, Landroid/view/textclassifier/TextClassifierImpl;->generateLanguageBundles(Ljava/lang/String;II)Landroid/util/Pair;

    move-result-object v15

    iget-object v6, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v10, v6

    check-cast v10, Landroid/os/Bundle;

    iget-object v6, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v9, v6

    check-cast v9, Landroid/os/Bundle;

    invoke-virtual {v12, v9}, Landroid/view/textclassifier/TextClassification$Builder;->setForeignLanguageExtra(Landroid/os/Bundle;)Landroid/view/textclassifier/TextClassification$Builder;

    const/16 v16, 0x1

    iget-object v6, v0, Landroid/view/textclassifier/TextClassifierImpl;->mClassificationIntentFactory:Landroid/view/textclassifier/intent/ClassificationIntentFactory;

    iget-object v7, v0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    if-eqz v9, :cond_3

    const/4 v5, 0x1

    :cond_3
    move v8, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v11

    move-object/from16 v17, v9

    move-object/from16 v9, p5

    move-object v1, v10

    move-object v10, v14

    invoke-interface/range {v5 .. v10}, Landroid/view/textclassifier/intent/ClassificationIntentFactory;->create(Landroid/content/Context;Ljava/lang/String;ZLjava/time/Instant;Lcom/google/android/textclassifier/AnnotatorModel$ClassificationResult;)Ljava/util/List;

    move-result-object v5

    sget-object v6, Landroid/view/textclassifier/-$$Lambda$TextClassifierImpl$naj1VfHYH1Qfut8yLHu8DlsggQE;->INSTANCE:Landroid/view/textclassifier/-$$Lambda$TextClassifierImpl$naj1VfHYH1Qfut8yLHu8DlsggQE;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/textclassifier/intent/LabeledIntent;

    iget-object v9, v0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9, v6, v1}, Landroid/view/textclassifier/intent/LabeledIntent;->resolve(Landroid/content/Context;Landroid/view/textclassifier/intent/LabeledIntent$TitleChooser;Landroid/os/Bundle;)Landroid/view/textclassifier/intent/LabeledIntent$Result;

    move-result-object v9

    if-nez v9, :cond_4

    goto :goto_2

    :cond_4
    iget-object v10, v9, Landroid/view/textclassifier/intent/LabeledIntent$Result;->resolvedIntent:Landroid/content/Intent;

    move-object/from16 v18, v1

    iget-object v1, v9, Landroid/view/textclassifier/intent/LabeledIntent$Result;->remoteAction:Landroid/app/RemoteAction;

    if-eqz v16, :cond_5

    move-object/from16 v19, v5

    invoke-virtual {v1}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    move-object/from16 v20, v6

    iget-object v6, v0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/view/textclassifier/TextClassification$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/textclassifier/TextClassification$Builder;

    invoke-virtual {v1}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/view/textclassifier/TextClassification$Builder;->setLabel(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;

    invoke-virtual {v12, v10}, Landroid/view/textclassifier/TextClassification$Builder;->setIntent(Landroid/content/Intent;)Landroid/view/textclassifier/TextClassification$Builder;

    iget-object v5, v0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    iget v6, v8, Landroid/view/textclassifier/intent/LabeledIntent;->requestCode:I

    invoke-static {v5, v10, v6}, Landroid/view/textclassifier/TextClassification;->createPendingIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-static {v5}, Landroid/view/textclassifier/TextClassification;->createIntentOnClickListener(Landroid/app/PendingIntent;)Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/view/textclassifier/TextClassification$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Landroid/view/textclassifier/TextClassification$Builder;

    const/4 v5, 0x0

    move/from16 v16, v5

    goto :goto_3

    :cond_5
    move-object/from16 v19, v5

    move-object/from16 v20, v6

    :goto_3
    invoke-virtual {v12, v1, v10}, Landroid/view/textclassifier/TextClassification$Builder;->addAction(Landroid/app/RemoteAction;Landroid/content/Intent;)Landroid/view/textclassifier/TextClassification$Builder;

    move-object/from16 v1, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    goto :goto_2

    :cond_6
    move-object/from16 v18, v1

    invoke-direct {v0, v2, v3, v4}, Landroid/view/textclassifier/TextClassifierImpl;->createId(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/view/textclassifier/TextClassification$Builder;->setId(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassification$Builder;->build()Landroid/view/textclassifier/TextClassification;

    move-result-object v1

    return-object v1
.end method

.method private createConversationActionResult(Landroid/view/textclassifier/ConversationActions$Request;[Lcom/google/android/textclassifier/ActionsSuggestionsModel$ActionSuggestion;)Landroid/view/textclassifier/ConversationActions;
    .locals 12

    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassifierImpl;->resolveActionTypesFromRequest(Landroid/view/textclassifier/ConversationActions$Request;)Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, p2, v4

    invoke-virtual {v5}, Lcom/google/android/textclassifier/ActionsSuggestionsModel$ActionSuggestion;->getActionType()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    iget-object v7, p0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    iget-object v8, p0, Landroid/view/textclassifier/TextClassifierImpl;->mTemplateIntentFactory:Landroid/view/textclassifier/intent/TemplateIntentFactory;

    invoke-static {v7, v8, v5}, Landroid/view/textclassifier/ActionsSuggestionsHelper;->createLabeledIntentResult(Landroid/content/Context;Landroid/view/textclassifier/intent/TemplateIntentFactory;Lcom/google/android/textclassifier/ActionsSuggestionsModel$ActionSuggestion;)Landroid/view/textclassifier/intent/LabeledIntent$Result;

    move-result-object v7

    const/4 v8, 0x0

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    if-eqz v7, :cond_1

    iget-object v8, v7, Landroid/view/textclassifier/intent/LabeledIntent$Result;->remoteAction:Landroid/app/RemoteAction;

    iget-object v10, v7, Landroid/view/textclassifier/intent/LabeledIntent$Result;->resolvedIntent:Landroid/content/Intent;

    invoke-static {v9, v10}, Landroid/view/textclassifier/ExtrasUtils;->putActionIntent(Landroid/os/Bundle;Landroid/content/Intent;)V

    :cond_1
    invoke-virtual {v5}, Lcom/google/android/textclassifier/ActionsSuggestionsModel$ActionSuggestion;->getSerializedEntityData()[B

    move-result-object v10

    invoke-static {v9, v10}, Landroid/view/textclassifier/ExtrasUtils;->putSerializedEntityData(Landroid/os/Bundle;[B)V

    nop

    invoke-virtual {v5}, Lcom/google/android/textclassifier/ActionsSuggestionsModel$ActionSuggestion;->getEntityData()[Lcom/google/android/textclassifier/NamedVariant;

    move-result-object v10

    invoke-static {v10}, Landroid/view/textclassifier/intent/TemplateIntentFactory;->nameVariantsToBundle([Lcom/google/android/textclassifier/NamedVariant;)Landroid/os/Bundle;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/view/textclassifier/ExtrasUtils;->putEntitiesExtras(Landroid/os/Bundle;Landroid/os/Bundle;)V

    new-instance v10, Landroid/view/textclassifier/ConversationAction$Builder;

    invoke-direct {v10, v6}, Landroid/view/textclassifier/ConversationAction$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/google/android/textclassifier/ActionsSuggestionsModel$ActionSuggestion;->getScore()F

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/textclassifier/ConversationAction$Builder;->setConfidenceScore(F)Landroid/view/textclassifier/ConversationAction$Builder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/google/android/textclassifier/ActionsSuggestionsModel$ActionSuggestion;->getResponseText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/textclassifier/ConversationAction$Builder;->setTextReply(Ljava/lang/CharSequence;)Landroid/view/textclassifier/ConversationAction$Builder;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/view/textclassifier/ConversationAction$Builder;->setAction(Landroid/app/RemoteAction;)Landroid/view/textclassifier/ConversationAction$Builder;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/view/textclassifier/ConversationAction$Builder;->setExtras(Landroid/os/Bundle;)Landroid/view/textclassifier/ConversationAction$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/textclassifier/ConversationAction$Builder;->build()Landroid/view/textclassifier/ConversationAction;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    nop

    invoke-static {v1}, Landroid/view/textclassifier/ActionsSuggestionsHelper;->removeActionsWithDuplicates(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/textclassifier/ConversationActions$Request;->getMaxSuggestions()I

    move-result v2

    if-ltz v2, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/textclassifier/ConversationActions$Request;->getMaxSuggestions()I

    move-result v4

    if-le v2, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/textclassifier/ConversationActions$Request;->getMaxSuggestions()I

    move-result v2

    invoke-interface {v1, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    :cond_3
    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/view/textclassifier/ConversationActions$Request;->getConversation()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Landroid/view/textclassifier/TextClassifierImpl;->mActionModelInUse:Landroid/view/textclassifier/ModelFileManager$ModelFile;

    invoke-virtual {v4}, Landroid/view/textclassifier/ModelFileManager$ModelFile;->getVersion()I

    move-result v4

    iget-object v5, p0, Landroid/view/textclassifier/TextClassifierImpl;->mActionModelInUse:Landroid/view/textclassifier/ModelFileManager$ModelFile;

    invoke-virtual {v5}, Landroid/view/textclassifier/ModelFileManager$ModelFile;->getSupportedLocales()Ljava/util/List;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Landroid/view/textclassifier/ActionsSuggestionsHelper;->createResultId(Landroid/content/Context;Ljava/util/List;ILjava/util/List;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/view/textclassifier/ConversationActions;

    invoke-direct {v3, v1, v2}, Landroid/view/textclassifier/ConversationActions;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v3
.end method

.method private createId(Ljava/lang/String;II)Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v4, p0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mAnnotatorModelInUse:Landroid/view/textclassifier/ModelFileManager$ModelFile;

    invoke-virtual {v1}, Landroid/view/textclassifier/ModelFileManager$ModelFile;->getVersion()I

    move-result v5

    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mAnnotatorModelInUse:Landroid/view/textclassifier/ModelFileManager$ModelFile;

    invoke-virtual {v1}, Landroid/view/textclassifier/ModelFileManager$ModelFile;->getSupportedLocales()Ljava/util/List;

    move-result-object v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v1 .. v6}, Landroid/view/textclassifier/SelectionSessionLogger;->createId(Ljava/lang/String;IILandroid/content/Context;ILjava/util/List;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private detectLanguageTagsFromText(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationConstants;->isDetectLanguagesFromTextEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassifierImpl;->getLangIdThreshold()F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_5

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    goto :goto_2

    :cond_1
    new-instance v2, Landroid/view/textclassifier/TextLanguage$Request$Builder;

    invoke-direct {v2, p1}, Landroid/view/textclassifier/TextLanguage$Request$Builder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/view/textclassifier/TextLanguage$Request$Builder;->build()Landroid/view/textclassifier/TextLanguage$Request;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/textclassifier/TextClassifierImpl;->detectLanguage(Landroid/view/textclassifier/TextLanguage$Request;)Landroid/view/textclassifier/TextLanguage;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/textclassifier/TextLanguage;->getLocaleHypothesisCount()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_3

    invoke-virtual {v3, v6}, Landroid/view/textclassifier/TextLanguage;->getLocale(I)Landroid/icu/util/ULocale;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/view/textclassifier/TextLanguage;->getConfidenceScore(Landroid/icu/util/ULocale;)F

    move-result v8

    cmpg-float v8, v8, v0

    if-gez v8, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    return-object v1

    :cond_4
    const-string v1, ","

    invoke-static {v1, v5}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_5
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[detectLanguageTagsFromText] unexpected threshold is found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "androidtc"

    invoke-static {v3, v2}, Landroid/view/textclassifier/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private detectLanguages(Ljava/lang/String;)Landroid/view/textclassifier/EntityConfidence;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/view/textclassifier/TextClassifierImpl;->getLangIdImpl()Lcom/google/android/textclassifier/LangIdModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/textclassifier/LangIdModel;->detectLanguages(Ljava/lang/String;)[Lcom/google/android/textclassifier/LangIdModel$LanguageResult;

    move-result-object v1

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    invoke-virtual {v5}, Lcom/google/android/textclassifier/LangIdModel$LanguageResult;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/textclassifier/LangIdModel$LanguageResult;->getScore()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/view/textclassifier/EntityConfidence;

    invoke-direct {v3, v2}, Landroid/view/textclassifier/EntityConfidence;-><init>(Ljava/util/Map;)V

    return-object v3
.end method

.method private detectLanguages(Ljava/lang/String;II)Landroid/view/textclassifier/EntityConfidence;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v1, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    invoke-static {v5}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v2, v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    invoke-static {v5}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    if-gt v1, v2, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    invoke-static {v5}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget-object v5, v0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v5}, Landroid/view/textclassifier/TextClassificationConstants;->getLangIdContextSettings()[F

    move-result-object v5

    aget v6, v5, v4

    float-to-int v6, v6

    aget v7, v5, v3

    const/4 v8, 0x2

    aget v9, v5, v8

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v11, v10, v9

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v4

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v13, v3

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v13, v8

    const/4 v3, 0x3

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v13, v3

    const-string v3, "LangIdContextSettings: minimumTextSize=%d, penalizeRatio=%.2f, subjectTextScoreRatio=%.2f, moreTextScoreRatio=%.2f"

    invoke-static {v12, v3, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "androidtc"

    invoke-static {v4, v3}, Landroid/view/textclassifier/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sub-int v3, v2, v1

    const/4 v4, 0x0

    if-ge v3, v6, :cond_3

    cmpg-float v3, v7, v4

    if-gtz v3, :cond_3

    new-instance v3, Landroid/view/textclassifier/EntityConfidence;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/textclassifier/EntityConfidence;-><init>(Ljava/util/Map;)V

    return-object v3

    :cond_3
    invoke-virtual/range {p1 .. p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/view/textclassifier/TextClassifierImpl;->detectLanguages(Ljava/lang/String;)Landroid/view/textclassifier/EntityConfidence;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v12, v6, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-eq v12, v13, :cond_7

    mul-float v12, v9, v7

    cmpl-float v10, v12, v10

    if-ltz v10, :cond_4

    move-object/from16 v4, p1

    goto :goto_5

    :cond_4
    cmpl-float v4, v11, v4

    if-ltz v4, :cond_5

    move-object/from16 v4, p1

    invoke-static {v4, v1, v2, v6}, Landroid/view/textclassifier/TextClassifier$Utils;->getSubString(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Landroid/view/textclassifier/TextClassifierImpl;->detectLanguages(Ljava/lang/String;)Landroid/view/textclassifier/EntityConfidence;

    move-result-object v10

    goto :goto_3

    :cond_5
    move-object/from16 v4, p1

    new-instance v10, Landroid/view/textclassifier/EntityConfidence;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v12

    invoke-direct {v10, v12}, Landroid/view/textclassifier/EntityConfidence;-><init>(Ljava/util/Map;)V

    :goto_3
    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v8}, Landroid/view/textclassifier/EntityConfidence;->getEntities()Ljava/util/List;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v10}, Landroid/view/textclassifier/EntityConfidence;->getEntities()Ljava/util/List;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v8, v15}, Landroid/view/textclassifier/EntityConfidence;->getConfidenceScore(Ljava/lang/String;)F

    move-result v16

    mul-float v16, v16, v9

    invoke-virtual {v10, v15}, Landroid/view/textclassifier/EntityConfidence;->getConfidenceScore(Ljava/lang/String;)F

    move-result v17

    mul-float v17, v17, v11

    add-float v16, v16, v17

    mul-float v16, v16, v7

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v12, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    goto :goto_4

    :cond_6
    new-instance v0, Landroid/view/textclassifier/EntityConfidence;

    invoke-direct {v0, v12}, Landroid/view/textclassifier/EntityConfidence;-><init>(Ljava/util/Map;)V

    return-object v0

    :cond_7
    move-object/from16 v4, p1

    goto :goto_5

    :cond_8
    move-object/from16 v4, p1

    :goto_5
    return-object v8
.end method

.method private generateLanguageBundles(Ljava/lang/String;II)Landroid/util/Pair;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Landroid/util/Pair<",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const-string v1, "androidtc"

    move-object v2, p0

    iget-object v0, v2, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationConstants;->isTranslateInClassificationEnabled()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassifierImpl;->getLangIdThreshold()F

    move-result v0

    const/4 v4, 0x0

    cmpg-float v4, v0, v4

    if-ltz v4, :cond_6

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-direct/range {p0 .. p3}, Landroid/view/textclassifier/TextClassifierImpl;->detectLanguages(Ljava/lang/String;II)Landroid/view/textclassifier/EntityConfidence;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/textclassifier/EntityConfidence;->getEntities()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v3, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    :cond_2
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-static {v5, v4}, Landroid/view/textclassifier/ExtrasUtils;->putTopLanguageScores(Landroid/os/Bundle;Landroid/view/textclassifier/EntityConfidence;)V

    invoke-virtual {v4}, Landroid/view/textclassifier/EntityConfidence;->getEntities()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/view/textclassifier/EntityConfidence;->getConfidenceScore(Ljava/lang/String;)F

    move-result v8

    cmpg-float v9, v8, v0

    if-gez v9, :cond_3

    invoke-static {v5, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    :cond_3
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "Language detected: <%s:%.2f>"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v6, v11, v7

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v12, 0x1

    aput-object v7, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/view/textclassifier/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/util/Locale;

    invoke-direct {v7, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/LocaleList;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_5

    invoke-virtual {v9, v11}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-static {v5, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_5
    nop

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0}, Landroid/view/textclassifier/TextClassifierImpl;->getLangIdImpl()Lcom/google/android/textclassifier/LangIdModel;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/textclassifier/LangIdModel;->getVersion()I

    move-result v12

    invoke-static {v11, v8, v12}, Landroid/view/textclassifier/ExtrasUtils;->createForeignLanguageExtra(Ljava/lang/String;FI)Landroid/os/Bundle;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    :cond_6
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[detectForeignLanguage] unexpected threshold is found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/view/textclassifier/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    const-string v4, "Error generating language bundles."

    invoke-static {v1, v4, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v3, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private getActionsImpl()Lcom/google/android/textclassifier/ActionsSuggestionsModel;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mActionsModelFileManager:Landroid/view/textclassifier/ModelFileManager;

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/textclassifier/ModelFileManager;->findBestModelFile(Landroid/os/LocaleList;)Landroid/view/textclassifier/ModelFileManager$ModelFile;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    iget-object v3, p0, Landroid/view/textclassifier/TextClassifierImpl;->mActionsImpl:Lcom/google/android/textclassifier/ActionsSuggestionsModel;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/view/textclassifier/TextClassifierImpl;->mActionModelInUse:Landroid/view/textclassifier/ModelFileManager$ModelFile;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    const-string v3, "androidtc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/view/textclassifier/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Landroid/view/textclassifier/ModelFileManager$ModelFile;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10000000

    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_2

    :try_start_1
    const-string v4, "androidtc"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to read the model file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/textclassifier/ModelFileManager$ModelFile;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/view/textclassifier/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    invoke-static {v3}, Landroid/view/textclassifier/TextClassifierImpl;->maybeCloseAndLogError(Landroid/os/ParcelFileDescriptor;)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v2

    :cond_2
    :try_start_3
    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierImpl;->mActionsModelParamsSupplier:Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/ActionsModelParamsSupplier$ActionsModelParams;

    new-instance v4, Lcom/google/android/textclassifier/ActionsSuggestionsModel;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v5

    invoke-virtual {v2, v1}, Landroid/view/textclassifier/ActionsModelParamsSupplier$ActionsModelParams;->getSerializedPreconditions(Landroid/view/textclassifier/ModelFileManager$ModelFile;)[B

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/google/android/textclassifier/ActionsSuggestionsModel;-><init>(I[B)V

    iput-object v4, p0, Landroid/view/textclassifier/TextClassifierImpl;->mActionsImpl:Lcom/google/android/textclassifier/ActionsSuggestionsModel;

    iput-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mActionModelInUse:Landroid/view/textclassifier/ModelFileManager$ModelFile;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v3}, Landroid/view/textclassifier/TextClassifierImpl;->maybeCloseAndLogError(Landroid/os/ParcelFileDescriptor;)V

    nop

    :cond_3
    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierImpl;->mActionsImpl:Lcom/google/android/textclassifier/ActionsSuggestionsModel;

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v3}, Landroid/view/textclassifier/TextClassifierImpl;->maybeCloseAndLogError(Landroid/os/ParcelFileDescriptor;)V

    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private getAnnotatorImpl(Landroid/os/LocaleList;)Lcom/google/android/textclassifier/AnnotatorModel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_2

    :cond_0
    move-object v1, p1

    :goto_0
    move-object p1, v1

    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mAnnotatorModelFileManager:Landroid/view/textclassifier/ModelFileManager;

    invoke-virtual {v1, p1}, Landroid/view/textclassifier/ModelFileManager;->findBestModelFile(Landroid/os/LocaleList;)Landroid/view/textclassifier/ModelFileManager$ModelFile;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierImpl;->mAnnotatorImpl:Lcom/google/android/textclassifier/AnnotatorModel;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierImpl;->mAnnotatorModelInUse:Landroid/view/textclassifier/ModelFileManager$ModelFile;

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    const-string v2, "androidtc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/view/textclassifier/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Landroid/view/textclassifier/ModelFileManager$ModelFile;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    :try_start_1
    new-instance v3, Lcom/google/android/textclassifier/AnnotatorModel;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/google/android/textclassifier/AnnotatorModel;-><init>(I)V

    iput-object v3, p0, Landroid/view/textclassifier/TextClassifierImpl;->mAnnotatorImpl:Lcom/google/android/textclassifier/AnnotatorModel;

    iput-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mAnnotatorModelInUse:Landroid/view/textclassifier/ModelFileManager$ModelFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_2
    invoke-static {v2}, Landroid/view/textclassifier/TextClassifierImpl;->maybeCloseAndLogError(Landroid/os/ParcelFileDescriptor;)V

    throw v3

    :cond_2
    :goto_1
    invoke-static {v2}, Landroid/view/textclassifier/TextClassifierImpl;->maybeCloseAndLogError(Landroid/os/ParcelFileDescriptor;)V

    nop

    :cond_3
    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierImpl;->mAnnotatorImpl:Lcom/google/android/textclassifier/AnnotatorModel;

    monitor-exit v0

    return-object v2

    :cond_4
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No annotator model for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getEntitiesForHints(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "android.text_is_editable"

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.text_is_not_editable"

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    iget-object v3, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v3}, Landroid/view/textclassifier/TextClassificationConstants;->getEntityListDefault()Ljava/util/List;

    move-result-object v3

    return-object v3

    :cond_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v3}, Landroid/view/textclassifier/TextClassificationConstants;->getEntityListEditable()Ljava/util/List;

    move-result-object v3

    return-object v3

    :cond_2
    iget-object v3, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v3}, Landroid/view/textclassifier/TextClassificationConstants;->getEntityListNotEditable()Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method private getLangIdImpl()Lcom/google/android/textclassifier/LangIdModel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mLangIdModelFileManager:Landroid/view/textclassifier/ModelFileManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/textclassifier/ModelFileManager;->findBestModelFile(Landroid/os/LocaleList;)Landroid/view/textclassifier/ModelFileManager$ModelFile;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierImpl;->mLangIdImpl:Lcom/google/android/textclassifier/LangIdModel;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierImpl;->mLangIdModelInUse:Landroid/view/textclassifier/ModelFileManager$ModelFile;

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const-string v2, "androidtc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/view/textclassifier/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Landroid/view/textclassifier/ModelFileManager$ModelFile;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    :try_start_1
    new-instance v3, Lcom/google/android/textclassifier/LangIdModel;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/google/android/textclassifier/LangIdModel;-><init>(I)V

    iput-object v3, p0, Landroid/view/textclassifier/TextClassifierImpl;->mLangIdImpl:Lcom/google/android/textclassifier/LangIdModel;

    iput-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mLangIdModelInUse:Landroid/view/textclassifier/ModelFileManager$ModelFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_2
    invoke-static {v2}, Landroid/view/textclassifier/TextClassifierImpl;->maybeCloseAndLogError(Landroid/os/ParcelFileDescriptor;)V

    throw v3

    :cond_1
    :goto_0
    invoke-static {v2}, Landroid/view/textclassifier/TextClassifierImpl;->maybeCloseAndLogError(Landroid/os/ParcelFileDescriptor;)V

    nop

    :cond_2
    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierImpl;->mLangIdImpl:Lcom/google/android/textclassifier/LangIdModel;

    monitor-exit v0

    return-object v2

    :cond_3
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "No LangID model is found"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private getLangIdThreshold()F
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationConstants;->getLangIdThresholdOverride()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationConstants;->getLangIdThresholdOverride()F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassifierImpl;->getLangIdImpl()Lcom/google/android/textclassifier/LangIdModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/textclassifier/LangIdModel;->getLangIdThreshold()F

    move-result v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/high16 v1, 0x3f000000    # 0.5f

    const-string v2, "androidtc"

    const-string v3, "Using default foreign language threshold: 0.5"

    invoke-static {v2, v3}, Landroid/view/textclassifier/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v2, 0x3f000000    # 0.5f

    return v2
.end method

.method private getResourceLocalesString()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$createClassificationResult$2(Landroid/view/textclassifier/intent/LabeledIntent;Landroid/content/pm/ResolveInfo;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/intent/LabeledIntent;->titleWithoutEntity:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic lambda$ftq-sQqJYwUdrdbbr9jz3p4AWos(Landroid/view/textclassifier/TextClassifierImpl;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassifierImpl;->detectLanguageTagsFromText(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$new$0(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    const-string v0, "*"

    return-object v0
.end method

.method private static maybeCloseAndLogError(Landroid/os/ParcelFileDescriptor;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "androidtc"

    const-string v2, "Error closing file."

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private resolveActionTypesFromRequest(Landroid/view/textclassifier/ConversationActions$Request;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/textclassifier/ConversationActions$Request;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/textclassifier/ConversationActions$Request;->getHints()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "notification"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationConstants;->getNotificationConversationActionTypes()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationConstants;->getInAppConversationActionTypes()Ljava/util/List;

    move-result-object v0

    :goto_0
    nop

    invoke-virtual {p1}, Landroid/view/textclassifier/ConversationActions$Request;->getTypeConfig()Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/textclassifier/TextClassifier$EntityConfig;->resolveEntityListModifications(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;
    .locals 22

    move-object/from16 v7, p0

    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextClassification$Request;->getEndIndex()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextClassification$Request;->getStartIndex()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextClassification$Request;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, v7, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassificationConstants;->getClassifyTextMaxRangeLength()I

    move-result v1

    if-gt v0, v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextClassification$Request;->getDefaultLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-static {v1}, Landroid/view/textclassifier/TextClassifierImpl;->concatenateLocales(Landroid/os/LocaleList;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextClassification$Request;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v7, v1}, Landroid/view/textclassifier/TextClassifierImpl;->detectLanguageTagsFromText(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextClassification$Request;->getReferenceTime()Ljava/time/ZonedDateTime;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextClassification$Request;->getReferenceTime()Ljava/time/ZonedDateTime;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v1

    :goto_0
    move-object/from16 v21, v1

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextClassification$Request;->getDefaultLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-direct {v7, v1}, Landroid/view/textclassifier/TextClassifierImpl;->getAnnotatorImpl(Landroid/os/LocaleList;)Lcom/google/android/textclassifier/AnnotatorModel;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextClassification$Request;->getStartIndex()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextClassification$Request;->getEndIndex()I

    move-result v11

    new-instance v1, Lcom/google/android/textclassifier/AnnotatorModel$ClassificationOptions;

    invoke-virtual/range {v21 .. v21}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v16

    invoke-virtual/range {v21 .. v21}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v18

    move-object v15, v1

    invoke-direct/range {v15 .. v20}, Lcom/google/android/textclassifier/AnnotatorModel$ClassificationOptions;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v13, v7, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Landroid/view/textclassifier/TextClassifierImpl;->getResourceLocalesString()Ljava/lang/String;

    move-result-object v14

    move-object v12, v1

    invoke-virtual/range {v8 .. v14}, Lcom/google/android/textclassifier/AnnotatorModel;->classifyText(Ljava/lang/String;IILcom/google/android/textclassifier/AnnotatorModel$ClassificationOptions;Ljava/lang/Object;Ljava/lang/String;)[Lcom/google/android/textclassifier/AnnotatorModel$ClassificationResult;

    move-result-object v1

    move-object v8, v1

    array-length v1, v8

    if-lez v1, :cond_1

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextClassification$Request;->getStartIndex()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextClassification$Request;->getEndIndex()I

    move-result v5

    invoke-virtual/range {v21 .. v21}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v6

    move-object/from16 v1, p0

    move-object v2, v8

    move-object v3, v9

    invoke-direct/range {v1 .. v6}, Landroid/view/textclassifier/TextClassifierImpl;->createClassificationResult([Lcom/google/android/textclassifier/AnnotatorModel$ClassificationResult;Ljava/lang/String;IILjava/time/Instant;)Landroid/view/textclassifier/TextClassification;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :cond_1
    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "androidtc"

    const-string v2, "Error getting text classification info."

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-object v0, v7, Landroid/view/textclassifier/TextClassifierImpl;->mFallback:Landroid/view/textclassifier/TextClassifier;

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/textclassifier/TextClassifier;->classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    return-object v0
.end method

.method public detectLanguage(Landroid/view/textclassifier/TextLanguage$Request;)Landroid/view/textclassifier/TextLanguage;
    .locals 5

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    :try_start_0
    new-instance v0, Landroid/view/textclassifier/TextLanguage$Builder;

    invoke-direct {v0}, Landroid/view/textclassifier/TextLanguage$Builder;-><init>()V

    nop

    invoke-direct {p0}, Landroid/view/textclassifier/TextClassifierImpl;->getLangIdImpl()Lcom/google/android/textclassifier/LangIdModel;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/textclassifier/TextLanguage$Request;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/textclassifier/LangIdModel;->detectLanguages(Ljava/lang/String;)[Lcom/google/android/textclassifier/LangIdModel$LanguageResult;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/google/android/textclassifier/LangIdModel$LanguageResult;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-virtual {v4}, Lcom/google/android/textclassifier/LangIdModel$LanguageResult;->getScore()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/view/textclassifier/TextLanguage$Builder;->putLocale(Landroid/icu/util/ULocale;F)Landroid/view/textclassifier/TextLanguage$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/textclassifier/TextLanguage$Builder;->build()Landroid/view/textclassifier/TextLanguage;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception v0

    const-string v1, "androidtc"

    const-string v2, "Error detecting text language."

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mFallback:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->detectLanguage(Landroid/view/textclassifier/TextLanguage$Request;)Landroid/view/textclassifier/TextLanguage;

    move-result-object v0

    return-object v0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "TextClassifierImpl:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "Annotator model file(s):"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mAnnotatorModelFileManager:Landroid/view/textclassifier/ModelFileManager;

    invoke-virtual {v1}, Landroid/view/textclassifier/ModelFileManager;->listModelFiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/ModelFileManager$ModelFile;

    invoke-virtual {v2}, Landroid/view/textclassifier/ModelFileManager$ModelFile;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "LangID model file(s):"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mLangIdModelFileManager:Landroid/view/textclassifier/ModelFileManager;

    invoke-virtual {v1}, Landroid/view/textclassifier/ModelFileManager;->listModelFiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/ModelFileManager$ModelFile;

    invoke-virtual {v2}, Landroid/view/textclassifier/ModelFileManager$ModelFile;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "Actions model file(s):"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mActionsModelFileManager:Landroid/view/textclassifier/ModelFileManager;

    invoke-virtual {v1}, Landroid/view/textclassifier/ModelFileManager;->listModelFiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/ModelFileManager$ModelFile;

    invoke-virtual {v2}, Landroid/view/textclassifier/ModelFileManager$ModelFile;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "mFallback"

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierImpl;->mFallback:Landroid/view/textclassifier/TextClassifier;

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;
    .locals 27

    move-object/from16 v1, p0

    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextLinks$Request;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/textclassifier/TextClassifierImpl;->getMaxGenerateLinksTextLength()I

    move-result v2

    invoke-static {v0, v2}, Landroid/view/textclassifier/TextClassifier$Utils;->checkTextLength(Ljava/lang/CharSequence;I)V

    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    iget-object v0, v1, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationConstants;->isSmartLinkifyEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextLinks$Request;->isLegacyFallback()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/view/textclassifier/TextClassifier$Utils;->generateLegacyLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextLinks$Request;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Landroid/view/textclassifier/TextLinks$Builder;

    invoke-direct {v0, v2}, Landroid/view/textclassifier/TextLinks$Builder;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextLinks$Request;->getEntityConfig()Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextLinks$Request;->getEntityConfig()Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextLinks$Request;->getEntityConfig()Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/textclassifier/TextClassifier$EntityConfig;->getHints()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/view/textclassifier/TextClassifierImpl;->getEntitiesForHints(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/textclassifier/TextClassifier$EntityConfig;->resolveEntityListModifications(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v6

    goto :goto_0

    :cond_1
    iget-object v6, v1, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v6}, Landroid/view/textclassifier/TextClassificationConstants;->getEntityListDefault()Ljava/util/List;

    move-result-object v6

    :goto_0
    nop

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextLinks$Request;->getDefaultLocales()Landroid/os/LocaleList;

    move-result-object v7

    invoke-static {v7}, Landroid/view/textclassifier/TextClassifierImpl;->concatenateLocales(Landroid/os/LocaleList;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextLinks$Request;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/view/textclassifier/TextClassifierImpl;->detectLanguageTagsFromText(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextLinks$Request;->getDefaultLocales()Landroid/os/LocaleList;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/view/textclassifier/TextClassifierImpl;->getAnnotatorImpl(Landroid/os/LocaleList;)Lcom/google/android/textclassifier/AnnotatorModel;

    move-result-object v7

    move-object v15, v7

    nop

    invoke-static/range {p1 .. p1}, Landroid/view/textclassifier/ExtrasUtils;->isSerializedEntityDataEnabled(Landroid/view/textclassifier/TextLinks$Request;)Z

    move-result v7

    move/from16 v16, v7

    new-instance v14, Lcom/google/android/textclassifier/AnnotatorModel$AnnotationOptions;

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v7

    invoke-virtual {v7}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v7

    invoke-virtual {v7}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v10

    sget-object v7, Lcom/google/android/textclassifier/AnnotatorModel$AnnotationUsecase;->SMART:Lcom/google/android/textclassifier/AnnotatorModel$AnnotationUsecase;

    invoke-virtual {v7}, Lcom/google/android/textclassifier/AnnotatorModel$AnnotationUsecase;->getValue()I

    move-result v17

    move-object v7, v14

    move-object v13, v6

    move-object/from16 v18, v0

    move-object v0, v14

    move/from16 v14, v17

    move-wide/from16 v19, v4

    move-object v4, v15

    move/from16 v15, v16

    invoke-direct/range {v7 .. v15}, Lcom/google/android/textclassifier/AnnotatorModel$AnnotationOptions;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;IZ)V

    invoke-virtual {v4, v2, v0}, Lcom/google/android/textclassifier/AnnotatorModel;->annotate(Ljava/lang/String;Lcom/google/android/textclassifier/AnnotatorModel$AnnotationOptions;)[Lcom/google/android/textclassifier/AnnotatorModel$AnnotatedSpan;

    move-result-object v0

    array-length v5, v0

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v5, :cond_6

    aget-object v9, v0, v8

    nop

    invoke-virtual {v9}, Lcom/google/android/textclassifier/AnnotatorModel$AnnotatedSpan;->getClassification()[Lcom/google/android/textclassifier/AnnotatorModel$ClassificationResult;

    move-result-object v10

    array-length v13, v10

    if-eqz v13, :cond_5

    aget-object v13, v10, v7

    invoke-virtual {v13}, Lcom/google/android/textclassifier/AnnotatorModel$ClassificationResult;->getCollection()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    goto :goto_3

    :cond_2
    new-instance v13, Landroid/util/ArrayMap;

    invoke-direct {v13}, Landroid/util/ArrayMap;-><init>()V

    move v14, v7

    :goto_2
    array-length v15, v10

    if-ge v14, v15, :cond_3

    aget-object v15, v10, v14

    invoke-virtual {v15}, Lcom/google/android/textclassifier/AnnotatorModel$ClassificationResult;->getCollection()Ljava/lang/String;

    move-result-object v15

    aget-object v17, v10, v14

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/textclassifier/AnnotatorModel$ClassificationResult;->getScore()F

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v13, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x0

    goto :goto_2

    :cond_3
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    if-eqz v16, :cond_4

    invoke-static {v7, v10}, Landroid/view/textclassifier/ExtrasUtils;->putEntities(Landroid/os/Bundle;[Lcom/google/android/textclassifier/AnnotatorModel$ClassificationResult;)V

    :cond_4
    invoke-virtual {v9}, Lcom/google/android/textclassifier/AnnotatorModel$AnnotatedSpan;->getStartIndex()I

    move-result v14

    invoke-virtual {v9}, Lcom/google/android/textclassifier/AnnotatorModel$AnnotatedSpan;->getEndIndex()I

    move-result v15

    invoke-virtual {v3, v14, v15, v13, v7}, Landroid/view/textclassifier/TextLinks$Builder;->addLink(IILjava/util/Map;Landroid/os/Bundle;)Landroid/view/textclassifier/TextLinks$Builder;

    :cond_5
    :goto_3
    add-int/lit8 v8, v8, 0x1

    const/4 v7, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Landroid/view/textclassifier/TextLinks$Builder;->build()Landroid/view/textclassifier/TextLinks;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextLinks$Request;->getCallingPackageName()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_7

    iget-object v9, v1, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v24, v9

    goto :goto_4

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextLinks$Request;->getCallingPackageName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v24, v9

    :goto_4
    nop

    iget-object v9, v1, Landroid/view/textclassifier/TextClassifierImpl;->mGenerateLinksLogger:Landroid/view/textclassifier/GenerateLinksLogger;

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextLinks$Request;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    sub-long v25, v7, v19

    move-object/from16 v21, v9

    move-object/from16 v23, v5

    invoke-virtual/range {v21 .. v26}, Landroid/view/textclassifier/GenerateLinksLogger;->logGenerateLinks(Ljava/lang/CharSequence;Landroid/view/textclassifier/TextLinks;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v5

    :catchall_0
    move-exception v0

    const-string v4, "androidtc"

    const-string v5, "Error getting links info."

    invoke-static {v4, v5, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, v1, Landroid/view/textclassifier/TextClassifierImpl;->mFallback:Landroid/view/textclassifier/TextClassifier;

    move-object/from16 v4, p1

    invoke-interface {v0, v4}, Landroid/view/textclassifier/TextClassifier;->generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;

    move-result-object v0

    return-object v0
.end method

.method public getMaxGenerateLinksTextLength()I
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationConstants;->getGenerateLinksMaxTextLength()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$new$1$TextClassifierImpl()V
    .locals 2

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mActionsImpl:Lcom/google/android/textclassifier/ActionsSuggestionsModel;

    iput-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mActionModelInUse:Landroid/view/textclassifier/ModelFileManager$ModelFile;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSelectionEvent(Landroid/view/textclassifier/SelectionEvent;)V
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSessionLogger:Landroid/view/textclassifier/SelectionSessionLogger;

    invoke-virtual {v0, p1}, Landroid/view/textclassifier/SelectionSessionLogger;->writeEvent(Landroid/view/textclassifier/SelectionEvent;)V

    return-void
.end method

.method public onTextClassifierEvent(Landroid/view/textclassifier/TextClassifierEvent;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassifierEvent;->toSelectionEvent()Landroid/view/textclassifier/SelectionEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mSessionLogger:Landroid/view/textclassifier/SelectionSessionLogger;

    invoke-virtual {v1, v0}, Landroid/view/textclassifier/SelectionSessionLogger;->writeEvent(Landroid/view/textclassifier/SelectionEvent;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mTextClassifierEventTronLogger:Landroid/view/textclassifier/TextClassifierEventTronLogger;

    invoke-virtual {v1, p1}, Landroid/view/textclassifier/TextClassifierEventTronLogger;->writeEvent(Landroid/view/textclassifier/TextClassifierEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "androidtc"

    const-string v2, "Error writing event"

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public suggestConversationActions(Landroid/view/textclassifier/ConversationActions$Request;)Landroid/view/textclassifier/ConversationActions;
    .locals 8

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    :try_start_0
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassifierImpl;->getActionsImpl()Lcom/google/android/textclassifier/ActionsSuggestionsModel;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mFallback:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v1, p1}, Landroid/view/textclassifier/TextClassifier;->suggestConversationActions(Landroid/view/textclassifier/ConversationActions$Request;)Landroid/view/textclassifier/ConversationActions;

    move-result-object v1

    return-object v1

    :cond_0
    nop

    invoke-virtual {p1}, Landroid/view/textclassifier/ConversationActions$Request;->getConversation()Ljava/util/List;

    move-result-object v1

    new-instance v2, Landroid/view/textclassifier/-$$Lambda$TextClassifierImpl$ftq-sQqJYwUdrdbbr9jz3p4AWos;

    invoke-direct {v2, p0}, Landroid/view/textclassifier/-$$Lambda$TextClassifierImpl$ftq-sQqJYwUdrdbbr9jz3p4AWos;-><init>(Landroid/view/textclassifier/TextClassifierImpl;)V

    invoke-static {v1, v2}, Landroid/view/textclassifier/ActionsSuggestionsHelper;->toNativeMessages(Ljava/util/List;Ljava/util/function/Function;)[Lcom/google/android/textclassifier/ActionsSuggestionsModel$ConversationMessage;

    move-result-object v1

    move-object v7, v1

    array-length v1, v7

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl;->mFallback:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v1, p1}, Landroid/view/textclassifier/TextClassifier;->suggestConversationActions(Landroid/view/textclassifier/ConversationActions$Request;)Landroid/view/textclassifier/ConversationActions;

    move-result-object v1

    return-object v1

    :cond_1
    new-instance v2, Lcom/google/android/textclassifier/ActionsSuggestionsModel$Conversation;

    invoke-direct {v2, v7}, Lcom/google/android/textclassifier/ActionsSuggestionsModel$Conversation;-><init>([Lcom/google/android/textclassifier/ActionsSuggestionsModel$ConversationMessage;)V

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/view/textclassifier/TextClassifierImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/view/textclassifier/TextClassifierImpl;->getResourceLocalesString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/textclassifier/TextClassifierImpl;->getAnnotatorImpl(Landroid/os/LocaleList;)Lcom/google/android/textclassifier/AnnotatorModel;

    move-result-object v6

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/textclassifier/ActionsSuggestionsModel;->suggestActionsWithIntents(Lcom/google/android/textclassifier/ActionsSuggestionsModel$Conversation;Lcom/google/android/textclassifier/ActionsSuggestionsModel$ActionSuggestionOptions;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/textclassifier/AnnotatorModel;)[Lcom/google/android/textclassifier/ActionsSuggestionsModel$ActionSuggestion;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Landroid/view/textclassifier/TextClassifierImpl;->createConversationActionResult(Landroid/view/textclassifier/ConversationActions$Request;[Lcom/google/android/textclassifier/ActionsSuggestionsModel$ActionSuggestion;)Landroid/view/textclassifier/ConversationActions;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    :catchall_0
    move-exception v0

    const-string v1, "androidtc"

    const-string v2, "Error suggesting conversation actions."

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl;->mFallback:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->suggestConversationActions(Landroid/view/textclassifier/ConversationActions$Request;)Landroid/view/textclassifier/ConversationActions;

    move-result-object v0

    return-object v0
.end method

.method public suggestSelection(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;
    .locals 19

    move-object/from16 v1, p0

    const-string v2, "androidtc"

    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextSelection$Request;->getEndIndex()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextSelection$Request;->getStartIndex()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextSelection$Request;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    iget-object v4, v1, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v4}, Landroid/view/textclassifier/TextClassificationConstants;->getSuggestSelectionMaxRangeLength()I

    move-result v4

    if-gt v0, v4, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextSelection$Request;->getDefaultLocales()Landroid/os/LocaleList;

    move-result-object v4

    invoke-static {v4}, Landroid/view/textclassifier/TextClassifierImpl;->concatenateLocales(Landroid/os/LocaleList;)Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextSelection$Request;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/view/textclassifier/TextClassifierImpl;->detectLanguageTagsFromText(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v4

    move-object v13, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextSelection$Request;->getDefaultLocales()Landroid/os/LocaleList;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/view/textclassifier/TextClassifierImpl;->getAnnotatorImpl(Landroid/os/LocaleList;)Lcom/google/android/textclassifier/AnnotatorModel;

    move-result-object v4

    move-object v14, v4

    iget-object v4, v1, Landroid/view/textclassifier/TextClassifierImpl;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v4}, Landroid/view/textclassifier/TextClassificationConstants;->isModelDarkLaunchEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextSelection$Request;->isDarkLaunchAllowed()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextSelection$Request;->getStartIndex()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextSelection$Request;->getEndIndex()I

    move-result v5

    move v15, v4

    move v4, v5

    goto :goto_0

    :cond_0
    nop

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextSelection$Request;->getStartIndex()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextSelection$Request;->getEndIndex()I

    move-result v5

    new-instance v6, Lcom/google/android/textclassifier/AnnotatorModel$SelectionOptions;

    invoke-direct {v6, v11, v12}, Lcom/google/android/textclassifier/AnnotatorModel$SelectionOptions;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v3, v4, v5, v6}, Lcom/google/android/textclassifier/AnnotatorModel;->suggestSelection(Ljava/lang/String;IILcom/google/android/textclassifier/AnnotatorModel$SelectionOptions;)[I

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v4, v5

    const/4 v6, 0x1

    aget v6, v4, v6

    move v4, v6

    move v15, v5

    :goto_0
    if-ge v15, v4, :cond_4

    if-ltz v15, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v4, v5, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextSelection$Request;->getStartIndex()I

    move-result v5

    if-gt v15, v5, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextSelection$Request;->getEndIndex()I

    move-result v5

    if-lt v4, v5, :cond_2

    new-instance v5, Landroid/view/textclassifier/TextSelection$Builder;

    invoke-direct {v5, v15, v4}, Landroid/view/textclassifier/TextSelection$Builder;-><init>(II)V

    move-object v10, v5

    new-instance v16, Lcom/google/android/textclassifier/AnnotatorModel$ClassificationOptions;

    invoke-virtual {v13}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    invoke-virtual {v13}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v5, v16

    move-object v9, v11

    move/from16 v17, v0

    move-object v0, v10

    move-object v10, v12

    invoke-direct/range {v5 .. v10}, Lcom/google/android/textclassifier/AnnotatorModel$ClassificationOptions;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v18, v4

    move-object v4, v14

    move-object v5, v3

    move v6, v15

    move/from16 v7, v18

    move-object/from16 v8, v16

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/textclassifier/AnnotatorModel;->classifyText(Ljava/lang/String;IILcom/google/android/textclassifier/AnnotatorModel$ClassificationOptions;Ljava/lang/Object;Ljava/lang/String;)[Lcom/google/android/textclassifier/AnnotatorModel$ClassificationResult;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    invoke-virtual {v7}, Lcom/google/android/textclassifier/AnnotatorModel$ClassificationResult;->getCollection()Ljava/lang/String;

    move-result-object v7

    aget-object v8, v4, v6

    invoke-virtual {v8}, Lcom/google/android/textclassifier/AnnotatorModel$ClassificationResult;->getScore()F

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/view/textclassifier/TextSelection$Builder;->setEntityType(Ljava/lang/String;F)Landroid/view/textclassifier/TextSelection$Builder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    nop

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextSelection$Request;->getStartIndex()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/textclassifier/TextSelection$Request;->getEndIndex()I

    move-result v7

    invoke-direct {v1, v3, v6, v7}, Landroid/view/textclassifier/TextClassifierImpl;->createId(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/textclassifier/TextSelection$Builder;->setId(Ljava/lang/String;)Landroid/view/textclassifier/TextSelection$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/textclassifier/TextSelection$Builder;->build()Landroid/view/textclassifier/TextSelection;

    move-result-object v2

    return-object v2

    :cond_2
    move/from16 v17, v0

    move/from16 v18, v4

    goto :goto_2

    :cond_3
    move/from16 v17, v0

    move/from16 v18, v4

    goto :goto_2

    :cond_4
    move/from16 v17, v0

    move/from16 v18, v4

    :goto_2
    const-string v0, "Got bad indices for input text. Ignoring result."

    invoke-static {v2, v0}, Landroid/view/textclassifier/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_5
    move/from16 v17, v0

    goto :goto_3

    :cond_6
    move/from16 v17, v0

    :goto_3
    goto :goto_4

    :catchall_0
    move-exception v0

    const-string v3, "Error suggesting selection for text. No changes to selection suggested."

    invoke-static {v2, v3, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    iget-object v0, v1, Landroid/view/textclassifier/TextClassifierImpl;->mFallback:Landroid/view/textclassifier/TextClassifier;

    move-object/from16 v2, p1

    invoke-interface {v0, v2}, Landroid/view/textclassifier/TextClassifier;->suggestSelection(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;

    move-result-object v0

    return-object v0
.end method
