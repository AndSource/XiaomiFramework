.class public final Landroid/view/textclassifier/TextClassificationConstants;
.super Ljava/lang/Object;
.source "TextClassificationConstants.java"


# static fields
.field private static final CLASSIFY_TEXT_MAX_RANGE_LENGTH:Ljava/lang/String; = "classify_text_max_range_length"

.field private static final CLASSIFY_TEXT_MAX_RANGE_LENGTH_DEFAULT:I = 0x2710

.field private static final CONVERSATION_ACTIONS_TYPES_DEFAULT_VALUES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DETECT_LANGUAGES_FROM_TEXT_ENABLED:Ljava/lang/String; = "detect_languages_from_text_enabled"

.field private static final DETECT_LANGUAGES_FROM_TEXT_ENABLED_DEFAULT:Z = true

.field private static final ENTITY_LIST_DEFAULT:Ljava/lang/String; = "entity_list_default"

.field private static final ENTITY_LIST_DEFAULT_VALUE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENTITY_LIST_EDITABLE:Ljava/lang/String; = "entity_list_editable"

.field private static final ENTITY_LIST_NOT_EDITABLE:Ljava/lang/String; = "entity_list_not_editable"

.field private static final GENERATE_LINKS_LOG_SAMPLE_RATE:Ljava/lang/String; = "generate_links_log_sample_rate"

.field private static final GENERATE_LINKS_LOG_SAMPLE_RATE_DEFAULT:I = 0x64

.field private static final GENERATE_LINKS_MAX_TEXT_LENGTH:Ljava/lang/String; = "generate_links_max_text_length"

.field private static final GENERATE_LINKS_MAX_TEXT_LENGTH_DEFAULT:I = 0x186a0

.field private static final IN_APP_CONVERSATION_ACTION_TYPES_DEFAULT:Ljava/lang/String; = "in_app_conversation_action_types_default"

.field private static final LANG_ID_CONTEXT_SETTINGS:Ljava/lang/String; = "lang_id_context_settings"

