.class public Landroid/os/updater/UrlUtil;
.super Ljava/lang/Object;
.source "UrlUtil.java"


# static fields
.field public static final HTTPS_PROTOCOL:Ljava/lang/String; = "https://"

.field public static final HTTP_PROTOCOL:Ljava/lang/String; = "http://"

.field private static final UPDATE_GLOBAL_HOST:Ljava/lang/String; = "update.intl.miui.com"

.field public static final UPDATE_HOST:Ljava/lang/String;

.field private static final UPDATE_HOST_HOST:Ljava/lang/String; = "update.miui.com"

.field public static final UPDATE_KEY:Ljava/lang/String; = "bWl1aW90YXZhbGlkZWQxMQ=="

.field public static final UPDATE_PROTOCOL:Ljava/lang/String;

.field private static final UPDATE_TEST_HOST:Ljava/lang/String; = "staging.update.miui.srv"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/updater/CheckerUtils;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "http://"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "https://"

    :goto_0
    sput-object v0, Landroid/os/updater/UrlUtil;->UPDATE_PROTOCOL:Ljava/lang/String;

    invoke-static {}, Landroid/os/updater/CheckerUtils;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "staging.update.miui.srv"

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/updater/CheckerUtils;->isInternationalBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "update.intl.miui.com"

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "update.miui.com"

    :goto_1
    sput-object v0, Landroid/os/updater/UrlUtil;->UPDATE_HOST:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
