.class public Landroid/view/ForceDarkHelper;
.super Ljava/lang/Object;
.source "ForceDarkHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ForceDarkHelper$AssetManager;,
        Landroid/view/ForceDarkHelper$AppDarkModeObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static TAG:Ljava/lang/String;

.field private static volatile sInstance:Landroid/view/ForceDarkHelper;


# instance fields
.field private mAppDarkModeObserverRegisted:Z

.field private mBaiduWebViewGetSettingsExt:Ljava/lang/reflect/Method;

.field private mBaiduWebViewSetNightModeEnabledExt:Ljava/lang/reflect/Method;

.field private mContext:Landroid/content/Context;

.field private mIsAppDarkModeEnable:Z

.field private mIsDarkModeEnabled:Z

.field private mIsDarkModeSupported:Z

.field private mIsForceDarkEnabled:Z

.field private mIsInputMethod:Z

.field private mLabToRgb:Landroid/graphics/ColorSpace$Connector;

.field private mRgbToLab:Landroid/graphics/ColorSpace$Connector;

.field private mTencentWebViewMethod:Ljava/lang/reflect/Method;

.field private mUCWebViewMethod:Ljava/lang/reflect/Method;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ForceDarkHelper"

    sput-object v0, Landroid/view/ForceDarkHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ForceDarkHelper;->mIsAppDarkModeEnable:Z

    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Named;->CIE_LAB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/ColorSpace;->connect(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ForceDarkHelper;->mRgbToLab:Landroid/graphics/ColorSpace$Connector;

    sget-object v0, Landroid/graphics/ColorSpace$Named;->CIE_LAB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/ColorSpace;->connect(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ForceDarkHelper;->mLabToRgb:Landroid/graphics/ColorSpace$Connector;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/view/ForceDarkHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/ForceDarkHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/ForceDarkHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Landroid/view/ForceDarkHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/view/ForceDarkHelper;->mIsAppDarkModeEnable:Z

    return p1
.end method

.method private getDarkModeAppSetting(Ljava/lang/String;)Z
    .locals 5

    const-string/jumbo v0, "security"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Lmiui/security/ISecurityManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/security/ISecurityManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lmiui/security/ISecurityManager;->getAppDarkMode(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Landroid/view/ForceDarkHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "start window getDarkModeAppSetting error: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v1
.end method

.method public static getInstance()Landroid/view/ForceDarkHelper;
    .locals 2

    sget-object v0, Landroid/view/ForceDarkHelper;->sInstance:Landroid/view/ForceDarkHelper;

    if-nez v0, :cond_1

    const-class v0, Landroid/view/ForceDarkHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/view/ForceDarkHelper;->sInstance:Landroid/view/ForceDarkHelper;

    if-nez v1, :cond_0

    new-instance v1, Landroid/view/ForceDarkHelper;

    invoke-direct {v1}, Landroid/view/ForceDarkHelper;-><init>()V

    sput-object v1, Landroid/view/ForceDarkHelper;->sInstance:Landroid/view/ForceDarkHelper;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Landroid/view/ForceDarkHelper;->sInstance:Landroid/view/ForceDarkHelper;

    return-object v0
.end method

.method private loadWebViewNightModeMethod(Landroid/content/Context;)V
    .locals 6

    iget-object v0, p0, Landroid/view/ForceDarkHelper;->mUCWebViewMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/view/ForceDarkHelper;->mBaiduWebViewGetSettingsExt:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ForceDarkHelper;->mBaiduWebViewSetNightModeEnabledExt:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x2f720f5d

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_3

    const v3, 0x1022769d

    if-eq v2, v3, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string v2, "com.UCMobile"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v5

    goto :goto_0

    :cond_3
    const-string v2, "com.baidu.searchbox"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v4

    :goto_0
    if-eqz v1, :cond_5

    if-eq v1, v5, :cond_4

    goto :goto_1

    :cond_4
    const-string v0, "com.uc.webview.export.extension.UCSettings"

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v5, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setGlobalBoolValue"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ForceDarkHelper;->mUCWebViewMethod:Ljava/lang/reflect/Method;

    goto :goto_1

    :cond_5
    const-string v0, "com.baidu.browser.sailor.BdSailorWebView"

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v5, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getSettingsExt"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ForceDarkHelper;->mBaiduWebViewGetSettingsExt:Ljava/lang/reflect/Method;

    const-string v0, "com.baidu.browser.sailor.ISailorWebSettingsExt"

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v5, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setNightModeEnabledExt"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ForceDarkHelper;->mBaiduWebViewSetNightModeEnabledExt:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v1, Landroid/view/ForceDarkHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadWebViewNightModeMethod "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void

    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method public changePaintWhenDrawBitmap(Landroid/graphics/BaseCanvas;Landroid/graphics/Paint;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/graphics/MiuiCanvas;

    invoke-virtual {v0}, Landroid/graphics/MiuiCanvas;->isForceDarkAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/MiuiCanvas;->isHardwareAccelerated()Z

    :cond_0
    return-void
.end method

.method public changePaintWhenDrawPatch(Landroid/graphics/BaseCanvas;Landroid/graphics/Paint;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/graphics/MiuiCanvas;

    invoke-virtual {v0}, Landroid/graphics/MiuiCanvas;->isForceDarkAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/MiuiCanvas;->isHardwareAccelerated()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p2}, Landroid/view/ForceDarkHelper;->makeDark(Landroid/graphics/Paint;)Z

    :cond_0
    return-void
.end method

.method public changePaintWhenDrawRect(Landroid/graphics/BaseCanvas;Landroid/graphics/Paint;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/graphics/MiuiCanvas;

    invoke-virtual {v0}, Landroid/graphics/MiuiCanvas;->isForceDarkAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/MiuiCanvas;->isHardwareAccelerated()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p2}, Landroid/view/ForceDarkHelper;->makeDark(Landroid/graphics/Paint;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/MiuiCanvas;->setHasForceDark(Z)V

    :cond_0
    return-void
.end method

.method public changePaintWhenDrawText(Landroid/graphics/BaseCanvas;Landroid/graphics/Paint;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/graphics/MiuiCanvas;

    invoke-virtual {v0}, Landroid/graphics/MiuiCanvas;->isForceDarkAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/MiuiCanvas;->hasForceDark()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2}, Landroid/view/ForceDarkHelper;->makeLight(Landroid/graphics/Paint;)Z

    :cond_0
    return-void
.end method

.method public enableHardwareAccelerationIfNeeded(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 5

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    iget-boolean v3, p0, Landroid/view/ForceDarkHelper;->mIsDarkModeEnabled:Z

    if-eqz v3, :cond_1

    const-string v3, "debug.hwui.force_dark"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/view/ForceDarkHelper;->mIsDarkModeSupported:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/view/ForceDarkHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/view/ForceDarkHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Landroid/view/ForceDarkHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/view/ForceDarkHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " force enable hardware acceleration"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    return v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-object p1, p0, Landroid/view/ForceDarkHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x20

    if-ne v2, v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Landroid/view/ForceDarkHelper;->mIsDarkModeEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.xiaomi.vipaccount"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-direct {p0, v2}, Landroid/view/ForceDarkHelper;->getDarkModeAppSetting(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v5, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v5, v3

    :goto_2
    iput-boolean v5, p0, Landroid/view/ForceDarkHelper;->mIsAppDarkModeEnable:Z

    const-string v5, "baidu.input"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, ".inputmethod"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "com.tencent.qqpinyin"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    move v5, v4

    goto :goto_4

    :cond_4
    :goto_3
    move v5, v3

    :goto_4
    iput-boolean v5, p0, Landroid/view/ForceDarkHelper;->mIsInputMethod:Z

    iget-boolean v5, p0, Landroid/view/ForceDarkHelper;->mIsInputMethod:Z

    if-nez v5, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    instance-of v6, v5, Landroid/view/ForceDarkHelper$AssetManager;

    if-eqz v6, :cond_6

    move-object v6, v5

    check-cast v6, Landroid/view/ForceDarkHelper$AssetManager;

    invoke-interface {v6}, Landroid/view/ForceDarkHelper$AssetManager;->isDarkModeSupported()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_5

    :cond_5
    move v3, v4

    :goto_5
    iput-boolean v3, p0, Landroid/view/ForceDarkHelper;->mIsDarkModeSupported:Z

    :cond_6
    invoke-direct {p0, p1}, Landroid/view/ForceDarkHelper;->loadWebViewNightModeMethod(Landroid/content/Context;)V

    return-void
.end method

.method injectViewWhenUpdateDisplayListIfDirty(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->isForceDarkAllowed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/view/ForceDarkHelper;->mIsForceDarkEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->isOpaque()Z

    move-result v1

    if-nez v1, :cond_1

    instance-of v1, p1, Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    const-string/jumbo v1, "tv.danmaku.bili"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/RenderNode;->setForceDarkAllowed(Z)Z

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public isDarkModeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ForceDarkHelper;->mIsDarkModeEnabled:Z

    return v0
.end method

.method public isDarkModeSupported()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ForceDarkHelper;->mIsDarkModeSupported:Z

    return v0
.end method

.method public makeDark(Landroid/graphics/Paint;)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v1

    iget-object v3, p0, Landroid/view/ForceDarkHelper;->mRgbToLab:Landroid/graphics/ColorSpace$Connector;

    invoke-static {v1, v2}, Landroid/graphics/Color;->red(J)F

    move-result v4

    invoke-static {v1, v2}, Landroid/graphics/Color;->green(J)F

    move-result v5

    invoke-static {v1, v2}, Landroid/graphics/Color;->blue(J)F

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/ColorSpace$Connector;->transform(FFF)[F

    move-result-object v3

    const/high16 v4, 0x42dc0000    # 110.0f

    aget v5, v3, v0

    sub-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aget v5, v3, v0

    cmpg-float v5, v4, v5

    if-gez v5, :cond_1

    aput v4, v3, v0

    iget-object v5, p0, Landroid/view/ForceDarkHelper;->mLabToRgb:Landroid/graphics/ColorSpace$Connector;

    invoke-virtual {v5, v3}, Landroid/graphics/ColorSpace$Connector;->transform([F)[F

    move-result-object v5

    aget v0, v5, v0

    const/4 v6, 0x1

    aget v7, v5, v6

    const/4 v8, 0x2

    aget v8, v5, v8

    invoke-static {v1, v2}, Landroid/graphics/Color;->alpha(J)F

    move-result v9

    invoke-static {v0, v7, v8, v9}, Landroid/graphics/Color;->pack(FFFF)J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Paint;->setColor(J)V

    return v6

    :cond_1
    return v0
.end method

.method public makeLight(Landroid/graphics/Paint;)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColorLong()J

    move-result-wide v1

    iget-object v3, p0, Landroid/view/ForceDarkHelper;->mRgbToLab:Landroid/graphics/ColorSpace$Connector;

    invoke-static {v1, v2}, Landroid/graphics/Color;->red(J)F

    move-result v4

    invoke-static {v1, v2}, Landroid/graphics/Color;->green(J)F

    move-result v5

    invoke-static {v1, v2}, Landroid/graphics/Color;->blue(J)F

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/ColorSpace$Connector;->transform(FFF)[F

    move-result-object v3

    const/high16 v4, 0x42dc0000    # 110.0f

    aget v5, v3, v0

    sub-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aget v5, v3, v0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_1

    aput v4, v3, v0

    iget-object v5, p0, Landroid/view/ForceDarkHelper;->mLabToRgb:Landroid/graphics/ColorSpace$Connector;

    invoke-virtual {v5, v3}, Landroid/graphics/ColorSpace$Connector;->transform([F)[F

    move-result-object v5

    aget v0, v5, v0

    const/4 v6, 0x1

    aget v7, v5, v6

    const/4 v8, 0x2

    aget v8, v5, v8

    invoke-static {v1, v2}, Landroid/graphics/Color;->alpha(J)F

    move-result v9

    invoke-static {v0, v7, v8, v9}, Landroid/graphics/Color;->pack(FFFF)J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Paint;->setColor(J)V

    return v6

    :cond_1
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/view/ForceDarkHelper;->mIsDarkModeEnabled:Z

    return-void
.end method

.method public registAppDarkModeObserver(Landroid/content/Context;)V
    .locals 6

    iget-boolean v0, p0, Landroid/view/ForceDarkHelper;->mAppDarkModeObserverRegisted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/MiuiBinderProxy;

    const-string/jumbo v1, "uimode"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "android.app.IUiModeManager"

    invoke-direct {v0, v1, v2}, Landroid/os/MiuiBinderProxy;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    const v1, 0xfffffd

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Landroid/view/ForceDarkHelper$AppDarkModeObserver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Landroid/view/ForceDarkHelper$AppDarkModeObserver;-><init>(Landroid/view/ForceDarkHelper;Landroid/view/ForceDarkHelper$1;)V

    invoke-virtual {v4}, Landroid/view/ForceDarkHelper$AppDarkModeObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v5, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/MiuiBinderProxy;->callOneWayTransact(I[Ljava/lang/Object;)I

    iput-boolean v4, p0, Landroid/view/ForceDarkHelper;->mAppDarkModeObserverRegisted:Z

    return-void
.end method

.method public updateForceDark(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/view/ForceDarkHelper;->mIsForceDarkEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/view/ForceDarkHelper;->mIsForceDarkEnabled:Z

    iget-object v0, p0, Landroid/view/ForceDarkHelper;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ForceDarkHelper;->updateWebView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public updateForceDarkForCanvas(ZLandroid/graphics/BaseCanvas;)V
    .locals 2

    move-object v0, p2

    check-cast v0, Landroid/graphics/MiuiCanvas;

    iget-boolean v1, p0, Landroid/view/ForceDarkHelper;->mIsForceDarkEnabled:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/MiuiCanvas;->setForceDarkAllowed(Z)V

    iget-boolean v1, p0, Landroid/view/ForceDarkHelper;->mIsForceDarkEnabled:Z

    invoke-virtual {v0, v1}, Landroid/graphics/MiuiCanvas;->setForceDark(Z)V

    return-void
.end method

.method updateForceDarkForRenderNode(Landroid/graphics/RenderNode;Landroid/graphics/BaseCanvas;)V
    .locals 2

    move-object v0, p2

    check-cast v0, Landroid/graphics/MiuiCanvas;

    invoke-virtual {v0}, Landroid/graphics/MiuiCanvas;->hasForceDark()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/graphics/RenderNode;->setForceDarkAllowed(Z)Z

    :cond_0
    return-void
.end method

.method public updateForceDarkForView(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->isForceDarkAllowed()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Landroid/view/ForceDarkHelper;->mIsForceDarkEnabled:Z

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0x65

    const/4 v3, 0x1

    if-eq v0, v1, :cond_5

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    const-string v1, "bg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "background"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "btn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "button"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p1, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1, v2}, Landroid/graphics/RenderNode;->setUsageHint(I)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v1, p1, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1, v3}, Landroid/graphics/RenderNode;->setUsageHint(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v1, Landroid/view/ForceDarkHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateForceDarkForView fail to get view name"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Blur"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p1, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1, v3}, Landroid/graphics/RenderNode;->setUsageHint(I)V

    goto :goto_4

    :cond_6
    instance-of v1, p1, Landroid/widget/TextView;

    if-nez v1, :cond_8

    const-string v1, "Button"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    const-string v1, "LottieAnimationView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p1, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1, v3}, Landroid/graphics/RenderNode;->setUsageHint(I)V

    goto :goto_4

    :cond_8
    :goto_3
    iget-object v1, p1, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1, v2}, Landroid/graphics/RenderNode;->setUsageHint(I)V

    :cond_9
    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sina.weibo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "SplitDraggableImageView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p1, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/RenderNode;->setForceDarkAllowed(Z)Z

    :cond_a
    return-void

    :cond_b
    :goto_5
    return-void
.end method

.method updateForceDarkMode(Landroid/view/ViewRootImpl;)V
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Landroid/view/ForceDarkHelper;->mIsDarkModeEnabled:Z

    const/16 v3, 0x20

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    if-ne v2, v3, :cond_6

    :cond_0
    nop

    const-string v2, "debug.hwui.force_dark"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sget-object v6, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v1, v6}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    const/16 v7, 0x117

    invoke-virtual {v6, v7, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    move v7, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v7, v4

    :goto_1
    move v0, v7

    if-eqz v0, :cond_5

    const/16 v7, 0x116

    if-eqz v2, :cond_4

    iget-boolean v8, p0, Landroid/view/ForceDarkHelper;->mIsDarkModeSupported:Z

    if-eqz v8, :cond_3

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v8, v8, 0x30

    if-eq v8, v3, :cond_4

    :cond_3
    move v3, v4

    goto :goto_2

    :cond_4
    move v3, v5

    :goto_2
    invoke-virtual {v6, v7, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    :cond_5
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    :cond_6
    if-eqz v0, :cond_7

    iget-boolean v2, p0, Landroid/view/ForceDarkHelper;->mIsAppDarkModeEnable:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Landroid/view/ForceDarkHelper;->mIsInputMethod:Z

    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    move v4, v5

    :goto_3
    iput-boolean v4, p0, Landroid/view/ForceDarkHelper;->mIsForceDarkEnabled:Z

    iget-object v2, p1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v2, :cond_8

    iget-object v2, p1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget-boolean v3, p0, Landroid/view/ForceDarkHelper;->mIsForceDarkEnabled:Z

    invoke-virtual {v2, v3}, Landroid/view/ThreadedRenderer;->setForceDark(Z)Z

    :cond_8
    iget-object v2, p1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_9

    iget-object v2, p1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/ViewRootImpl;->invalidateWorld(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method public updateWebView(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Landroid/view/ForceDarkHelper;->mUCWebViewMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ForceDarkHelper;->mBaiduWebViewGetSettingsExt:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ForceDarkHelper;->mBaiduWebViewSetNightModeEnabledExt:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v3, "com.uc.webview.browser.BrowserWebView"

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.uc.webview.export.WebView"

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.baidu.browser.sailor.BdSailorWebView"

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iput-object p1, p0, Landroid/view/ForceDarkHelper;->mView:Landroid/view/View;

    iget-object v3, p0, Landroid/view/ForceDarkHelper;->mUCWebViewMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Landroid/view/ForceDarkHelper;->mBaiduWebViewGetSettingsExt:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/view/ForceDarkHelper;->mBaiduWebViewSetNightModeEnabledExt:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/view/ForceDarkHelper;->mBaiduWebViewSetNightModeEnabledExt:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/view/ForceDarkHelper;->mBaiduWebViewGetSettingsExt:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-boolean v7, p0, Landroid/view/ForceDarkHelper;->mIsForceDarkEnabled:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Landroid/view/ForceDarkHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setWebViewNightMode "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