.field private static final LANG_ID_CONTEXT_SETTINGS_DEFAULT:[F

.field private static final LANG_ID_THRESHOLD_OVERRIDE:Ljava/lang/String; = "lang_id_threshold_override"

.field private static final LANG_ID_THRESHOLD_OVERRIDE_DEFAULT:F = -1.0f

.field private static final LOCAL_TEXT_CLASSIFIER_ENABLED:Ljava/lang/String; = "local_textclassifier_enabled"

.field private static final LOCAL_TEXT_CLASSIFIER_ENABLED_DEFAULT:Z = true

.field private static final MODEL_DARK_LAUNCH_ENABLED:Ljava/lang/String; = "model_dark_launch_enabled"

.field private static final MODEL_DARK_LAUNCH_ENABLED_DEFAULT:Z = false

.field private static final NOTIFICATION_CONVERSATION_ACTION_TYPES_DEFAULT:Ljava/lang/String; = "notification_conversation_action_types_default"

.field private static final SMART_LINKIFY_ENABLED:Ljava/lang/String; = "smart_linkify_enabled"

.field private static final SMART_LINKIFY_ENABLED_DEFAULT:Z = true

.field private static final SMART_SELECTION_ENABLED:Ljava/lang/String; = "smart_selection_enabled"

.field private static final SMART_SELECTION_ENABLED_DEFAULT:Z = true

.field private static final SMART_SELECT_ANIMATION_ENABLED:Ljava/lang/String; = "smart_select_animation_enabled"

.field private static final SMART_SELECT_ANIMATION_ENABLED_DEFAULT:Z = true

.field private static final SMART_TEXT_SHARE_ENABLED:Ljava/lang/String; = "smart_text_share_enabled"

.field private static final SMART_TEXT_SHARE_ENABLED_DEFAULT:Z = true

.field private static final SUGGEST_SELECTION_MAX_RANGE_LENGTH:Ljava/lang/String; = "suggest_selection_max_range_length"

.field private static final SUGGEST_SELECTION_MAX_RANGE_LENGTH_DEFAULT:I = 0x2710

.field private static final SYSTEM_TEXT_CLASSIFIER_ENABLED:Ljava/lang/String; = "system_textclassifier_enabled"

.field private static final SYSTEM_TEXT_CLASSIFIER_ENABLED_DEFAULT:Z = true

.field private static final TEMPLATE_INTENT_FACTORY_ENABLED:Ljava/lang/String; = "template_intent_factory_enabled"

.field private static final TEMPLATE_INTENT_FACTORY_ENABLED_DEFAULT:Z = true

.field private static final TRANSLATE_IN_CLASSIFICATION_ENABLED:Ljava/lang/String; = "translate_in_classification_enabled"

.field private static final TRANSLATE_IN_CLASSIFICATION_ENABLED_DEFAULT:Z = true


# instance fields
.field private final mConfigParser:Landroid/view/textclassifier/ConfigParser;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "address"

    const-string v1, "email"

    const-string/jumbo v2, "phone"

    const-string/jumbo v3, "url"

    const-string v4, "date"

    const-string v5, "datetime"

    const-string v6, "flight"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/view/textclassifier/TextClassificationConstants;->ENTITY_LIST_DEFAULT_VALUE:Ljava/util/List;

    const-string/jumbo v1, "text_reply"

    const-string v2, "create_reminder"

    const-string v3, "call_phone"

    const-string/jumbo v4, "open_url"

    const-string/jumbo v5, "send_email"

    const-string/jumbo v6, "send_sms"

    const-string/jumbo v7, "track_flight"

    const-string/jumbo v8, "view_calendar"

    const-string/jumbo v9, "view_map"

    const-string v10, "add_contact"

    const-string v11, "copy"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/view/textclassifier/TextClassificationConstants;->CONVERSATION_ACTIONS_TYPES_DEFAULT_VALUES:Ljava/util/List;

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Landroid/view/textclassifier/TextClassificationConstants;->LANG_ID_CONTEXT_SETTINGS_DEFAULT:[F

    return-void

    :array_0
    .array-data 4
        0x41a00000    # 20.0f
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
    .end array-data
.end method

.method public constructor <init>(Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/textclassifier/ConfigParser;

    invoke-direct {v0, p1}, Landroid/view/textclassifier/ConfigParser;-><init>(Ljava/util/function/Supplier;)V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mConfigParser:Landroid/view/textclassifier/ConfigParser;

    return-void
.end method


# virtual methods
.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2

    const-string v0, "TextClassificationConstants:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->getClassifyTextMaxRangeLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "classify_text_max_range_length"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->isDetectLanguagesFromTextEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "detect_language_from_text_enabled"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->getEntityListDefault()Ljava/util/List;

    move-result-object v0

    const-string v1, "entity_list_default"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->getEntityListEditable()Ljava/util/List;

    move-result-object v0

    const-string v1, "entity_list_editable"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->getEntityListNotEditable()Ljava/util/List;

    move-result-object v0

    const-string v1, "entity_list_not_editable"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->getGenerateLinksLogSampleRate()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "generate_links_log_sample_rate"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->getGenerateLinksMaxTextLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "generate_links_max_text_length"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->getInAppConversationActionTypes()Ljava/util/List;

    move-result-object v0

    const-string v1, "in_app_conversation_action_types_default"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->getLangIdContextSettings()[F

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lang_id_context_settings"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->getLangIdThresholdOverride()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "lang_id_threshold_override"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->isLocalTextClassifierEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "local_textclassifier_enabled"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->isModelDarkLaunchEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "model_dark_launch_enabled"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    nop

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->getNotificationConversationActionTypes()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "notification_conversation_action_types_default"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->isSmartLinkifyEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "smart_linkify_enabled"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->isSmartSelectionAnimationEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "smart_select_animation_enabled"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->isSmartSelectionEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "smart_selection_enabled"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->isSmartTextShareEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "smart_text_share_enabled"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->getSuggestSelectionMaxRangeLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "suggest_selection_max_range_length"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->isSystemTextClassifierEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "system_textclassifier_enabled"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->isTemplateIntentFactoryEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "template_intent_factory_enabled"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->isTranslateInClassificationEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "translate_in_classification_enabled"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public getClassifyTextMaxRangeLength()I
    .locals 3

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mConfigParser:Landroid/view/textclassifier/ConfigParser;

    const-string v1, "classify_text_max_range_length"

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/view/textclassifier/ConfigParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEntityListDefault()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mConfigParser:Landroid/view/textclassifier/ConfigParser;

    sget-object v1, Landroid/view/textclassifier/TextClassificationConstants;->ENTITY_LIST_DEFAULT_VALUE:Ljava/util/List;

    const-string v2, "entity_list_default"

    invoke-virtual {v0, v2, v1}, Landroid/view/textclassifier/ConfigParser;->getStringList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEntityListEditable()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mConfigParser:Landroid/view/textclassifier/ConfigParser;

    sget-object v1, Landroid/view/textclassifier/TextClassificationConstants;->ENTITY_LIST_DEFAULT_VALUE:Ljava/util/List;

    const-string v2, "entity_list_editable"

    invoke-virtual {v0, v2, v1}, Landroid/view/textclassifier/ConfigParser;->getStringList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEntityListNotEditable()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mConfigParser:Landroid/view/textclassifier/ConfigParser;

    sget-object v1, Landroid/view/textclassifier/TextClassificationConstants;->ENTITY_LIST_DEFAULT_VALUE:Ljava/util/List;

    const-string v2, "entity_list_not_editable"

    invoke-virtual {v0, v2, v1}, Landroid/view/textclassifier/ConfigParser;->getStringList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGenerateLinksLogSampleRate()I
    .locals 3

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mConfigParser:Landroid/view/textclassifier/ConfigParser;

    const-string v1, "generate_links_log_sample_rate"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/textclassifier/ConfigParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getGenerateLinksMaxTextLength()I
    .locals 3

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mConfigParser:Landroid/view/textclassifier/ConfigParser;

    const-string v1, "generate_links_max_text_length"

    const v2, 0x186a0

    invoke-virtual {v0, v1, v2}, Landroid/view/textclassifier/ConfigParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInAppConversationActionTypes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mConfigParser:Landroid/view/textclassifier/ConfigParser;

    sget-object v1, Landroid/view/textclassifier/TextClassificationConstants;->CONVERSATION_ACTIONS_TYPES_DEFAULT_VALUES:Ljava/util/List;

    const-string v2, "in_app_conversation_action_types_default"

    invoke-virtual {v0, v2, v1}, Landroid/view/textclassifier/ConfigParser;->getStringList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLangIdContextSettings()[F
    .locals 3

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mConfigParser:Landroid/view/textclassifier/ConfigParser;

    sget-object v1, Landroid/view/textclassifier/TextClassificationConstants;->LANG_ID_CONTEXT_SETTINGS_DEFAULT:[F

    const-string v2, "lang_id_context_settings"

    invoke-virtual {v0, v2, v1}, Landroid/view/textclassifier/ConfigParser;->getFloatArray(Ljava/lang/String;[F)[F

    move-result-object v0

    return-object v0
.end method

.method public getLangIdThresholdOverride()F
    .locals 3

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mConfigParser:Landroid/view/textclassifier/ConfigParser;

    const-string v1, "lang_id_threshold_override"

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Landroid/view/textclassifier/ConfigParser;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getNotificationConversationActionTypes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mConfigParser:Landroid/view/textclassifier/ConfigParser;

    sget-object v1, Landroid/view/textclassifier/TextClassificationConstants;->CONVERSATION_ACTIONS_TYPES_DEFAULT_VALUES:Ljava/util/List;

    const-string/jumbo v2, "notification_conversation_action_types_default"

    invoke-virtual {v0, v2, v1}, Landroid/view/textclassifier/ConfigParser;->getStringList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestSelectionMaxRangeLength()I
    .locals 3

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mConfigParser:Landroid/view/textclassifier/ConfigParser;

    const-string/jumbo v1, "suggest_selection_max_range_length"

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/view/textclassifier/ConfigParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isDetectLanguagesFromTextEnabled()Z
    .locals 3

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mConfigParser:Landroid/view/textclassifier/ConfigParser;

    const-string v1, "detect_languages_from_text_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/textclassifier/ConfigParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isLocalTextClassifierEnabled()Z
    .locals 3

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mConfigParser:Landroid/view/textclassifier/ConfigParser;

    const-string v1, "local_textclassifier_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/textclassifier/ConfigParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isModelDarkLaunchEnabled()Z
    .locals 3

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mConfigParser:Landroid/view/textclassifier/ConfigParser;

    const-string/jumbo v1, "model_dark_launch_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/textclassifier/ConfigParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSmartLinkifyEnabled()Z
    .locals 3

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mConfigParser:Landroid/view/textclassifier/ConfigParser;

    const-string/jumbo v1, "smart_linkify_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/textclassifier/ConfigParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSmartSelectionAnimationEnabled()Z
    .locals 3

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mConfigParser:Landroid/view/textclassifier/ConfigParser;

    const-string/jumbo v1, "smart_select_animation_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/textclassifier/ConfigParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSmartSelectionEnabled()Z
    .locals 3

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mConfigParser:Landroid/view/textclassifier/ConfigParser;

    const-string/jumbo v1, "smart_selection_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/textclassifier/ConfigParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSmartTextShareEnabled()Z
    .locals 3

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mConfigParser:Landroid/view/textclassifier/ConfigParser;

    const-string/jumbo v1, "smart_text_share_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/textclassifier/ConfigParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSystemTextClassifierEnabled()Z
    .locals 3

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mConfigParser:Landroid/view/textclassifier/ConfigParser;

    const-string/jumbo v1, "system_textclassifier_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/textclassifier/ConfigParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isTemplateIntentFactoryEnabled()Z
    .locals 3

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mConfigParser:Landroid/view/textclassifier/ConfigParser;

    const-string/jumbo v1, "template_intent_factory_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/textclassifier/ConfigParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isTranslateInClassificationEnabled()Z
    .locals 3

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mConfigParser:Landroid/view/textclassifier/ConfigParser;

    const-string/jumbo v1, "translate_in_classification_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/textclassifier/ConfigParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
