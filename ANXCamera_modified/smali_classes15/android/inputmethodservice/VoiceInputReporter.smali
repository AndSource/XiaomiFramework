.class public Landroid/inputmethodservice/VoiceInputReporter;
.super Ljava/lang/Object;
.source "VoiceInputReporter.java"


# static fields
.field private static final BAIDU_IME_PKGNAME:Ljava/lang/String; = "com.baidu.input_mi"

.field public static final EVENT_NO_NETWORK:I = 0x3

.field public static final EVENT_VOICE_BTN_PRESSED:I = 0x2

.field public static final EVENT_VOICE_BTN_SHOW:I = 0x1

.field private static final KEY_NO_NETWORK_BAIDU:Ljava/lang/String; = "show_no_network_dialog_from_baidu"

.field private static final KEY_NO_NETWORK_SOGOU:Ljava/lang/String; = "show_no_network_dialog_from_sogou"

.field private static final KEY_VOICE_BTN_PRESSED_BAIDU:Ljava/lang/String; = "press_voice_input_button_from_baidu"

.field private static final KEY_VOICE_BTN_PRESSED_SOGOU:Ljava/lang/String; = "press_voice_input_button_from_sogou"

.field private static final KEY_VOICE_BTN_SHOWN_BAIDU:Ljava/lang/String; = "show_voice_input_button_from_baidu"

.field private static final KEY_VOICE_BTN_SHOWN_SOGOU:Ljava/lang/String; = "show_voice_input_button_from_sogou"

.field private static final MQS_REPORT_MODULE:Ljava/lang/String; = "InputMethod"

.field private static final SOGOU_IME_PKGNAME:Ljava/lang/String; = "com.sohu.inputmethod.sogou.xiaomi"

.field private static final TAG:Ljava/lang/String; = "VoiceInputReporter"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBaseJson()Lorg/json/JSONObject;
    .locals 4

    const-string v0, "0"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v2, "show_voice_input_button_from_sogou"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "show_voice_input_button_from_baidu"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "press_voice_input_button_from_sogou"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "press_voice_input_button_from_baidu"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "show_no_network_dialog_from_sogou"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "show_no_network_dialog_from_baidu"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "VoiceInputReporter"

    const-string v3, "build base json fail"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v1
.end method

.method static reportEvent(ILjava/lang/String;)V
    .locals 7

    const-string v0, "VoiceInputReporter"

    :try_start_0
    const-string v1, "com.sohu.inputmethod.sogou.xiaomi"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v2, "com.baidu.input_mi"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "only support baidu or sogou"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/inputmethodservice/VoiceInputReporter;->getBaseJson()Lorg/json/JSONObject;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    const-string v4, "1"

    if-ne p0, v3, :cond_2

    if-eqz v1, :cond_1

    :try_start_1
    const-string/jumbo v3, "show_voice_input_button_from_sogou"

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "show_voice_input_button_from_baidu"

    :goto_0
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_2
    const/4 v3, 0x2

    if-ne p0, v3, :cond_4

    if-eqz v1, :cond_3

    const-string/jumbo v3, "press_voice_input_button_from_sogou"

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "press_voice_input_button_from_baidu"

    :goto_1
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_4
    const/4 v3, 0x3

    if-ne p0, v3, :cond_6

    if-eqz v1, :cond_5

    const-string/jumbo v3, "show_no_network_dialog_from_sogou"

    goto :goto_2

    :cond_5
    const-string/jumbo v3, "show_no_network_dialog_from_baidu"

    :goto_2
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_3
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v3

    const-string v4, "InputMethod"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportEvent(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_4

    :cond_6
    const-string v3, "event type is wrong"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "report event fail"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    return-void
.end method
