.class public Lmiui/slide/SlideConfig;
.super Ljava/lang/Object;
.source "SlideConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/slide/SlideConfig$TouchEventConfig;
    }
.end annotation


# static fields
.field public static final BOOLEAN_CONDITION_TRUE_FALSE:Z = true

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/slide/SlideConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_ACTION_BACK:I = 0x8

.field public static final FLAG_ACTION_CLICK_CLASSNAME:I = 0x2

.field public static final FLAG_ACTION_CLICK_VIEW:I = 0x10

.field public static final FLAG_ACTION_CLICK_VIEWID:I = 0x1

.field public static final FLAG_ACTION_TOUCH_POSITION:I = 0x4

.field public static final FLAG_CONDITION_AUDIO_COMMUNICATION:I = 0x4

.field public static final FLAG_CONDITION_AUDIO_NOT_RECORDING:I = 0x5

.field public static final FLAG_CONDITION_BACK_CAMERA_OPEN:I = 0x3

.field public static final FLAG_CONDITION_CAMERA_OPEN:I = 0x1

.field public static final FLAG_CONDITION_FRONT_CAMERA_OPEN:I = 0x2

.field public static final FLAG_RESULT_GOTO_ACTIVITY:I = 0x1

.field public static final FLAG_RESULT_OPEN_AUDIO:I = 0x4

.field public static final FLAG_RESULT_OPEN_CAMERA:I = 0x2

.field public static final TAG:Ljava/lang/String; = "SlideConfig"


# instance fields
.field final DEFAULT_EDGE_FLAGS:I

.field final DEFAULT_META_STATE:I

.field final DEFAULT_PRECISION_X:F

.field final DEFAULT_PRECISION_Y:F

.field final DEFAULT_SIZE:F

.field public mConditionTrueFalse:Z

.field public mFlagAction:I

.field public mFlagCondition:I

.field public mFlagResult:I

.field public mKeyCode:I

.field public mStartingActivity:Ljava/lang/String;

.field public mTargetActivity:Ljava/lang/String;

.field public mTouchEventConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/slide/SlideConfig$TouchEventConfig;",
            ">;"
        }
    .end annotation
.end field

.field public mVersionCode:I

.field public mViewClassName:Ljava/lang/String;

