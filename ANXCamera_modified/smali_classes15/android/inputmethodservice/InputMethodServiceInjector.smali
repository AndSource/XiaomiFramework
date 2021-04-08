.class Landroid/inputmethodservice/InputMethodServiceInjector;
.super Ljava/lang/Object;
.source "InputMethodServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomLayoutListener;,
        Landroid/inputmethodservice/InputMethodServiceInjector$MiuiClipboardPhraseListener;,
        Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchInputMethodListener;,
        Landroid/inputmethodservice/InputMethodServiceInjector$MiuiXiaoAiInputListener;,
        Landroid/inputmethodservice/InputMethodServiceInjector$MiuiVoiceInputListener;,
        Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoCmdRuleObserver;,
        Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoQuickPasteEnableObserver;,
        Landroid/inputmethodservice/InputMethodServiceInjector$UrlQuickPasteEnableObserver;,
        Landroid/inputmethodservice/InputMethodServiceInjector$ClipboardQuickPasteObserver;,
        Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardPasteModeObserver;,
        Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardContentObserver;,
        Landroid/inputmethodservice/InputMethodServiceInjector$InputMethodFunctionSelectObserver;,
        Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleSupportObserver;,
        Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleEnableObserver;,
        Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;,
        Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;
    }
.end annotation


# static fields
.field private static final FUNCTION_CLIPBOARD:Ljava/lang/String; = "clipboard_phrase"

.field private static final FUNCTION_SWITCH:Ljava/lang/String; = "switch_input_method"

.field private static final FUNCTION_VOICE:Ljava/lang/String; = "voice_input"

.field private static final FUNCTION_XIAOAI:Ljava/lang/String; = "xiaoai_input"

.field private static final NO_FUNCTION:Ljava/lang/String; = "no_function"

.field public static final TAG:Ljava/lang/String; = "InputMethodService"

.field private static sBottomView:Landroid/widget/RelativeLayout;

.field private static sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

.field private static sCanPopCloudClipboardViewLeft:Z

.field private static sCanPopCloudClipboardViewRight:Z

.field private static sCanShowMiuiBottom:Z

.field private static sClipBubblePopupView:Landroid/inputmethodservice/InputMethodClipBubblePopupView;

.field private static sClipContentType:I

.field private static sClipQuickPasteEnable:Z

.field private static sClipboardQuickPasteObserver:Landroid/inputmethodservice/InputMethodServiceInjector$ClipboardQuickPasteObserver;

.field private static sClipboardUrlLink:Ljava/lang/String;

.field private static sClipboardWindow:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

.field private static sCloudClipPasteMode:I

.field private static sCloudClipboardContentObserver:Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardContentObserver;

.field private static sCloudClipboardPasteModeObserver:Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardPasteModeObserver;

.field private static sCloudClipboardTimeStamp:J

.field private static sDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private static sDisplayManager:Landroid/hardware/display/DisplayManager;

.field private static sFloatEnable:Z

.field private static sImeLastMiui10Version:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sImeMinVersionSupport:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sInputMethodFunctionSelectObserver:Landroid/inputmethodservice/InputMethodServiceInjector$InputMethodFunctionSelectObserver;

.field private static sIsImeSupport:I

.field private static sIsMiuiBottomEnabled:Z

.field private static sIsMiuiBottomSupport:I

.field private static sIsScreenLandscape:Z

.field private static sLatestClipboardContent:Ljava/lang/String;

.field private static sLatestClipboardTimeStamp:J

.field private static sLeftButton:Landroid/widget/ImageView;

.field private static sLeftLayout:Landroid/widget/LinearLayout;

.field private static sLeftRedPoint:Landroid/widget/ImageView;

.field private static sLeftSelectedKey:Ljava/lang/String;

.field private static sLocalClipboardTimeStamp:J

.field private static sMiuiBottomStatusObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;

.field private static sMiuiNavigationHandleEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleEnableObserver;

.field private static sMiuiNavigationHandleSupportObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleSupportObserver;

.field private static sNeedClipboardBubbleShown:Z

.field private static sNeedHandleComputeInsets:Z

.field private static sRightButton:Landroid/widget/ImageView;

.field private static sRightLayout:Landroid/widget/LinearLayout;

.field private static sRightRedPoint:Landroid/widget/ImageView;

.field private static sRightSelectedKey:Ljava/lang/String;

.field private static sScreenHeight:I

.field private static sScreenHeightWithoutStatusBar:I

.field private static sScreenWidth:I

.field private static sStatusBarHeight:I

.field private static sSwitchWindow:Landroid/inputmethodservice/InputMethodSwitchPopupView;

.field private static sTaobaoCmdRuleObserver:Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoCmdRuleObserver;

.field private static sTaobaoQuickPasteEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoQuickPasteEnableObserver;

.field private static sTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

.field private static sUrlQuickPasteEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$UrlQuickPasteEnableObserver;

