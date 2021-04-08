.class public Lcom/miui/mishare/app/util/WPSConvertPDFSdkHelper;
.super Ljava/lang/Object;
.source "WPSConvertPDFSdkHelper.java"


# static fields
.field public static final PACKAGE_WPS_LITE:Ljava/lang/String; = "cn.wps.moffice_eng.xiaomi.lite"

.field public static final SUPPORT_MIN_VERSIONCODE_LITE:I = 0xc9

.field private static sOfficeFileExtension:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/mishare/app/util/WPSConvertPDFSdkHelper$1;

    invoke-direct {v0}, Lcom/miui/mishare/app/util/WPSConvertPDFSdkHelper$1;-><init>()V

    sput-object v0, Lcom/miui/mishare/app/util/WPSConvertPDFSdkHelper;->sOfficeFileExtension:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInstalled(Landroid/content/Context;)Z
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "cn.wps.moffice_eng.xiaomi.lite"

    const/16 v2, 0x2000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    nop

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isInstalledAndSupportConvert(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/miui/mishare/app/util/WPSConvertPDFSdkHelper;->isInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/mishare/app/util/WPSConvertPDFSdkHelper;->isSupport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isOfficeFile(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/miui/mishare/app/util/WPSConvertPDFSdkHelper;->sOfficeFileExtension:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "cn.wps.moffice_eng.xiaomi.lite"

    const/16 v2, 0x2000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0xc9

    if-lt v2, v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method