.field public mViewID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmiui/slide/SlideConfig$1;

    invoke-direct {v0}, Lmiui/slide/SlideConfig$1;-><init>()V

    sput-object v0, Lmiui/slide/SlideConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/slide/SlideConfig;->mTouchEventConfigList:Ljava/util/List;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lmiui/slide/SlideConfig;->DEFAULT_SIZE:F

    const/4 v1, 0x0

    iput v1, p0, Lmiui/slide/SlideConfig;->DEFAULT_META_STATE:I

    iput v0, p0, Lmiui/slide/SlideConfig;->DEFAULT_PRECISION_X:F

    iput v0, p0, Lmiui/slide/SlideConfig;->DEFAULT_PRECISION_Y:F

    iput v1, p0, Lmiui/slide/SlideConfig;->DEFAULT_EDGE_FLAGS:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "IIIZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lmiui/slide/SlideConfig$TouchEventConfig;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/slide/SlideConfig;->mTouchEventConfigList:Ljava/util/List;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lmiui/slide/SlideConfig;->DEFAULT_SIZE:F

    const/4 v1, 0x0

    iput v1, p0, Lmiui/slide/SlideConfig;->DEFAULT_META_STATE:I

    iput v0, p0, Lmiui/slide/SlideConfig;->DEFAULT_PRECISION_X:F

    iput v0, p0, Lmiui/slide/SlideConfig;->DEFAULT_PRECISION_Y:F

    iput v1, p0, Lmiui/slide/SlideConfig;->DEFAULT_EDGE_FLAGS:I

    iput p1, p0, Lmiui/slide/SlideConfig;->mKeyCode:I

    iput p2, p0, Lmiui/slide/SlideConfig;->mVersionCode:I

    iput-object p3, p0, Lmiui/slide/SlideConfig;->mStartingActivity:Ljava/lang/String;

    iput p4, p0, Lmiui/slide/SlideConfig;->mFlagAction:I

    iput p5, p0, Lmiui/slide/SlideConfig;->mFlagResult:I

    iput p6, p0, Lmiui/slide/SlideConfig;->mFlagCondition:I

    iput-boolean p7, p0, Lmiui/slide/SlideConfig;->mConditionTrueFalse:Z

    iput-object p8, p0, Lmiui/slide/SlideConfig;->mViewID:Ljava/lang/String;

    iput-object p9, p0, Lmiui/slide/SlideConfig;->mViewClassName:Ljava/lang/String;

    iput-object p10, p0, Lmiui/slide/SlideConfig;->mTouchEventConfigList:Ljava/util/List;

    iput-object p11, p0, Lmiui/slide/SlideConfig;->mTargetActivity:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/slide/SlideConfig;->mTouchEventConfigList:Ljava/util/List;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lmiui/slide/SlideConfig;->DEFAULT_SIZE:F

    const/4 v1, 0x0

    iput v1, p0, Lmiui/slide/SlideConfig;->DEFAULT_META_STATE:I

    iput v0, p0, Lmiui/slide/SlideConfig;->DEFAULT_PRECISION_X:F

    iput v0, p0, Lmiui/slide/SlideConfig;->DEFAULT_PRECISION_Y:F

    iput v1, p0, Lmiui/slide/SlideConfig;->DEFAULT_EDGE_FLAGS:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/slide/SlideConfig;->mKeyCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/slide/SlideConfig;->mVersionCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/slide/SlideConfig;->mStartingActivity:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/slide/SlideConfig;->mFlagAction:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/slide/SlideConfig;->mFlagResult:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/slide/SlideConfig;->mFlagCondition:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lmiui/slide/SlideConfig;->mConditionTrueFalse:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/slide/SlideConfig;->mViewID:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/slide/SlideConfig;->mViewClassName:Ljava/lang/String;

    iget-object v0, p0, Lmiui/slide/SlideConfig;->mTouchEventConfigList:Ljava/util/List;

    sget-object v1, Lmiui/slide/SlideConfig$TouchEventConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/slide/SlideConfig;->mTargetActivity:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/slide/SlideConfig$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/slide/SlideConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private getInputDeviceId(I)I
    .locals 8

    const/4 v0, 0x0

    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget v5, v1, v4

    invoke-static {v5}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v7

    if-eqz v7, :cond_0

    return v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private injectBackKey(Landroid/view/View;)V
    .locals 17

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    new-instance v15, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x101

    move-object v0, v15

    move-wide v1, v13

    move-wide v3, v13

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;)V

    new-instance v16, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;)V

    return-void
.end method

.method private injectMotionEvent(Landroid/view/View;II)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TouchEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SlideConfig"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    int-to-float v10, v1

    int-to-float v11, v2

    const/16 v15, 0x1002

    invoke-direct {v0, v15}, Lmiui/slide/SlideConfig;->getInputDeviceId(I)I

    move-result v17

    const/4 v9, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    move-wide v5, v3

    move-wide v7, v3

    move/from16 v15, v16

    move/from16 v16, v18

    move/from16 v18, v19

    invoke-static/range {v5 .. v18}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v15

    const/16 v14, 0x1002

    invoke-virtual {v15, v14}, Landroid/view/MotionEvent;->setSource(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v5

    invoke-virtual {v5, v15}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;)V

    int-to-float v10, v1

    int-to-float v11, v2

    invoke-direct {v0, v14}, Lmiui/slide/SlideConfig;->getInputDeviceId(I)I

    move-result v17

    const/4 v9, 0x1

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    move-wide v5, v3

    move/from16 v14, v16

    move-object/from16 v21, v15

    move/from16 v15, v18

    move/from16 v16, v19

    move/from16 v18, v20

    invoke-static/range {v5 .. v18}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v5

    const/16 v6, 0x1002

    invoke-virtual {v5, v6}, Landroid/view/MotionEvent;->setSource(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;)V

    return-void
