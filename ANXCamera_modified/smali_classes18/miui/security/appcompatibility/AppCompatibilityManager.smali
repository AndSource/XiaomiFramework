.class public Lmiui/security/appcompatibility/AppCompatibilityManager;
.super Ljava/lang/Object;
.source "AppCompatibilityManager.java"


# static fields
.field public static final ACTION_BROADCAST_APPCOMPATIBILITY_UPDATE:Ljava/lang/String; = "com.miui.action.appcompatibility.update"

.field public static final DEVICE_NAME:Ljava/lang/String;

.field private static final INTENT_ACTION_SHOW_DIALOG_FOR_APPSTORE:Ljava/lang/String; = "com.miui.appcompatibility.LaunchDialog.appstore"

.field private static final INTENT_ACTION_SHOW_DIALOG_FOR_LAUNCHER:Ljava/lang/String; = "com.miui.appcompatibility.LaunchDialog.launcher"

.field private static final INTENT_EXTRA_APPNAME:Ljava/lang/String; = "app_name"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lmiui/security/appcompatibility/AppCompatibilityManager;->DEVICE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppErrorTipsDialogIntentForApptore(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.appcompatibility.LaunchDialog.appstore"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "app_name"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method public static getAppErrorTipsDialogIntentForLauncher(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.appcompatibility.LaunchDialog.launcher"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "app_name"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method public static getIncompatibleAppList(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lmiui/security/appcompatibility/AppCompatibilityManager;->getSecurityManager(Landroid/content/Context;)Lmiui/security/SecurityManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/security/SecurityManager;->getIncompatibleAppList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getSecurityManager(Landroid/content/Context;)Lmiui/security/SecurityManager;
    .locals 1

    const-string v0, "security"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    return-object v0
.end method

.method public static isAppCompatible(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    invoke-static {p0}, Lmiui/security/appcompatibility/AppCompatibilityManager;->getSecurityManager(Landroid/content/Context;)Lmiui/security/SecurityManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/security/SecurityManager;->getIncompatibleAppList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static setIncompatibleAppList(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {p0}, Lmiui/security/appcompatibility/AppCompatibilityManager;->getSecurityManager(Landroid/content/Context;)Lmiui/security/SecurityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/security/SecurityManager;->setIncompatibleAppList(Ljava/util/List;)V

    :cond_0
    return-void
.end method