.field private static sVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x0

    sput-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsMiuiBottomEnabled:Z

    sput-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanShowMiuiBottom:Z

    sput-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sNeedHandleComputeInsets:Z

    sput-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsScreenLandscape:Z

    sput-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sFloatEnable:Z

    const/4 v1, -0x1

    sput v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsMiuiBottomSupport:I

    const/4 v2, 0x0

    sput-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiBottomStatusObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;

    sput v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sScreenHeight:I

    sput v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sScreenWidth:I

    sput v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sScreenHeightWithoutStatusBar:I

    sput v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sStatusBarHeight:I

    sput-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sInputMethodFunctionSelectObserver:Landroid/inputmethodservice/InputMethodServiceInjector$InputMethodFunctionSelectObserver;

    const-string v3, ""

    sput-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftSelectedKey:Ljava/lang/String;

    sput-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightSelectedKey:Ljava/lang/String;

    sput v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsImeSupport:I

    sput v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sVersionCode:I

    sput-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sNeedClipboardBubbleShown:Z

    sput-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sCloudClipboardContentObserver:Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardContentObserver;

    sput-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanPopCloudClipboardViewLeft:Z

    sput-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanPopCloudClipboardViewRight:Z

    sput-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sLatestClipboardContent:Ljava/lang/String;

    sput-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipboardUrlLink:Ljava/lang/String;

    const-wide/16 v3, 0x0

    sput-wide v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sCloudClipboardTimeStamp:J

    sput-wide v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sLocalClipboardTimeStamp:J

    sput-wide v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sLatestClipboardTimeStamp:J

    sput v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sCloudClipPasteMode:I

    sput-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipQuickPasteEnable:Z

    sput v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipContentType:I

    sput-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sCloudClipboardPasteModeObserver:Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardPasteModeObserver;

    sput-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipboardQuickPasteObserver:Landroid/inputmethodservice/InputMethodServiceInjector$ClipboardQuickPasteObserver;

    sput-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiNavigationHandleEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleEnableObserver;

    sput-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiNavigationHandleSupportObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleSupportObserver;

    sput-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sUrlQuickPasteEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$UrlQuickPasteEnableObserver;

    sput-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sTaobaoQuickPasteEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoQuickPasteEnableObserver;

    sput-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sTaobaoCmdRuleObserver:Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoCmdRuleObserver;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sImeMinVersionSupport:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sImeLastMiui10Version:Ljava/util/HashMap;

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sImeMinVersionSupport:Ljava/util/HashMap;

    const/16 v1, 0x1ee8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.iflytek.inputmethod.miui"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sImeMinVersionSupport:Ljava/util/HashMap;

    const/16 v1, 0x270

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "com.sohu.inputmethod.sogou.xiaomi"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sImeMinVersionSupport:Ljava/util/HashMap;

    const/16 v4, 0x1dd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "com.baidu.input_mi"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sImeLastMiui10Version:Ljava/util/HashMap;

    const/16 v6, 0x1ee9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sImeLastMiui10Version:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sImeLastMiui10Version:Ljava/util/HashMap;

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->setMiuiBottomMargin(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsMiuiBottomEnabled:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0

    sput-boolean p0, Landroid/inputmethodservice/InputMethodServiceInjector;->sNeedClipboardBubbleShown:Z

    return p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsMiuiBottomEnabled:Z

    return p0
.end method

.method static synthetic access$1100()J
    .locals 2

    sget-wide v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sCloudClipboardTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$1102(J)J
    .locals 0

    sput-wide p0, Landroid/inputmethodservice/InputMethodServiceInjector;->sCloudClipboardTimeStamp:J

    return-wide p0
.end method

.method static synthetic access$1202(J)J
    .locals 0

    sput-wide p0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLatestClipboardTimeStamp:J

    return-wide p0
.end method

.method static synthetic access$1300()Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;
    .locals 1

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->addCloudClipboardPopView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1502(I)I
    .locals 0

    sput p0, Landroid/inputmethodservice/InputMethodServiceInjector;->sCloudClipPasteMode:I

    return p0
.end method

.method static synthetic access$1602(Z)Z
    .locals 0

    sput-boolean p0, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipQuickPasteEnable:Z

    return p0
.end method

.method static synthetic access$1700(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->getScreenHeightWithoutStatusBar(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800()Landroid/inputmethodservice/InputMethodService$Insets;
    .locals 1

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    return-object v0
.end method

.method static synthetic access$1900()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sImeMinVersionSupport:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->isMiuiBottomEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000()Landroid/inputmethodservice/InputMethodSwitchPopupView;
    .locals 1

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sSwitchWindow:Landroid/inputmethodservice/InputMethodSwitchPopupView;

    return-object v0
.end method

.method static synthetic access$2002(Landroid/inputmethodservice/InputMethodSwitchPopupView;)Landroid/inputmethodservice/InputMethodSwitchPopupView;
    .locals 0

    sput-object p0, Landroid/inputmethodservice/InputMethodServiceInjector;->sSwitchWindow:Landroid/inputmethodservice/InputMethodSwitchPopupView;

    return-object p0
.end method

.method static synthetic access$2100()Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;
    .locals 1

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipboardWindow:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

    return-object v0
.end method

.method static synthetic access$2102(Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;)Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;
    .locals 0

    sput-object p0, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipboardWindow:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

    return-object p0
.end method

.method static synthetic access$2200()Landroid/widget/ImageView;
    .locals 1

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftRedPoint:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2300()Landroid/widget/ImageView;
    .locals 1

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightRedPoint:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2400()I
    .locals 1

    sget v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipContentType:I

    return v0
.end method

.method static synthetic access$2402(I)I
    .locals 0

    sput p0, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipContentType:I

    return p0
.end method

.method static synthetic access$2500()V
    .locals 0

    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->checkClipboardUrlAndTaoBao()V

    return-void
.end method

.method static synthetic access$2600(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/inputmethodservice/InputMethodServiceInjector;->openQuickPasteView(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700()Z
    .locals 1

    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->isBubbleViewLeft()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Landroid/content/Context;Z)V
    .locals 0

    invoke-static {p0, p1}, Landroid/inputmethodservice/InputMethodServiceInjector;->showClipBubblePopupWindow(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$2900(Landroid/view/ViewGroup;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/inputmethodservice/InputMethodServiceInjector;->changeViewForMiuiBottom(Landroid/view/ViewGroup;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->isNavigationBarFullScreen(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->updateScreenHeight(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->updateScreenHeightWithoutStatusBar(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->addMiuiBottomViewInner(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->updateMiuiBottomEnableValue(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$700(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->setFunctionChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$800(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->getCloudClipboardContent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$902(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLatestClipboardContent:Ljava/lang/String;

    return-object p0
.end method

.method private static addCloudClipboardPopView(Landroid/content/Context;)V
    .locals 4

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLatestClipboardContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "InputMethodService"

    if-nez v0, :cond_5

    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->isClipboardFunctionSelected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->isBubbleViewLeft()Z

    move-result v0

    sget v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sCloudClipPasteMode:I

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const-string/jumbo v2, "sCloudClipPasteMode value is error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "cloud clipboard data paste mode is no tips."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sput v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipContentType:I

    invoke-static {p0, v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->showClipBubblePopupWindow(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftRedPoint:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightRedPoint:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    nop

    :goto_0
    goto :goto_1

    :cond_5
    const-string v0, "cloud clipboard content is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private static addDisplayListener(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    if-nez v0, :cond_0

    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$4;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodServiceInjector$4;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sDisplayManager:Landroid/hardware/display/DisplayManager;

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sDisplayManager:Landroid/hardware/display/DisplayManager;

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public static addMiuiBottomView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/inputmethod/InputMethodManager;Landroid/inputmethodservice/InputMethodService;)V
    .locals 12

    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->checkMiuiBottomSupport()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p6 .. p6}, Landroid/inputmethodservice/InputMethodService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodUtil;->clearOldClipboardContent(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->isImeSupport(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    sput-boolean v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsScreenLandscape:Z

    sput-boolean v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanShowMiuiBottom:Z

    sput-boolean v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sNeedHandleComputeInsets:Z

    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->maybeDismissPopupWindow()V

    return-void

    :cond_2
    sput-boolean v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsScreenLandscape:Z

    new-instance v11, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object v8, v10

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/inputmethod/InputMethodManager;Ljava/lang/String;Landroid/inputmethodservice/InputMethodService;)V

    sput-object v11, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->registerObserver(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->addDisplayListener(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->isMiuiBottomEnabled(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsMiuiBottomEnabled:Z

    sget-boolean v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsMiuiBottomEnabled:Z

    if-nez v1, :cond_3

    const-string v1, "InputMethodService"

    const-string v2, "MiuiBottom is not enabled "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->isNavigationBarFullScreen(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Landroid/inputmethodservice/InputMethodUtil;->sNavigationBarFullScreenValue:Z

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodUtil;->updateGestureLineSupport(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodUtil;->updateGestureLineEnable(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->updateScreenHeight(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->updateScreenHeightWithoutStatusBar(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/inputmethodservice/XiaoAiVoiceInputController;->getXiaoAiVersionCode(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->updateMiuiBottomEnableValue(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->addMiuiBottomViewInner(Landroid/content/Context;)V

    return-void
.end method

.method private static addMiuiBottomViewInner(Landroid/content/Context;)V
    .locals 4

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mMiuiBottomArea:Landroid/view/ViewGroup;

    const-string v1, "InputMethodService"

    if-nez v0, :cond_0

    const-string v0, "MiuiBottomArea is null."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mMiuiBottomArea:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MiuiBottomArea only can add once"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {}, Landroid/inputmethodservice/MiuiBottomConfig;->getLayoutForDevice()I

    move-result v1

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mMiuiBottomArea:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sImeLastMiui10Version:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->getImeVersionCode(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v2, v3, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11050023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    const v2, 0x11090060

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sput-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftButton:Landroid/widget/ImageView;

    const v2, 0x11090061

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sput-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    const v2, 0x11090062

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    sput-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    const v2, 0x11090063

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    sput-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightLayout:Landroid/widget/LinearLayout;

    const v2, 0x11090096

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sput-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftRedPoint:Landroid/widget/ImageView;

    const v2, 0x11090097

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sput-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightRedPoint:Landroid/widget/ImageView;

    const v2, 0x11090064

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    sput-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomView:Landroid/widget/RelativeLayout;

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->setFunctionChanged(Landroid/content/Context;)V

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftButton:Landroid/widget/ImageView;

    new-instance v3, Landroid/inputmethodservice/InputMethodServiceInjector$1;

    invoke-direct {v3, p0}, Landroid/inputmethodservice/InputMethodServiceInjector$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->setPrimaryClipChangedListener(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodUtil;->getClipboardQuickPasteEnable(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipQuickPasteEnable:Z

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodUtil;->getCloudClipboardQuickPasteMode(Landroid/content/Context;)I

    move-result v2

    sput v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sCloudClipPasteMode:I

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodUtil;->updateUrlQuickPasteEnable(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodUtil;->updateTaobaoQuickPasteEnable(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodUtil;->updateTaoBaoCmdEnable(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodUtil;->updateTaoBaoCmdRule(Landroid/content/Context;)V

    new-instance v2, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomLayoutListener;

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v3, v3, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mMiuiBottomArea:Landroid/view/ViewGroup;

    invoke-direct {v2, v3, p0}, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomLayoutListener;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;)V

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v3, v3, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v3, v3, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mMiuiBottomArea:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static afterComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;Landroid/inputmethodservice/InputMethodService;)V
    .locals 5

    sget-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sNeedHandleComputeInsets:Z

    if-eqz v0, :cond_4

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/inputmethodservice/InputMethodService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    sput-object p0, Landroid/inputmethodservice/InputMethodServiceInjector;->sTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v2, p0, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->getScreenHeightWithoutStatusBar(Landroid/content/Context;)I

    move-result v3

    sget-object v4, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v4, v4, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mMiuiBottomArea:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x14

    if-le v2, v3, :cond_1

    sget-boolean v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sFloatEnable:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    sput-boolean v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sFloatEnable:Z

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->updateMiuiBottomEnableValue(Landroid/content/Context;)V

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mMiuiBottomArea:Landroid/view/ViewGroup;

    invoke-static {v2, v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->changeViewForMiuiBottom(Landroid/view/ViewGroup;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    sget-boolean v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sFloatEnable:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    sput-boolean v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sFloatEnable:Z

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->updateMiuiBottomEnableValue(Landroid/content/Context;)V

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mMiuiBottomArea:Landroid/view/ViewGroup;

    invoke-static {v2, v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->changeViewForMiuiBottom(Landroid/view/ViewGroup;Landroid/content/Context;)V

    :cond_2
    :goto_0
    invoke-static {v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    sget-boolean v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanShowMiuiBottom:Z

    if-eqz v3, :cond_3

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    if-eq v3, v2, :cond_3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v3, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method private static changeViewForMiuiBottom(Landroid/view/ViewGroup;Landroid/content/Context;)V
    .locals 12

    sget-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanShowMiuiBottom:Z

    const-string v1, "InputMethodService"

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mInputFrame:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v3, v3, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sget-object v4, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v4, v4, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    sget-object v5, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v5, v5, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mInputFrame:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0, v0, v0}, Landroid/view/ViewGroup;->measure(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    sput v6, Landroid/inputmethodservice/InputMethodUtil;->sBottomAreaHeight:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "rootViewHeight : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " fullScreenHeight:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " inputAreaHeight:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " miuiBottomHeight:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v5, p1}, Landroid/inputmethodservice/InputMethodServiceInjector;->isInputFrameFullScreen(Landroid/widget/LinearLayout$LayoutParams;ILandroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mInputFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v0, "set  mInputFrame weight =1"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    if-eqz v3, :cond_4

    sub-int v0, v3, v4

    sub-int/2addr v0, v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "heightLeftForMIUI "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ge v0, v6, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    sub-int v8, v6, v0

    iget v9, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bottomAreaParams.bottomMargin "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz v8, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "heightNeedMore is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", don\'t need to set layoutParams."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sub-int v9, v4, v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fullScreenArea New Height "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v9, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fullScreenAreaNewHeight is error. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    sget-object v10, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v10, v10, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    iget v11, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-ne v11, v9, :cond_3

    const-string v11, "layoutParams.height == fullScreenAreaNewHeight is true, don\'t need to set layoutParams."

    invoke-static {v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iput v9, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    const-string v0, "Can\'t show Miui bottom view."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private static checkClipboardUrlAndTaoBao()V
    .locals 4

    sget-boolean v0, Landroid/inputmethodservice/InputMethodUtil;->sTaobaoCmdEnable:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/inputmethodservice/InputMethodUtil;->sTaobaoCmdRule:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/inputmethodservice/InputMethodUtil;->sTaobaoCmdRule:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sLatestClipboardContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    sput v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipContentType:I

    return-void

    :cond_0
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLatestClipboardContent:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/widget/Linkify;->getClipboardFistLink(Ljava/lang/CharSequence;III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    sput v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipContentType:I

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipboardUrlLink:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private static checkMiuiBottomSupport()Z
    .locals 3

    sget v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsMiuiBottomSupport:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "ro.miui.support_miui_ime_bottom"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsMiuiBottomSupport:I

    :cond_0
    sget v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsMiuiBottomSupport:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method private static getCloudClipboardContent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodUtil;->getCloudContent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImeVersionCode(Landroid/content/Context;)I
    .locals 2

    sget v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sVersionCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/inputmethodservice/InputMethodUtil;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sVersionCode:I

    :cond_0
    sget v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sVersionCode:I

    return v0
.end method

.method private static getScreenHeight(Landroid/content/Context;)I
    .locals 2

    sget v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sScreenHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->updateScreenHeight(Landroid/content/Context;)V

    :cond_0
    sget v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sScreenHeight:I

    return v0
.end method

.method private static getScreenHeightWithoutStatusBar(Landroid/content/Context;)I
    .locals 2

    sget v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sScreenHeightWithoutStatusBar:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->updateScreenHeightWithoutStatusBar(Landroid/content/Context;)V

    :cond_0
    sget v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sScreenHeightWithoutStatusBar:I

    return v0
.end method

.method private static getStatusBarHeight(Landroid/content/Context;)I
    .locals 4

    sget v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sStatusBarHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    sput v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sStatusBarHeight:I

    if-lez v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sStatusBarHeight:I

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sStatusBarHeight : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sStatusBarHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputMethodService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sStatusBarHeight:I

    return v0
.end method

.method public static getsClipboardUrlLink()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipboardUrlLink:Ljava/lang/String;

    return-object v0
.end method

.method private static isBubbleViewLeft()Z
    .locals 2

    sget-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanPopCloudClipboardViewLeft:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    sget-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanPopCloudClipboardViewRight:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    return v1
.end method

.method private static isClipboardFunctionSelected()Z
    .locals 1

    sget-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanPopCloudClipboardViewLeft:Z

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanPopCloudClipboardViewRight:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isImeSupport(Landroid/content/Context;)Z
    .locals 6

    sget v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsImeSupport:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sImeMinVersionSupport:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->getImeVersionCode(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lt v4, v5, :cond_0

    sput v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsImeSupport:I

    return v2

    :cond_0
    sput v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsImeSupport:I

    return v1

    :cond_1
    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method private static isInputFrameFullScreen(Landroid/widget/LinearLayout$LayoutParams;ILandroid/content/Context;)Z
    .locals 3

    iget v0, p0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/inputmethodservice/InputMethodServiceInjector;->getScreenHeightWithoutStatusBar(Landroid/content/Context;)I

    move-result v0

    if-lt p1, v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static isMiuiBottomEnabled(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "enable_miui_ime_bottom_view"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isNavigationBarFullScreen(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isScreenLandscape(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isXiaoAiEnable()Z
    .locals 2

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftSelectedKey:Ljava/lang/String;

    const-string/jumbo v1, "xiaoai_input"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightSelectedKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static maybeDismissPopupWindow()V
    .locals 2

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipboardWindow:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->dismiss()V

    sput-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipboardWindow:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

    :cond_0
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sSwitchWindow:Landroid/inputmethodservice/InputMethodSwitchPopupView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodSwitchPopupView;->dismiss()V

    sput-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sSwitchWindow:Landroid/inputmethodservice/InputMethodSwitchPopupView;

    :cond_1
    return-void
.end method

.method static onBadTokenException(Landroid/inputmethodservice/InputMethodService;Landroid/view/WindowManager$BadTokenException;)V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Catch a BadTokeException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/inputmethodservice/SoftInputWindow;

    iget v5, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    iget-object v8, p0, Landroid/inputmethodservice/InputMethodService;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    const-string v4, "InputMethod"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x7db

    const/16 v10, 0x50

    const/4 v11, 0x0

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v11}, Landroid/inputmethodservice/SoftInputWindow;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/inputmethodservice/SoftInputWindow$Callback;Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;IIZ)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initViews()V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method public static onDestroy(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->checkMiuiBottomSupport()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    sput-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    :cond_1
    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->maybeDismissPopupWindow()V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiBottomStatusObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiBottomStatusObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sput-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiBottomStatusObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;

    :cond_2
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiNavigationHandleEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleEnableObserver;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiNavigationHandleEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleEnableObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sput-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiNavigationHandleEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleEnableObserver;

    :cond_3
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiNavigationHandleSupportObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleSupportObserver;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiNavigationHandleSupportObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleSupportObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sput-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiNavigationHandleSupportObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleSupportObserver;

    :cond_4
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sInputMethodFunctionSelectObserver:Landroid/inputmethodservice/InputMethodServiceInjector$InputMethodFunctionSelectObserver;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sInputMethodFunctionSelectObserver:Landroid/inputmethodservice/InputMethodServiceInjector$InputMethodFunctionSelectObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sput-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sInputMethodFunctionSelectObserver:Landroid/inputmethodservice/InputMethodServiceInjector$InputMethodFunctionSelectObserver;

    :cond_5
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sCloudClipboardContentObserver:Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardContentObserver;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sCloudClipboardContentObserver:Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sput-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sCloudClipboardContentObserver:Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardContentObserver;

    :cond_6
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sUrlQuickPasteEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$UrlQuickPasteEnableObserver;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sUrlQuickPasteEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$UrlQuickPasteEnableObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sput-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sUrlQuickPasteEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$UrlQuickPasteEnableObserver;

    :cond_7
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sTaobaoQuickPasteEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoQuickPasteEnableObserver;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sTaobaoQuickPasteEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoQuickPasteEnableObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sput-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sTaobaoQuickPasteEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoQuickPasteEnableObserver;

    :cond_8
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sTaobaoCmdRuleObserver:Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoCmdRuleObserver;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sTaobaoCmdRuleObserver:Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoCmdRuleObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sput-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sTaobaoCmdRuleObserver:Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoCmdRuleObserver;

    :cond_9
    return-void
.end method

.method public static onWindowHidden(Landroid/inputmethodservice/InputMethodService;)V
    .locals 1

    sget-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanShowMiuiBottom:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->maybeDismissPopupWindow()V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftSelectedKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightSelectedKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->isXiaoAiEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/inputmethodservice/XiaoAiVoiceInputController;->inputMethodDisappear(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/inputmethodservice/XiaoAiVoiceInputController;->unBindXiaoAiService(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method public static onWindowShown(Landroid/inputmethodservice/InputMethodService;)V
    .locals 9

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->isXiaoAiEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/inputmethodservice/XiaoAiVoiceInputController;->bindXiaoAiService(Landroid/content/Context;)V

    :cond_0
    sget-boolean v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sNeedClipboardBubbleShown:Z

    if-nez v1, :cond_1

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftRedPoint:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightRedPoint:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightRedPoint:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sNeedClipboardBubbleShown:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sLatestClipboardTimeStamp:J

    sub-long v5, v1, v3

    const-wide/16 v7, 0x7530

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    const-string v3, "InputMethodService"

    const-string v4, "clipboard bubble view can not show because it\'s time interval over 30s."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    sget-wide v5, Landroid/inputmethodservice/InputMethodServiceInjector;->sCloudClipboardTimeStamp:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_3

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->addCloudClipboardPopView(Landroid/content/Context;)V

    return-void

    :cond_3
    sget-wide v5, Landroid/inputmethodservice/InputMethodServiceInjector;->sLocalClipboardTimeStamp:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->isBubbleViewLeft()Z

    move-result v3

    invoke-static {v0, v3}, Landroid/inputmethodservice/InputMethodServiceInjector;->showClipBubblePopupWindow(Landroid/content/Context;Z)V

    :cond_4
    return-void
.end method

.method private static openQuickPasteView(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanShowMiuiBottom:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->isClipboardFunctionSelected()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    sget-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipQuickPasteEnable:Z

    if-nez v0, :cond_3

    return-void

    :cond_3
    sget-wide v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLatestClipboardTimeStamp:J

    sput-wide v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLocalClipboardTimeStamp:J

    const-string v0, "miui_input_no_need_show_pop"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x1

    sput-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sNeedClipboardBubbleShown:Z

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/inputmethodservice/InputMethodServiceInjector$3;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/InputMethodServiceInjector$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void
.end method

.method private static registerObserver(Landroid/content/Context;)V
    .locals 5

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiBottomStatusObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v2}, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiBottomStatusObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "enable_miui_ime_bottom_view"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiBottomStatusObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "force_fsg_nav_bar"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiBottomStatusObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_0
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiNavigationHandleEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleEnableObserver;

    if-nez v0, :cond_1

    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleEnableObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v2}, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleEnableObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiNavigationHandleEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleEnableObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "hide_gesture_line"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiNavigationHandleEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleEnableObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_1
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiNavigationHandleSupportObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleSupportObserver;

    if-nez v0, :cond_2

    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleSupportObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v2}, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleSupportObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiNavigationHandleSupportObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleSupportObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "use_gesture_version_three"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sMiuiNavigationHandleSupportObserver:Landroid/inputmethodservice/InputMethodServiceInjector$MiuiNavigationHandleSupportObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_2
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sInputMethodFunctionSelectObserver:Landroid/inputmethodservice/InputMethodServiceInjector$InputMethodFunctionSelectObserver;

    if-nez v0, :cond_3

    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$InputMethodFunctionSelectObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v2, p0}, Landroid/inputmethodservice/InputMethodServiceInjector$InputMethodFunctionSelectObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sInputMethodFunctionSelectObserver:Landroid/inputmethodservice/InputMethodServiceInjector$InputMethodFunctionSelectObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "full_screen_keyboard_left_function"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sInputMethodFunctionSelectObserver:Landroid/inputmethodservice/InputMethodServiceInjector$InputMethodFunctionSelectObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "full_screen_keyboard_right_function"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sInputMethodFunctionSelectObserver:Landroid/inputmethodservice/InputMethodServiceInjector$InputMethodFunctionSelectObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_3
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sCloudClipboardContentObserver:Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardContentObserver;

    if-nez v0, :cond_4

    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardContentObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v2, p0}, Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardContentObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sCloudClipboardContentObserver:Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardContentObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "cloud_clipboard_cipher_content_saved"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sCloudClipboardContentObserver:Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardContentObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_4
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sCloudClipboardPasteModeObserver:Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardPasteModeObserver;

    if-nez v0, :cond_5

    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardPasteModeObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v2, p0}, Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardPasteModeObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sCloudClipboardPasteModeObserver:Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardPasteModeObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "input_method_cloud_clipboard_quick_paste_mode"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sCloudClipboardPasteModeObserver:Landroid/inputmethodservice/InputMethodServiceInjector$CloudClipboardPasteModeObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_5
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipboardQuickPasteObserver:Landroid/inputmethodservice/InputMethodServiceInjector$ClipboardQuickPasteObserver;

    if-nez v0, :cond_6

    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$ClipboardQuickPasteObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v2, p0}, Landroid/inputmethodservice/InputMethodServiceInjector$ClipboardQuickPasteObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipboardQuickPasteObserver:Landroid/inputmethodservice/InputMethodServiceInjector$ClipboardQuickPasteObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "enable_miui_quick_paste"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipboardQuickPasteObserver:Landroid/inputmethodservice/InputMethodServiceInjector$ClipboardQuickPasteObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_6
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sUrlQuickPasteEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$UrlQuickPasteEnableObserver;

    if-nez v0, :cond_7

    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$UrlQuickPasteEnableObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v2, p0}, Landroid/inputmethodservice/InputMethodServiceInjector$UrlQuickPasteEnableObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sUrlQuickPasteEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$UrlQuickPasteEnableObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "enable_quick_paste_url"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sUrlQuickPasteEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$UrlQuickPasteEnableObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_7
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sTaobaoQuickPasteEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoQuickPasteEnableObserver;

    if-nez v0, :cond_8

    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoQuickPasteEnableObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v2, p0}, Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoQuickPasteEnableObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sTaobaoQuickPasteEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoQuickPasteEnableObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "enable_quick_paste_taobao"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sTaobaoQuickPasteEnableObserver:Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoQuickPasteEnableObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_8
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sTaobaoCmdRuleObserver:Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoCmdRuleObserver;

    if-nez v0, :cond_9

    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoCmdRuleObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v2, p0}, Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoCmdRuleObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sTaobaoCmdRuleObserver:Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoCmdRuleObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "input_method_taobao_cmd_rule"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sTaobaoCmdRuleObserver:Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoCmdRuleObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "input_method_taobao_cmd_enable"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sTaobaoCmdRuleObserver:Landroid/inputmethodservice/InputMethodServiceInjector$TaobaoCmdRuleObserver;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_9
    return-void
.end method

.method private static setFunctionChanged(Landroid/content/Context;)V
    .locals 20

    move-object/from16 v6, p0

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftRedPoint:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightRedPoint:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "full_screen_keyboard_left_function"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftSelectedKey:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "full_screen_keyboard_right_function"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightSelectedKey:Ljava/lang/String;

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftSelectedKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v7, "no_function"

    const-string/jumbo v8, "xiaoai_input"

    const-string/jumbo v9, "voice_input"

    const v11, 0x110700d6

    const-string v12, "clipboard_phrase"

    const-string/jumbo v13, "switch_input_method"

    const v14, 0x110700d7

    const/4 v15, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftSelectedKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_1
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_2
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_3
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v15

    goto :goto_1

    :sswitch_4
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    if-eq v0, v5, :cond_3

    if-eq v0, v15, :cond_2

    if-eq v0, v4, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error leftSelectedFunction : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftSelectedKey:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "InputMethodService"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v1

    move-object v11, v2

    move v15, v3

    goto/16 :goto_2

    :cond_1
    sput-boolean v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanPopCloudClipboardViewLeft:Z

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move v10, v1

    move-object v11, v2

    move v15, v3

    goto/16 :goto_2

    :cond_2
    sput-boolean v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanPopCloudClipboardViewLeft:Z

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftButton:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiClipboardPhraseListener;

    sget-object v5, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v5, v5, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    sget-object v4, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    invoke-direct {v0, v6, v5, v4, v3}, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiClipboardPhraseListener;-><init>(Landroid/content/Context;Landroid/inputmethodservice/InputMethodService;Landroid/view/View;Z)V

    sget-object v4, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v10, v1

    move-object v11, v2

    move v15, v3

    goto/16 :goto_2

    :cond_3
    sput-boolean v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanPopCloudClipboardViewLeft:Z

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftButton:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v17, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchInputMethodListener;

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v4, v0, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v5, v0, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    sget-object v18, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move v10, v1

    move-object v1, v4

    move-object v4, v2

    move-object v2, v5

    move v5, v3

    move-object/from16 v3, p0

    move-object v11, v4

    move-object/from16 v4, v18

    move v15, v5

    move/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchInputMethodListener;-><init>(Landroid/inputmethodservice/InputMethodService;Landroid/view/inputmethod/InputMethodManager;Landroid/content/Context;Landroid/view/View;Z)V

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_4
    move v10, v1

    move-object v11, v2

    move v15, v3

    sput-boolean v10, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanPopCloudClipboardViewLeft:Z

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftButton:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110700d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiXiaoAiInputListener;

    invoke-direct {v0, v6}, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiXiaoAiInputListener;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    :cond_5
    move v10, v1

    move-object v11, v2

    move v15, v3

    sput-boolean v10, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanPopCloudClipboardViewLeft:Z

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftButton:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110700d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiVoiceInputListener;

    invoke-direct {v0, v6}, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiVoiceInputListener;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    nop

    :goto_2
    goto :goto_3

    :cond_6
    move v10, v1

    move-object v11, v2

    move v15, v3

    sput-boolean v10, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanPopCloudClipboardViewLeft:Z

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftButton:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v17, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchInputMethodListener;

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v1, v0, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v2, v0, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    sget-object v4, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    move-object/from16 v0, v17

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchInputMethodListener;-><init>(Landroid/inputmethodservice/InputMethodService;Landroid/view/inputmethod/InputMethodManager;Landroid/content/Context;Landroid/view/View;Z)V

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sput-object v13, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftSelectedKey:Ljava/lang/String;

    :goto_3
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightSelectedKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightSelectedKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    :cond_7
    goto :goto_4

    :sswitch_5
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_5

    :sswitch_6
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_5

    :sswitch_7
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v15

    goto :goto_5

    :sswitch_8
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_5

    :sswitch_9
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v10

    goto :goto_5

    :goto_4
    const/4 v0, -0x1

    :goto_5
    if-eqz v0, :cond_c

    if-eq v0, v15, :cond_b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error rightSelectedFunction : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightSelectedKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_8
    sput-boolean v10, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanPopCloudClipboardViewRight:Z

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_6

    :cond_9
    sput-boolean v15, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanPopCloudClipboardViewRight:Z

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110700d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiClipboardPhraseListener;

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-direct {v0, v6, v1, v2, v10}, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiClipboardPhraseListener;-><init>(Landroid/content/Context;Landroid/inputmethodservice/InputMethodService;Landroid/view/View;Z)V

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    :cond_a
    sput-boolean v10, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanPopCloudClipboardViewRight:Z

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v7, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchInputMethodListener;

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v1, v0, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v2, v0, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    sget-object v4, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object v0, v7

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiSwitchInputMethodListener;-><init>(Landroid/inputmethodservice/InputMethodService;Landroid/view/inputmethod/InputMethodManager;Landroid/content/Context;Landroid/view/View;Z)V

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    :cond_b
    sput-boolean v10, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanPopCloudClipboardViewRight:Z

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110700d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiXiaoAiInputListener;

    invoke-direct {v0, v6}, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiXiaoAiInputListener;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_6

    :cond_c
    sput-boolean v10, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanPopCloudClipboardViewRight:Z

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110700d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiVoiceInputListener;

    invoke-direct {v0, v6}, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiVoiceInputListener;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    nop

    :goto_6
    goto :goto_7

    :cond_d
    sput-boolean v15, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanPopCloudClipboardViewRight:Z

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110700d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiClipboardPhraseListener;

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-direct {v0, v6, v1, v2, v10}, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiClipboardPhraseListener;-><init>(Landroid/content/Context;Landroid/inputmethodservice/InputMethodService;Landroid/view/View;Z)V

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sput-object v12, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightSelectedKey:Ljava/lang/String;

    :goto_7
    return-void

    :sswitch_data_0
    .sparse-switch
        0x10556e7d -> :sswitch_4
        0x332f6982 -> :sswitch_3
        0x3d6adcd2 -> :sswitch_2
        0x3dd18096 -> :sswitch_1
        0x4c7a0621 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x10556e7d -> :sswitch_9
        0x332f6982 -> :sswitch_8
        0x3d6adcd2 -> :sswitch_7
        0x3dd18096 -> :sswitch_6
        0x4c7a0621 -> :sswitch_5
    .end sparse-switch
.end method

.method private static setMiuiBottomMargin(Landroid/content/Context;)V
    .locals 8

    invoke-static {}, Landroid/inputmethodservice/InputMethodUtil;->isShowNavigationHandle()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodUtil;->updateBottomMargin(I)V

    return-void

    :cond_0
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodUtil;->getGestureLineHeight(Landroid/content/Context;)I

    move-result v4

    sub-int v5, v2, v3

    iget v6, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bottomLayoutHeight "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", bottomButtonHeight "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", params.topMargin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "InputMethodService"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v5}, Landroid/inputmethodservice/InputMethodUtil;->updateBottomMargin(I)V

    sget-object v6, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v6, v6, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mMiuiBottomArea:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    neg-int v7, v5

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sget-object v7, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v7, v7, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mMiuiBottomArea:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static setPrimaryClipChangedListener(Landroid/content/Context;)V
    .locals 2

    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/inputmethodservice/InputMethodServiceInjector$2;

    invoke-direct {v1, v0, p0}, Landroid/inputmethodservice/InputMethodServiceInjector$2;-><init>(Landroid/content/ClipboardManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    :cond_0
    return-void
.end method

.method private static showClipBubblePopupWindow(Landroid/content/Context;Z)V
    .locals 8

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipBubblePopupView:Landroid/inputmethodservice/InputMethodClipBubblePopupView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipBubblePopupView:Landroid/inputmethodservice/InputMethodClipBubblePopupView;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->dismiss()V

    :cond_0
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sBottomViewHelper:Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodServiceInjector$BottomViewHelper;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    new-instance v7, Landroid/inputmethodservice/InputMethodClipBubblePopupView;

    sget-object v5, Landroid/inputmethodservice/InputMethodServiceInjector;->sLatestClipboardContent:Ljava/lang/String;

    sget v6, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipContentType:I

    move-object v1, v7

    move-object v2, p0

    move-object v3, v0

    move v4, p1

    invoke-direct/range {v1 .. v6}, Landroid/inputmethodservice/InputMethodClipBubblePopupView;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputConnection;ZLjava/lang/String;I)V

    sput-object v7, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipBubblePopupView:Landroid/inputmethodservice/InputMethodClipBubblePopupView;

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipBubblePopupView:Landroid/inputmethodservice/InputMethodClipBubblePopupView;

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->initPopupWindow()V

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipBubblePopupView:Landroid/inputmethodservice/InputMethodClipBubblePopupView;

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sLeftLayout:Landroid/widget/LinearLayout;

    sget v4, Landroid/inputmethodservice/InputMethodServiceInjector;->sScreenHeight:I

    invoke-virtual {v2, v3, v1, v1, v4}, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sClipBubblePopupView:Landroid/inputmethodservice/InputMethodClipBubblePopupView;

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sRightButton:Landroid/widget/ImageView;

    sget v4, Landroid/inputmethodservice/InputMethodServiceInjector;->sScreenWidth:I

    sget v5, Landroid/inputmethodservice/InputMethodServiceInjector;->sScreenHeight:I

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->showAtLocation(Landroid/view/View;III)V

    :goto_0
    return-void
.end method

.method private static updateMiuiBottomEnableValue(Landroid/content/Context;)V
    .locals 4

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->isImeSupport(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-boolean v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsMiuiBottomEnabled:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsScreenLandscape:Z

    if-nez v3, :cond_0

    sget-boolean v3, Landroid/inputmethodservice/InputMethodUtil;->sNavigationBarFullScreenValue:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sFloatEnable:Z

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    sput-boolean v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sCanShowMiuiBottom:Z

    if-eqz v0, :cond_1

    sget-boolean v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsMiuiBottomEnabled:Z

    if-eqz v3, :cond_1

    sget-boolean v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsScreenLandscape:Z

    if-nez v3, :cond_1

    sget-boolean v3, Landroid/inputmethodservice/InputMethodUtil;->sNavigationBarFullScreenValue:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    sput-boolean v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sNeedHandleComputeInsets:Z

    return-void
.end method

.method private static updateScreenHeight(Landroid/content/Context;)V
    .locals 5

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sScreenHeight:I

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sScreenWidth:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ScreenHeight : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sScreenHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputMethodService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sScreenWidth : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Landroid/inputmethodservice/InputMethodServiceInjector;->sScreenWidth:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static updateScreenHeightWithoutStatusBar(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p0}, Landroid/inputmethodservice/InputMethodUtil;->getGestureLineHeight(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    sput v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sScreenHeightWithoutStatusBar:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScreenHeightWithoutStatusBar : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sScreenHeightWithoutStatusBar:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
