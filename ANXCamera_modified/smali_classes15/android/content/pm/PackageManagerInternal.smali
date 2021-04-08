.class public abstract Landroid/content/pm/PackageManagerInternal;
.super Ljava/lang/Object;
.source "PackageManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;,
        Landroid/content/pm/PackageManagerInternal$DefaultHomeProvider;,
        Landroid/content/pm/PackageManagerInternal$DefaultDialerProvider;,
        Landroid/content/pm/PackageManagerInternal$DefaultBrowserProvider;,
        Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;,
        Landroid/content/pm/PackageManagerInternal$PackagesProvider;,
        Landroid/content/pm/PackageManagerInternal$CheckPermissionDelegate;,
        Landroid/content/pm/PackageManagerInternal$PackageListObserver;,
        Landroid/content/pm/PackageManagerInternal$KnownPackage;
    }
.end annotation


# static fields
.field public static final ENABLE_ROLLBACK_FAILED:I = -0x1

.field public static final ENABLE_ROLLBACK_SUCCEEDED:I = 0x1

.field public static final EXTRA_ENABLE_ROLLBACK_INSTALLED_USERS:Ljava/lang/String; = "android.content.pm.extra.ENABLE_ROLLBACK_INSTALLED_USERS"

.field public static final EXTRA_ENABLE_ROLLBACK_INSTALL_FLAGS:Ljava/lang/String; = "android.content.pm.extra.ENABLE_ROLLBACK_INSTALL_FLAGS"

.field public static final EXTRA_ENABLE_ROLLBACK_TOKEN:Ljava/lang/String; = "android.content.pm.extra.ENABLE_ROLLBACK_TOKEN"

.field public static final EXTRA_ENABLE_ROLLBACK_USER:Ljava/lang/String; = "android.content.pm.extra.ENABLE_ROLLBACK_USER"

.field public static final PACKAGE_APP_PREDICTOR:I = 0xb

.field public static final PACKAGE_BROWSER:I = 0x4

.field public static final PACKAGE_CONFIGURATOR:I = 0x9

.field public static final PACKAGE_DOCUMENTER:I = 0x8

.field public static final PACKAGE_INCIDENT_REPORT_APPROVER:I = 0xa

.field public static final PACKAGE_INSTALLER:I = 0x2

.field public static final PACKAGE_PERMISSION_CONTROLLER:I = 0x6

.field public static final PACKAGE_SETUP_WIZARD:I = 0x1

.field public static final PACKAGE_SYSTEM:I = 0x0

.field public static final PACKAGE_SYSTEM_TEXT_CLASSIFIER:I = 0x5

.field public static final PACKAGE_VERIFIER:I = 0x3

.field public static final PACKAGE_WELLBEING:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addIsolatedUid(II)V
.end method

.method public abstract canAccessComponent(ILandroid/content/ComponentName;I)Z
.end method

.method public abstract canAccessInstantApps(II)Z
.end method

.method public abstract compileLayouts(Ljava/lang/String;)Z
.end method

.method public abstract filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z
.end method

.method public abstract finishPackageInstall(IZ)V
.end method

