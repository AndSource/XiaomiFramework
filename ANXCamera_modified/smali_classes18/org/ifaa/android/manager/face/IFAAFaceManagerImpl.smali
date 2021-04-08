.class public Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;
.super Lorg/ifaa/android/manager/face/IFAAFaceManagerV2;
.source "IFAAFaceManagerImpl.java"

# interfaces
.implements Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;
.implements Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$SeccamStopTask;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DESTINATION_MLVM:Ljava/lang/Integer;

.field public static final DESTINATION_QTEE:Ljava/lang/Integer;

.field private static volatile INSTANCE:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl; = null

.field private static final IS_SUPPORT_2DFA:Z

.field private static final PREVIEW_CAMERAID:Ljava/lang/Integer;

.field private static final PREVIEW_FORMAT:Ljava/lang/Integer;

.field private static final PREVIEW_HEIGHT:Ljava/lang/Integer;

.field private static final PREVIEW_NUMOFBUFFERS:Ljava/lang/Integer;

.field private static final PREVIEW_SURFACE_NUMOFBUFFERS:Ljava/lang/Integer;

.field private static final PREVIEW_WIDTH:Ljava/lang/Integer;

.field private static final SECCAM_STOP_TIMEOUT:Ljava/lang/Integer;

.field private static final TAG:Ljava/lang/String; = "IFAAFaceManagerImplV2"

.field private static final TZ_APP_BUFFER_SIZE:I = 0x2000

.field private static final TZ_APP_NAME:Ljava/lang/String; = "seccam2d"

.field public static final UPGRADE_ACTION_RESET:I = 0x0

.field public static final UPGRADE_ACTION_UPDATE:I = 0x2

.field public static final UPGRADE_ACTION_WRITE:I = 0x1

.field private static final mClassName:Ljava/lang/String; = "org.ifaa.android.manager.IFAAService"

.field private static mConn:Landroid/content/ServiceConnection; = null

.field private static mContext:Landroid/content/Context; = null

.field private static mDeathRecipient:Landroid/os/IBinder$DeathRecipient; = null

.field private static final mPackageName:Ljava/lang/String; = "com.tencent.soter.soterserver"

.field private static mService:Lorg/ifaa/android/manager/IIFAAService;


# instance fields
.field protected frameCallbackReturnParamsSize_:I