.end method


# virtual methods
.method public checkCondition()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "miui.slide.SlideManagerService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lmiui/slide/ISlideManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/slide/ISlideManagerService;

    move-result-object v1

    iget v2, p0, Lmiui/slide/SlideConfig;->mFlagCondition:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    const/4 v4, 0x2

    if-eq v2, v4, :cond_6

    const/4 v5, 0x3

    if-eq v2, v5, :cond_4

    const/4 v4, 0x4

    if-eq v2, v4, :cond_2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_0

    return v3

    :cond_0
    invoke-interface {v1}, Lmiui/slide/ISlideManagerService;->getCameraStatus()I

    move-result v2

    if-eqz v2, :cond_1

    and-int/lit8 v4, v2, 0x4

    if-nez v4, :cond_1

    move v0, v3

    :cond_1
    return v0

    :cond_2
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v2

    const-string v4, "audio"

    invoke-virtual {v2, v4}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v4

    if-ne v4, v5, :cond_3

    move v0, v3

    :cond_3
    return v0

    :cond_4
    invoke-interface {v1}, Lmiui/slide/ISlideManagerService;->getCameraStatus()I

    move-result v2

    and-int/2addr v2, v4

    if-eqz v2, :cond_5

    move v0, v3

    :cond_5
    return v0

    :cond_6
    invoke-interface {v1}, Lmiui/slide/ISlideManagerService;->getCameraStatus()I

    move-result v2

    and-int/2addr v2, v3

    if-eqz v2, :cond_7

    move v0, v3

    :cond_7
    return v0

    :cond_8
    invoke-interface {v1}, Lmiui/slide/ISlideManagerService;->getCameraStatus()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_9

    move v0, v3

    :cond_9
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SlideConfig"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasActionFlag(I)Z
    .locals 1

    iget v0, p0, Lmiui/slide/SlideConfig;->mFlagAction:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$tryGotoTarget$0$SlideConfig(Landroid/view/View;ZLmiui/slide/SlideConfig$TouchEventConfig;)V
    .locals 2

    nop

    if-eqz p2, :cond_0

    iget v0, p3, Lmiui/slide/SlideConfig$TouchEventConfig;->mPositionBetaX:I

    goto :goto_0

    :cond_0
    iget v0, p3, Lmiui/slide/SlideConfig$TouchEventConfig;->mPositionX:I

    :goto_0
    if-eqz p2, :cond_1

    iget v1, p3, Lmiui/slide/SlideConfig$TouchEventConfig;->mPositionBetaY:I

    goto :goto_1

    :cond_1
    iget v1, p3, Lmiui/slide/SlideConfig$TouchEventConfig;->mPositionY:I

    :goto_1
    invoke-direct {p0, p1, v0, v1}, Lmiui/slide/SlideConfig;->injectMotionEvent(Landroid/view/View;II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SlideConfig{, mKeyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/slide/SlideConfig;->mKeyCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/slide/SlideConfig;->mVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mStartingActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/slide/SlideConfig;->mStartingActivity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mFlagAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/slide/SlideConfig;->mFlagAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFlagResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/slide/SlideConfig;->mFlagResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFlagCondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/slide/SlideConfig;->mFlagCondition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mConditionTrueFalse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lmiui/slide/SlideConfig;->mConditionTrueFalse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mViewID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/slide/SlideConfig;->mViewID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mViewClassName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/slide/SlideConfig;->mViewClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTargetActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/slide/SlideConfig;->mTargetActivity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryGotoTarget(Landroid/app/Activity;Landroid/view/View;)I
    .locals 10

    invoke-virtual {p0}, Lmiui/slide/SlideConfig;->checkCondition()Z

    move-result v0

    iget-boolean v1, p0, Lmiui/slide/SlideConfig;->mConditionTrueFalse:Z

    xor-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lmiui/slide/SlideConfig;->hasActionFlag(I)Z

    move-result v3

    const-string v4, "SlideConfig"

    if-eqz v3, :cond_1

    const-string v3, "FLAG_ACTION_BACK"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    invoke-direct {p0, p2}, Lmiui/slide/SlideConfig;->injectBackKey(Landroid/view/View;)V

    return v1

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lmiui/slide/SlideConfig;->hasActionFlag(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "FLAG_ACTION_CLICK_VIEWID"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lmiui/slide/SlideConfig;->mViewID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v5, p0, Lmiui/slide/SlideConfig;->mViewID:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/Activity;->getBasePackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v3, v5, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->isVisibleToUser()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v2, "Target found by resId"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/view/View;->performClick()Z

    return v1

    :cond_2
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lmiui/slide/SlideConfig;->hasActionFlag(I)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "FLAG_ACTION_TOUCH_POSITION"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_6

    nop

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "force_fsg_nav_bar"

    invoke-static {v4, v5}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v4

    iget-object v5, p0, Lmiui/slide/SlideConfig;->mTouchEventConfigList:Ljava/util/List;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    iget-object v5, p0, Lmiui/slide/SlideConfig;->mTouchEventConfigList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/slide/SlideConfig$TouchEventConfig;

    nop

    if-eqz v4, :cond_3

    iget v5, v2, Lmiui/slide/SlideConfig$TouchEventConfig;->mPositionBetaX:I

    goto :goto_0

    :cond_3
    iget v5, v2, Lmiui/slide/SlideConfig$TouchEventConfig;->mPositionX:I

    :goto_0
    if-eqz v4, :cond_4

    iget v6, v2, Lmiui/slide/SlideConfig$TouchEventConfig;->mPositionBetaY:I

    goto :goto_1

    :cond_4
    iget v6, v2, Lmiui/slide/SlideConfig$TouchEventConfig;->mPositionY:I

    :goto_1
    invoke-direct {p0, p2, v5, v6}, Lmiui/slide/SlideConfig;->injectMotionEvent(Landroid/view/View;II)V

    iget v5, v2, Lmiui/slide/SlideConfig$TouchEventConfig;->mWaitingTime:I

    iget-object v6, p0, Lmiui/slide/SlideConfig;->mTouchEventConfigList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v1, :cond_5

    if-lez v5, :cond_5

    iget-object v6, p0, Lmiui/slide/SlideConfig;->mTouchEventConfigList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/slide/SlideConfig$TouchEventConfig;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lmiui/slide/-$$Lambda$SlideConfig$OWrUjwHDwalS9A4Tr0PKIikWk3I;

    invoke-direct {v7, p0, p2, v4, v1}, Lmiui/slide/-$$Lambda$SlideConfig$OWrUjwHDwalS9A4Tr0PKIikWk3I;-><init>(Lmiui/slide/SlideConfig;Landroid/view/View;ZLmiui/slide/SlideConfig$TouchEventConfig;)V

    int-to-long v8, v5

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return v3

    :cond_6
    return v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lmiui/slide/SlideConfig;->mKeyCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lmiui/slide/SlideConfig;->mVersionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmiui/slide/SlideConfig;->mStartingActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lmiui/slide/SlideConfig;->mFlagAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lmiui/slide/SlideConfig;->mFlagResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lmiui/slide/SlideConfig;->mFlagCondition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lmiui/slide/SlideConfig;->mConditionTrueFalse:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmiui/slide/SlideConfig;->mViewID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/slide/SlideConfig;->mViewClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/slide/SlideConfig;->mTouchEventConfigList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Lmiui/slide/SlideConfig;->mTargetActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
