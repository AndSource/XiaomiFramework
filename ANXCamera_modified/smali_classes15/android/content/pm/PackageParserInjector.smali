.class public Landroid/content/pm/PackageParserInjector;
.super Ljava/lang/Object;
.source "PackageParserInjector.java"


# static fields
.field private static final MIUI:Ljava/lang/String; = "miui"

.field private static final TAG:Ljava/lang/String; = "PackageParserInjector"

.field private static WCG_WHITE_LIST:[Ljava/lang/String; = null

.field private static final XIAOMI:Ljava/lang/String; = "xiaomi"

.field private static sMiuiPersistentEnableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParserInjector;->sMiuiPersistentEnableList:Ljava/util/List;

    sget-object v0, Landroid/content/pm/PackageParserInjector;->sMiuiPersistentEnableList:Ljava/util/List;

    const-string v1, "com.miui.rom"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/content/pm/PackageParserInjector;->sMiuiPersistentEnableList:Ljava/util/List;

    const-string v1, "com.miui.daemon"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/content/pm/PackageParserInjector;->sMiuiPersistentEnableList:Ljava/util/List;

    const-string v1, "com.miui.voicetrigger"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/content/pm/PackageParserInjector;->sMiuiPersistentEnableList:Ljava/util/List;

    const-string v1, "com.miui.face"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/content/pm/PackageParserInjector;->sMiuiPersistentEnableList:Ljava/util/List;

    const-string v1, "com.xiaomi.mircs"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/content/pm/PackageParserInjector;->sMiuiPersistentEnableList:Ljava/util/List;

    const-string v1, "com.xiaomi.xmsf"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/content/pm/PackageParserInjector;->sMiuiPersistentEnableList:Ljava/util/List;

    const-string v1, "com.xiaomi.finddevice"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/content/pm/PackageParserInjector;->sMiuiPersistentEnableList:Ljava/util/List;

    const-string v1, "com.miui.contentcatcher"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "com.miui.gallery"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/pm/PackageParserInjector;->WCG_WHITE_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkEnablePackagePersistent(Landroid/content/pm/ApplicationInfo;)V
    .locals 3

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "miui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "xiaomi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    sget-object v1, Landroid/content/pm/PackageParserInjector;->sMiuiPersistentEnableList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denied, Skip package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to be persistent!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageParserInjector"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_2
    return-void
.end method

.method public static isWCGWhiteList(Ljava/lang/String;)Z
    .locals 6

    sget-object v0, Landroid/content/pm/PackageParserInjector;->WCG_WHITE_LIST:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
