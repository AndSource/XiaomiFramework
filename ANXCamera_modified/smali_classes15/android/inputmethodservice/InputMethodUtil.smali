.class public Landroid/inputmethodservice/InputMethodUtil;
.super Ljava/lang/Object;
.source "InputMethodUtil.java"


# static fields
.field public static final CLIPBOARD_TYPE_CLOUD:I = 0x1

.field public static final CLIPBOARD_TYPE_SYSTEM:I = 0x0

.field public static final CLIPBOARD_TYPE_TAOBAO:I = 0x2

.field public static final CLIPBOARD_TYPE_URL:I = 0x3

.field public static final CLOUD_SHOW_NONE:I = 0x2

.field public static final CLOUD_SHOW_POP_VIEW:I = 0x1

.field public static final CLOUD_SHOW_RED_POINT:I = 0x0

.field public static final ENABLE_MIUI_QUICK_PASTE:Ljava/lang/String; = "enable_miui_quick_paste"

.field public static final ENABLE_QUICK_PASTE_TAOBAO:Ljava/lang/String; = "enable_quick_paste_taobao"

.field public static final ENABLE_QUICK_PASTE_URL:Ljava/lang/String; = "enable_quick_paste_url"

.field public static final HIDE_GESTURE_LINE:Ljava/lang/String; = "hide_gesture_line"

.field public static final INPUT_METHOD_CLOUD_CLIPBOARD_QUICK_PASTE_MODE:Ljava/lang/String; = "input_method_cloud_clipboard_quick_paste_mode"

.field private static final KET_SAVE_CLIPBOARD_CIPHER_TEXT_METHOD:Ljava/lang/String; = "saveClipboardCipherText"

.field private static final KEY_CLEAR_OLD_CLIPBOARD_CONTENT_METHOD:Ljava/lang/String; = "clearOldClipboardContent"

.field private static final KEY_GET_CLIPBOARD_LIST_METHOD:Ljava/lang/String; = "getClipboardList"

.field private static final KEY_GET_CLOUD_CONTENT_METHOD:Ljava/lang/String; = "getCloudContent"

.field public static final KEY_INPUT_METHOD_TAOBAO_CMD_ENABLE:Ljava/lang/String; = "input_method_taobao_cmd_enable"

.field public static final KEY_INPUT_METHOD_TAOBAO_CMD_RULE:Ljava/lang/String; = "input_method_taobao_cmd_rule"

.field private static final KEY_OLD_CLIPBOARD_NEED_CLEAR:Ljava/lang/String; = "old_clipboard_content_need_clear"

.field private static final KEY_SAVE_CLIPBOARD_STRING_URI:Ljava/lang/String; = "content://com.miui.input.provider"

.field public static final MIUI_INPUT_NO_NEED_SHOW_POP:Ljava/lang/String; = "miui_input_no_need_show_pop"

.field private static final TAG:Ljava/lang/String; = "InputMethodUtil"

.field public static final THIRTY_SECONDS_TIME_INTERVAL:J = 0x7530L

.field private static final TWO_DAYS_TIME_INTERVAL:J = 0xa4cb800L

.field public static final USE_GESTURE_VERSION_THREE:Ljava/lang/String; = "use_gesture_version_three"

.field public static sBottomAreaHeight:I

.field private static sBottomAreaMargin:I

.field public static sIsGestureLineEnable:Z

.field public static sIsGestureLineSupport:Z

.field public static sNavigationBarFullScreenValue:Z

.field public static sQuickPasteTaobaoEnable:Z

.field public static sQuickPasteUrlEnable:Z

.field public static sTaobaoCmdEnable:Z

