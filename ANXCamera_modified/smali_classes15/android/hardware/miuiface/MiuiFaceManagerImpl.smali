.class public Landroid/hardware/miuiface/MiuiFaceManagerImpl;
.super Ljava/lang/Object;
.source "MiuiFaceManagerImpl.java"

# interfaces
.implements Landroid/hardware/miuiface/IMiuiFaceManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/miuiface/MiuiFaceManagerImpl$ClientHandler;,
        Landroid/hardware/miuiface/MiuiFaceManagerImpl$FaceObserver;,
        Landroid/hardware/miuiface/MiuiFaceManagerImpl$OnAuthenticationCancelListener;,
        Landroid/hardware/miuiface/MiuiFaceManagerImpl$OnEnrollCancelListener;
    }
.end annotation


# static fields
.field private static final CODE_ADD_LOCKOUT_RESET_CALLBACK:I = 0x10

.field private static final CODE_AUTHENTICATE:I = 0x3

.field private static final CODE_CANCEL_AUTHENTICATE:I = 0x4

.field private static final CODE_CANCEL_ENROLL:I = 0x6

.field private static final CODE_ENROLL:I = 0x5

.field private static final CODE_EXT_CMD:I = 0x65

.field private static final CODE_GET_AUTHENTICATOR_ID:I = 0xe

.field private static final CODE_GET_ENROLLED_FACE_LIST:I = 0x9

.field private static final CODE_GET_VENDOR_INFO:I = 0x11

.field private static final CODE_HAS_ENROLLED_FACES:I = 0xc

.field private static final CODE_POST_ENROLL:I = 0xb

.field private static final CODE_PRE_ENROLL:I = 0xa

.field private static final CODE_PRE_INIT_AUTHEN:I = 0x2

.field private static final CODE_REMOVE:I = 0x7

.field private static final CODE_RENAME:I = 0x8

.field private static final CODE_RESET_TIMEOUT:I = 0xf

.field public static final COMMAND_ENROLL_RESET_ENROLL_LOGIC:I = 0x1

.field public static final COMMAND_ENROLL_RESUME_ENROLL_LOGIC:I = 0x0

.field public static final COMMAND_ENROLL_STOP_ENROLL_LOGIC:I = 0x2

.field private static DEBUG:Z = false

.field public static final ERROR_BINDER_CALL:I = 0x834

.field public static final ERROR_CANCELED:I = 0x7d0

.field public static final ERROR_SERVICE_IS_BUSY:I = 0x7d1

.field public static final ERROR_SERVICE_IS_IDLE:I = 0x7d2

.field public static final ERROR_TIME_OUT:I = 0x7d3

.field private static final FACEUNLOCK_CURRENT_USE_INVALID_MODEL:I = 0x2

.field private static final FACEUNLOCK_CURRENT_USE_RGB_MODEL:I = 0x1

.field private static final FACEUNLOCK_CURRENT_USE_STRUCTURE_MODEL:I = 0x0

.field private static final FACEUNLOCK_SUPPORT_SUPERPOWER:Ljava/lang/String; = "faceunlock_support_superpower"

.field private static final FACE_UNLOCK_3D_HAS_FEATURE:Ljava/lang/String; = "face_unlock_has_feature_sl"

.field private static final FACE_UNLOCK_HAS_FEATURE:Ljava/lang/String; = "face_unlock_has_feature"

.field private static final FACE_UNLOCK_HAS_FEATURE_URI:Ljava/lang/String; = "content://settings/secure/face_unlock_has_feature"

.field private static final FACE_UNLOCK_MODEL:Ljava/lang/String; = "face_unlock_model"

.field private static final FACE_UNLOCK_VALID_FEATURE:Ljava/lang/String; = "face_unlock_valid_feature"

.field private static final FACE_UNLOCK_VALID_FEATURE_URI:Ljava/lang/String; = "content://settings/secure/face_unlock_valid_feature"

.field private static volatile INSTANCE:Landroid/hardware/miuiface/IMiuiFaceManager; = null

.field public static final MG_ATTR_BLUR:I = 0x14

.field public static final MG_ATTR_EYE_CLOSE:I = 0x16

.field public static final MG_ATTR_EYE_OCCLUSION:I = 0x15

.field public static final MG_ATTR_MOUTH_OCCLUSION:I = 0x17

.field public static final MG_OPEN_CAMERA_FAIL:I = 0x3e8

.field public static final MG_OPEN_CAMERA_SUCCESS:I = 0x3e9

.field public static final MG_UNLOCK_BAD_LIGHT:I = 0x1a

