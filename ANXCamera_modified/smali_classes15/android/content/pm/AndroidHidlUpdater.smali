.class public Landroid/content/pm/AndroidHidlUpdater;
.super Landroid/content/pm/PackageSharedLibraryUpdater;
.source "AndroidHidlUpdater.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/pm/PackageSharedLibraryUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public updatePackage(Landroid/content/pm/PackageParser$Package;)V
    .locals 5

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x1c

    if-gt v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :cond_2
    :goto_1
    const-string v3, "android.hidl.manager-V1.0-java"

    const-string v4, "android.hidl.base-V1.0-java"

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1, v4}, Landroid/content/pm/AndroidHidlUpdater;->prefixRequiredLibrary(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v3}, Landroid/content/pm/AndroidHidlUpdater;->prefixRequiredLibrary(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-static {p1, v4}, Landroid/content/pm/AndroidHidlUpdater;->removeLibrary(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)V

    invoke-static {p1, v3}, Landroid/content/pm/AndroidHidlUpdater;->removeLibrary(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