.field public static sTaobaoCmdRule:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/inputmethodservice/InputMethodUtil;->sIsGestureLineSupport:Z

    sput-boolean v0, Landroid/inputmethodservice/InputMethodUtil;->sIsGestureLineEnable:Z

    sput-boolean v0, Landroid/inputmethodservice/InputMethodUtil;->sNavigationBarFullScreenValue:Z

    sput v0, Landroid/inputmethodservice/InputMethodUtil;->sBottomAreaMargin:I

    const/4 v0, 0x1

    sput-boolean v0, Landroid/inputmethodservice/InputMethodUtil;->sQuickPasteUrlEnable:Z

    sput-boolean v0, Landroid/inputmethodservice/InputMethodUtil;->sQuickPasteTaobaoEnable:Z

    sput-boolean v0, Landroid/inputmethodservice/InputMethodUtil;->sTaobaoCmdEnable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addClipboard(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "contentToAdd"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "contentLabel"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "contentType"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.miui.input.provider"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "saveClipboardCipherText"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "InputMethodUtil"

    const-string v3, "addClipboard call method error."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static clearOldClipboardContent(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "old_clipboard_content_need_clear"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    move v0, v1

    if-nez v0, :cond_1

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "clearOldClipboardContent"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Landroid/inputmethodservice/InputMethodUtil$1;

    invoke-direct {v3, p0}, Landroid/inputmethodservice/InputMethodUtil$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_1
    return-void
.end method

.method public static getCheckMoreViewBottomMargin(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodUtil;->getPopupWindowBottomMargin(Landroid/content/Context;)I

    move-result v0

    const v1, 0x11060051

    invoke-static {p0, v1}, Landroid/inputmethodservice/InputMethodPopupWindowHelper;->getDimenPx(Landroid/content/Context;I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static getClipboardData(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/inputmethodservice/ClipboardContentModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://com.miui.input.provider"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "getClipboardList"

    const/4 v6, 0x0

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, ""

    if-eqz v3, :cond_0

    const-string/jumbo v5, "savedClipboard"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {p0, v4, v0, v1}, Landroid/inputmethodservice/InputMethodUtil;->getNoExpiredData(Landroid/content/Context;Ljava/lang/String;J)Ljava/util/ArrayList;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "InputMethodUtil"

    const-string v5, "getClipboardData call method error."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v2
.end method

.method public static getClipboardQuickPasteEnable(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "enable_miui_quick_paste"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static getCloudClipboardQuickPasteMode(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "input_method_cloud_clipboard_quick_paste_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getCloudContent(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.miui.input.provider"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "getCloudContent"

    const/4 v4, 0x0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "cloudContent"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "InputMethodUtil"

    const-string v3, "getCloudContent call error."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public static getGestureLineHeight(Landroid/content/Context;)I
    .locals 2

    invoke-static {}, Landroid/inputmethodservice/InputMethodUtil;->isShowNavigationHandle()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050198

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private static getNoExpiredData(Landroid/content/Context;Ljava/lang/String;J)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/ArrayList<",
            "Landroid/inputmethodservice/ClipboardContentModel;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/inputmethodservice/InputMethodUtil;->jsonToBean(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "InputMethodUtil"

    if-nez v1, :cond_0

    const-string v1, "get saved clipboard list size is 0."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/inputmethodservice/ClipboardContentModel;

    invoke-virtual {v5}, Landroid/inputmethodservice/ClipboardContentModel;->getTime()J

    move-result-wide v6

    sub-long v8, p2, v6

    const-wide/32 v10, 0xa4cb800

    cmp-long v10, v8, v10

    if-lez v10, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "no remain time delete : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", type : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/inputmethodservice/ClipboardContentModel;->getType()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Landroid/inputmethodservice/ClipboardContentModel;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v1, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_1
    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    invoke-static {p0, v1}, Landroid/inputmethodservice/InputMethodUtil;->setClipboardJsonArray(Landroid/content/Context;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_2

    :catch_0
    move-exception v1

    const-string v3, "getNoExpiredData,parse JSON error."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-object v0
.end method

.method public static getPopupWindowBottomMargin(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11060077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11060076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Landroid/inputmethodservice/InputMethodUtil;->sBottomAreaHeight:I

    sub-int/2addr v2, v0

    add-int/2addr v2, v1

    sget v3, Landroid/inputmethodservice/InputMethodUtil;->sBottomAreaMargin:I

    sub-int/2addr v2, v3

    return v2
.end method

.method public static getVersionCode(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Version failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputMethodUtil"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public static isShowNavigationHandle()Z
    .locals 1

    sget-boolean v0, Landroid/inputmethodservice/InputMethodUtil;->sIsGestureLineSupport:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/inputmethodservice/InputMethodUtil;->sNavigationBarFullScreenValue:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/inputmethodservice/InputMethodUtil;->sIsGestureLineEnable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static jsonToBean(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/inputmethodservice/ClipboardContentModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Landroid/inputmethodservice/ClipboardContentModel;->fromJSONObject(Lorg/json/JSONObject;)Landroid/inputmethodservice/ClipboardContentModel;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "InputMethodUtil"

    const-string v3, "jsonToBean,parse JSON error."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v0
.end method

.method private static setClipboardJsonArray(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "jsonArray"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.miui.input.provider"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "saveClipboardCipherText"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "InputMethodUtil"

    const-string/jumbo v3, "setClipboardJsonArray save clipboard words error."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static setClipboardModelList(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/inputmethodservice/ClipboardContentModel;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/inputmethodservice/ClipboardContentModel;

    invoke-virtual {v2}, Landroid/inputmethodservice/ClipboardContentModel;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Landroid/inputmethodservice/InputMethodUtil;->setClipboardJsonArray(Landroid/content/Context;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "InputMethodUtil"

    const-string/jumbo v2, "setClipboardModelList,bean to toJSONObject error."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public static updateBottomMargin(I)V
    .locals 0

    sput p0, Landroid/inputmethodservice/InputMethodUtil;->sBottomAreaMargin:I

    return-void
.end method

.method public static updateGestureLineEnable(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "hide_gesture_line"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    sput-boolean v1, Landroid/inputmethodservice/InputMethodUtil;->sIsGestureLineEnable:Z

    return-void
.end method

.method public static updateGestureLineSupport(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "use_gesture_version_three"

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/inputmethodservice/InputMethodUtil;->sIsGestureLineSupport:Z

    return-void
.end method

.method public static updateTaoBaoCmdEnable(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "input_method_taobao_cmd_enable"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Landroid/inputmethodservice/InputMethodUtil;->sTaobaoCmdEnable:Z

    return-void
.end method

.method public static updateTaoBaoCmdRule(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "input_method_taobao_cmd_rule"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/inputmethodservice/InputMethodUtil;->sTaobaoCmdRule:Ljava/lang/String;

    return-void
.end method

.method public static updateTaobaoQuickPasteEnable(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "enable_quick_paste_taobao"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Landroid/inputmethodservice/InputMethodUtil;->sQuickPasteTaobaoEnable:Z

    return-void
.end method

.method public static updateUrlQuickPasteEnable(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "enable_quick_paste_url"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Landroid/inputmethodservice/InputMethodUtil;->sQuickPasteUrlEnable:Z

    return-void
.end method