.field public static final MG_UNLOCK_COMPARE_FAILURE:I = 0xc

.field public static final MG_UNLOCK_DARKLIGHT:I = 0x1e

.field public static final MG_UNLOCK_FACE_BAD_QUALITY:I = 0x4

.field public static final MG_UNLOCK_FACE_BLUR:I = 0x1c

.field public static final MG_UNLOCK_FACE_DOWN:I = 0x12

.field public static final MG_UNLOCK_FACE_MULTI:I = 0x1b

.field public static final MG_UNLOCK_FACE_NOT_COMPLETE:I = 0x1d

.field public static final MG_UNLOCK_FACE_NOT_FOUND:I = 0x5

.field public static final MG_UNLOCK_FACE_NOT_ROI:I = 0x21

.field public static final MG_UNLOCK_FACE_OFFSET_BOTTOM:I = 0xb

.field public static final MG_UNLOCK_FACE_OFFSET_LEFT:I = 0x8

.field public static final MG_UNLOCK_FACE_OFFSET_RIGHT:I = 0xa

.field public static final MG_UNLOCK_FACE_OFFSET_TOP:I = 0x9

.field public static final MG_UNLOCK_FACE_RISE:I = 0x10

.field public static final MG_UNLOCK_FACE_ROTATED_LEFT:I = 0xf

.field public static final MG_UNLOCK_FACE_ROTATED_RIGHT:I = 0x11

.field public static final MG_UNLOCK_FACE_SCALE_TOO_LARGE:I = 0x7

.field public static final MG_UNLOCK_FACE_SCALE_TOO_SMALL:I = 0x6

.field public static final MG_UNLOCK_FAILURE:I = 0x3

.field public static final MG_UNLOCK_FEATURE_MISS:I = 0x18

.field public static final MG_UNLOCK_FEATURE_VERSION_ERROR:I = 0x19

.field public static final MG_UNLOCK_HALF_SHADOW:I = 0x20

.field public static final MG_UNLOCK_HIGHLIGHT:I = 0x1f

.field public static final MG_UNLOCK_INVALID_ARGUMENT:I = 0x1

.field public static final MG_UNLOCK_INVALID_HANDLE:I = 0x2

.field public static final MG_UNLOCK_KEEP:I = 0x13

.field public static final MG_UNLOCK_LIVENESS_FAILURE:I = 0xe

.field public static final MG_UNLOCK_LIVENESS_WARNING:I = 0xd

.field public static final MG_UNLOCK_OK:I = 0x0

.field private static final POWERMODE_SUPERSAVE_OPEN:Ljava/lang/String; = "power_supersave_mode_open"

.field private static final POWERMODE_SUPERSAVE_OPEN_URI:Ljava/lang/String; = "content://settings/secure/power_supersave_mode_open"

.field private static RECEIVER_DESCRIPTOR:Ljava/lang/String; = null

.field private static final RECEIVER_ON_AUTHENTICATION_FAILED:I = 0xcc

.field private static final RECEIVER_ON_AUTHENTICATION_SUCCEEDED:I = 0xcb

.field private static final RECEIVER_ON_ENROLL_RESULT:I = 0xc9

.field private static final RECEIVER_ON_ERROR:I = 0xcd

.field private static final RECEIVER_ON_EXT_CMD:I = 0x12d

.field private static final RECEIVER_ON_LOCKOUT_RESET:I = 0x105

.field private static final RECEIVER_ON_ON_ACQUIRED:I = 0xca

.field private static final RECEIVER_ON_PRE_INIT:I = 0xcf

.field private static final RECEIVER_ON_REMOVED:I = 0xce

.field private static SERVICE_DESCRIPTOR:Ljava/lang/String; = null

.field private static SERVICE_NAME:Ljava/lang/String; = null

.field public static final ST_FACE_ENROLL_NOT_SAME_PERSON:I = 0x24

.field public static final ST_FACE_ENROLL_REACH_UPPER_LIMIT:I = 0x23

.field private static TAG:Ljava/lang/String; = null

.field private static final VERSION_1:I = 0x1


# instance fields
.field private mAuthenticationCallback:Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;

.field private mBinderDied:Landroid/os/IBinder$DeathRecipient;

.field private mBinderLock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mEnrollmentCallback:Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;

.field private mFaceCount:I

.field private mFaceUnlockModel:I

.field private mHandler:Landroid/os/Handler;

.field private mHasInit:Z

.field private mIsSuperPower:Z

.field private mIsValid:Z

.field private mLockoutResetCallback:Landroid/hardware/miuiface/IMiuiFaceManager$LockoutResetCallback;