.method public abstract forEachInstalledPackage(Ljava/util/function/Consumer;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract forEachPackage(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract freeStorage(Ljava/lang/String;JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getActivityInfo(Landroid/content/ComponentName;III)Landroid/content/pm/ActivityInfo;
.end method

.method public abstract getApplicationEnabledState(Ljava/lang/String;I)I
.end method

.method public abstract getApplicationInfo(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;
.end method

.method public abstract getAppsWithSharedUserIds()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCheckPermissionDelegate()Landroid/content/pm/PackageManagerInternal$CheckPermissionDelegate;
.end method

.method public abstract getDefaultHomeActivity(I)Landroid/content/ComponentName;
.end method

.method public abstract getDisabledComponents(Ljava/lang/String;I)Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDisabledSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
.end method

.method public abstract getDisabledSystemPackageName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDistractingPackageRestrictions(Ljava/lang/String;I)I
.end method

.method public abstract getEnabledComponents(Ljava/lang/String;I)Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Landroid/content/ComponentName;"
        }
    .end annotation
.end method

.method public abstract getInstalledApplications(III)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInstantAppPackageName(I)Ljava/lang/String;
.end method

.method public abstract getKnownPackageName(II)Ljava/lang/String;
.end method

.method public abstract getNameForUid(I)Ljava/lang/String;
.end method

.method public abstract getOverlayPackages(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
.end method

.method public abstract getPackageInfo(Ljava/lang/String;III)Landroid/content/pm/PackageInfo;
.end method

.method public getPackageList()Landroid/content/pm/PackageList;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManagerInternal;->getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Landroid/content/pm/PackageList;

    move-result-object v0

    return-object v0
.end method

.method public abstract getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Landroid/content/pm/PackageList;
.end method

.method public abstract getPackageTargetSdkVersion(Ljava/lang/String;)I
.end method

.method public abstract getPackageUid(Ljava/lang/String;II)I
.end method

.method public abstract getPackagesForSharedUserId(Ljava/lang/String;I)[Ljava/lang/String;
.end method

.method public abstract getPermissionFlagsTEMP(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public abstract getSetupWizardPackageName()Ljava/lang/String;
.end method

.method public abstract getSharedUserIdForPackage(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSuspendedDialogInfo(Ljava/lang/String;I)Landroid/content/pm/SuspendDialogInfo;
.end method

.method public abstract getSuspendedPackageLauncherExtras(Ljava/lang/String;I)Landroid/os/Bundle;
.end method

.method public abstract getSuspendingPackage(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract getTargetPackageNames(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUidTargetSdkVersion(I)I
.end method

.method public abstract grantDefaultPermissionsToDefaultUseOpenWifiApp(Ljava/lang/String;I)V
.end method

.method public abstract grantEphemeralAccess(ILandroid/content/Intent;II)V
.end method

.method public abstract grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;IZ)V
.end method

.method public abstract hasInstantApplicationMetadata(Ljava/lang/String;I)Z
.end method

.method public abstract hasSignatureCapability(III)Z
    .param p3    # I
        .annotation build Landroid/content/pm/PackageParser$SigningDetails$CertCapabilities;
        .end annotation
    .end param
.end method

.method public abstract isApexPackage(Ljava/lang/String;)Z
.end method

.method public abstract isDataRestoreSafe(Landroid/content/pm/Signature;Ljava/lang/String;)Z
.end method

.method public abstract isDataRestoreSafe([BLjava/lang/String;)Z
.end method

.method public abstract isEnabledAndMatches(Landroid/content/pm/ComponentInfo;II)Z
.end method

.method public abstract isInstantApp(Ljava/lang/String;I)Z
.end method

.method public abstract isInstantAppInstallerComponent(Landroid/content/ComponentName;)Z
.end method

.method public abstract isLegacySystemApp(Landroid/content/pm/PackageParser$Package;)Z
.end method

.method public abstract isOnlyCoreApps()Z
.end method

.method public abstract isPackageDataProtected(ILjava/lang/String;)Z
.end method

.method public abstract isPackageEphemeral(ILjava/lang/String;)Z
.end method

.method public abstract isPackagePersistent(Ljava/lang/String;)Z
.end method

.method public abstract isPackageStateProtected(Ljava/lang/String;I)Z
.end method

.method public abstract isPackageSuspended(Ljava/lang/String;I)Z
.end method

.method public abstract isPermissionsReviewRequired(Ljava/lang/String;I)Z
.end method

.method public abstract isPlatformSigned(Ljava/lang/String;)Z
.end method

.method public abstract isResolveActivityComponent(Landroid/content/pm/ComponentInfo;)Z
.end method

.method public abstract migrateLegacyObbData()V
.end method

.method public abstract notifyPackageUse(Ljava/lang/String;I)V
.end method

.method public onDefaultSimCallManagerAppChanged(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onDefaultSmsAppChanged(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public abstract pruneInstantApps()V
.end method

.method public abstract queryIntentActivities(Landroid/content/Intent;III)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "III)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryIntentServices(Landroid/content/Intent;III)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "III)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeIsolatedUid(I)V
.end method

.method public abstract removeLegacyDefaultBrowserPackageName(I)Ljava/lang/String;
.end method

.method public abstract removePackageListObserver(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)V
.end method

.method public abstract requestInstantAppResolutionPhaseTwo(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V
.end method

.method public abstract resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
.end method

.method public abstract resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIZI)Landroid/content/pm/ResolveInfo;
.end method

.method public abstract resolveService(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;
.end method

.method public abstract revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;IZ)V
.end method

.method public abstract setCheckPermissionDelegate(Landroid/content/pm/PackageManagerInternal$CheckPermissionDelegate;)V
.end method

.method public abstract setDefaultBrowserProvider(Landroid/content/pm/PackageManagerInternal$DefaultBrowserProvider;)V
.end method

.method public abstract setDefaultDialerProvider(Landroid/content/pm/PackageManagerInternal$DefaultDialerProvider;)V
.end method

.method public abstract setDefaultHomeProvider(Landroid/content/pm/PackageManagerInternal$DefaultHomeProvider;)V
.end method

.method public abstract setDeviceAndProfileOwnerPackages(ILjava/lang/String;Landroid/util/SparseArray;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setEnableRollbackCode(II)V
.end method

.method public abstract setEnabledOverlayPackages(ILjava/lang/String;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract setExternalSourcesPolicy(Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;)V
.end method

.method public abstract setKeepUninstalledPackages(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setLocationExtraPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
.end method

.method public abstract setLocationPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
.end method

.method public abstract setRuntimePermissionsFingerPrint(Ljava/lang/String;I)V
.end method

.method public abstract setSyncAdapterPackagesprovider(Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;)V
.end method

.method public abstract setUseOpenWifiAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
.end method

.method public abstract setVoiceInteractionPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
.end method

.method public abstract uninstallApex(Ljava/lang/String;JILandroid/content/IntentSender;)V
.end method

.method public abstract updatePermissionFlagsTEMP(Ljava/lang/String;Ljava/lang/String;III)V
.end method

.method public abstract userNeedsBadging(I)Z
.end method

.method public abstract wasPackageEverLaunched(Ljava/lang/String;I)Z
.end method

.method public abstract wereDefaultPermissionsGrantedSinceBoot(I)Z
.end method
