.class public Lmiui/slide/SlideCoverEventManager;
.super Ljava/lang/Object;
.source "SlideCoverEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/slide/SlideCoverEventManager$SlideCallbacks;,
        Lmiui/slide/SlideCoverEventManager$SettingsObserver;,
        Lmiui/slide/SlideCoverEventManager$SlideReceiver;,
        Lmiui/slide/SlideCoverEventManager$H;
    }
.end annotation


# static fields
.field private static final FIRST_FRONT_CAMERA_OPEN:Ljava/lang/String; = "first_front_camera_open"

.field private static final GAME_BOOST_SEGMENT_NAME:Ljava/lang/String; = "gb_boosting"

.field private static final MSG_ACTIVITY_CHANGED:I = 0x65

.field private static final MSG_FRONT_CAMERA_OPEN_STATUS:I = 0x66

.field private static final MSG_INIT_OTHER_INFO:I = 0x64

.field private static final SLIDER_FIRST_TIP_SHOW:I = 0x0

.field private static final SLIDER_SECOND_TIP_SHOW:I = 0x2

.field private static final SLIDE_COVER_EVENT_STATUS:Ljava/lang/String; = "sc_event_status"

.field public static final TAG:Ljava/lang/String; = "SlideCoverEventManager"

.field private static final USER_SETUP_COMPLETE:Ljava/lang/String; = "user_setup_complete"

.field private static final sCallBackLock:Ljava/lang/Object;

.field private static sInstance:Lmiui/slide/SlideCoverEventManager;

.field private static sListenerWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private mActivityListener:Lmiui/process/IActivityChangeListener$Stub;

.field private mAnimationController:Lmiui/slide/SlideAnimationController;

.field private mAnswerCallCount:I

.field private mCallBacks:Lmiui/slide/SlideCoverEventManager$SlideCallbacks;

.field private mCameraOpenListener:Lmiui/slide/SlideCameraMonitor$CameraOpenListener;

.field private mConn:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mFirstEvent:Z

.field private mFirstFrontCameraOpen:Z

.field private mForbiddenActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mForegroundComponent:Landroid/content/ComponentName;

.field private mFrontCameraOpening:Z

.field private mGameBoostMode:Z

.field private mGameBoosterCount:I

.field private mHandler:Landroid/os/Handler;

.field private mInDriveMode:Z

.field private mInitMonitor:Z

.field private mLaunchAppCount:I

.field private mLaunchCameraCount:I

.field private mLaunchPanelCount:I

.field private mLaunchPkg:Ljava/lang/String;

.field private mOnForbiddenActivity:Z

.field private mOnMiuiAdjustActivity:Z

.field private mOnTargetApps:Z

.field private mPhoneFloating:Z

.field private mPhoneForeground:Z

.field private mPhoneListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneState:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreComponent:Landroid/content/ComponentName;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingsObserver:Lmiui/slide/SlideCoverEventManager$SettingsObserver;

.field private mSetupCompleted:Z

.field private mShowingTipsView:Z

.field private mSlideChoice:I

.field private mSlideCoverStatus:I

.field private mSliderListener:Lmiui/slide/SlideCoverListener;

.field private mSliderViewService:Lmiui/slide/ISliderViewService;

.field private mSoundEnable:Z

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mUseOnAdaptedAppCount:I

