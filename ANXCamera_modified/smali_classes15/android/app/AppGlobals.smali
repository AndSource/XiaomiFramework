.class public Landroid/app/AppGlobals;
.super Ljava/lang/Object;
.source "AppGlobals.java"


# static fields
.field public static mAppSlideConfig:Lmiui/slide/AppSlideConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/app/AppGlobals;->mAppSlideConfig:Lmiui/slide/AppSlideConfig;

    invoke-static {}, Lmiui/os/DeviceFeature;->hasMirihiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lmiui/slide/AppSlideConfig;

    invoke-direct {v0}, Lmiui/slide/AppSlideConfig;-><init>()V

    sput-object v0, Landroid/app/AppGlobals;->mAppSlideConfig:Lmiui/slide/AppSlideConfig;

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInitialApplication()Landroid/app/Application;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public static getInitialPackage()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIntCoreSetting(Ljava/lang/String;I)I
    .locals 2

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Landroid/app/ActivityThread;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v1

    return v1

    :cond_0
    return p1
.end method

.method public static getPackageManager()Landroid/content/pm/IPackageManager;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method
