.class public Landroid/content/pm/OrgApacheHttpLegacyUpdater;
.super Landroid/content/pm/PackageSharedLibraryUpdater;
.source "OrgApacheHttpLegacyUpdater.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/pm/PackageSharedLibraryUpdater;-><init>()V

    return-void
.end method

.method private static apkTargetsApiLevelLessThanOrEqualToOMR1(Landroid/content/pm/PackageParser$Package;)Z
    .locals 2

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public updatePackage(Landroid/content/pm/PackageParser$Package;)V
    .locals 1

    invoke-static {p1}, Landroid/content/pm/OrgApacheHttpLegacyUpdater;->apkTargetsApiLevelLessThanOrEqualToOMR1(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "org.apache.http.legacy"

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/OrgApacheHttpLegacyUpdater;->prefixRequiredLibrary(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