.field private mWakeUpCount:I

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiui/slide/SlideCoverEventManager;->sLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiui/slide/SlideCoverEventManager;->sCallBackLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/slide/SlideCoverEventManager;->sListenerWhiteList:Ljava/util/ArrayList;

    sget-object v0, Lmiui/slide/SlideCoverEventManager;->sListenerWhiteList:Ljava/util/ArrayList;

    const-string v1, "gamebooster"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/slide/SlideCoverEventManager;->sListenerWhiteList:Ljava/util/ArrayList;

    const-string v1, "sliderpanel"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lmiui/slide/SlideCoverListener;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/slide/SlideCoverEventManager;->mFirstEvent:Z

    const/4 v0, -0x1

    iput v0, p0, Lmiui/slide/SlideCoverEventManager;->mSlideCoverStatus:I

    const/4 v0, 0x0

    iput v0, p0, Lmiui/slide/SlideCoverEventManager;->mCurrentUserId:I

    new-instance v0, Lmiui/slide/SlideCoverEventManager$2;

    invoke-direct {v0, p0}, Lmiui/slide/SlideCoverEventManager$2;-><init>(Lmiui/slide/SlideCoverEventManager;)V

    iput-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mActivityListener:Lmiui/process/IActivityChangeListener$Stub;

    new-instance v0, Lmiui/slide/SlideCoverEventManager$3;

    invoke-direct {v0, p0}, Lmiui/slide/SlideCoverEventManager$3;-><init>(Lmiui/slide/SlideCoverEventManager;)V

    iput-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mCameraOpenListener:Lmiui/slide/SlideCameraMonitor$CameraOpenListener;

    new-instance v0, Lmiui/slide/SlideCoverEventManager$4;

    invoke-direct {v0, p0}, Lmiui/slide/SlideCoverEventManager$4;-><init>(Lmiui/slide/SlideCoverEventManager;)V

    iput-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mConn:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lmiui/slide/SlideCoverEventManager;->mSliderListener:Lmiui/slide/SlideCoverListener;

    iput-object p2, p0, Lmiui/slide/SlideCoverEventManager;->mContext:Landroid/content/Context;

    new-instance v0, Lmiui/slide/SlideCoverEventManager$H;

    invoke-direct {v0, p0, p3}, Lmiui/slide/SlideCoverEventManager$H;-><init>(Lmiui/slide/SlideCoverEventManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lmiui/slide/SlideCoverEventManager$SlideCallbacks;

    iget-object v1, p0, Lmiui/slide/SlideCoverEventManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmiui/slide/SlideCoverEventManager$SlideCallbacks;-><init>(Lmiui/slide/SlideCoverEventManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mCallBacks:Lmiui/slide/SlideCoverEventManager$SlideCallbacks;

    sput-object p0, Lmiui/slide/SlideCoverEventManager;->sInstance:Lmiui/slide/SlideCoverEventManager;

    return-void
.end method

.method static synthetic access$000(Lmiui/slide/SlideCoverEventManager;)I
    .locals 1

    iget v0, p0, Lmiui/slide/SlideCoverEventManager;->mPhoneState:I

    return v0
.end method

.method static synthetic access$002(Lmiui/slide/SlideCoverEventManager;I)I
    .locals 0

    iput p1, p0, Lmiui/slide/SlideCoverEventManager;->mPhoneState:I

    return p1
.end method

.method static synthetic access$1000(Lmiui/slide/SlideCoverEventManager;)V
    .locals 0

    invoke-direct {p0}, Lmiui/slide/SlideCoverEventManager;->initOtherInfo()V

    return-void
.end method

.method static synthetic access$1100(Lmiui/slide/SlideCoverEventManager;Lcom/android/internal/os/SomeArgs;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/slide/SlideCoverEventManager;->onActivityChanged(Lcom/android/internal/os/SomeArgs;)V

    return-void
.end method

.method static synthetic access$1200(Lmiui/slide/SlideCoverEventManager;)V
    .locals 0

    invoke-direct {p0}, Lmiui/slide/SlideCoverEventManager;->handleBindSliderView()V

    return-void
.end method

.method static synthetic access$1400(Lmiui/slide/SlideCoverEventManager;)I
    .locals 1

    iget v0, p0, Lmiui/slide/SlideCoverEventManager;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$1402(Lmiui/slide/SlideCoverEventManager;I)I
    .locals 0

    iput p1, p0, Lmiui/slide/SlideCoverEventManager;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$1500(Lmiui/slide/SlideCoverEventManager;)V
    .locals 0

    invoke-direct {p0}, Lmiui/slide/SlideCoverEventManager;->updateSettings()V

    return-void
.end method

.method static synthetic access$1600(Lmiui/slide/SlideCoverEventManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lmiui/slide/SlideCoverEventManager;Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/slide/SlideCoverEventManager;->updatePhoneFloating(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$1800(Lmiui/slide/SlideCoverEventManager;)Z
    .locals 1

    iget-boolean v0, p0, Lmiui/slide/SlideCoverEventManager;->mPhoneFloating:Z

    return v0
.end method

.method static synthetic access$1900(Lmiui/slide/SlideCoverEventManager;)Z
    .locals 1

    iget-boolean v0, p0, Lmiui/slide/SlideCoverEventManager;->mInDriveMode:Z

    return v0
.end method

.method static synthetic access$1902(Lmiui/slide/SlideCoverEventManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/slide/SlideCoverEventManager;->mInDriveMode:Z

    return p1
.end method

.method static synthetic access$200(Lmiui/slide/SlideCoverEventManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lmiui/slide/SlideCoverEventManager;)Z
    .locals 1

    iget-boolean v0, p0, Lmiui/slide/SlideCoverEventManager;->mGameBoostMode:Z

    return v0
.end method

.method static synthetic access$2002(Lmiui/slide/SlideCoverEventManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/slide/SlideCoverEventManager;->mGameBoostMode:Z

    return p1
.end method

.method static synthetic access$2100(Lmiui/slide/SlideCoverEventManager;Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/slide/SlideCoverEventManager;->updateSlideChoice(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$2200(Lmiui/slide/SlideCoverEventManager;Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/slide/SlideCoverEventManager;->updateLaunchApp(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$2300(Lmiui/slide/SlideCoverEventManager;Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/slide/SlideCoverEventManager;->updateSoundCheck(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$2400()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lmiui/slide/SlideCoverEventManager;->sCallBackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2500()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lmiui/slide/SlideCoverEventManager;->sListenerWhiteList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2600(Lmiui/slide/SlideCoverEventManager;)I
    .locals 1

    iget v0, p0, Lmiui/slide/SlideCoverEventManager;->mSlideChoice:I

    return v0
.end method

.method static synthetic access$2708(Lmiui/slide/SlideCoverEventManager;)I
    .locals 2

    iget v0, p0, Lmiui/slide/SlideCoverEventManager;->mGameBoosterCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmiui/slide/SlideCoverEventManager;->mGameBoosterCount:I

    return v0
.end method

.method static synthetic access$2808(Lmiui/slide/SlideCoverEventManager;)I
    .locals 2

    iget v0, p0, Lmiui/slide/SlideCoverEventManager;->mLaunchPanelCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmiui/slide/SlideCoverEventManager;->mLaunchPanelCount:I

    return v0
.end method

.method static synthetic access$302(Lmiui/slide/SlideCoverEventManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/slide/SlideCoverEventManager;->mFrontCameraOpening:Z

    return p1
.end method

.method static synthetic access$400(Lmiui/slide/SlideCoverEventManager;)I
    .locals 1

    iget v0, p0, Lmiui/slide/SlideCoverEventManager;->mSlideCoverStatus:I

    return v0
.end method

.method static synthetic access$500(Lmiui/slide/SlideCoverEventManager;)V
    .locals 0

    invoke-direct {p0}, Lmiui/slide/SlideCoverEventManager;->bindSliderViewServiceDelay()V

    return-void
.end method

.method static synthetic access$600(Lmiui/slide/SlideCoverEventManager;)V
    .locals 0

    invoke-direct {p0}, Lmiui/slide/SlideCoverEventManager;->hideTipsView()V

    return-void
.end method

.method static synthetic access$702(Lmiui/slide/SlideCoverEventManager;Lmiui/slide/ISliderViewService;)Lmiui/slide/ISliderViewService;
    .locals 0

    iput-object p1, p0, Lmiui/slide/SlideCoverEventManager;->mSliderViewService:Lmiui/slide/ISliderViewService;

    return-object p1
.end method

.method static synthetic access$800(Lmiui/slide/SlideCoverEventManager;)V
    .locals 0

    invoke-direct {p0}, Lmiui/slide/SlideCoverEventManager;->showTipsView()V

    return-void
.end method

.method static synthetic access$900(Lmiui/slide/SlideCoverEventManager;)V
    .locals 0

    invoke-direct {p0}, Lmiui/slide/SlideCoverEventManager;->bindSliderView()V

    return-void
.end method

.method private bindSliderView()V
    .locals 7

    const-string v0, "SlideCoverEventManager"

    const-string v1, "bindSliderView"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.systemui.sliderview.SliderViewService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lmiui/slide/SlideCoverEventManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lmiui/slide/SlideCoverEventManager;->mConn:Landroid/content/ServiceConnection;

    iget-object v5, p0, Lmiui/slide/SlideCoverEventManager;->mHandler:Landroid/os/Handler;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v4, 0x1

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    return-void
.end method

.method private bindSliderViewServiceDelay()V
    .locals 4

    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mForegroundComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.keyguard.settings.MiuiNormalCameraFaceInput"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lmiui/slide/SlideCoverEventManager;->mShowingTipsView:Z

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lmiui/slide/SlideCoverEventManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public static getInstance()Lmiui/slide/SlideCoverEventManager;
    .locals 1

    sget-object v0, Lmiui/slide/SlideCoverEventManager;->sInstance:Lmiui/slide/SlideCoverEventManager;

    return-object v0
.end method

.method private handleBindSliderView()V
    .locals 2

    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lmiui/slide/SlideCoverEventManager;->mShowingTipsView:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mSliderViewService:Lmiui/slide/ISliderViewService;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lmiui/slide/SlideCoverEventManager;->showTipsView()V

    return-void

    :cond_1
    invoke-direct {p0}, Lmiui/slide/SlideCoverEventManager;->bindSliderView()V

    return-void
.end method

.method private handleCamera(I)Z
    .locals 3

    invoke-direct {p0, p1}, Lmiui/slide/SlideCoverEventManager;->handleMiuiAdjustApp(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lmiui/slide/SlideCoverEventManager;->mUseOnAdaptedAppCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/slide/SlideCoverEventManager;->mUseOnAdaptedAppCount:I

    return v1

    :cond_0
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lmiui/slide/SlideCoverEventManager;->mOnTargetApps:Z

    if-nez v0, :cond_2

    invoke-static {}, Lmiui/slide/SlideCameraMonitor;->getInstance()Lmiui/slide/SlideCameraMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/slide/SlideCameraMonitor;->isCameraOpening()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mPreComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.camera"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lmiui/slide/SlideCoverEventManager;->launchCamera()V

    iget v0, p0, Lmiui/slide/SlideCoverEventManager;->mLaunchCameraCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/slide/SlideCoverEventManager;->mLaunchCameraCount:I

    const/4 v0, 0x0

    return v0

    :cond_2
    return v1
.end method

.method private handleChoice(I)Z
    .locals 5

    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mForegroundComponent:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.camera"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lmiui/slide/SlideCoverEventManager;->mOnMiuiAdjustActivity:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lmiui/slide/SlideCoverEventManager;->mFrontCameraOpening:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget v0, p0, Lmiui/slide/SlideCoverEventManager;->mSlideChoice:I

    if-eq v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    iget v0, p0, Lmiui/slide/SlideCoverEventManager;->mSlideChoice:I

    if-nez v0, :cond_4

    return v2

    :cond_4
    if-nez p1, :cond_6

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mLaunchPkg:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget v1, p0, Lmiui/slide/SlideCoverEventManager;->mCurrentUserId:I

    invoke-static {v0, v1}, Lmiui/slide/SlideUtils;->getLaunchIntentForPackageAsUser(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SlideCoverEventManager"

    if-nez v0, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error to launch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmiui/slide/SlideCoverEventManager;->mLaunchPkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    iget-object v3, p0, Lmiui/slide/SlideCoverEventManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmiui/slide/SlideCoverEventManager;->mLaunchPkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lmiui/slide/SlideCoverEventManager;->mLaunchAppCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lmiui/slide/SlideCoverEventManager;->mLaunchAppCount:I

    return v2

    :cond_6
    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mCallBacks:Lmiui/slide/SlideCoverEventManager$SlideCallbacks;

    invoke-static {v0, p1}, Lmiui/slide/SlideCoverEventManager$SlideCallbacks;->access$100(Lmiui/slide/SlideCoverEventManager$SlideCallbacks;I)Z

    move-result v0

    return v0
.end method

.method private handleKeyGuard(I)Z
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmiui/slide/SlideCoverEventManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SlideCoverEventManager"

    const-string v1, "event to be handled by keyguard"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private handleMiuiAdjustApp(I)Z
    .locals 1

    iget-boolean v0, p0, Lmiui/slide/SlideCoverEventManager;->mOnMiuiAdjustActivity:Z

    return v0
.end method

.method private handlePhone(I)Z
    .locals 4

    const-string v0, "SlideCoverEventManager"

    iget v1, p0, Lmiui/slide/SlideCoverEventManager;->mPhoneState:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    return v2

    :cond_0
    if-nez p1, :cond_2

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lmiui/slide/SlideCoverEventManager;->mPhoneForeground:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lmiui/slide/SlideCoverEventManager;->mPhoneFloating:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lmiui/slide/SlideCoverEventManager;->mInDriveMode:Z

    if-eqz v1, :cond_2

    :cond_1
    :try_start_0
    const-string v1, "answer a call"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/slide/SlideCoverEventManager;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    iget v1, p0, Lmiui/slide/SlideCoverEventManager;->mAnswerCallCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lmiui/slide/SlideCoverEventManager;->mAnswerCallCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error to answer a call:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private handleSlideCoverAnimation(I)V
    .locals 1

    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mAnimationController:Lmiui/slide/SlideAnimationController;

    invoke-virtual {v0, p1}, Lmiui/slide/SlideAnimationController;->showView(I)V

    invoke-direct {p0, p1}, Lmiui/slide/SlideCoverEventManager;->handleSlideCoverSound(I)V

    return-void
.end method

.method private handleSlideCoverSound(I)V
    .locals 3

    iget-boolean v0, p0, Lmiui/slide/SlideCoverEventManager;->mSoundEnable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mSliderViewService:Lmiui/slide/ISliderViewService;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0, p1}, Lmiui/slide/ISliderViewService;->playSound(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SlideCoverEventManager"

    const-string v2, "error to play sound"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private handleSystem(I)V
    .locals 5

    invoke-direct {p0, p1}, Lmiui/slide/SlideCoverEventManager;->updateEventStatus(I)V

    const/4 v0, 0x1

    if-nez p1, :cond_2

    iget-object v1, p0, Lmiui/slide/SlideCoverEventManager;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lmiui/slide/SlideCoverEventManager;->mWakeUpCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lmiui/slide/SlideCoverEventManager;->mWakeUpCount:I

    :cond_0
    iget-object v1, p0, Lmiui/slide/SlideCoverEventManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string v4, "android.policy:SLIDE"

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lmiui/slide/SlideCoverEventManager;->hideTipsView()V

    :cond_2
    invoke-direct {p0, p1}, Lmiui/slide/SlideCoverEventManager;->handleSlideCoverAnimation(I)V

    if-ne p1, v0, :cond_3

    iget-boolean v0, p0, Lmiui/slide/SlideCoverEventManager;->mFrontCameraOpening:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lmiui/slide/SlideCoverEventManager;->bindSliderViewServiceDelay()V

    :cond_3
    return-void
.end method

.method private handleWechatHardCoder(I)Z
    .locals 3

    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mForegroundComponent:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.tencent.mm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mForegroundComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.tencent.mm.plugin.voip.ui.VideoActivity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "sys.hardcoder.registered"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    if-nez p1, :cond_2

    invoke-static {}, Lmiui/os/MiuiBoosterClient;->getInstance()Lmiui/os/MiuiBoosterClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/os/MiuiBoosterClient;->writeEvent(I)Z

    move-result v0

    return v0

    :cond_2
    if-ne p1, v0, :cond_3

    invoke-static {}, Lmiui/os/MiuiBoosterClient;->getInstance()Lmiui/os/MiuiBoosterClient;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmiui/os/MiuiBoosterClient;->writeEvent(I)Z

    move-result v0

    return v0

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method private hideTipsView()V
    .locals 3

    sget-object v0, Lmiui/slide/SlideCoverEventManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lmiui/slide/SlideCoverEventManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lmiui/slide/SlideCoverEventManager;->mSliderViewService:Lmiui/slide/ISliderViewService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lmiui/slide/SlideCoverEventManager;->mShowingTipsView:Z

    if-eqz v1, :cond_0

    const-string v1, "SlideCoverEventManager"

    const-string v2, "removeSliderView"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/slide/SlideCoverEventManager;->mSliderViewService:Lmiui/slide/ISliderViewService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lmiui/slide/ISliderViewService;->removeSliderView(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/slide/SlideCoverEventManager;->mShowingTipsView:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private initOtherInfo()V
    .locals 6

    invoke-static {}, Lmiui/slide/SlideCloudConfigHelper;->getInstance()Lmiui/slide/SlideCloudConfigHelper;

    move-result-object v0

    iget-object v1, p0, Lmiui/slide/SlideCoverEventManager;->mActivityListener:Lmiui/process/IActivityChangeListener$Stub;

    invoke-virtual {v0, v1}, Lmiui/slide/SlideCloudConfigHelper;->setActivityChangeListener(Lmiui/process/IActivityChangeListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mForbiddenActivities:Ljava/util/ArrayList;

    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mForbiddenActivities:Ljava/util/ArrayList;

    const-string v1, "com.android.settings.faceunlock.MiuiFaceDataInput"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mForbiddenActivities:Ljava/util/ArrayList;

    const-string v1, "com.android.settings.faceunlock.MiuiNormalCameraFaceInput"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mForbiddenActivities:Ljava/util/ArrayList;

    const-string v1, "com.android.settings.faceunlock.MiuiNormalCameraMultiFaceInput"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mForbiddenActivities:Ljava/util/ArrayList;

    const-string v1, "com.android.settings.faceunlock.MiuiFaceDataIntroduction"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Lmiui/slide/SlideCoverEventManager$SettingsObserver;

    iget-object v2, p0, Lmiui/slide/SlideCoverEventManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lmiui/slide/SlideCoverEventManager$SettingsObserver;-><init>(Lmiui/slide/SlideCoverEventManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lmiui/slide/SlideCoverEventManager;->mSettingsObserver:Lmiui/slide/SlideCoverEventManager$SettingsObserver;

    const-string v1, "status_bar_in_call_notification_floating"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lmiui/slide/SlideCoverEventManager;->mSettingsObserver:Lmiui/slide/SlideCoverEventManager$SettingsObserver;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "drive_mode_drive_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lmiui/slide/SlideCoverEventManager;->mSettingsObserver:Lmiui/slide/SlideCoverEventManager$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "gb_boosting"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lmiui/slide/SlideCoverEventManager;->mSettingsObserver:Lmiui/slide/SlideCoverEventManager$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "miui_slider_tool_choice"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lmiui/slide/SlideCoverEventManager;->mSettingsObserver:Lmiui/slide/SlideCoverEventManager$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "miui_slider_launch_pkg"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lmiui/slide/SlideCoverEventManager;->mSettingsObserver:Lmiui/slide/SlideCoverEventManager$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "miui_slider_sound_check"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lmiui/slide/SlideCoverEventManager;->mSettingsObserver:Lmiui/slide/SlideCoverEventManager$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 v1, 0x1

    const-string v2, "first_front_camera_open"

    invoke-static {v0, v2, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lmiui/slide/SlideCoverEventManager;->mFirstFrontCameraOpen:Z

    iget-object v2, p0, Lmiui/slide/SlideCoverEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, -0x2

    const-string v5, "user_setup_complete"

    invoke-static {v2, v5, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    iput-boolean v1, p0, Lmiui/slide/SlideCoverEventManager;->mSetupCompleted:Z

    new-instance v1, Lmiui/slide/SlideCoverEventManager$SlideReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmiui/slide/SlideCoverEventManager$SlideReceiver;-><init>(Lmiui/slide/SlideCoverEventManager;Lmiui/slide/SlideCoverEventManager$1;)V

    iput-object v1, p0, Lmiui/slide/SlideCoverEventManager;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lmiui/slide/SlideCoverEventManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lmiui/slide/SlideCoverEventManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "file"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v3, p0, Lmiui/slide/SlideCoverEventManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lmiui/slide/SlideCoverEventManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lmiui/slide/SlideCoverEventManager;->updateSettings()V

    return-void
.end method

.method private launchCamera()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "ShowCameraWhenLocked"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "StartActivityWhenLocked"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extras.CAMERA_FACING"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "autofocus"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, 0x0

    const-string v3, "fullScreen"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "showActionIcons"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "android.intent.extras.SCREEN_SLIDE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.camera"

    const-string v3, "com.android.camera.Camera"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lmiui/slide/SlideCoverEventManager;->mContext:Landroid/content/Context;

    const v2, 0x11010008

    const v3, 0x11010026

    invoke-static {v1, v2, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    const-string v2, "SlideCoverEventManager"

    const-string v3, "launchCamera"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lmiui/slide/SlideCoverEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method private onActivityChanged(Lcom/android/internal/os/SomeArgs;)V
    .locals 7

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyChange! preName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; curName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SlideCoverEventManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v1, p0, Lmiui/slide/SlideCoverEventManager;->mForegroundComponent:Landroid/content/ComponentName;

    iput-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mPreComponent:Landroid/content/ComponentName;

    iget-object v3, p0, Lmiui/slide/SlideCoverEventManager;->mForbiddenActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lmiui/slide/SlideCoverEventManager;->mOnForbiddenActivity:Z

    invoke-static {}, Lmiui/slide/SlideCloudConfigHelper;->getInstance()Lmiui/slide/SlideCloudConfigHelper;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lmiui/slide/SlideCloudConfigHelper;->is3rdAppProcessingActivity(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lmiui/slide/SlideCoverEventManager;->mOnMiuiAdjustActivity:Z

    invoke-static {}, Lmiui/slide/SlideCloudConfigHelper;->getInstance()Lmiui/slide/SlideCloudConfigHelper;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/slide/SlideCloudConfigHelper;->isMiuiAdapteringApp(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lmiui/slide/SlideCoverEventManager;->mOnTargetApps:Z

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.miui.home"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lmiui/slide/SlideCoverEventManager;->mInitMonitor:Z

    if-nez v3, :cond_0

    invoke-static {}, Lmiui/slide/SlideCameraMonitor;->getInstance()Lmiui/slide/SlideCameraMonitor;

    move-result-object v3

    iget-object v5, p0, Lmiui/slide/SlideCoverEventManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lmiui/slide/SlideCoverEventManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lmiui/slide/SlideCameraMonitor;->init(Landroid/content/Context;Landroid/os/Looper;)V

    invoke-static {}, Lmiui/slide/SlideCameraMonitor;->getInstance()Lmiui/slide/SlideCameraMonitor;

    move-result-object v3

    iget-object v5, p0, Lmiui/slide/SlideCoverEventManager;->mCameraOpenListener:Lmiui/slide/SlideCameraMonitor$CameraOpenListener;

    invoke-virtual {v3, v5}, Lmiui/slide/SlideCameraMonitor;->setCameraOpenListener(Lmiui/slide/SlideCameraMonitor$CameraOpenListener;)V

    iput-boolean v4, p0, Lmiui/slide/SlideCoverEventManager;->mInitMonitor:Z

    :cond_0
    iget-boolean v3, p0, Lmiui/slide/SlideCoverEventManager;->mFrontCameraOpening:Z

    if-eqz v3, :cond_1

    const-string v3, "com.android.systemui.recents.RecentsActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lmiui/slide/SlideCoverEventManager;->hideTipsView()V

    :cond_1
    const-string v3, "com.android.incallui.InCallActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.android.contacts.activities.PeopleActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.android.phone.MiuiEmergencyDialer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    nop

    :goto_1
    iput-boolean v4, p0, Lmiui/slide/SlideCoverEventManager;->mPhoneForeground:Z

    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void
.end method

.method private showTipsView()V
    .locals 6

    sget-object v0, Lmiui/slide/SlideCoverEventManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lmiui/slide/SlideCoverEventManager;->mSliderViewService:Lmiui/slide/ISliderViewService;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lmiui/slide/SlideCoverEventManager;->mFrontCameraOpening:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lmiui/slide/SlideCoverEventManager;->mSlideCoverStatus:I

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lmiui/slide/SlideCoverEventManager;->mShowingTipsView:Z

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v1, p0, Lmiui/slide/SlideCoverEventManager;->mFirstFrontCameraOpen:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v1, "SlideCoverEventManager"

    const-string v3, "first open front camera"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lmiui/slide/SlideCoverEventManager;->mFirstFrontCameraOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    :try_start_1
    const-string v3, "SlideCoverEventManager"

    const-string v4, "showSliderView"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lmiui/slide/SlideCoverEventManager;->mSliderViewService:Lmiui/slide/ISliderViewService;

    invoke-interface {v3, v1}, Lmiui/slide/ISliderViewService;->showSliderView(I)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lmiui/slide/SlideCoverEventManager;->mShowingTipsView:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "SlideCoverEventManager"

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lmiui/slide/SlideCoverEventManager;->mShowingTipsView:Z

    const/4 v4, 0x0

    iput-object v4, p0, Lmiui/slide/SlideCoverEventManager;->mSliderViewService:Lmiui/slide/ISliderViewService;

    :goto_1
    if-nez v1, :cond_2

    iget-object v3, p0, Lmiui/slide/SlideCoverEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "first_front_camera_open"

    invoke-static {v3, v4, v2, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_2
    monitor-exit v0

    return-void

    :cond_3
    :goto_2
    const-string v1, "SlideCoverEventManager"

    const-string v2, "show tips conditions are not satisfied"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private updateEventStatus(I)V
    .locals 3

    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sc_event_status"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private updateLaunchApp(Landroid/content/ContentResolver;)V
    .locals 2

    const-string v0, "miui_slider_launch_pkg"

    const/4 v1, -0x2

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mLaunchPkg:Ljava/lang/String;

    return-void
.end method

.method private updatePhoneFloating(Landroid/content/ContentResolver;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "status_bar_in_call_notification_floating"

    const/4 v2, -0x2

    invoke-static {p1, v1, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    iput-boolean v0, p0, Lmiui/slide/SlideCoverEventManager;->mPhoneFloating:Z

    return-void
.end method

.method private updateSettings()V
    .locals 1

    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/slide/SlideCoverEventManager;->updateSetupComplete(Landroid/content/ContentResolver;)V

    invoke-direct {p0, v0}, Lmiui/slide/SlideCoverEventManager;->updatePhoneFloating(Landroid/content/ContentResolver;)V

    invoke-direct {p0, v0}, Lmiui/slide/SlideCoverEventManager;->updateSlideChoice(Landroid/content/ContentResolver;)V

    invoke-direct {p0, v0}, Lmiui/slide/SlideCoverEventManager;->updateLaunchApp(Landroid/content/ContentResolver;)V

    invoke-direct {p0, v0}, Lmiui/slide/SlideCoverEventManager;->updateSoundCheck(Landroid/content/ContentResolver;)V

    return-void
.end method

.method private updateSetupComplete(Landroid/content/ContentResolver;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "user_setup_complete"

    const/4 v2, -0x2

    invoke-static {p1, v1, v0, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    iput-boolean v0, p0, Lmiui/slide/SlideCoverEventManager;->mSetupCompleted:Z

    return-void
.end method

.method private updateSlideChoice(Landroid/content/ContentResolver;)V
    .locals 3

    const-string v0, "miui_slider_tool_choice"

    const/4 v1, 0x1

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lmiui/slide/SlideCoverEventManager;->mSlideChoice:I

    return-void
.end method

.method private updateSoundCheck(Landroid/content/ContentResolver;)V
    .locals 3

    const/4 v0, 0x1

    const-string v1, "miui_slider_sound_check"

    const/4 v2, -0x2

    invoke-static {p1, v1, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lmiui/slide/SlideCoverEventManager;->mSoundEnable:Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mSliderListener:Lmiui/slide/SlideCoverListener;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/slide/SlideCoverListener;->dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string v0, "SlideCoverEventManager:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWakeUpCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/slide/SlideCoverEventManager;->mWakeUpCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLaunchCameraCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/slide/SlideCoverEventManager;->mLaunchCameraCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAnswerCallCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/slide/SlideCoverEventManager;->mAnswerCallCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUseOnAdaptedAppCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/slide/SlideCoverEventManager;->mUseOnAdaptedAppCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLaunchAppCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/slide/SlideCoverEventManager;->mLaunchAppCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLaunchPanelCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/slide/SlideCoverEventManager;->mLaunchPanelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mGameBoosterCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/slide/SlideCoverEventManager;->mGameBoosterCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSlideCoverStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/slide/SlideCoverEventManager;->mSlideCoverStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSlideChoice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/slide/SlideCoverEventManager;->mSlideChoice:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFrontCameraOpening="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lmiui/slide/SlideCoverEventManager;->mFrontCameraOpening:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mInDriveMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lmiui/slide/SlideCoverEventManager;->mInDriveMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLaunchPkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/slide/SlideCoverEventManager;->mLaunchPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSoundEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lmiui/slide/SlideCoverEventManager;->mSoundEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPhoneState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/slide/SlideCoverEventManager;->mPhoneState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mGameBoostMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lmiui/slide/SlideCoverEventManager;->mGameBoostMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/slide/SlideCoverEventManager;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mForegroundComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/slide/SlideCoverEventManager;->mForegroundComponent:Landroid/content/ComponentName;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOnTargetApps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lmiui/slide/SlideCoverEventManager;->mOnTargetApps:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForbiddenActivities:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mForbiddenActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "sListenerWhiteList:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v0, Lmiui/slide/SlideCoverEventManager;->sListenerWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "registered slide event listener:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v0, Lmiui/slide/SlideCoverEventManager;->sCallBackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lmiui/slide/SlideCoverEventManager;->mCallBacks:Lmiui/slide/SlideCoverEventManager$SlideCallbacks;

    invoke-virtual {v1}, Lmiui/slide/SlideCoverEventManager$SlideCallbacks;->getCallbacks()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mSliderViewService:Lmiui/slide/ISliderViewService;

    if-eqz v0, :cond_4

    :try_start_1
    invoke-interface {v0, p1}, Lmiui/slide/ISliderViewService;->getDumpContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    :cond_4
    :goto_4
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public handleSlideCoverEvent(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    iget v1, p0, Lmiui/slide/SlideCoverEventManager;->mSlideCoverStatus:I

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    iput p1, p0, Lmiui/slide/SlideCoverEventManager;->mSlideCoverStatus:I

    :cond_1
    iget-boolean v1, p0, Lmiui/slide/SlideCoverEventManager;->mFirstEvent:Z

    if-eqz v1, :cond_2

    iput-boolean v0, p0, Lmiui/slide/SlideCoverEventManager;->mFirstEvent:Z

    return v0

    :cond_2
    iget-boolean v1, p0, Lmiui/slide/SlideCoverEventManager;->mSetupCompleted:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lmiui/slide/SlideCoverEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0, v1}, Lmiui/slide/SlideCoverEventManager;->updateSetupComplete(Landroid/content/ContentResolver;)V

    iget-boolean v1, p0, Lmiui/slide/SlideCoverEventManager;->mSetupCompleted:Z

    if-nez v1, :cond_3

    invoke-direct {p0, p1}, Lmiui/slide/SlideCoverEventManager;->handleSlideCoverAnimation(I)V

    return v0

    :cond_3
    iget-object v1, p0, Lmiui/slide/SlideCoverEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, p1}, Lmiui/slide/SlideCoverEventManager;->handlePhone(I)Z

    move-result v1

    if-eqz v1, :cond_4

    return v0

    :cond_4
    invoke-direct {p0, p1}, Lmiui/slide/SlideCoverEventManager;->handleSlideCoverSound(I)V

    iget-object v1, p0, Lmiui/slide/SlideCoverEventManager;->mCallBacks:Lmiui/slide/SlideCoverEventManager$SlideCallbacks;

    invoke-static {v1, p1}, Lmiui/slide/SlideCoverEventManager$SlideCallbacks;->access$100(Lmiui/slide/SlideCoverEventManager$SlideCallbacks;I)Z

    return v0

    :cond_5
    invoke-direct {p0, p1}, Lmiui/slide/SlideCoverEventManager;->handleSystem(I)V

    invoke-direct {p0, p1}, Lmiui/slide/SlideCoverEventManager;->handlePhone(I)Z

    move-result v1

    if-eqz v1, :cond_6

    return v0

    :cond_6
    invoke-direct {p0, p1}, Lmiui/slide/SlideCoverEventManager;->handleKeyGuard(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lmiui/slide/SlideCoverEventManager;->mGameBoostMode:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lmiui/slide/SlideCoverEventManager;->mCallBacks:Lmiui/slide/SlideCoverEventManager$SlideCallbacks;

    invoke-static {v1, p1}, Lmiui/slide/SlideCoverEventManager$SlideCallbacks;->access$100(Lmiui/slide/SlideCoverEventManager$SlideCallbacks;I)Z

    move-result v1

    if-eqz v1, :cond_8

    return v0

    :cond_8
    invoke-direct {p0, p1}, Lmiui/slide/SlideCoverEventManager;->handleWechatHardCoder(I)Z

    move-result v1

    if-eqz v1, :cond_9

    return v0

    :cond_9
    iget-boolean v1, p0, Lmiui/slide/SlideCoverEventManager;->mOnForbiddenActivity:Z

    if-eqz v1, :cond_a

    return v2

    :cond_a
    invoke-direct {p0, p1}, Lmiui/slide/SlideCoverEventManager;->handleChoice(I)Z

    move-result v1

    if-eqz v1, :cond_b

    return v0

    :cond_b
    invoke-direct {p0, p1}, Lmiui/slide/SlideCoverEventManager;->handleCamera(I)Z

    move-result v0

    return v0
.end method

.method public isKeyguardLocked()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->isKeyguardLocked()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SlideCoverEventManager"

    const-string v2, "error to get keyguard status"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public registerSlideChangeListener(Ljava/lang/String;Lmiui/slide/ISlideChangeListener;)V
    .locals 5

    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v0, v1}, Lmiui/slide/SlideUtils;->getProcessName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const-string v2, "SlideCoverEventManager"

    if-nez v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t find processName for pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " when register"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v3, Lmiui/slide/SlideCoverEventManager;->sListenerWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not authenticated, ignore"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v2, p0, Lmiui/slide/SlideCoverEventManager;->mCallBacks:Lmiui/slide/SlideCoverEventManager$SlideCallbacks;

    invoke-virtual {v2, p1, v1, v0, p2}, Lmiui/slide/SlideCoverEventManager$SlideCallbacks;->register(Ljava/lang/String;ILjava/lang/String;Lmiui/slide/ISlideChangeListener;)V

    return-void
.end method

.method public systemReady()V
    .locals 3

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mWindowManager:Landroid/view/IWindowManager;

    new-instance v0, Lmiui/slide/SlideCoverEventManager$1;

    invoke-direct {v0, p0}, Lmiui/slide/SlideCoverEventManager$1;-><init>(Lmiui/slide/SlideCoverEventManager;)V

    iput-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lmiui/slide/SlideCoverEventManager;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    iput-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mTelecomManager:Landroid/telecom/TelecomManager;

    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mPowerManager:Landroid/os/PowerManager;

    new-instance v0, Lmiui/slide/SlideAnimationController;

    iget-object v1, p0, Lmiui/slide/SlideCoverEventManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/slide/SlideCoverEventManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmiui/slide/SlideAnimationController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mAnimationController:Lmiui/slide/SlideAnimationController;

    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unregisterSlideChangeListener(Lmiui/slide/ISlideChangeListener;)V
    .locals 2

    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager;->mCallBacks:Lmiui/slide/SlideCoverEventManager$SlideCallbacks;

    invoke-interface {p1}, Lmiui/slide/ISlideChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/slide/SlideCoverEventManager$SlideCallbacks;->unregister(Landroid/os/IBinder;)V

    return-void
.end method
