.class public Lmiui/view/MiuiSecurityPermissionHandler;
.super Ljava/lang/Object;
.source "MiuiSecurityPermissionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final LISTEN_MODE_ACCOUNT:I = 0x1

.field private static final LISTEN_MODE_WIFI:I = 0x2

.field private static final NETWORK_ERROR:I = -0x2

.field private static final PERMISSION_ACCOUNT_WHITELIST:I = 0x1

.field private static final PERMISSION_ERROR:I = -0x1

.field private static final PERMISSION_IMEIACCOUNT_WHITELIST:I = 0x3

.field private static final PERMISSION_IMEI_WHITELIST:I = 0x2

.field private static final POST_VERIFICATION_REQUEST:I = 0x0

.field private static final POST_VERIFICATION_WATER_MARKER:I = 0x1

.field private static TAG:Ljava/lang/String; = null

.field private static final WATERMARKER_ACCOUNT_WHITELIST:I = 0x1

.field private static final WATERMARKER_IMEI_ACCOUNT_WHITELIST:I = 0x3

.field private static final WATERMARKER_IMEI_WHITELIST:I = 0x2

.field private static final WATERMARKER_SHOW:I

.field private static sDefaultUrl:Ljava/lang/String;

.field private static sGlobalUrl:Ljava/lang/String;


# instance fields
.field private mBootComplete:Z

.field private mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mMiuiSecurityImeiFlag:I

.field private mNeedAddAccount:Z

.field private mNeedListenAccount:Z

.field private mOpenWifiOnce:Z

.field private mPermissionListenAccount:Z

.field private mPermissionView:Landroid/view/View;

.field private mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRetPermission:I

.field private mRetWater:I

