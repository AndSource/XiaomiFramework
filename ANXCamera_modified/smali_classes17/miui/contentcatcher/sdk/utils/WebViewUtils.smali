.class public Lmiui/contentcatcher/sdk/utils/WebViewUtils;
.super Ljava/lang/Object;
.source "WebViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/contentcatcher/sdk/utils/WebViewUtils$NativeWebViewUtils;,
        Lmiui/contentcatcher/sdk/utils/WebViewUtils$ThirdWebViewUtils;,
        Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;
    }
.end annotation


# static fields
.field private static final COMPARISON_CHAR_INDEX_FROM_TAIL:I = 0x5

.field private static final DBG:Z = false

.field private static final MATCHER_ARRAY_SIZE:I = 0x32

.field private static final TAG:Ljava/lang/String; = "WebViewUtils"

.field public static final WEBVIEW_NAME_ANDROID:Ljava/lang/String; = "android.webkit.WebView"

.field public static final WEBVIEW_NAME_BAIDU:Ljava/lang/String; = "com.baidu.webkit.sdk.WebView"

.field public static final WEBVIEW_NAME_BAIDU1:Ljava/lang/String; = "com.baidu.blink.WebView"

.field public static final WEBVIEW_NAME_MIUI:Ljava/lang/String; = "com.miui.webkit.WebView"

.field public static final WEBVIEW_NAME_SOGOU:Ljava/lang/String; = "sogou.webkit.WebView"

.field public static final WEBVIEW_NAME_TENCENT:Ljava/lang/String; = "com.tencent.smtt.webkit.WebView"

.field public static final WEBVIEW_NAME_TENCENT2:Ljava/lang/String; = "com.tencent.mm.ui.widget.MMWebView"

.field public static final WEBVIEW_NAME_UC:Ljava/lang/String; = "com.uc.webview.export.WebView"

.field private static final mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x32

    new-array v0, v0, [Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    sput-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    new-instance v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;-><init>(Lmiui/contentcatcher/sdk/utils/WebViewUtils$1;)V

    const/16 v3, 0x14

    aput-object v1, v0, v3

    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    aget-object v0, v0, v3

    iget-object v0, v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    const-string/jumbo v1, "sogou.webkit.WebView"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    new-instance v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    invoke-direct {v1, v2}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;-><init>(Lmiui/contentcatcher/sdk/utils/WebViewUtils$1;)V

    const/16 v3, 0x16

    aput-object v1, v0, v3

    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    aget-object v0, v0, v3

    iget-object v0, v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    const-string v1, "android.webkit.WebView"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    new-instance v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    invoke-direct {v1, v2}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;-><init>(Lmiui/contentcatcher/sdk/utils/WebViewUtils$1;)V

    const/16 v3, 0x17

    aput-object v1, v0, v3

    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    aget-object v0, v0, v3

    iget-object v0, v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    const-string v1, "com.miui.webkit.WebView"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    aget-object v0, v0, v3

    iget-object v0, v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    const-string v1, "com.baidu.blink.WebView"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    new-instance v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    invoke-direct {v1, v2}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;-><init>(Lmiui/contentcatcher/sdk/utils/WebViewUtils$1;)V

    const/16 v3, 0x1c

    aput-object v1, v0, v3

    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    aget-object v0, v0, v3

    iget-object v0, v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    const-string v1, "com.baidu.webkit.sdk.WebView"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    new-instance v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    invoke-direct {v1, v2}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;-><init>(Lmiui/contentcatcher/sdk/utils/WebViewUtils$1;)V

    const/16 v3, 0x1d

    aput-object v1, v0, v3

    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    aget-object v0, v0, v3

    iget-object v0, v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    const-string v1, "com.uc.webview.export.WebView"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    new-instance v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    invoke-direct {v1, v2}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;-><init>(Lmiui/contentcatcher/sdk/utils/WebViewUtils$1;)V

    const/16 v3, 0x1f

    aput-object v1, v0, v3

    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    aget-object v0, v0, v3

    iget-object v0, v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    const-string v1, "com.tencent.smtt.webkit.WebView"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    new-instance v1, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    invoke-direct {v1, v2}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;-><init>(Lmiui/contentcatcher/sdk/utils/WebViewUtils$1;)V

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    aget-object v0, v0, v2

    iget-object v0, v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    const-string v1, "com.tencent.mm.ui.widget.MMWebView"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addToWebViewClassMatcher(Ljava/lang/String;)V
    .locals 5

    const-class v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x32

    if-ge v1, v2, :cond_3

    const/4 v2, 0x5

    if-gt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    sget-object v2, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    new-instance v3, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;-><init>(Lmiui/contentcatcher/sdk/utils/WebViewUtils$1;)V

    aput-object v3, v2, v1

    :cond_2
    sget-object v2, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    aget-object v2, v2, v1

    invoke-static {v2, p0}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->access$100(Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static checkViewMatchedByClassName(Landroid/view/View;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_1
    return v0
.end method

.method private static foundFromWebViewClassMatcher(Ljava/lang/String;[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;)Z
    .locals 9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x32

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    aget-object v2, p1, v0

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v3, 0x0

    add-int/lit8 v4, v0, -0x5

    iget-object v5, v2, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->mMatchList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_2

    const/4 v3, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v1, 0x1

    return v1

    :cond_2
    goto :goto_0

    :cond_3
    nop

    return v1
.end method

.method public static initWebViewJsInterface(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    instance-of v0, p0, Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$NativeWebViewUtils;->addJavascriptInterface(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$ThirdWebViewUtils;->addJavascriptInterface(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static isSystemView(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.view"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.widget"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized isWebView(Landroid/view/View;)Z
    .locals 5

    const-class v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    monitor-exit v0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    invoke-static {v3, v4}, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->foundFromWebViewClassMatcher(Ljava/lang/String;[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    goto :goto_0

    :cond_2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized removeFromWebViewClassMatcher(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lmiui/contentcatcher/sdk/utils/WebViewUtils;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x32

    if-ge v1, v2, :cond_3

    const/4 v2, 0x5

    if-gt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    sget-object v2, Lmiui/contentcatcher/sdk/utils/WebViewUtils;->mWebViewClassMatcherArray:[Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;

    aget-object v2, v2, v1

    invoke-static {v2, p0}, Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;->access$200(Lmiui/contentcatcher/sdk/utils/WebViewUtils$WebViewClassMatcher;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v0

    return-void

    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
