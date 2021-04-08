.class public Landroid/view/DisplayInfoInjector;
.super Ljava/lang/Object;
.source "DisplayInfoInjector.java"


# static fields
.field private static final NOTCH_BLACK_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SCALE_BLACK_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mAppName:Ljava/lang/String;

.field private static mNotchConfig:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/DisplayInfoInjector$1;

    invoke-direct {v0}, Landroid/view/DisplayInfoInjector$1;-><init>()V

    sput-object v0, Landroid/view/DisplayInfoInjector;->NOTCH_BLACK_LIST:Ljava/util/ArrayList;

    new-instance v0, Landroid/view/DisplayInfoInjector$2;

    invoke-direct {v0}, Landroid/view/DisplayInfoInjector$2;-><init>()V

    sput-object v0, Landroid/view/DisplayInfoInjector;->SCALE_BLACK_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static adjustHeightIfNeeded(Landroid/content/res/Configuration;IIILjava/lang/String;)I
    .locals 3

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v0, :cond_1

    :cond_0
    if-ge p2, p3, :cond_4

    :cond_1
    if-ne p1, p3, :cond_4

    sget-boolean v1, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "ro.miui.cts"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    const-string/jumbo v1, "persist.sys.miui_optimization"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_2

    return p1

    :cond_2
    sget-object v1, Landroid/view/DisplayInfoInjector;->mAppName:Ljava/lang/String;

    if-nez v1, :cond_3

    invoke-static {v0}, Landroid/view/DisplayInfoInjector;->getAppName(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/view/DisplayInfoInjector;->mAppName:Ljava/lang/String;

    sget-object v1, Landroid/view/DisplayInfoInjector;->mAppName:Ljava/lang/String;

    invoke-static {v1}, Lmiui/os/MiuiInit;->getNotchConfig(Ljava/lang/String;)I

    move-result v1

    sput v1, Landroid/view/DisplayInfoInjector;->mNotchConfig:I

    :cond_3
    sget v1, Landroid/view/DisplayInfoInjector;->mNotchConfig:I

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_4

    sget-object v1, Landroid/view/DisplayInfoInjector;->NOTCH_BLACK_LIST:Ljava/util/ArrayList;

    sget-object v2, Landroid/view/DisplayInfoInjector;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105023b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr p1, v1

    :cond_4
    return p1
.end method

.method static adjustHeightIfNeededCurve(Landroid/content/res/Configuration;IIIIILjava/lang/String;)I
    .locals 3

    if-eqz p0, :cond_0

    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    if-le p2, p3, :cond_5

    :cond_1
    if-ne p1, p3, :cond_5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_2

    return p1

    :cond_2
    sget-object v1, Landroid/view/DisplayInfoInjector;->mAppName:Ljava/lang/String;

    if-nez v1, :cond_3

    invoke-static {v0}, Landroid/view/DisplayInfoInjector;->getAppName(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/view/DisplayInfoInjector;->mAppName:Ljava/lang/String;

    :cond_3
    sget-object v1, Landroid/view/DisplayInfoInjector;->SCALE_BLACK_LIST:Ljava/util/ArrayList;

    sget-object v2, Landroid/view/DisplayInfoInjector;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    move p1, p4

    :cond_5
    :goto_0
    return p1
.end method

.method static adjustWidthIfNeeded(Landroid/content/res/Configuration;IIILjava/lang/String;)I
    .locals 3

    if-eqz p0, :cond_0

    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    if-le p2, p3, :cond_4

    :cond_1
    if-ne p1, p2, :cond_4

    sget-boolean v0, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "ro.miui.cts"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string/jumbo v1, "persist.sys.miui_optimization"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_2

    return p1

    :cond_2
    sget-object v1, Landroid/view/DisplayInfoInjector;->mAppName:Ljava/lang/String;

    if-nez v1, :cond_3

    invoke-static {v0}, Landroid/view/DisplayInfoInjector;->getAppName(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/view/DisplayInfoInjector;->mAppName:Ljava/lang/String;

    sget-object v1, Landroid/view/DisplayInfoInjector;->mAppName:Ljava/lang/String;

    invoke-static {v1}, Lmiui/os/MiuiInit;->getNotchConfig(Ljava/lang/String;)I

    move-result v1

    sput v1, Landroid/view/DisplayInfoInjector;->mNotchConfig:I

    :cond_3
    sget v1, Landroid/view/DisplayInfoInjector;->mNotchConfig:I

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_4

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105023b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr p1, v1

    :cond_4
    return p1
.end method

.method static adjustWidthIfNeededCurve(Landroid/content/res/Configuration;IIIIILjava/lang/String;)I
    .locals 3

    if-eqz p0, :cond_0

    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    if-ge p2, p3, :cond_5

    :cond_1
    if-ne p1, p2, :cond_5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_2

    return p1

    :cond_2
    sget-object v1, Landroid/view/DisplayInfoInjector;->mAppName:Ljava/lang/String;

    if-nez v1, :cond_3

    invoke-static {v0}, Landroid/view/DisplayInfoInjector;->getAppName(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/view/DisplayInfoInjector;->mAppName:Ljava/lang/String;

    :cond_3
    sget-object v1, Landroid/view/DisplayInfoInjector;->SCALE_BLACK_LIST:Ljava/util/ArrayList;

    sget-object v2, Landroid/view/DisplayInfoInjector;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    move p1, p4

    :cond_5
    :goto_0
    return p1
.end method

.method static getAppName(I)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    const/16 v1, 0x2710

    if-ge p0, v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    const/4 v2, 0x0

    aget-object v0, v1, v2

    :cond_1
    return-object v0
.end method