.field protected frameCallbackReturnParams_:[B

.field private mCameraOperationLock:Ljava/util/concurrent/Semaphore;

.field private final mSeccamStopping:Landroid/os/ConditionVariable;

.field private previewCamera_:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->isSupport2dfa()Z

    move-result v0

    sput-boolean v0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->IS_SUPPORT_2DFA:Z

    const/4 v0, 0x0

    sput-object v0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->INSTANCE:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->DESTINATION_QTEE:Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->DESTINATION_MLVM:Ljava/lang/Integer;

    const/16 v2, 0x258

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->SECCAM_STOP_TIMEOUT:Ljava/lang/Integer;

    sput-object v1, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->PREVIEW_CAMERAID:Ljava/lang/Integer;

    const/16 v1, 0x280

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->PREVIEW_WIDTH:Ljava/lang/Integer;

    const/16 v1, 0x1e0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->PREVIEW_HEIGHT:Ljava/lang/Integer;

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->PREVIEW_FORMAT:Ljava/lang/Integer;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->PREVIEW_NUMOFBUFFERS:Ljava/lang/Integer;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->PREVIEW_SURFACE_NUMOFBUFFERS:Ljava/lang/Integer;

    sput-object v0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mContext:Landroid/content/Context;

    sput-object v0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mService:Lorg/ifaa/android/manager/IIFAAService;

    new-instance v0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$1;

    invoke-direct {v0}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$1;-><init>()V

    sput-object v0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    new-instance v0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$2;

    invoke-direct {v0}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$2;-><init>()V

    sput-object v0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mConn:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/ifaa/android/manager/face/IFAAFaceManagerV2;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->frameCallbackReturnParamsSize_:I

    iget v0, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->frameCallbackReturnParamsSize_:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->frameCallbackReturnParams_:[B

    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mSeccamStopping:Landroid/os/ConditionVariable;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mCameraOperationLock:Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->previewCamera_:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    return-void
.end method

.method private static IsMediatek()Z
    .locals 2

    const-string v0, "vendor"

    invoke-static {v0}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mediatek"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$000()Lorg/ifaa/android/manager/IIFAAService;
    .locals 1

    sget-object v0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mService:Lorg/ifaa/android/manager/IIFAAService;

    return-object v0
.end method

.method static synthetic access$002(Lorg/ifaa/android/manager/IIFAAService;)Lorg/ifaa/android/manager/IIFAAService;
    .locals 0

    sput-object p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mService:Lorg/ifaa/android/manager/IIFAAService;

    return-object p0
.end method

.method static synthetic access$100()Landroid/os/IBinder$DeathRecipient;
    .locals 1

    sget-object v0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    invoke-static {}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->IsMediatek()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()Landroid/content/Context;
    .locals 1

    sget-object v0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Landroid/content/ServiceConnection;
    .locals 1

    sget-object v0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mConn:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$500()V
    .locals 0

    invoke-static {}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->initService()V

    return-void
.end method

.method static synthetic access$700(Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;)Ljava/util/concurrent/Semaphore;
    .locals 1

    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mCameraOperationLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$800(Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;)Lorg/ifaa/android/manager/face/IFAASecureCamera2API;
    .locals 1

    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->previewCamera_:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    return-object v0
.end method

.method static synthetic access$802(Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)Lorg/ifaa/android/manager/face/IFAASecureCamera2API;
    .locals 0

    iput-object p1, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->previewCamera_:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    return-object p1
.end method

.method static synthetic access$900(Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;)Landroid/os/ConditionVariable;
    .locals 1

    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mSeccamStopping:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method private byte4ToInt([BI)I
    .locals 6

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v4, v3, 0x18

    shl-int/lit8 v5, v2, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v0

    return v4
.end method

.method private closeCamera()Z
    .locals 3

    invoke-static {}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->IsMediatek()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mSeccamStopping:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    new-instance v0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$SeccamStopTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$SeccamStopTask;-><init>(Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$1;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$SeccamStopTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v1
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/ifaa/android/manager/face/IFAAFaceManagerV2;
    .locals 9

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IFAAFaceManagerImplV2"

    const-string v2, "getInstance+++"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->INSTANCE:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    if-eqz v1, :cond_0

    sget-object v1, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mContext:Landroid/content/Context;

    if-eq v0, v1, :cond_3

    :cond_0
    sget-boolean v1, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->IS_SUPPORT_2DFA:Z

    if-eqz v1, :cond_3

    const-class v1, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    monitor-enter v1

    :try_start_0
    const-string v2, "IFAAFaceManagerImplV2"

    const-string v3, "A new instance is required"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    sget-object v2, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-static {}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->IsMediatek()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->getInstance()Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->release()V

    :cond_1
    new-instance v2, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    invoke-direct {v2}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;-><init>()V

    sput-object v2, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->INSTANCE:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    sput-object v0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->initService()V

    invoke-static {}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->IsMediatek()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->getInstance()Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    move-result-object v3

    sget-object v4, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mContext:Landroid/content/Context;

    sget-object v5, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->INSTANCE:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    const-string v6, "seccam2d"

    const/16 v7, 0x2000

    sget-object v2, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->DESTINATION_MLVM:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->start(Landroid/content/Context;Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;Ljava/lang/String;II)Z

    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    :goto_0
    const-string v1, "IFAAFaceManagerImplV2"

    const-string v2, "getInstance---"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->INSTANCE:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    return-object v1
.end method

.method private static initService()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.tencent.soter.soterserver"

    const-string v2, "org.ifaa.android.manager.IFAAService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "IFAAFaceManagerImplV2"

    const-string v2, "cannot bind service: org.ifaa.android.manager.IFAAService"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private invokeCallback(Lorg/ifaa/android/manager/face/IFAAFaceManager$AuthenticatorCallback;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lorg/ifaa/android/manager/face/IFAAFaceManager$AuthenticatorCallback;->onAuthenticationSucceeded()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lorg/ifaa/android/manager/face/IFAAFaceManager$AuthenticatorCallback;->onAuthenticationFailed(I)V

    :goto_0
    return-void
.end method

.method private static isSupport2dfa()Z
    .locals 5

    const/4 v0, 0x0

    const-string v1, "ifaa_2dfa_support"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v3, "ro.boot.hypvm"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "enable"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    move v0, v2

    :cond_1
    return v0
.end method

.method private openCamera()Z
    .locals 13

    const/4 v0, 0x0

    invoke-static {}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->IsMediatek()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, "IFAAFaceManagerImplV2"

    const-string v3, "seccam openCamera+++"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mSeccamStopping:Landroid/os/ConditionVariable;

    sget-object v4, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->SECCAM_STOP_TIMEOUT:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "SeccamStopping pass"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v3, "Wait for seccam stop timeout"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mCameraOperationLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V

    iget-object v3, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->previewCamera_:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "seccam openCamera---"

    if-eqz v3, :cond_2

    :try_start_1
    const-string v3, "Secure camera already running.. ignoring StartTask"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mCameraOperationLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    return v2

    :cond_2
    :try_start_2
    new-instance v2, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    sget-object v3, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;-><init>(Landroid/content/Context;Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;)V

    iput-object v2, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->previewCamera_:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    iget-object v5, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->previewCamera_:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    sget-object v2, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->PREVIEW_CAMERAID:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    sget-object v8, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->PREVIEW_WIDTH:Ljava/lang/Integer;

    sget-object v9, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->PREVIEW_HEIGHT:Ljava/lang/Integer;

    sget-object v10, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->PREVIEW_FORMAT:Ljava/lang/Integer;

    sget-object v11, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->PREVIEW_NUMOFBUFFERS:Ljava/lang/Integer;

    sget-object v12, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->PREVIEW_SURFACE_NUMOFBUFFERS:Ljava/lang/Integer;

    invoke-virtual/range {v5 .. v12}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->start(ILandroid/view/SurfaceView;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mCameraOperationLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    nop

    return v0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Interrupted while trying to lock openCamera."

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    iget-object v2, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mCameraOperationLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    throw v1
.end method


# virtual methods
.method public authenticate(IILorg/ifaa/android/manager/face/IFAAFaceManager$AuthenticatorCallback;)V
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->authenticate(Ljava/lang/String;ILorg/ifaa/android/manager/face/IFAAFaceManager$AuthenticatorCallback;)V

    return-void
.end method

.method public authenticate(Ljava/lang/String;ILorg/ifaa/android/manager/face/IFAAFaceManager$AuthenticatorCallback;)V
    .locals 5

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->openCamera()Z

    sget-object v1, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mService:Lorg/ifaa/android/manager/IIFAAService;

    invoke-interface {v1, p1, p2}, Lorg/ifaa/android/manager/IIFAAService;->faceAuthenticate_v2(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    nop

    :goto_0
    invoke-direct {p0, p3, v0}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->invokeCallback(Lorg/ifaa/android/manager/face/IFAAFaceManager$AuthenticatorCallback;I)V

    invoke-direct {p0}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->closeCamera()Z

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "IFAAFaceManagerImplV2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "authenticat_v2 fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-direct {p0, p3, v0}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->invokeCallback(Lorg/ifaa/android/manager/face/IFAAFaceManager$AuthenticatorCallback;I)V

    invoke-direct {p0}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->closeCamera()Z

    throw v1
.end method

.method public cancel(I)I
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->cancel(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public cancel(Ljava/lang/String;)I
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->closeCamera()Z

    sget-object v0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mService:Lorg/ifaa/android/manager/IIFAAService;

    invoke-interface {v0, p1}, Lorg/ifaa/android/manager/IIFAAService;->faceCancel_v2(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel_v2 fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IFAAFaceManagerImplV2"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public enroll(Ljava/lang/String;ILorg/ifaa/android/manager/face/IFAAFaceManager$AuthenticatorCallback;)V
    .locals 5

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->openCamera()Z

    sget-object v1, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mService:Lorg/ifaa/android/manager/IIFAAService;

    invoke-interface {v1, p1, p2}, Lorg/ifaa/android/manager/IIFAAService;->faceEnroll(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    nop

    :goto_0
    invoke-direct {p0, p3, v0}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->invokeCallback(Lorg/ifaa/android/manager/face/IFAAFaceManager$AuthenticatorCallback;I)V

    invoke-direct {p0}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->closeCamera()Z

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "IFAAFaceManagerImplV2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enroll fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-direct {p0, p3, v0}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->invokeCallback(Lorg/ifaa/android/manager/face/IFAAFaceManager$AuthenticatorCallback;I)V

    invoke-direct {p0}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->closeCamera()Z

    throw v1
.end method

.method public invokeCommand(Landroid/content/Context;[B)[B
    .locals 3

    :try_start_0
    sget-object v0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mService:Lorg/ifaa/android/manager/IIFAAService;

    invoke-interface {v0, p2}, Lorg/ifaa/android/manager/IIFAAService;->faceInvokeCommand([B)[B

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokeCommand fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IFAAFaceManagerImplV2"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public onSecureFrameAvalable(Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameInfo;[B)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraActivity::onSecureFrameAvalable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IFAAFaceManagerImplV2"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, p2

    const/16 v2, 0x10

    if-eq v0, v2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v2, p2

    mul-int/lit8 v2, v2, 0x3

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-byte v5, p2, v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v3

    const-string v7, "%02x "

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mCameraOperationLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->previewCamera_:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    if-eqz v2, :cond_2

    invoke-direct {p0, p2, v3}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->byte4ToInt([BI)I

    move-result v2

    const/4 v3, 0x4

    invoke-direct {p0, p2, v3}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->byte4ToInt([BI)I

    move-result v3

    const/16 v4, 0x8

    invoke-direct {p0, p2, v4}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->byte4ToInt([BI)I

    move-result v4

    const/16 v5, 0xc

    invoke-direct {p0, p2, v5}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->byte4ToInt([BI)I

    move-result v5

    iget-object v6, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->previewCamera_:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v6, v7, v8}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->rectFromTEECallback(Landroid/graphics/Point;Landroid/graphics/Point;)V

    goto :goto_1

    :cond_2
    const-string v2, "Secure camera already stopped.. ignoring rectFromTEECallback"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v2, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mCameraOperationLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_2

    :cond_3
    const-string v2, "onSecureFrameAvalable Semaphore not Acquired "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    goto :goto_3

    :catch_0
    move-exception v2

    const-string v3, "rectFromTEECallback Exception caught"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method

.method public serviceConnected()V
    .locals 2

    const-string v0, "IFAAFaceManagerImplV2"

    const-string v1, "seccamservice serviceConnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public serviceDisconnected()V
    .locals 7

    const-string v0, "IFAAFaceManagerImplV2"

    const-string v1, "seccamservice serviceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->IsMediatek()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->getInstance()Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->release()V

    invoke-static {}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->getInstance()Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    move-result-object v1

    sget-object v2, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mContext:Landroid/content/Context;

    sget-object v3, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->INSTANCE:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    const/16 v5, 0x2000

    sget-object v0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->DESTINATION_MLVM:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v4, "seccam2d"

    invoke-virtual/range {v1 .. v6}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->start(Landroid/content/Context;Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;Ljava/lang/String;II)Z

    return-void
.end method

.method public upgrade(Ljava/lang/String;)V
    .locals 24

    move-object/from16 v1, p1

    const-string v2, "close file fail"

    const-string v3, "close zipfile fail"

    const/4 v4, 0x3

    const/high16 v0, 0x10000

    new-array v11, v0, [B

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "IFAAFaceManagerImplV2"

    if-eqz v1, :cond_18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_17

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upgrade ha from path: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v5, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mService:Lorg/ifaa/android/manager/IIFAAService;

    const/4 v6, 0x0

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v9, v11

    invoke-interface/range {v5 .. v10}, Lorg/ifaa/android/manager/IIFAAService;->faceUpgrade(ILjava/lang/String;I[BI)I

    move-result v0

    move v5, v0

    if-gez v5, :cond_3

    const-string v0, "reset upgrade state fail"

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v12, :cond_1

    :try_start_1
    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    invoke-static {v14, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    if-eqz v13, :cond_2

    :try_start_2
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-static {v14, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void

    :cond_3
    :try_start_3
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v13, v0

    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, v13}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v12, v0

    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v15, v4

    move/from16 v16, v5

    move-object v4, v0

    :goto_2
    if-eqz v4, :cond_9

    :try_start_4
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v5

    move-wide/from16 v17, v5

    const-wide/16 v5, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "filename: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    array-length v8, v11

    const/16 v19, 0x0

    move-wide v9, v5

    :cond_4
    :goto_3
    cmp-long v5, v9, v17

    if-gez v5, :cond_8

    array-length v5, v11

    sub-int/2addr v5, v8

    invoke-virtual {v12, v11, v5, v8}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v5

    move/from16 v16, v5

    if-gez v16, :cond_5

    const-string v5, "file read fail"

    invoke-static {v14, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v22, v9

    goto :goto_4

    :cond_5
    add-int v7, v7, v16

    sub-int v8, v8, v16

    if-eqz v16, :cond_6

    int-to-long v5, v7

    add-long/2addr v5, v9

    cmp-long v5, v5, v17

    if-eqz v5, :cond_6

    array-length v5, v11

    int-to-double v5, v5

    const-wide v20, 0x3f9eb851eb851eb8L    # 0.03

    mul-double v5, v5, v20

    double-to-int v5, v5

    if-ge v8, v5, :cond_4

    :cond_6
    sget-object v5, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mService:Lorg/ifaa/android/manager/IIFAAService;

    const/4 v6, 0x1

    long-to-int v1, v9

    move/from16 v20, v7

    move-object v7, v0

    move/from16 v21, v8

    move v8, v1

    move-wide/from16 v22, v9

    move-object v9, v11

    move/from16 v10, v20

    invoke-interface/range {v5 .. v10}, Lorg/ifaa/android/manager/IIFAAService;->faceUpgrade(ILjava/lang/String;I[BI)I

    move-result v1

    move/from16 v16, v1

    if-gez v16, :cond_7

    const-string v1, "file transfer error"

    invoke-static {v14, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v7, v20

    move/from16 v8, v21

    goto :goto_4

    :cond_7
    move/from16 v7, v20

    int-to-long v5, v7

    add-long v9, v22, v5

    const/4 v7, 0x0

    array-length v1, v11

    move v8, v1

    move-object/from16 v1, p1

    goto :goto_3

    :cond_8
    move-wide/from16 v22, v9

    :goto_4
    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    move-object v4, v1

    nop

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v1, p1

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->close()V

    const/4 v12, 0x0

    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    const/4 v13, 0x0

    if-lez v15, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not all files found, remain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v12, :cond_a

    :try_start_5
    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    invoke-static {v14, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_5
    if-eqz v13, :cond_b

    :try_start_6
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    invoke-static {v14, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_6
    return-void

    :cond_c
    :try_start_7
    sget-object v5, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mService:Lorg/ifaa/android/manager/IIFAAService;

    const/4 v6, 0x2

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v9, v11

    invoke-interface/range {v5 .. v10}, Lorg/ifaa/android/manager/IIFAAService;->faceUpgrade(ILjava/lang/String;I[BI)I

    move-result v0

    move v1, v0

    if-gez v1, :cond_d

    const-string v0, "update fail"

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_d
    if-eqz v12, :cond_e

    :try_start_8
    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_7

    :catch_4
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    invoke-static {v14, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_7
    if-eqz v13, :cond_f

    :try_start_9
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :goto_8
    goto :goto_9

    :catch_5
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-static {v14, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_f
    :goto_9
    move v4, v15

    goto/16 :goto_13

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_14

    :catch_6
    move-exception v0

    move v4, v15

    goto :goto_a

    :catch_7
    move-exception v0

    move v4, v15

    goto :goto_d

    :catch_8
    move-exception v0

    move v4, v15

    goto :goto_f

    :catch_9
    move-exception v0

    move v4, v15

    goto/16 :goto_11

    :catchall_1
    move-exception v0

    move-object v1, v0

    move v15, v4

    goto/16 :goto_14

    :catch_a
    move-exception v0

    :goto_a
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upgrade fail: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    nop

    if-eqz v12, :cond_10

    :try_start_b
    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    invoke-static {v14, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_b
    if-eqz v13, :cond_14

    :try_start_c
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c

    :goto_c
    goto :goto_13

    :catch_c
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    invoke-static {v14, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :catch_d
    move-exception v0

    :goto_d
    :try_start_d
    const-string v1, "open file fail, due to no permission"

    invoke-static {v14, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    nop

    if-eqz v12, :cond_11

    :try_start_e
    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_e

    :catch_e
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    invoke-static {v14, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_e
    if-eqz v13, :cond_14

    :try_start_f
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    goto :goto_c

    :catch_f
    move-exception v0

    :goto_f
    :try_start_10
    const-string v1, "open file fail, due to io error"

    invoke-static {v14, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    nop

    if-eqz v12, :cond_12

    :try_start_11
    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_10

    goto :goto_10

    :catch_10
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    invoke-static {v14, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :goto_10
    if-eqz v13, :cond_14

    :try_start_12
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    goto :goto_c

    :catch_11
    move-exception v0

    :goto_11
    :try_start_13
    const-string v1, "open file fail, due to no such file"

    invoke-static {v14, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    nop

    if-eqz v12, :cond_13

    :try_start_14
    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_12

    goto :goto_12

    :catch_12
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    invoke-static {v14, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_12
    if-eqz v13, :cond_14

    :try_start_15
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_c

    goto :goto_c

    :cond_14
    :goto_13
    invoke-static {}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->IsMediatek()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->getInstance()Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->release()V

    invoke-static {}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->getInstance()Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    move-result-object v5

    sget-object v6, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mContext:Landroid/content/Context;

    sget-object v7, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->INSTANCE:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    const/16 v9, 0x2000

    sget-object v0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->DESTINATION_MLVM:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string v8, "seccam2d"

    invoke-virtual/range {v5 .. v10}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->start(Landroid/content/Context;Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;Ljava/lang/String;II)Z

    :cond_15
    return-void

    :goto_14
    if-eqz v12, :cond_16

    :try_start_16
    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_13

    goto :goto_15

    :catch_13
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    invoke-static {v14, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    :goto_15
    if-eqz v13, :cond_17

    :try_start_17
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_14

    goto :goto_16

    :catch_14
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-static {v14, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    :goto_16
    throw v1

    :cond_18
    :goto_17
    const-string v0, "upgrade path is null or empty"

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
