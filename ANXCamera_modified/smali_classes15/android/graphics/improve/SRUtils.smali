.class public Landroid/graphics/improve/SRUtils;
.super Ljava/lang/Object;
.source "SRUtils.java"


# static fields
.field public static final PKG_MM:Ljava/lang/String; = "com.tencent.mm"

.field public static final PKG_NEWS:Ljava/lang/String; = "com.ss.android.article.news"

.field private static final PROD_CAPRICORN:Ljava/lang/String; = "capricorn"

.field private static final PROD_CHIRON:Ljava/lang/String; = "chiron"

.field private static final PROD_CLOVER:Ljava/lang/String; = "clover"

.field private static final PROD_DIPPER:Ljava/lang/String; = "dipper"

.field private static final PROD_EQUULEUS:Ljava/lang/String; = "equuleus"

.field private static final PROD_GEMINI:Ljava/lang/String; = "gemini"

.field private static final PROD_JASON:Ljava/lang/String; = "jason"

.field private static final PROD_LITHIUM:Ljava/lang/String; = "lithium"

.field private static final PROD_NATRIUM:Ljava/lang/String; = "natrium"

.field private static final PROD_POLARIS:Ljava/lang/String; = "polaris"

.field private static final PROD_SAGIT:Ljava/lang/String; = "sagit"

.field private static final PROD_SCORPIO:Ljava/lang/String; = "scorpio"

.field private static final PROD_SIRIUS:Ljava/lang/String; = "sirius"

.field private static final PROD_URSA:Ljava/lang/String; = "ursa"

.field private static final PROD_WAYNE:Ljava/lang/String; = "wayne"

.field private static final PROP_LAB_TOGGLE:Ljava/lang/String; = "persist.sys.sr_lab"

.field private static final PROP_LOCAL_TOGGLE:Ljava/lang/String; = "persist.sys.sr_local"

.field private static final PROP_SERVER_TOGGLE:Ljava/lang/String; = "persist.sys.resolution"

.field public static sAccessAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sProductList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sSelfProductList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/graphics/improve/SRUtils;->sProductList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/graphics/improve/SRUtils;->sAccessAppList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/graphics/improve/SRUtils;->sSelfProductList:Ljava/util/ArrayList;

    sget-object v0, Landroid/graphics/improve/SRUtils;->sProductList:Ljava/util/ArrayList;

    const-string v1, "chiron"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/graphics/improve/SRUtils;->sProductList:Ljava/util/ArrayList;

    const-string/jumbo v2, "sagit"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/graphics/improve/SRUtils;->sProductList:Ljava/util/ArrayList;

    const-string/jumbo v2, "polaris"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/graphics/improve/SRUtils;->sProductList:Ljava/util/ArrayList;

    const-string v2, "dipper"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/graphics/improve/SRUtils;->sProductList:Ljava/util/ArrayList;

    const-string/jumbo v3, "sirius"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/graphics/improve/SRUtils;->sProductList:Ljava/util/ArrayList;

    const-string/jumbo v3, "ursa"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/graphics/improve/SRUtils;->sProductList:Ljava/util/ArrayList;

    const-string v3, "gemini"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/graphics/improve/SRUtils;->sProductList:Ljava/util/ArrayList;

    const-string/jumbo v3, "scorpio"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/graphics/improve/SRUtils;->sProductList:Ljava/util/ArrayList;

    const-string v3, "lithium"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/graphics/improve/SRUtils;->sProductList:Ljava/util/ArrayList;

    const-string/jumbo v3, "wayne"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/graphics/improve/SRUtils;->sProductList:Ljava/util/ArrayList;

    const-string v3, "clover"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/graphics/improve/SRUtils;->sProductList:Ljava/util/ArrayList;

    const-string v3, "capricorn"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/graphics/improve/SRUtils;->sProductList:Ljava/util/ArrayList;

    const-string v3, "natrium"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/graphics/improve/SRUtils;->sProductList:Ljava/util/ArrayList;

    const-string v3, "equuleus"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/graphics/improve/SRUtils;->sProductList:Ljava/util/ArrayList;

    const-string v3, "jason"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/graphics/improve/SRUtils;->sAccessAppList:Ljava/util/ArrayList;

    const-string v4, "com.tencent.mm"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/graphics/improve/SRUtils;->sAccessAppList:Ljava/util/ArrayList;

    const-string v4, "com.ss.android.article.news"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/graphics/improve/SRUtils;->sSelfProductList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/graphics/improve/SRUtils;->sSelfProductList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/graphics/improve/SRUtils;->sSelfProductList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPkgFromProp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/graphics/improve/SRUtils;->getAppPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/graphics/improve/SRUtils;->getAppPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getAppPropStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAccessSR()Z
    .locals 1

    const-string v0, "com.tencent.mm"

    invoke-static {v0}, Landroid/graphics/improve/SRUtils;->isAppAccessSR(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.ss.android.article.news"

    invoke-static {v0}, Landroid/graphics/improve/SRUtils;->isAppAccessSR(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isAppAccessSR(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p0}, Landroid/graphics/improve/SRUtils;->isCloundAccessSR(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/graphics/improve/SRUtils;->isLocalAccessSR(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    aput-object p0, v2, v1

    const-string/jumbo v3, "persist.sys.sr_lab"

    invoke-static {v3, v2}, Landroid/graphics/improve/SRUtils;->isPropContainPkgs(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    return v1
.end method

.method public static isCloundAccessSR(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string/jumbo v2, "persist.sys.resolution"

    invoke-static {v2, v1}, Landroid/graphics/improve/SRUtils;->isPropContainPkgs(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static isInAppAccessList(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Landroid/graphics/improve/SRUtils;->sAccessAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLocalAccessSR(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string/jumbo v2, "persist.sys.sr_local"

    invoke-static {v2, v1}, Landroid/graphics/improve/SRUtils;->isPropContainPkgs(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static isProductAccessSR()Z
    .locals 2

    sget-object v0, Landroid/graphics/improve/SRUtils;->sProductList:Ljava/util/ArrayList;

    sget-object v1, Lmiui/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static varargs isPropContainPkgs(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    array-length v1, p1

    if-lez v1, :cond_2

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    array-length v2, p1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    return v0
.end method

.method public static isSupportSelfArithmetic()Z
    .locals 2

    sget-object v0, Landroid/graphics/improve/SRUtils;->sSelfProductList:Ljava/util/ArrayList;

    sget-object v1, Lmiui/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static localCloseSR(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "persist.sys.sr_local"

    invoke-static {v0, p0}, Landroid/graphics/improve/SRUtils;->addPkgFromProp(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static localOpenSR(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "persist.sys.sr_local"

    invoke-static {v0, p0}, Landroid/graphics/improve/SRUtils;->removePkgFromProp(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static removePkgFromProp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/graphics/improve/SRUtils;->getAppPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static userCloseSR(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "persist.sys.sr_lab"

    invoke-static {v0, p0}, Landroid/graphics/improve/SRUtils;->removePkgFromProp(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static userOpenSR(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "persist.sys.sr_lab"

    invoke-static {v0, p0}, Landroid/graphics/improve/SRUtils;->addPkgFromProp(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
