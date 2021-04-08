.class public Lmiui/util/ForceDarkHelper;
.super Ljava/lang/Object;
.source "ForceDarkHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/ForceDarkHelper$AppDarkModeObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static TAG:Ljava/lang/String;

.field private static volatile sInstance:Lmiui/util/ForceDarkHelper;


# instance fields
.field private mAppDarkModeObserverRegisted:Z

.field private mBaiduWebViewGetSettingsExt:Ljava/lang/reflect/Method;

.field private mBaiduWebViewSetNightModeEnabledExt:Ljava/lang/reflect/Method;

.field private mContext:Landroid/content/Context;

.field private mForceDark:Z

.field private mIsAppDarkModeEnable:Z

.field private mIsDarkModeEnabled:Z

.field private mIsDarkModeSupported:Z

.field private mTencentWebViewMethod:Ljava/lang/reflect/Method;

.field private mUCWebViewMethod:Ljava/lang/reflect/Method;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ForceDarkHelper"

    sput-object v0, Lmiui/util/ForceDarkHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmiui/util/ForceDarkHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/util/ForceDarkHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lmiui/util/ForceDarkHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lmiui/util/ForceDarkHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/util/ForceDarkHelper;->mIsAppDarkModeEnable:Z

    return p1
.end method

.method private getDarkModeAppSetting(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "security"

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

    sget-object v3, Lmiui/util/ForceDarkHelper;->TAG:Ljava/lang/String;

    const-string v4, "start window getDarkModeAppSetting error: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v1
.end method

.method public static getInstance()Lmiui/util/ForceDarkHelper;
    .locals 2

    sget-object v0, Lmiui/util/ForceDarkHelper;->sInstance:Lmiui/util/ForceDarkHelper;

    if-nez v0, :cond_1

    const-class v0, Lmiui/util/ForceDarkHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lmiui/util/ForceDarkHelper;->sInstance:Lmiui/util/ForceDarkHelper;

    if-nez v1, :cond_0

    new-instance v1, Lmiui/util/ForceDarkHelper;

    invoke-direct {v1}, Lmiui/util/ForceDarkHelper;-><init>()V

    sput-object v1, Lmiui/util/ForceDarkHelper;->sInstance:Lmiui/util/ForceDarkHelper;

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
    sget-object v0, Lmiui/util/ForceDarkHelper;->sInstance:Lmiui/util/ForceDarkHelper;

    return-object v0
.end method

.method private loadWebViewNightModeMethod(Landroid/content/Context;)V
    .locals 6

    iget-object v0, p0, Lmiui/util/ForceDarkHelper;->mUCWebViewMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_6

    iget-object v0, p0, Lmiui/util/ForceDarkHelper;->mBaiduWebViewGetSettingsExt:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/util/ForceDarkHelper;->mBaiduWebViewSetNightModeEnabledExt:Ljava/lang/reflect/Method;

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

    const-string v1, "setGlobalBoolValue"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/ForceDarkHelper;->mUCWebViewMethod:Ljava/lang/reflect/Method;

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

    iput-object v0, p0, Lmiui/util/ForceDarkHelper;->mBaiduWebViewGetSettingsExt:Ljava/lang/reflect/Method;

    const-string v0, "com.baidu.browser.sailor.ISailorWebSettingsExt"

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v5, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setNightModeEnabledExt"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/ForceDarkHelper;->mBaiduWebViewSetNightModeEnabledExt:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v1, Lmiui/util/ForceDarkHelper;->TAG:Ljava/lang/String;

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

    iget-boolean v3, p0, Lmiui/util/ForceDarkHelper;->mIsDarkModeEnabled:Z

    if-eqz v3, :cond_1

    const-string v3, "debug.hwui.force_dark"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lmiui/util/ForceDarkHelper;->mIsDarkModeSupported:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lmiui/util/ForceDarkHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lmiui/util/ForceDarkHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lmiui/util/ForceDarkHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/util/ForceDarkHelper;->mContext:Landroid/content/Context;

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
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-object p1, p0, Lmiui/util/ForceDarkHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    const/4 v3, 0x0

    const/16 v4, 0x20

    const/4 v5, 0x1

    if-ne v2, v4, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lmiui/util/ForceDarkHelper;->mIsDarkModeEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lmiui/util/ForceDarkHelper;->getDarkModeAppSetting(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmiui/util/ForceDarkHelper;->mIsAppDarkModeEnable:Z

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getSizeConfigurations()[Landroid/content/res/Configuration;

    move-result-object v6

    if-eqz v6, :cond_2

    array-length v7, v6

    sub-int/2addr v7, v5

    :goto_1
    if-ltz v7, :cond_2

    aget-object v8, v6, v7

    iget v9, v8, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v9, v9, 0x30

    if-ne v9, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x2

    if-lt v2, v4, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v4

    if-nez v4, :cond_3

    move v3, v5

    goto :goto_2

    :cond_3
    nop

    :goto_2
    iput-boolean v3, p0, Lmiui/util/ForceDarkHelper;->mIsDarkModeSupported:Z

    invoke-direct {p0, p1}, Lmiui/util/ForceDarkHelper;->loadWebViewNightModeMethod(Landroid/content/Context;)V

    return-void
.end method

.method public isDarkModeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lmiui/util/ForceDarkHelper;->mIsDarkModeEnabled:Z

    return v0
.end method

.method public isDarkModeSupported()Z
    .locals 1

    iget-boolean v0, p0, Lmiui/util/ForceDarkHelper;->mIsDarkModeSupported:Z

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
    iput-boolean v0, p0, Lmiui/util/ForceDarkHelper;->mIsDarkModeEnabled:Z

    return-void
.end method

.method public registAppDarkModeObserver(Landroid/content/Context;)V
    .locals 6

    iget-boolean v0, p0, Lmiui/util/ForceDarkHelper;->mAppDarkModeObserverRegisted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/MiuiBinderProxy;

    const-string v1, "uimode"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "android.app.IUiModeManager"

    invoke-direct {v0, v1, v2}, Landroid/os/MiuiBinderProxy;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    const v1, 0xfffffd

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Lmiui/util/ForceDarkHelper$AppDarkModeObserver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lmiui/util/ForceDarkHelper$AppDarkModeObserver;-><init>(Lmiui/util/ForceDarkHelper;Lmiui/util/ForceDarkHelper$1;)V

    invoke-virtual {v4}, Lmiui/util/ForceDarkHelper$AppDarkModeObserver;->asBinder()Landroid/os/IBinder;

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

    iput-boolean v4, p0, Lmiui/util/ForceDarkHelper;->mAppDarkModeObserverRegisted:Z

    return-void
.end method

.method public updateForceDark(Z)V
    .locals 1

    iget-boolean v0, p0, Lmiui/util/ForceDarkHelper;->mForceDark:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lmiui/util/ForceDarkHelper;->mForceDark:Z

    iget-object v0, p0, Lmiui/util/ForceDarkHelper;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lmiui/util/ForceDarkHelper;->updateWebView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public updateWebView(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lmiui/util/ForceDarkHelper;->mUCWebViewMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/util/ForceDarkHelper;->mBaiduWebViewGetSettingsExt:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/util/ForceDarkHelper;->mBaiduWebViewSetNightModeEnabledExt:Ljava/lang/reflect/Method;

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
    iput-object p1, p0, Lmiui/util/ForceDarkHelper;->mView:Landroid/view/View;

    iget-object v3, p0, Lmiui/util/ForceDarkHelper;->mUCWebViewMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lmiui/util/ForceDarkHelper;->mBaiduWebViewGetSettingsExt:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lmiui/util/ForceDarkHelper;->mBaiduWebViewSetNightModeEnabledExt:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lmiui/util/ForceDarkHelper;->mBaiduWebViewSetNightModeEnabledExt:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lmiui/util/ForceDarkHelper;->mBaiduWebViewGetSettingsExt:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-boolean v7, p0, Lmiui/util/ForceDarkHelper;->mForceDark:Z

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

    sget-object v3, Lmiui/util/ForceDarkHelper;->TAG:Ljava/lang/String;

    const-string v4, "setWebViewNightMode "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public useForceDark(Landroid/content/Context;)Z
    .locals 8

    const/4 v0, 0x0

    iget-boolean v1, p0, Lmiui/util/ForceDarkHelper;->mIsDarkModeEnabled:Z

    const/16 v2, 0x20

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    if-ne v1, v2, :cond_6

    :cond_0
    nop

    const-string v1, "debug.hwui.force_dark"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sget-object v5, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    const/16 v6, 0x117

    invoke-virtual {v5, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    move v6, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v6, v3

    :goto_1
    move v0, v6

    if-eqz v0, :cond_5

    const/16 v6, 0x116

    if-eqz v1, :cond_4

    iget-boolean v7, p0, Lmiui/util/ForceDarkHelper;->mIsDarkModeSupported:Z

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v7, v7, 0x30

    if-eq v7, v2, :cond_4

    :cond_3
    move v2, v3

    goto :goto_2

    :cond_4
    move v2, v4

    :goto_2
    invoke-virtual {v5, v6, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    :cond_5
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    :cond_6
    if-eqz v0, :cond_7

    iget-boolean v1, p0, Lmiui/util/ForceDarkHelper;->mIsAppDarkModeEnable:Z

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    move v3, v4

    :goto_3
    move v0, v3

    return v0
.end method
