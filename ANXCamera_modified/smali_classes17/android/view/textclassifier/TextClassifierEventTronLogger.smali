.class public final Landroid/view/textclassifier/TextClassifierEventTronLogger;
.super Ljava/lang/Object;
.source "TextClassifierEventTronLogger.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TCEventTronLogger"


# instance fields
.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    invoke-direct {p0, v0}, Landroid/view/textclassifier/TextClassifierEventTronLogger;-><init>(Lcom/android/internal/logging/MetricsLogger;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/logging/MetricsLogger;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEventTronLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-void
.end method

.method private debugLog(Landroid/metrics/LogMaker;)V
    .locals 13

    sget-boolean v0, Landroid/view/textclassifier/Log;->ENABLE_FULL_LOGGING:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x662

    invoke-virtual {p1, v0}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/metrics/LogMaker;->getCategory()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/view/textclassifier/TextClassifierEventTronLogger;->toCategoryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/metrics/LogMaker;->getSubtype()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/view/textclassifier/TextClassifierEventTronLogger;->toEventName(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x667

    invoke-virtual {p1, v3}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x668

    invoke-virtual {p1, v4}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x4e8

    invoke-virtual {p1, v5}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x663

    invoke-virtual {p1, v6}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x664

    invoke-virtual {p1, v7}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x665

    invoke-virtual {p1, v8}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x666

    invoke-virtual {p1, v9}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "writeEvent: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", category="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", eventName="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", widgetType="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", widgetVersion="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", model="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", firstEntityType="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", secondEntityType="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", thirdEntityType="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", score="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "TCEventTronLogger"

    invoke-static {v12, v11}, Landroid/view/textclassifier/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static getCategory(Landroid/view/textclassifier/TextClassifierEvent;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent;->getEventCategory()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/16 v0, 0x64e

    return v0

    :cond_1
    const/16 v0, 0x64f

    return v0
.end method

.method private static getLogType(Landroid/view/textclassifier/TextClassifierEvent;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent;->getEventType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v0, 0x653

    return v0

    :cond_1
    const/16 v0, 0x652

    return v0

    :cond_2
    const/16 v0, 0x459

    return v0

    :cond_3
    const/16 v0, 0x650

    return v0
.end method

.method private static getModelName(Landroid/view/textclassifier/TextClassifierEvent;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent;->getModelName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent;->getModelName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent;->getResultId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/view/textclassifier/SelectionSessionLogger$SignatureParser;->getModelName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toCategoryName(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x64e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x64f

    if-eq p1, v0, :cond_0

    const-string/jumbo v0, "unknown"

    return-object v0

    :cond_0
    const-string v0, "conversation_actions"

    return-object v0

    :cond_1
    const-string v0, "language_detection"

    return-object v0
.end method

.method private toEventName(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x459

    if-eq p1, v0, :cond_3

    const/16 v0, 0x650

    if-eq p1, v0, :cond_2

    const/16 v0, 0x652

    if-eq p1, v0, :cond_1

    const/16 v0, 0x653

    if-eq p1, v0, :cond_0

    const-string/jumbo v0, "unknown"

    return-object v0

    :cond_0
    const-string v0, "actions_generated"

    return-object v0

    :cond_1
    const-string/jumbo v0, "manual_reply"

    return-object v0

    :cond_2
    const-string v0, "actions_shown"

    return-object v0

    :cond_3
    const-string/jumbo v0, "smart_share"

    return-object v0
.end method


# virtual methods
.method public writeEvent(Landroid/view/textclassifier/TextClassifierEvent;)V
    .locals 6

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEventTronLogger;->getCategory(Landroid/view/textclassifier/TextClassifierEvent;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassifierEvent;->getEventCategory()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TCEventTronLogger"

    invoke-static {v2, v1}, Landroid/view/textclassifier/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Landroid/metrics/LogMaker;

    invoke-direct {v1, v0}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEventTronLogger;->getLogType(Landroid/view/textclassifier/TextClassifierEvent;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v2, 0x662

    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassifierEvent;->getResultId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v2, 0x4e8

    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEventTronLogger;->getModelName(Landroid/view/textclassifier/TextClassifierEvent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassifierEvent;->getScores()[F

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v2, v4, :cond_1

    const/16 v2, 0x666

    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassifierEvent;->getScores()[F

    move-result-object v5

    aget v5, v5, v3

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_1
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassifierEvent;->getEntityTypes()[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    if-lt v5, v4, :cond_2

    const/16 v5, 0x663

    aget-object v3, v2, v3

    invoke-virtual {v1, v5, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_2
    array-length v3, v2

    const/4 v5, 0x2

    if-lt v3, v5, :cond_3

    const/16 v3, 0x664

    aget-object v4, v2, v4

    invoke-virtual {v1, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_3
    array-length v3, v2

    const/4 v4, 0x3

    if-lt v3, v4, :cond_4

    const/16 v3, 0x665

    aget-object v4, v2, v5

    invoke-virtual {v1, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_4
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassifierEvent;->getEventContext()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v3

    if-eqz v3, :cond_5

    const/16 v4, 0x667

    invoke-virtual {v3}, Landroid/view/textclassifier/TextClassificationContext;->getWidgetType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v4, 0x668

    invoke-virtual {v3}, Landroid/view/textclassifier/TextClassificationContext;->getWidgetVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    invoke-virtual {v3}, Landroid/view/textclassifier/TextClassificationContext;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    :cond_5
    iget-object v4, p0, Landroid/view/textclassifier/TextClassifierEventTronLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v4, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    invoke-direct {p0, v1}, Landroid/view/textclassifier/TextClassifierEventTronLogger;->debugLog(Landroid/metrics/LogMaker;)V

    return-void
.end method
