.class public Landroid/util/MiuiMultiWindowAdapter;
.super Ljava/lang/Object;
.source "MiuiMultiWindowAdapter.java"


# static fields
.field public static final CLASS_NEME_WECHAT_LAUNCHERUI:Ljava/lang/String; = "com.tencent.mm.ui.LauncherUI"

.field private static final COLOR_DECOR_CAPTION_BOTTOM_IMAGE_BLACK:I = -0x738a8a8b

.field private static final COLOR_DECOR_CAPTION_BOTTOM_IMAGE_WHITE:I = -0x4cc7c7c8

.field private static final COLOR_DECOR_CAPTION_TOP_IMAGE_BLACK:I = 0x339b9b9b

.field private static final COLOR_DECOR_CAPTION_TOP_IMAGE_WHITE:I = 0x66b6b6b6

.field private static final COLOR_DECOR_CAPTION_VIEW_TANTAN:I = -0x2cbacf

.field private static final COLOR_DECOR_CAPTION_VIEW_TRANSLUCENT:I = 0x0

.field private static final COLOR_DECOR_CAPTION_VIEW_WEHAT_BOTTOM:I = -0x80809

.field private static final COLOR_DECOR_CAPTION_VIEW_WEHAT_TOP:I = -0x121213

.field public static final FREEFORM_BLACK_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final LIST_ABOUT_CANNOT_MODIFY_VIEWTREE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final LIST_ABOUT_DOUBLE_CAPTION:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final LIST_ABOUT_NEED_RELUNCH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final LIST_ABOUT_NO_NEED_IN_FREEFORM:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final LIST_ABOUT_NO_NEED_MODIFY_TOP_INSETS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final LIST_ABOUT_SUPPORT_LANDSCAPE_VIDEO:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PACKAGE_NAME_CF:Ljava/lang/String; = "com.tencent.tmgp.cf"

.field public static final PACKAGE_NAME_QQ:Ljava/lang/String; = "com.tencent.mobileqq"

.field public static final PACKAGE_NAME_QQLIVE:Ljava/lang/String; = "com.tencent.qqlive"

.field public static final PACKAGE_NAME_TANTAN:Ljava/lang/String; = "com.p1.mobile.putong"

.field public static final PACKAGE_NEME_LBE:Ljava/lang/String; = "com.lbe.security.miui"

.field public static final PACKAGE_NEME_WECHAT:Ljava/lang/String; = "com.tencent.mm"

.field public static final SMALL_WINDOW_BLACK_LIST:Ljava/lang/String; = "small_window_blacklist"

.field public static final SMALL_WINDOW_MODULE_NAME:Ljava/lang/String; = "small_window"

.field private static final TAG:Ljava/lang/String; = "MiuiMultiWindowAdapter"