.field private responseResult:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "https://update.intl.miui.com/updates/mi-vip.php"

    sput-object v0, Lmiui/view/MiuiSecurityPermissionHandler;->sGlobalUrl:Ljava/lang/String;

    const-string v0, "https://update.miui.com/updates/mi-vip.php"

    sput-object v0, Lmiui/view/MiuiSecurityPermissionHandler;->sDefaultUrl:Ljava/lang/String;

    const-string v0, "MiuiPermission"

    sput-object v0, Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mOpenWifiOnce:Z

    iput-boolean v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionListenAccount:Z

    iput v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mMiuiSecurityImeiFlag:I

    const/4 v1, -0x2

    iput v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I

    iput v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetPermission:I

    iput-boolean v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mNeedAddAccount:Z

    iput-boolean v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mNeedListenAccount:Z

    iput-boolean v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mBootComplete:Z

    iput v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->responseResult:I

    new-instance v0, Lmiui/view/MiuiSecurityPermissionHandler$1;

    invoke-direct {v0, p0}, Lmiui/view/MiuiSecurityPermissionHandler$1;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;)V

    iput-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    sget-boolean v0, Lmiui/os/Build;->IS_PRIVATE_BUILD:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_PRIVATE_WATER_MARKER:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p2}, Lmiui/view/MiuiSecurityPermissionHandler;->registerPermissionViewCallback(Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;)V

    invoke-direct {p0, p1}, Lmiui/view/MiuiSecurityPermissionHandler;->registerNetWReceiver(Landroid/content/Context;)V

    invoke-virtual {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->mayBringUpPermissionView()V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lmiui/view/MiuiSecurityPermissionHandler;)V
    .locals 0

    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->updateWaterMarkerAccount()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lmiui/view/MiuiSecurityPermissionHandler;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lmiui/view/MiuiSecurityPermissionHandler;->postVerificationWaterMarker(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/database/ContentObserver;
    .locals 1

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContentObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$1200(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1202(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1300(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/view/View;Landroid/widget/Button;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmiui/view/MiuiSecurityPermissionHandler;->postVerificationRequest(Landroid/view/View;Landroid/widget/Button;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lmiui/view/MiuiSecurityPermissionHandler;)V
    .locals 0

    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->onOpenWifiSettingsButtonClicked()V

    return-void
.end method

.method static synthetic access$1500(Lmiui/view/MiuiSecurityPermissionHandler;)V
    .locals 0

    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->enableWifiAndData()V

    return-void
.end method

.method static synthetic access$200(Lmiui/view/MiuiSecurityPermissionHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mNeedAddAccount:Z

    return v0
.end method

.method static synthetic access$202(Lmiui/view/MiuiSecurityPermissionHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mNeedAddAccount:Z

    return p1
.end method

.method static synthetic access$300(Lmiui/view/MiuiSecurityPermissionHandler;)Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;
    .locals 1

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/view/MiuiSecurityPermissionHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionListenAccount:Z

    return v0
.end method

.method static synthetic access$402(Lmiui/view/MiuiSecurityPermissionHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionListenAccount:Z

    return p1
.end method

.method static synthetic access$500(Lmiui/view/MiuiSecurityPermissionHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mBootComplete:Z

    return v0
.end method

.method static synthetic access$502(Lmiui/view/MiuiSecurityPermissionHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mBootComplete:Z

    return p1
.end method

.method static synthetic access$600(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/accounts/Account;
    .locals 1

    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->loadAccountId()Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lmiui/view/MiuiSecurityPermissionHandler;)I
    .locals 1

    iget v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetPermission:I

    return v0
.end method

.method static synthetic access$800(Lmiui/view/MiuiSecurityPermissionHandler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lmiui/view/MiuiSecurityPermissionHandler;)I
    .locals 1

    iget v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I

    return v0
.end method

.method static synthetic access$902(Lmiui/view/MiuiSecurityPermissionHandler;I)I
    .locals 0

    iput p1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I

    return p1
.end method

.method private appendImei(Ljava/io/OutputStreamWriter;)V
    .locals 5

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getImeiList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_4

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lmiui/view/MiuiSecurityPermissionHandler;->hashSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lmiui/view/MiuiSecurityPermissionHandler;->hashSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz v2, :cond_2

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&imei1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&imei2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :cond_3
    :goto_2
    nop

    :goto_3
    return-void

    :cond_4
    :goto_4
    return-void
.end method

.method private decryptData(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "ODQ4NWFmYjdhNGE="

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p0, v0}, Lmiui/view/MiuiSecurityPermissionHandler;->generateRawKey(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :try_start_0
    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    const-string v4, "0102030405060708"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/4 v4, 0x0

    invoke-static {p1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    return-object v2
.end method

.method private doPermissionView()V
    .locals 7

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v4, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "miui_account_login_check"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-nez v0, :cond_2

    new-instance v4, Landroid/os/Handler;

    iget-object v5, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lmiui/view/MiuiSecurityPermissionHandler$3;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6, v4, v3}, Lmiui/view/MiuiSecurityPermissionHandler$3;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/os/Handler;Landroid/os/Handler;Z)V

    iput-object v5, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContentObserver:Landroid/database/ContentObserver;

    iget-object v5, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v6, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v1, v2, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->createPermissionView()V

    :goto_2
    return-void
.end method

.method private doWaterMarker()V
    .locals 7

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "miui_permission_check"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mMiuiSecurityImeiFlag:I

    iget v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mMiuiSecurityImeiFlag:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->loadAccountId()Landroid/accounts/Account;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    :goto_0
    invoke-direct {p0, v3}, Lmiui/view/MiuiSecurityPermissionHandler;->postVerificationWaterMarker(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I

    iget v3, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_2

    if-nez v3, :cond_7

    :cond_2
    iget-object v3, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "device_provisioned"

    invoke-static {v3, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    if-nez v3, :cond_4

    new-instance v4, Landroid/os/Handler;

    iget-object v5, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lmiui/view/MiuiSecurityPermissionHandler$2;

    invoke-direct {v5, p0, v2, v4, v0}, Lmiui/view/MiuiSecurityPermissionHandler$2;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/os/Handler;Landroid/os/Handler;Landroid/accounts/Account;)V

    iput-object v5, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContentObserver:Landroid/database/ContentObserver;

    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "device_provisioned"

    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v5, v1, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_2

    :cond_4
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I

    if-eq v4, v1, :cond_5

    iget v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I

    if-nez v1, :cond_6

    :cond_5
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    invoke-interface {v1}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onShowWaterMarker()V

    :cond_6
    monitor-exit p0

    :cond_7
    :goto_2
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private enableWifiAndData()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mOpenWifiOnce:Z

    invoke-static {}, Landroid/app/MobileDataUtils;->getInstance()Landroid/app/MobileDataUtils;

    move-result-object v1

    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/app/MobileDataUtils;->enableMobileData(Landroid/content/Context;Z)V

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_0
    return-void
.end method

.method private generateRawKey(Ljava/lang/String;)[B
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    array-length v1, v0

    rem-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, 0x8

    array-length v2, v0

    rem-int/lit8 v2, v2, 0x8

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-byte v3, v0, v2

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static hashSHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    return-object v1
.end method

.method private loadAccountId()Landroid/accounts/Account;
    .locals 2

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.xiaomi"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private onOpenWifiSettingsButtonClicked()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_show_on_finddevice_keyguard"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActivityNotFoundException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private postVerificationRequest(Landroid/view/View;Landroid/widget/Button;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p3, v0}, Lmiui/view/MiuiSecurityPermissionHandler;->postVerificationResult(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lmiui/view/MiuiSecurityPermissionHandler$7;

    invoke-direct {v0, p0, p2, p1}, Lmiui/view/MiuiSecurityPermissionHandler$7;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/widget/Button;Landroid/view/View;)V

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-boolean v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mOpenWifiOnce:Z

    if-nez v1, :cond_0

    new-instance v1, Lmiui/view/MiuiSecurityPermissionHandler$6;

    invoke-direct {v1, p0, p1}, Lmiui/view/MiuiSecurityPermissionHandler$6;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    new-instance v0, Lmiui/view/MiuiSecurityPermissionHandler$7;

    invoke-direct {v0, p0, p2, p1}, Lmiui/view/MiuiSecurityPermissionHandler$7;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/widget/Button;Landroid/view/View;)V

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    new-instance v1, Lmiui/view/MiuiSecurityPermissionHandler$7;

    invoke-direct {v1, p0, p2, p1}, Lmiui/view/MiuiSecurityPermissionHandler$7;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/widget/Button;Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method

.method private postVerificationResult(Ljava/lang/String;I)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const-string v0, "&sid=1&device="

    const-string v4, "uid="

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "ro.product.mod_device"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    sget-object v9, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v9, v8

    :goto_0
    move-object v8, v9

    const/16 v9, 0x1388

    :try_start_0
    sget-boolean v10, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v10, :cond_1

    new-instance v10, Ljava/net/URL;

    sget-object v11, Lmiui/view/MiuiSecurityPermissionHandler;->sGlobalUrl:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v10, Ljava/net/URL;

    sget-object v11, Lmiui/view/MiuiSecurityPermissionHandler;->sDefaultUrl:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    check-cast v11, Ljava/net/HttpURLConnection;

    move-object v7, v11

    const/16 v11, 0x1388

    invoke-virtual {v7, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v7, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v13, "POST"

    invoke-virtual {v7, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    new-instance v13, Ljava/io/OutputStreamWriter;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v5, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    sget-object v13, Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v5}, Lmiui/view/MiuiSecurityPermissionHandler;->appendImei(Ljava/io/OutputStreamWriter;)V

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V

    const/4 v5, 0x0

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v4, 0xc8

    if-ne v0, v4, :cond_4

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v6, v0

    const/16 v0, 0x1000

    const/16 v4, 0x1000

    new-array v13, v4, [C

    move v14, v11

    :goto_2
    rsub-int v15, v14, 0x1000

    invoke-virtual {v6, v13, v14, v15}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v15

    move/from16 v16, v15

    const/4 v4, -0x1

    if-eq v15, v4, :cond_2

    add-int v14, v14, v16

    const/16 v4, 0x1000

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    const/4 v6, 0x0

    if-ne v3, v12, :cond_3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v13, v11, v14}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v1, v4}, Lmiui/view/MiuiSecurityPermissionHandler;->decryptData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lmiui/view/MiuiSecurityPermissionHandler;->processWatermarResult(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lmiui/view/MiuiSecurityPermissionHandler;->responseResult:I

    goto :goto_3

    :cond_3
    if-nez v3, :cond_4

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v13, v11, v14}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v1, v4}, Lmiui/view/MiuiSecurityPermissionHandler;->decryptData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lmiui/view/MiuiSecurityPermissionHandler;->processResult(Ljava/lang/String;)V

    sget-object v4, Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mRetPermission:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lmiui/view/MiuiSecurityPermissionHandler;->mRetPermission:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "mRetWater "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_3
    if-eqz v5, :cond_5

    :try_start_1
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_4
    if-eqz v6, :cond_6

    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_5
    nop

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catchall_0
    move-exception v0

    move-object v4, v0

    goto :goto_6

    :catch_2
    move-exception v0

    nop

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_6
    if-eqz v5, :cond_7

    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_7
    if-eqz v6, :cond_8

    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_8
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    throw v4
.end method

.method private postVerificationWaterMarker(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lmiui/view/MiuiSecurityPermissionHandler;->postVerificationResult(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->responseResult:I

    return v0
.end method

.method private processMiuiSecurityImeiFlag(II)V
    .locals 3

    iget v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mMiuiSecurityImeiFlag:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_1

    :cond_0
    iget v2, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mMiuiSecurityImeiFlag:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mMiuiSecurityImeiFlag:I

    :cond_1
    if-eq p2, v0, :cond_2

    if-ne p2, v1, :cond_3

    :cond_2
    iget v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mMiuiSecurityImeiFlag:I

    or-int/2addr v0, v1

    iput v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mMiuiSecurityImeiFlag:I

    :cond_3
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mMiuiSecurityImeiFlag:I

    const-string v2, "miui_permission_check"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    return-void
.end method

.method private processResult(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    sget-object v0, Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "Auth"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "Watermark"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetPermission:I

    iput v2, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I

    invoke-direct {p0, v1, v2}, Lmiui/view/MiuiSecurityPermissionHandler;->processMiuiSecurityImeiFlag(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private processWatermarResult(Ljava/lang/String;)I
    .locals 3

    :try_start_0
    sget-object v0, Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "Auth"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "Watermark"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lmiui/view/MiuiSecurityPermissionHandler;->processMiuiSecurityImeiFlag(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x2

    return v0
.end method

.method private registerNetWReceiver(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "miui.intent.action.FINISH_BOOTING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private updateWaterMarkerAccount()V
    .locals 2

    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->loadAccountId()Landroid/accounts/Account;

    move-result-object v0

    new-instance v1, Lmiui/view/MiuiSecurityPermissionHandler$8;

    invoke-direct {v1, p0, v0}, Lmiui/view/MiuiSecurityPermissionHandler$8;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/accounts/Account;)V

    invoke-virtual {v1}, Lmiui/view/MiuiSecurityPermissionHandler$8;->start()V

    return-void
.end method


# virtual methods
.method public createPermissionView()V
    .locals 8

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "miui_permission_check"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mMiuiSecurityImeiFlag:I

    iget v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mMiuiSecurityImeiFlag:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sget-object v1, Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;

    const-string v2, "createPermissionView!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionView:Landroid/view/View;

    if-nez v1, :cond_1

    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mContext:Landroid/content/Context;

    const v2, 0x110b0036

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionView:Landroid/view/View;

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x7e0

    const v6, 0x5020500

    const/4 v7, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const-string v2, "Permission"

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionView:Landroid/view/View;

    invoke-interface {v0, v2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionView:Landroid/view/View;

    const v2, 0x11090005

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionView:Landroid/view/View;

    const v3, 0x11090083

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, Lmiui/view/MiuiSecurityPermissionHandler$4;

    invoke-direct {v3, p0, v1}, Lmiui/view/MiuiSecurityPermissionHandler$4;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/widget/Button;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lmiui/view/MiuiSecurityPermissionHandler$5;

    invoke-direct {v3, p0, v0}, Lmiui/view/MiuiSecurityPermissionHandler$5;-><init>(Lmiui/view/MiuiSecurityPermissionHandler;Landroid/view/WindowManager;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public handleAccountLogin()V
    .locals 4

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onUnListenAccount(I)V

    iget v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetWater:I

    const/4 v2, -0x2

    if-eq v0, v2, :cond_4

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_0

    :cond_1
    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->updateWaterMarkerAccount()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->updateWaterMarkerAccount()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->updateWaterMarkerAccount()V

    nop

    :goto_0
    sget-boolean v0, Lmiui/os/Build;->IS_PRIVATE_BUILD:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetPermission:I

    if-eq v0, v2, :cond_7

    const/4 v2, -0x1

    if-eq v0, v2, :cond_6

    if-eq v0, v1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->createPermissionView()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->createPermissionView()V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->createPermissionView()V

    :cond_8
    :goto_1
    return-void
.end method

.method public handleAccountLogout()V
    .locals 3

    sget-boolean v0, Lmiui/os/Build;->IS_PRIVATE_BUILD:Z

    if-eqz v0, :cond_3

    sget-object v0, Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAccountLogout mRetPermission:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetPermission:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1}, Lmiui/view/MiuiSecurityPermissionHandler;->postVerificationResult(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mRetPermission:I

    const/4 v1, -0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    invoke-interface {v0, v2}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onListenAccount(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    invoke-interface {v0, v2}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onListenAccount(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    invoke-interface {v0, v2}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onListenAccount(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public handleWifiSettingFinish()V
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_PRIVATE_BUILD:Z

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/view/MiuiSecurityPermissionHandler;->TAG:Ljava/lang/String;

    const-string v1, "handleWifiSettingFinish!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;->onUnListenAccount(I)V

    invoke-virtual {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->createPermissionView()V

    :cond_0
    return-void
.end method

.method public mayBringUpPermissionView()V
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_PRIVATE_BUILD:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_PRIVATE_WATER_MARKER:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->doWaterMarker()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->doWaterMarker()V

    invoke-direct {p0}, Lmiui/view/MiuiSecurityPermissionHandler;->doPermissionView()V

    :cond_1
    :goto_0
    return-void
.end method

.method public registerPermissionViewCallback(Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;)V
    .locals 0

    iput-object p1, p0, Lmiui/view/MiuiSecurityPermissionHandler;->mPermissionViewCallback:Lmiui/view/MiuiSecurityPermissionHandler$PermissionViewCallback;

    return-void
.end method
