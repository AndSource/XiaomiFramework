.class public Landroid/inputmethodservice/InputMethodAnalyticsUtil;
.super Ljava/lang/Object;
.source "InputMethodAnalyticsUtil.java"


# static fields
.field private static final KEY_FUNCTION_CLICKED:Ljava/lang/String; = "click"

.field private static final KEY_INPUT_METHOD_ANALYTICS:Ljava/lang/String; = "input_method_analytics"

.field private static final KEY_INPUT_METHOD_PROVIDER_URI:Ljava/lang/String; = "content://com.miui.input.provider"

.field private static final TAG:Ljava/lang/String; = "InputMethodAnalytics"

.field private static final TRACK_KEY_MULTIFUNCTIONAL_KEYBOARD_CLICK:Ljava/lang/String; = "multifunctional_keyboard_click"

.field private static final TRACK_KEY_NOTIFICATION_PANEL_KEYBOARD_SWITCH:Ljava/lang/String; = "notification_panel_keyboard_switch"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addHighKeyboardRecord(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "multifunctional_keyboard_click"

    invoke-static {p0, p1, v0}, Landroid/inputmethodservice/InputMethodAnalyticsUtil;->addInputMethodAnalytics(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static addInputMethodAnalytics(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "InputMethodAnalytics"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "clickKey"

    const-string v4, "click"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "clickValue"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "recordKey"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/inputmethodservice/InputMethodAnalyticsUtil$1;

    invoke-direct {v3, p0, v2, v0}, Landroid/inputmethodservice/InputMethodAnalyticsUtil$1;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/HandlerThread;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static addNotificationPanelRecord(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "notification_panel_keyboard_switch"

    invoke-static {p0, p1, v0}, Landroid/inputmethodservice/InputMethodAnalyticsUtil;->addInputMethodAnalytics(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