.field private static sSmallWindowBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSmallWindowWhiteList:Ljava/util/ArrayList;
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
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_NO_NEED_MODIFY_TOP_INSETS:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_SUPPORT_LANDSCAPE_VIDEO:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_NO_NEED_IN_FREEFORM:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_NEED_RELUNCH:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_DOUBLE_CAPTION:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_CANNOT_MODIFY_VIEWTREE:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/util/MiuiMultiWindowAdapter;->sSmallWindowWhiteList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/util/MiuiMultiWindowAdapter;->sSmallWindowBlackList:Ljava/util/ArrayList;

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_NO_NEED_MODIFY_TOP_INSETS:Ljava/util/ArrayList;

    const-string v1, "com.lbe.security.miui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_NO_NEED_MODIFY_TOP_INSETS:Ljava/util/ArrayList;

    const-string v2, "com.tencent.mm"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_NO_NEED_MODIFY_TOP_INSETS:Ljava/util/ArrayList;

    const-string v2, "com.tencent.qqlive"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_NO_NEED_MODIFY_TOP_INSETS:Ljava/util/ArrayList;

    const-string v3, "com.p1.mobile.putong"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_SUPPORT_LANDSCAPE_VIDEO:Ljava/util/ArrayList;

    const-string v3, "com.youku.phone"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_SUPPORT_LANDSCAPE_VIDEO:Ljava/util/ArrayList;

    const-string/jumbo v3, "tv.danmaku.bili"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_SUPPORT_LANDSCAPE_VIDEO:Ljava/util/ArrayList;

    const-string v3, "com.qiyi.video"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_SUPPORT_LANDSCAPE_VIDEO:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_SUPPORT_LANDSCAPE_VIDEO:Ljava/util/ArrayList;

    const-string v2, "com.miui.video"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_SUPPORT_LANDSCAPE_VIDEO:Ljava/util/ArrayList;

    const-string v2, "com.ss.android.article.video"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_SUPPORT_LANDSCAPE_VIDEO:Ljava/util/ArrayList;

    const-string v2, "com.hunantv.imgo.activity"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_SUPPORT_LANDSCAPE_VIDEO:Ljava/util/ArrayList;

    const-string v2, "com.duowan.kiwi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_SUPPORT_LANDSCAPE_VIDEO:Ljava/util/ArrayList;

    const-string v2, "com.babycloud.hanju"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_NO_NEED_IN_FREEFORM:Ljava/util/ArrayList;

    const-string v2, "com.smile.gifmaker"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_NO_NEED_IN_FREEFORM:Ljava/util/ArrayList;

    const-string v2, "com.tencent.mtt"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_NO_NEED_IN_FREEFORM:Ljava/util/ArrayList;

    sget-object v3, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_SUPPORT_LANDSCAPE_VIDEO:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_NEED_RELUNCH:Ljava/util/ArrayList;

    const-string v3, "com.supercell.clashroyale.mi"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_DOUBLE_CAPTION:Ljava/util/ArrayList;

    const-string v3, "com.sina.weibo"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_DOUBLE_CAPTION:Ljava/util/ArrayList;

    const-string v3, "com.baidu.netdisk"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_DOUBLE_CAPTION:Ljava/util/ArrayList;

    const-string v3, "com.tmri.app.main"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_CANNOT_MODIFY_VIEWTREE:Ljava/util/ArrayList;

    const-string v3, "com.sdu.didi.psnger"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_CANNOT_MODIFY_VIEWTREE:Ljava/util/ArrayList;

    const-string v3, "com.autonavi.minimap"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_CANNOT_MODIFY_VIEWTREE:Ljava/util/ArrayList;

    const-string v3, "com.tencent.tmgp.pubgmhd"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_CANNOT_MODIFY_VIEWTREE:Ljava/util/ArrayList;

    const-string v3, "com.tencent.tmgp.cf"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_CANNOT_MODIFY_VIEWTREE:Ljava/util/ArrayList;

    const-string v3, "com.bairimeng.dmmdzz.mi"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_CANNOT_MODIFY_VIEWTREE:Ljava/util/ArrayList;

    const-string v3, "com.minitech.miniworld.TMobile.mi"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_CANNOT_MODIFY_VIEWTREE:Ljava/util/ArrayList;

    const-string v3, "com.happyelements.AndroidAnimal"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_CANNOT_MODIFY_VIEWTREE:Ljava/util/ArrayList;

    const-string v3, "com.tencent.peng"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_CANNOT_MODIFY_VIEWTREE:Ljava/util/ArrayList;

    const-string v3, "com.mfp.jelly.xiaomi"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.miui.securitycenter"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.miui.weather2"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.miui.miservice"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.android.calendar"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.android.contacts"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.miui.mishare.connectivity"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.xiaomi.misettings"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.android.printspooler"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.miui.backup"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.miui.huanji"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.miui.calculator"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.android.deskclock"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.miui.notes"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.android.thememanager"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.mfashiongallery.emag"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.miui.virtualsim"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.miui.smarttravel"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.mi.health"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v3, "com.android.camera"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.miui.cleanmaster"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.miui.newhome"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.miui.voiceassist"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.miui.yellowpage"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.android.updater"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.miui.tsmclient"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.miui.securitycore"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.xiaomi.account"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.xiaomi.shop"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.xiaomi.smarthome"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.mipay.wallet"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.xiaomi.youpin"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.xiaomi.hm.health"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.miui.bugreport"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.xiaomi.mibrain.speech"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.xiangkan.android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.android.bankabc"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.sohu.inputmethod.sogou"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.shyz.toutiao"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.netease.mc.mi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.outfit7.talkingtomgoldrun.mi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.doudz.mi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "com.wepie.snake.new.mi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCaptionView(Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/internal/widget/DecorCaptionView;
    .locals 5

    const/4 v0, 0x0

    instance-of v1, p0, Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v3, :cond_0

    move-object v0, v2

    check-cast v0, Lcom/android/internal/widget/DecorCaptionView;

    const v3, 0x10204d3

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getDisplayMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDisplayMetrics::metrics = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiMultiWindowAdapter"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static getFreeformBlackList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->sSmallWindowBlackList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->sSmallWindowBlackList:Ljava/util/ArrayList;

    sget-object v1, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->sSmallWindowBlackList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getFreeformVideoWhiteList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->sSmallWindowWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->sSmallWindowWhiteList:Ljava/util/ArrayList;

    sget-object v1, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_SUPPORT_LANDSCAPE_VIDEO:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->sSmallWindowWhiteList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getHeight(Landroid/content/res/Resources;I)I
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getHeight::cachedAppHeightCompat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiMultiWindowAdapter"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    return v1

    :cond_0
    return p1