.field private mMiuiFaceService:Landroid/os/IBinder;

.field private mRemovalCallback:Landroid/hardware/miuiface/IMiuiFaceManager$RemovalCallback;

.field private mRemovalMiuiface:Landroid/hardware/miuiface/Miuiface;

.field private mServiceReceiver:Landroid/os/IBinder;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "FaceManagerImpl_client"

    sput-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->INSTANCE:Landroid/hardware/miuiface/IMiuiFaceManager;

    const-string v0, "miui.face.FaceService"

    sput-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->SERVICE_NAME:Ljava/lang/String;

    sput-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->SERVICE_DESCRIPTOR:Ljava/lang/String;

    const-string/jumbo v0, "receiver.FaceService"

    sput-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->RECEIVER_DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mBinderLock:Ljava/lang/Object;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mToken:Landroid/os/IBinder;

    new-instance v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$1;

    invoke-direct {v0, p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl$1;-><init>(Landroid/hardware/miuiface/MiuiFaceManagerImpl;)V

    iput-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mBinderDied:Landroid/os/IBinder$DeathRecipient;

    new-instance v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$2;

    invoke-direct {v0, p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl$2;-><init>(Landroid/hardware/miuiface/MiuiFaceManagerImpl;)V

    iput-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mServiceReceiver:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$ClientHandler;

    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/hardware/miuiface/MiuiFaceManagerImpl$ClientHandler;-><init>(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Landroid/content/Context;Landroid/hardware/miuiface/MiuiFaceManagerImpl$1;)V

    iput-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mHandler:Landroid/os/Handler;

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "ursa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "face_unlock_valid_feature"

    const-string v2, "face_unlock_has_feature"

    const/4 v3, 0x1

    const/4 v4, -0x2

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "face_unlock_model"

    invoke-static {v0, v6, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mFaceUnlockModel:I

    iget v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mFaceUnlockModel:I

    const/4 v7, 0x2

    if-eq v0, v7, :cond_0

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v6, v7, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mFaceUnlockModel:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v5, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v6, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "face_unlock_has_feature_sl"

    invoke-static {v6, v7, v0, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v6, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v2, v5, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v6, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v1, v3, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "faceunlock_support_superpower"

    invoke-static {v0, v6, v3, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$FaceObserver;

    iget-object v3, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v3}, Landroid/hardware/miuiface/MiuiFaceManagerImpl$FaceObserver;-><init>(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Landroid/os/Handler;)V

    iget-object v3, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2, v5, v0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v2, "content://settings/secure/face_unlock_has_feature"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/hardware/miuiface/MiuiFaceManagerImpl$FaceObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v2, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1, v5, v0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "content://settings/secure/face_unlock_valid_feature"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/hardware/miuiface/MiuiFaceManagerImpl$FaceObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "power_supersave_mode_open"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "content://settings/secure/power_supersave_mode_open"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/hardware/miuiface/MiuiFaceManagerImpl$FaceObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$100(Landroid/hardware/miuiface/MiuiFaceManagerImpl;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mBinderLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mIsValid:Z

    return p1
.end method

.method static synthetic access$1102(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mIsSuperPower:Z

    return p1
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->RECEIVER_DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/hardware/miuiface/MiuiFaceManagerImpl;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1402(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mHasInit:Z

    return p1
.end method

.method static synthetic access$1600()Z
    .locals 1

    sget-boolean v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1700(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Landroid/hardware/miuiface/Miuiface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->sendEnrollResult(Landroid/hardware/miuiface/Miuiface;I)V

    return-void
.end method

.method static synthetic access$1800(Landroid/hardware/miuiface/MiuiFaceManagerImpl;JII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->sendAcquiredResult(JII)V

    return-void
.end method

.method static synthetic access$1900(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Landroid/hardware/miuiface/Miuiface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->sendAuthenticatedSucceeded(Landroid/hardware/miuiface/Miuiface;I)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/hardware/miuiface/MiuiFaceManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->sendAuthenticatedFailed()V

    return-void
.end method

.method static synthetic access$2100(Landroid/hardware/miuiface/MiuiFaceManagerImpl;JII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->sendErrorResult(JII)V

    return-void
.end method

.method static synthetic access$2200(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Landroid/hardware/miuiface/Miuiface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->sendRemovedResult(Landroid/hardware/miuiface/Miuiface;I)V

    return-void
.end method

.method static synthetic access$2300(Landroid/hardware/miuiface/MiuiFaceManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->sendLockoutReset()V

    return-void
.end method

.method static synthetic access$302(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$400(Landroid/hardware/miuiface/MiuiFaceManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->cancelEnrollment()V

    return-void
.end method

.method static synthetic access$500(Landroid/hardware/miuiface/MiuiFaceManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->cancelAuthentication()V

    return-void
.end method

.method static synthetic access$802(Landroid/hardware/miuiface/MiuiFaceManagerImpl;I)I
    .locals 0

    iput p1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mFaceCount:I

    return p1
.end method

.method static synthetic access$900(Landroid/hardware/miuiface/MiuiFaceManagerImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private binderCallAddLoackoutResetCallback(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->SERVICE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method private binderCallAuthenticate(Landroid/os/IBinder;Landroid/os/IBinder;JILandroid/os/IBinder;ILjava/lang/String;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->SERVICE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-nez p2, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    if-nez p6, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p6

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2
.end method

.method private binderCallAuthenticatorId(Landroid/os/IBinder;Ljava/lang/String;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->SERVICE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-wide v2
.end method

.method private binderCallCancelAuthention(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->SERVICE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method private binderCallCancelEnrollment(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->SERVICE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method private binderCallEnroll(Landroid/os/IBinder;Landroid/os/IBinder;[BILandroid/os/IBinder;ILjava/lang/String;Landroid/view/Surface;Landroid/graphics/RectF;Landroid/graphics/RectF;II)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p8

    move-object/from16 v1, p9

    move-object/from16 v2, p10

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    sget-object v5, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->SERVICE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v5, 0x0

    if-nez p2, :cond_0

    move-object v6, v5

    goto :goto_0

    :cond_0
    move-object/from16 v6, p2

    :goto_0
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move-object/from16 v6, p3

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    move/from16 v7, p4

    invoke-virtual {v3, v7}, Landroid/os/Parcel;->writeInt(I)V

    if-nez p5, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v5, p5

    :goto_1
    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move/from16 v5, p6

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v8, p7

    invoke-virtual {v3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v3, v10}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v10}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {v3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v3, v10}, Landroid/graphics/RectF;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_3
    invoke-virtual {v3, v10}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    if-eqz v2, :cond_4

    invoke-virtual {v3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v3, v10}, Landroid/graphics/RectF;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    :cond_4
    invoke-virtual {v3, v10}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    move/from16 v9, p11

    invoke-virtual {v3, v9}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v11, p12

    invoke-virtual {v3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v12, 0x5

    move-object v13, p1

    invoke-interface {p1, v12, v3, v4, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method private binderCallExtCmd(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;IILjava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->SERVICE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-nez p2, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v2, 0x65

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2
.end method

.method private binderCallGetEnrolledFaces(Landroid/os/IBinder;ILjava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/miuiface/Miuiface;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->SERVICE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    sget-object v2, Landroid/hardware/miuiface/Miuiface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v2
.end method

.method private binderCallGetVendorInfo(Landroid/os/IBinder;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->SERVICE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v2
.end method

.method private binderCallHasEnrolledFaces(Landroid/os/IBinder;ILjava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->SERVICE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2
.end method

.method private binderCallPostEnroll(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->SERVICE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method private binderCallPpreInitAuthen(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->SERVICE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method private binderCallPreEnroll(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->SERVICE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method private binderCallRemove(Landroid/os/IBinder;Landroid/os/IBinder;IIILandroid/os/IBinder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->SERVICE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-nez p2, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    if-nez p6, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p6

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method private binderCallRename(Landroid/os/IBinder;IILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->SERVICE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method private binderCallRestTimeout(Landroid/os/IBinder;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->SERVICE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method private cancelAuthentication()V
    .locals 3

    sget-boolean v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "cancelAuthentication "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->initService()V

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->binderCallCancelAuthention(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private cancelEnrollment()V
    .locals 2

    sget-boolean v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "cancelEnrollment "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->initService()V

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mToken:Landroid/os/IBinder;

    invoke-direct {p0, v0, v1}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->binderCallCancelEnrollment(Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/hardware/miuiface/IMiuiFaceManager;
    .locals 2

    sget-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->INSTANCE:Landroid/hardware/miuiface/IMiuiFaceManager;

    if-nez v0, :cond_1

    const-class v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->INSTANCE:Landroid/hardware/miuiface/IMiuiFaceManager;

    if-nez v1, :cond_0

    new-instance v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    invoke-direct {v1, p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->INSTANCE:Landroid/hardware/miuiface/IMiuiFaceManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->INSTANCE:Landroid/hardware/miuiface/IMiuiFaceManager;

    return-object v0
.end method

.method private getMessageInfo(I)Ljava/lang/String;
    .locals 4

    const-string v0, "define by client"

    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_3

    const/16 v1, 0x3e9

    if-eq p1, v1, :cond_2

    const/16 v1, 0x7d0

    if-eq p1, v1, :cond_1

    const/16 v1, 0x834

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    sget-boolean v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_4

    sget-object v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default msgId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_0
    const-string/jumbo v0, "\u9634\u9633\u8138"

    goto/16 :goto_0

    :pswitch_1
    const-string/jumbo v0, "\u5149\u7ebf\u592a\u4eae"

    goto/16 :goto_0

    :pswitch_2
    const-string/jumbo v0, "\u5149\u7ebf\u592a\u6697"

    goto/16 :goto_0

    :pswitch_3
    const-string/jumbo v0, "\u8138\u90e8\u4e0d\u5b8c\u6574"

    goto/16 :goto_0

    :pswitch_4
    const-string/jumbo v0, "\u8138\u90e8\u6a21\u7cca"

    goto/16 :goto_0

    :pswitch_5
    const-string/jumbo v0, "\u591a\u5f20\u4eba\u8138"

    goto/16 :goto_0

    :pswitch_6
    const-string/jumbo v0, "\u5149\u7ebf\u4e0d\u597d"

    goto/16 :goto_0

    :pswitch_7
    const-string v0, "Feature\u7248\u672c\u9519\u8bef"

    goto/16 :goto_0

    :pswitch_8
    const-string/jumbo v0, "\u5904\u7406Feature\u8bfb\u53d6\u5f02\u5e38"

    goto/16 :goto_0

    :pswitch_9
    const-string/jumbo v0, "\u5634\u90e8\u906e\u6321"

    goto/16 :goto_0

    :pswitch_a
    const-string/jumbo v0, "\u95ed\u773c"

    goto :goto_0

    :pswitch_b
    const-string/jumbo v0, "\u773c\u90e8\u906e\u6321"

    goto :goto_0

    :pswitch_c
    const-string/jumbo v0, "\u56fe\u7247\u6a21\u7cca"

    goto :goto_0

    :pswitch_d
    const-string/jumbo v0, "\u7ee7\u7eed\u8c03\u7528\u4f20\u5165\u6570\u636e"

    goto :goto_0

    :pswitch_e
    const-string/jumbo v0, "\u4f4e\u5934"

    goto :goto_0

    :pswitch_f
    const-string/jumbo v0, "\u5411\u53f3\u8f6c\u5934"

    goto :goto_0

    :pswitch_10
    const-string/jumbo v0, "\u62ac\u5934"

    goto :goto_0

    :pswitch_11
    const-string/jumbo v0, "\u5411\u5de6\u8f6c\u5934"

    goto :goto_0

    :pswitch_12
    const-string/jumbo v0, "\u6d3b\u4f53\u68c0\u6d4b\u5931\u8d25"

    goto :goto_0

    :pswitch_13
    const-string/jumbo v0, "\u6d3b\u4f53\u653b\u51fb\u8b66\u544a"

    goto :goto_0

    :pswitch_14
    const-string/jumbo v0, "\u5bf9\u6bd4\u5931\u8d25"

    goto :goto_0

    :pswitch_15
    const-string/jumbo v0, "\u8138\u504f\u4e0b"

    goto :goto_0

    :pswitch_16
    const-string/jumbo v0, "\u8138\u504f\u53f3"

    goto :goto_0

    :pswitch_17
    const-string/jumbo v0, "\u8138\u504f\u4e0a"

    goto :goto_0

    :pswitch_18
    const-string/jumbo v0, "\u8138\u504f\u5de6"

    goto :goto_0

    :pswitch_19
    const-string/jumbo v0, "\u8138\u592a\u5927"

    goto :goto_0

    :pswitch_1a
    const-string/jumbo v0, "\u8138\u592a\u5c0f"

    goto :goto_0

    :pswitch_1b
    const-string/jumbo v0, "\u672a\u68c0\u6d4b\u5230\u4eba\u8138"

    goto :goto_0

    :pswitch_1c
    const-string/jumbo v0, "\u4f20\u5165\u6570\u636e\u8d28\u91cf\u4e0d\u597d"

    goto :goto_0

    :pswitch_1d
    const-string/jumbo v0, "\u89e3\u9501\u5931\u8d25\uff08\u5185\u90e8\u9519\u8bef\uff09"

    goto :goto_0

    :pswitch_1e
    const-string v0, "Handler\u4e0d\u6b63\u786e"

    goto :goto_0

    :pswitch_1f
    const-string/jumbo v0, "\u53c2\u6570\u4e0d\u5408\u6cd5"

    goto :goto_0

    :cond_0
    const-string v0, "binder\u8c03\u7528\u5f02\u5e38"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "\u53d6\u6d88\u6210\u529f"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "\u6253\u5f00\u76f8\u673a\u6210\u529f"

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "\u6253\u5f00\u76f8\u673a\u5931\u8d25"

    nop

    :cond_4
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initService()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mBinderLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    if-nez v1, :cond_0

    sget-object v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->SERVICE_NAME:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mBinderDied:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendAcquiredResult(JII)V
    .locals 2

    invoke-direct {p0, p3}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->getMessageInfo(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mEnrollmentCallback:Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p3, v0}, Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mAuthenticationCallback:Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p3, v0}, Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private sendAuthenticatedFailed()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mAuthenticationCallback:Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;->onAuthenticationFailed()V

    :cond_0
    return-void
.end method

.method private sendAuthenticatedSucceeded(Landroid/hardware/miuiface/Miuiface;I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mAuthenticationCallback:Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/miuiface/Miuiface;)V

    :cond_0
    return-void
.end method

.method private sendEnrollResult(Landroid/hardware/miuiface/Miuiface;I)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mEnrollmentCallback:Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/hardware/miuiface/Miuiface;->getMiuifaceId()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;->onEnrollmentProgress(II)V

    :cond_0
    return-void
.end method

.method private sendErrorResult(JII)V
    .locals 3

    invoke-direct {p0, p3}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->getMessageInfo(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mEnrollmentCallback:Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p3, v0}, Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mAuthenticationCallback:Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p3, v0}, Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mRemovalCallback:Landroid/hardware/miuiface/IMiuiFaceManager$RemovalCallback;

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mRemovalMiuiface:Landroid/hardware/miuiface/Miuiface;

    invoke-virtual {v1, v2, p3, v0}, Landroid/hardware/miuiface/IMiuiFaceManager$RemovalCallback;->onRemovalError(Landroid/hardware/miuiface/Miuiface;ILjava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private sendLockoutReset()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mLockoutResetCallback:Landroid/hardware/miuiface/IMiuiFaceManager$LockoutResetCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/miuiface/IMiuiFaceManager$LockoutResetCallback;->onLockoutReset()V

    :cond_0
    return-void
.end method

.method private sendRemovedResult(Landroid/hardware/miuiface/Miuiface;I)V
    .locals 5

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mRemovalCallback:Landroid/hardware/miuiface/IMiuiFaceManager$RemovalCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mRemovalMiuiface:Landroid/hardware/miuiface/Miuiface;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendRemovedResult faceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/miuiface/Miuiface;->getMiuifaceId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  remaining:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/hardware/miuiface/Miuiface;->getMiuifaceId()I

    move-result v0

    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mRemovalMiuiface:Landroid/hardware/miuiface/Miuiface;

    invoke-virtual {v1}, Landroid/hardware/miuiface/Miuiface;->getMiuifaceId()I

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_2

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Face id didn\'t match: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v2, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mRemovalCallback:Landroid/hardware/miuiface/IMiuiFaceManager$RemovalCallback;

    invoke-virtual {v2, p1, p2}, Landroid/hardware/miuiface/IMiuiFaceManager$RemovalCallback;->onRemovalSucceeded(Landroid/hardware/miuiface/Miuiface;I)V

    return-void

    :cond_3
    :goto_0
    sget-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "Received MSG_REMOVED, but face or mRemovalMiuiface is null, "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private useHandler(Landroid/os/Handler;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl$ClientHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl$ClientHandler;-><init>(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Landroid/os/Looper;Landroid/hardware/miuiface/MiuiFaceManagerImpl$1;)V

    iput-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_1

    new-instance v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl$ClientHandler;

    iget-object v2, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl$ClientHandler;-><init>(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Landroid/os/Looper;Landroid/hardware/miuiface/MiuiFaceManagerImpl$1;)V

    iput-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mHandler:Landroid/os/Handler;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addLockoutResetCallback(Landroid/hardware/miuiface/IMiuiFaceManager$LockoutResetCallback;)V
    .locals 4

    sget-boolean v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addLockoutResetCallback  callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->initService()V

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    iput-object p1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mLockoutResetCallback:Landroid/hardware/miuiface/IMiuiFaceManager$LockoutResetCallback;

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mServiceReceiver:Landroid/os/IBinder;

    invoke-direct {p0, v0, v1}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->binderCallAddLoackoutResetCallback(Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "transact fail. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public authenticate(Landroid/os/CancellationSignal;ILandroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;Landroid/os/Handler;I)V
    .locals 18

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p3

    sget-boolean v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authenticate mServiceReceiver:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mServiceReceiver:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v13, :cond_4

    const/4 v0, 0x0

    if-eqz v12, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "authentication already canceled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl$OnAuthenticationCancelListener;

    invoke-direct {v1, v11, v0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl$OnAuthenticationCancelListener;-><init>(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Landroid/hardware/miuiface/MiuiFaceManagerImpl$1;)V

    invoke-virtual {v12, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_2
    move-object/from16 v14, p4

    invoke-direct {v11, v14}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->useHandler(Landroid/os/Handler;)V

    iput-object v13, v11, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mAuthenticationCallback:Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;

    iput-object v0, v11, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mEnrollmentCallback:Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;

    const/16 v15, 0x834

    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->initService()V

    iget-object v0, v11, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    if-eqz v0, :cond_3

    const-wide/16 v16, -0x1

    const/4 v0, -0x1

    iget-object v2, v11, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    iget-object v3, v11, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mToken:Landroid/os/IBinder;

    iget-object v7, v11, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mServiceReceiver:Landroid/os/IBinder;

    iget-object v1, v11, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v1, p0

    move-wide/from16 v4, v16

    move v6, v0

    move/from16 v8, p2

    move/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->binderCallAuthenticate(Landroid/os/IBinder;Landroid/os/IBinder;JILandroid/os/IBinder;ILjava/lang/String;I)I

    nop

    goto :goto_0

    :cond_3
    sget-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "mMiuiFaceService is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v11, v15}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->getMessageInfo(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v15, v0}, Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception while authenticating: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    invoke-direct {v11, v15}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->getMessageInfo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v15, v1}, Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_4
    move-object/from16 v14, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an authentication callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;Landroid/view/Surface;Landroid/graphics/Rect;I)V
    .locals 10

    new-instance v7, Landroid/graphics/RectF;

    move-object/from16 v9, p6

    invoke-direct {v7, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;Landroid/view/Surface;Landroid/graphics/RectF;Landroid/graphics/RectF;I)V

    return-void
.end method

.method public enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;Landroid/view/Surface;Landroid/graphics/RectF;Landroid/graphics/RectF;I)V
    .locals 10

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;Landroid/view/Surface;Landroid/graphics/RectF;Landroid/graphics/RectF;II)V

    return-void
.end method

.method public enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;Landroid/view/Surface;Landroid/graphics/RectF;Landroid/graphics/RectF;II)V
    .locals 17

    move-object/from16 v14, p0

    move-object/from16 v15, p2

    move-object/from16 v13, p4

    const/16 v16, 0x0

    if-eqz v13, :cond_3

    if-eqz v15, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "enrollment already canceled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$OnEnrollCancelListener;

    const/4 v1, 0x0

    invoke-direct {v0, v14, v1}, Landroid/hardware/miuiface/MiuiFaceManagerImpl$OnEnrollCancelListener;-><init>(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Landroid/hardware/miuiface/MiuiFaceManagerImpl$1;)V

    invoke-virtual {v15, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_1
    const/16 v12, 0x834

    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->initService()V

    iget-object v0, v14, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v0, :cond_2

    :try_start_1
    iput-object v13, v14, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mEnrollmentCallback:Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;

    iget-object v2, v14, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    iget-object v3, v14, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mToken:Landroid/os/IBinder;

    iget-object v6, v14, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mServiceReceiver:Landroid/os/IBinder;

    iget-object v0, v14, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move/from16 v5, v16

    move/from16 v7, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move v15, v12

    move/from16 v12, p8

    move/from16 v13, p9

    :try_start_2
    invoke-direct/range {v1 .. v13}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->binderCallEnroll(Landroid/os/IBinder;Landroid/os/IBinder;[BILandroid/os/IBinder;ILjava/lang/String;Landroid/view/Surface;Landroid/graphics/RectF;Landroid/graphics/RectF;II)V

    move-object/from16 v1, p4

    goto :goto_0

    :catch_0
    move-exception v0

    move v15, v12

    goto :goto_1

    :cond_2
    move v15, v12

    sget-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "mMiuiFaceService is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v14, v15}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->getMessageInfo(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v1, p4

    :try_start_3
    invoke-virtual {v1, v15, v0}, Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_0
    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_1
    move-object/from16 v1, p4

    goto :goto_2

    :catch_3
    move-exception v0

    move v15, v12

    move-object v1, v13

    :goto_2
    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    const-string v3, "exception in enroll: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    invoke-direct {v14, v15}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->getMessageInfo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v15, v2}, Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    :goto_3
    return-void

    :cond_3
    move-object v1, v13

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must supply an enrollment callback"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public extCmd(II)I
    .locals 9

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->initService()V

    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    iget-object v3, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mServiceReceiver:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v2 .. v8}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->binderCallExtCmd(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;IILjava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "transact fail. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-boolean v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extCmd  cmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " param:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method public getEnrolledFaces()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/miuiface/Miuiface;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->initService()V

    iget-object v2, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v1, v3}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->binderCallGetEnrolledFaces(Landroid/os/IBinder;ILjava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "transact fail. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-boolean v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_3

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEnrolledFaces   res:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    :goto_1
    const-string v4, " is null"

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0
.end method

.method public getManagerVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getVendorInfo()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    :try_start_0
    invoke-direct {p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->initService()V

    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->binderCallGetVendorInfo(Landroid/os/IBinder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "transact fail. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-boolean v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVendorInfo, res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method public hasEnrolledFaces()I
    .locals 5

    const/4 v0, -0x2

    :try_start_0
    iget v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mFaceCount:I

    if-lez v1, :cond_0

    iget-boolean v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mIsValid:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mFaceCount:I

    move v0, v1

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mFaceCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "transact fail. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0
.end method

.method public isFaceFeatureEnabled()Z
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->isFaceFeatureSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mIsSuperPower:Z

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFaceFeatureSupport()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "support_face_unlock_region_global"

    invoke-static {v2}, Lmiui/util/FeatureParser;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "support_face_unlock_region_dom"

    invoke-static {v2}, Lmiui/util/FeatureParser;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "ALL"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    sget-boolean v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_3

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inernational:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " supportR:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " nowR:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0
.end method

.method public isFaceUnlockInited()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mHasInit:Z

    return v0
.end method

.method public isReleased()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportMultiFaceInput()Z
    .locals 4

    const/4 v0, 0x0

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string/jumbo v1, "support_multi_face_input_global"

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "support_multi_face_input"

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    sget-boolean v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportMultiFaceInput:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method public isSupportScreenOnDelayed()Z
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "support_screen_on_delayed"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sget-boolean v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportScreenOnDelayed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public preInitAuthen()V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->initService()V

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mHasInit:Z

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mServiceReceiver:Landroid/os/IBinder;

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->binderCallPpreInitAuthen(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "transact fail. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public remove(Landroid/hardware/miuiface/Miuiface;Landroid/hardware/miuiface/IMiuiFaceManager$RemovalCallback;)V
    .locals 9

    sget-boolean v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove  faceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/miuiface/Miuiface;->getMiuifaceId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->initService()V

    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    if-eqz v1, :cond_1

    iput-object p1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mRemovalMiuiface:Landroid/hardware/miuiface/Miuiface;

    iput-object p2, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mRemovalCallback:Landroid/hardware/miuiface/IMiuiFaceManager$RemovalCallback;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mEnrollmentCallback:Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;

    iput-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mAuthenticationCallback:Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;

    iget-object v3, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/hardware/miuiface/Miuiface;->getMiuifaceId()I

    move-result v5

    invoke-virtual {p1}, Landroid/hardware/miuiface/Miuiface;->getGroupId()I

    move-result v6

    iget-object v8, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mServiceReceiver:Landroid/os/IBinder;

    move-object v2, p0

    move v7, v0

    invoke-direct/range {v2 .. v8}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->binderCallRemove(Landroid/os/IBinder;Landroid/os/IBinder;IIILandroid/os/IBinder;)V

    goto :goto_0

    :cond_1
    sget-object v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    const-string v2, "mMiuiFaceService is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x834

    invoke-direct {p0, v1}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->getMessageInfo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p1, v1, v2}, Landroid/hardware/miuiface/IMiuiFaceManager$RemovalCallback;->onRemovalError(Landroid/hardware/miuiface/Miuiface;ILjava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "transact fail. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public rename(ILjava/lang/String;)V
    .locals 5

    sget-boolean v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rename  faceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->initService()V

    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    invoke-direct {p0, v1, p1, v0, p2}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->binderCallRename(Landroid/os/IBinder;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "transact fail. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public resetTimeout([B)V
    .locals 4

    sget-boolean v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetTimeout"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->initService()V

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    invoke-direct {p0, v0, p1}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->binderCallRestTimeout(Landroid/os/IBinder;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "transact fail. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
