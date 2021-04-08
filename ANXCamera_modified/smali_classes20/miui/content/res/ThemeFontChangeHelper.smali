.class public Lmiui/content/res/ThemeFontChangeHelper;
.super Ljava/lang/Object;
.source "ThemeFontChangeHelper.java"


# static fields
.field private static sWebViewThemeChanged:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lmiui/content/res/ThemeFontChangeHelper;->sWebViewThemeChanged:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static markWebViewCreated(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/GlobalConfiguration;->getExtraConfig(Landroid/content/res/Configuration;)Landroid/content/res/MiuiConfiguration;

    move-result-object v0

    sget v1, Lmiui/content/res/ThemeFontChangeHelper;->sWebViewThemeChanged:I

    invoke-virtual {v0, v1}, Landroid/content/res/MiuiConfiguration;->checkFontChange(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, v0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    sput v1, Lmiui/content/res/ThemeFontChangeHelper;->sWebViewThemeChanged:I

    :cond_0
    return-void
.end method

.method public static quitProcessIfNeed(Landroid/content/res/Configuration;)V
    .locals 3

    if-eqz p0, :cond_2

    invoke-static {}, Lmiui/ddm/DdmHandleAppName;->getAppName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "system_process"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lmiui/content/res/GlobalConfiguration;->getExtraConfig(Landroid/content/res/Configuration;)Landroid/content/res/MiuiConfiguration;

    move-result-object v0

    sget v1, Lmiui/content/res/ThemeFontChangeHelper;->sWebViewThemeChanged:I

    invoke-virtual {v0, v1}, Landroid/content/res/MiuiConfiguration;->checkFontChange(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ThemeFontChangeHelper"

    const-string v2, "app has checked webview-font change and process will restart."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method