.end method

.method private static getListFromCloudData(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_6

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_4

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "pkgName"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_3

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    goto :goto_0

    :cond_4
    :goto_2
    return-object v0

    :cond_5
    goto :goto_3

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiuiMultiWindowAdapter"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-object v0

    :cond_6
    :goto_4
    return-object v0
.end method

.method public static getMetrics(Landroid/content/res/Resources;Landroid/util/DisplayMetrics;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getMetrics::outMetrics = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiMultiWindowAdapter"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static getSize(Landroid/content/res/Resources;Landroid/graphics/Point;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p1, Landroid/graphics/Point;->y:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSize::outSize.x = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  outSize.y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiMultiWindowAdapter"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static getSurfaceViewVisable(Landroid/view/SurfaceView;Landroid/content/res/Resources;ILjava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_SUPPORT_LANDSCAPE_VIDEO:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static getWidth(Landroid/content/res/Resources;I)I
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getWidth::cachedAppWidthCompat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiMultiWindowAdapter"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    return v1

    :cond_0
    return p1
.end method

.method public static getWindowVisibleDisplayFrame(Landroid/content/Context;Landroid/graphics/Rect;)V
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sget v2, Landroid/util/MiuiMultiWindowUtils;->TOP_DECOR_CAPTIONVIEW_HEIGHT:I

    sget v3, Landroid/util/MiuiMultiWindowUtils;->BOTTOM_DECOR_CAPTIONVIEW_HEIGHT:I

    const/4 v4, 0x0

    iput v4, p1, Landroid/graphics/Rect;->left:I

    iput v4, p1, Landroid/graphics/Rect;->top:I

    iput v1, p1, Landroid/graphics/Rect;->right:I

    invoke-static {}, Landroid/util/MiuiMultiWindowAdapter;->hasSmallFreeWindow()Z

    move-result v4

    if-eqz v4, :cond_0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    sub-int v4, v0, v3

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    sget-object v4, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_NO_NEED_MODIFY_TOP_INSETS:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, 0xa

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getWindowVisibleDisplayFrame::outRect = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MiuiMultiWindowAdapter"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getheightUsed(Lcom/android/internal/widget/MiuiDecorCaptionView;IILjava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/util/MiuiMultiWindowAdapter;->needModifyTopInsets(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int v0, p1, p2

    return v0

    :cond_0
    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_CANNOT_MODIFY_VIEWTREE:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Landroid/util/MiuiMultiWindowAdapter;->hasSmallFreeWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return p2

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static hasSmallFreeWindow()Z
    .locals 2

    invoke-static {}, Landroid/util/MiuiMultiWindowUtils;->getCurrentFreeFormWindowMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static hasSmallFreeformFeature()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isPrevent(Landroid/view/View;ILjava/lang/String;I)Z
    .locals 1

    const-string v0, "com.tencent.mobileqq"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    if-ne p3, v0, :cond_0

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static layoutContentView(Lcom/android/internal/widget/MiuiDecorCaptionView;Landroid/view/View;ILjava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/util/MiuiMultiWindowAdapter;->needModifyTopInsets(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p1, v1, p2, v0, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_0
    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_CANNOT_MODIFY_VIEWTREE:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Landroid/util/MiuiMultiWindowAdapter;->hasSmallFreeWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/view/View;->layout(IIII)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->setZ(F)V

    :goto_1
    return-void
.end method

.method public static needModifyTopInsets(Landroid/view/View;)Z
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getAttachedActivityInstance()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    invoke-static {v1}, Landroid/util/MiuiMultiWindowUtils;->isOrientationLandscape(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_NO_NEED_MODIFY_TOP_INSETS:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "com.tencent.mm.ui.LauncherUI"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static needRelunchFreeform(Ljava/lang/String;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_NEED_RELUNCH:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static updateApplicationContext(Landroid/content/Context;Landroid/app/Application;Landroid/content/res/Configuration;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v3

    invoke-virtual {v3, p2, v1, v2}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    :cond_0
    return-void
.end method

.method public static updateCaptionColor(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Lcom/android/internal/policy/PhoneWindow;)V
    .locals 9

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x10204d4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x10201e7

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string/jumbo v3, "uimode"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/UiModeManager;

    invoke-virtual {v3}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ne v4, v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    const-string v7, "com.tencent.mm"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/high16 v8, -0x1000000

    if-eqz v7, :cond_2

    if-eqz v4, :cond_1

    invoke-virtual {p1, v8}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p2, v8}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_1
    const v5, -0x121213

    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    const v5, -0x80809

    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_2
    const-string v7, "com.p1.mobile.putong"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v4, :cond_3

    invoke-virtual {p1, v8}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p2, v8}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_3
    const v5, -0x2cbacf

    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p3}, Lcom/android/internal/policy/PhoneWindow;->getNavigationBarColor()I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v6, :cond_5

    invoke-virtual {p1, v8}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p2, v8}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_5
    const-string v7, "com.tencent.qqlive"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v5, -0x1

    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p3}, Lcom/android/internal/policy/PhoneWindow;->getNavigationBarColor()I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p3}, Lcom/android/internal/policy/PhoneWindow;->getNavigationBarColor()I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_1
    if-nez v4, :cond_8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v6, :cond_7

    goto :goto_2

    :cond_7
    const v5, 0x66b6b6b6

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    const v5, -0x4cc7c7c8

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_3

    :cond_8
    :goto_2
    const v5, 0x339b9b9b

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    const v5, -0x738a8a8b

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_3
    return-void
.end method

.method public static updateCaptionVisable(Landroid/content/Context;Lcom/android/internal/policy/PhoneWindow;Landroid/view/View;Landroid/view/View;)V
    .locals 2

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_DOUBLE_CAPTION:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sget v1, Landroid/util/MiuiMultiWindowUtils;->BOTTOM_DECOR_CAPTIONVIEW_HEIGHT:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public static updateDecorCaptionView(Lcom/android/internal/widget/DecorCaptionView;Landroid/content/Context;Landroid/content/res/Configuration;)Z
    .locals 3

    iget-object v0, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_CANNOT_MODIFY_VIEWTREE:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/DecorCaptionView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/DecorCaptionView;->setZ(F)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static updateFreeformBlackList(Landroid/content/Context;)V
    .locals 6

    const-string v0, "MiuiMultiWindowAdapter"

    sget-object v1, Landroid/util/MiuiMultiWindowAdapter;->sSmallWindowBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    nop

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "small_window"

    const-string/jumbo v3, "small_window_blacklist"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MiuiMultiWindowAdapter::updateFreeformBlackList::data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    sget-object v4, Landroid/util/MiuiMultiWindowAdapter;->sSmallWindowBlackList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    sget-object v2, Landroid/util/MiuiMultiWindowAdapter;->sSmallWindowBlackList:Ljava/util/ArrayList;

    sget-object v3, Landroid/util/MiuiMultiWindowAdapter;->FREEFORM_BLACK_LIST:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MiuiMultiWindowAdapter::updateFreeformBlackList::sSmallWindowBlackList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/util/MiuiMultiWindowAdapter;->sSmallWindowBlackList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "Exception when get XSpaceWhiteApps :"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public static updateFreeformConfiguration(Landroid/content/res/Configuration;Ljava/lang/String;Landroid/app/Application;)V
    .locals 5

    if-eqz p0, :cond_4

    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    invoke-virtual {p2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-gt v2, v3, :cond_0

    sget-object v2, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_NO_NEED_MODIFY_TOP_INSETS:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget v2, v1, Landroid/graphics/Rect;->top:I

    sget v3, Landroid/util/MiuiMultiWindowUtils;->TOP_DECOR_CAPTIONVIEW_HEIGHT:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    sget v3, Landroid/util/MiuiMultiWindowUtils;->BOTTOM_DECOR_CAPTIONVIEW_HEIGHT:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    const-string v2, "com.tencent.mm"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/4 v4, 0x1

    if-le v2, v3, :cond_2

    const/4 v2, 0x2

    iput v2, p0, Landroid/content/res/Configuration;->orientation:I

    iget-object v2, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2, v4}, Landroid/app/WindowConfiguration;->setRotation(I)V

    goto :goto_0

    :cond_2
    iput v4, p0, Landroid/content/res/Configuration;->orientation:I

    iget-object v2, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/WindowConfiguration;->setRotation(I)V

    :cond_3
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    sget-object v2, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_SUPPORT_LANDSCAPE_VIDEO:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_4
    return-void
.end method

.method public static updateFreeformVideoWhiteList(Landroid/content/Context;)V
    .locals 3

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "smallwindow_video_white_list"

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/util/MiuiMultiWindowAdapter;->getListFromCloudData(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Landroid/util/MiuiMultiWindowAdapter;->sSmallWindowWhiteList:Ljava/util/ArrayList;

    sget-object v1, Landroid/util/MiuiMultiWindowAdapter;->sSmallWindowWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/util/MiuiMultiWindowAdapter;->sSmallWindowWhiteList:Ljava/util/ArrayList;

    sget-object v2, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_SUPPORT_LANDSCAPE_VIDEO:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_NO_NEED_IN_FREEFORM:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    sget-object v1, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_NO_NEED_IN_FREEFORM:Ljava/util/ArrayList;

    sget-object v2, Landroid/util/MiuiMultiWindowAdapter;->sSmallWindowWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_NO_NEED_IN_FREEFORM:Ljava/util/ArrayList;

    const-string v2, "com.smile.gifmaker"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_NO_NEED_IN_FREEFORM:Ljava/util/ArrayList;

    const-string v2, "com.tencent.mtt"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public static updateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/ComponentName;ZZ)V
    .locals 4

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WindowStateInjector::adjuestFrameAndInsets::className = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiuiMultiWindowAdapter"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p4, :cond_1

    if-eqz p5, :cond_1

    sget-object v2, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_NO_NEED_MODIFY_TOP_INSETS:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.tencent.mm.ui.LauncherUI"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    sget v2, Landroid/util/MiuiMultiWindowUtils;->TOP_DECOR_CAPTIONVIEW_HEIGHT:I

    iput v2, p0, Landroid/graphics/Rect;->top:I

    sget v2, Landroid/util/MiuiMultiWindowUtils;->TOP_DECOR_CAPTIONVIEW_HEIGHT:I

    iput v2, p1, Landroid/graphics/Rect;->top:I

    sget v2, Landroid/util/MiuiMultiWindowUtils;->TOP_DECOR_CAPTIONVIEW_HEIGHT:I

    iput v2, p2, Landroid/graphics/Rect;->top:I

    :cond_1
    sget-object v2, Landroid/util/MiuiMultiWindowAdapter;->LIST_ABOUT_CANNOT_MODIFY_VIEWTREE:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Landroid/util/MiuiMultiWindowUtils;->BOTTOM_DECOR_CAPTIONVIEW_HEIGHT:I

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    sget v2, Landroid/util/MiuiMultiWindowUtils;->BOTTOM_DECOR_CAPTIONVIEW_HEIGHT:I

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    sget v2, Landroid/util/MiuiMultiWindowUtils;->BOTTOM_DECOR_CAPTIONVIEW_HEIGHT:I

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    :cond_2
    return-void
.end method
