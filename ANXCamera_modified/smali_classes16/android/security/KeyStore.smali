.class public Landroid/security/KeyStore;
.super Ljava/lang/Object;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeyStore$CertificateChainPromise;,
        Landroid/security/KeyStore$KeyAttestationCallbackResult;,
        Landroid/security/KeyStore$KeystoreResultPromise;,
        Landroid/security/KeyStore$OperationPromise;,
        Landroid/security/KeyStore$ExportKeyPromise;,
        Landroid/security/KeyStore$KeyCharacteristicsPromise;,
        Landroid/security/KeyStore$KeyCharacteristicsCallbackResult;,
        Landroid/security/KeyStore$State;
    }
.end annotation


# static fields
.field public static final CANNOT_ATTEST_IDS:I = -0x42

.field public static final CONFIRMATIONUI_ABORTED:I = 0x2

.field public static final CONFIRMATIONUI_CANCELED:I = 0x1

.field public static final CONFIRMATIONUI_IGNORED:I = 0x4

.field public static final CONFIRMATIONUI_OK:I = 0x0

.field public static final CONFIRMATIONUI_OPERATION_PENDING:I = 0x3

.field public static final CONFIRMATIONUI_SYSTEM_ERROR:I = 0x5

.field public static final CONFIRMATIONUI_UIERROR:I = 0x10000

.field public static final CONFIRMATIONUI_UIERROR_MALFORMED_UTF8_ENCODING:I = 0x10003

.field public static final CONFIRMATIONUI_UIERROR_MESSAGE_TOO_LONG:I = 0x10002

.field public static final CONFIRMATIONUI_UIERROR_MISSING_GLYPH:I = 0x10001

.field public static final CONFIRMATIONUI_UNEXPECTED:I = 0x7

.field public static final CONFIRMATIONUI_UNIMPLEMENTED:I = 0x6

.field public static final FLAG_CRITICAL_TO_DEVICE_ENCRYPTION:I = 0x8

.field public static final FLAG_ENCRYPTED:I = 0x1

.field public static final FLAG_NONE:I = 0x0

.field public static final FLAG_SOFTWARE:I = 0x2

.field public static final FLAG_STRONGBOX:I = 0x10

.field public static final HARDWARE_TYPE_UNAVAILABLE:I = -0x44

.field public static final KEY_ALREADY_EXISTS:I = 0x10

.field public static final KEY_NOT_FOUND:I = 0x7

.field public static final KEY_PERMANENTLY_INVALIDATED:I = 0x11

.field public static final LOCKED:I = 0x2

.field public static final NO_ERROR:I = 0x1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final OP_AUTH_NEEDED:I = 0xf

.field public static final PERMISSION_DENIED:I = 0x6

.field public static final PROTOCOL_ERROR:I = 0x5

.field public static final SYSTEM_ERROR:I = 0x4

.field private static final TAG:Ljava/lang/String; = "KeyStore"

.field public static final UID_SELF:I = -0x1

.field public static final UNDEFINED_ACTION:I = 0x9

.field public static final UNINITIALIZED:I = 0x3

.field public static final VALUE_CORRUPTED:I = 0x8

.field public static final WRONG_PASSWORD:I = 0xa


# instance fields
.field private final mBinder:Landroid/security/keystore/IKeystoreService;

.field private final mContext:Landroid/content/Context;

.field private mError:I

.field private mToken:Landroid/os/IBinder;


# direct methods
.method private constructor <init>(Landroid/security/keystore/IKeystoreService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/security/KeyStore;->mError:I

    iput-object p1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-static {}, Landroid/security/KeyStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/security/KeyStore;->mContext:Landroid/content/Context;

    return-void
.end method

.method private generateKeyInternal(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object v1, p0

    new-instance v0, Landroid/security/KeyStore$KeyCharacteristicsPromise;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/security/KeyStore$KeyCharacteristicsPromise;-><init>(Landroid/security/KeyStore;Landroid/security/KeyStore$1;)V

    move-object v2, v0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    :try_start_0
    iget-object v0, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v2, v12}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v3, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    move-object v4, v2

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-interface/range {v3 .. v9}, Landroid/security/keystore/IKeystoreService;->generateKey(Landroid/security/keystore/IKeystoreKeyCharacteristicsCallback;Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BII)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v10, v0

    const-string v0, "KeyStore"

    const/4 v3, 0x1

    if-eq v10, v3, :cond_0

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "generateKeyInternal failed on request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    iget-object v0, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v2, v12}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v10

    :cond_0
    :try_start_2
    invoke-virtual {v2}, Landroid/security/KeyStore$KeyCharacteristicsPromise;->getFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/security/KeyStore$KeyCharacteristicsCallbackResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v5, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v5}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v5, v2, v12}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    nop

    invoke-virtual {v4}, Landroid/security/KeyStore$KeyCharacteristicsCallbackResult;->getKeystoreResponse()Landroid/security/keystore/KeystoreResponse;

    move-result-object v5

    invoke-virtual {v5}, Landroid/security/keystore/KeystoreResponse;->getErrorCode()I

    move-result v5

    if-eq v5, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateKeyInternal failed on response "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    invoke-virtual {v4}, Landroid/security/KeyStore$KeyCharacteristicsCallbackResult;->getKeyCharacteristics()Landroid/security/keymaster/KeyCharacteristics;

    move-result-object v6

    if-nez v6, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "generateKeyInternal got empty key cheractariestics "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    return v0

    :cond_2
    move-object/from16 v7, p6

    invoke-virtual {v7, v6}, Landroid/security/keymaster/KeyCharacteristics;->shallowCopyFrom(Landroid/security/keymaster/KeyCharacteristics;)V

    return v3

    :catchall_0
    move-exception v0

    move-object/from16 v7, p6

    iget-object v3, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v3}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v2, v12}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    throw v0
.end method

.method private getAlgorithmFromPKCS8([B)Ljava/lang/String;
    .locals 5

    :try_start_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lsun/security/x509/AlgorithmId;

    new-instance v4, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v4, v2}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;)V

    invoke-virtual {v3}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string/jumbo v2, "getAlgorithmFromPKCS8 Failed to parse key data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to obtain application Context from ActivityThread"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getFaceOnlySid()J
    .locals 5

    iget-object v0, p0, Landroid/security/KeyStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.biometrics.face"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    return-wide v2

    :cond_0
    iget-object v1, p0, Landroid/security/KeyStore;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/face/FaceManager;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/face/FaceManager;

    if-nez v1, :cond_1

    return-wide v2

    :cond_1
    invoke-virtual {v1}, Landroid/hardware/face/FaceManager;->getAuthenticatorId()J

    move-result-wide v2

    return-wide v2
.end method

.method private getFingerprintOnlySid()J
    .locals 5

    iget-object v0, p0, Landroid/security/KeyStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    return-wide v2

    :cond_0
    iget-object v1, p0, Landroid/security/KeyStore;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v1, :cond_1

    return-wide v2

    :cond_1
    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->getAuthenticatorId()J

    move-result-wide v2

    return-wide v2
.end method

.method public static getInstance()Landroid/security/KeyStore;
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    nop

    const-string v0, "android.security.keystore"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/security/keystore/IKeystoreService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/keystore/IKeystoreService;

    move-result-object v0

    new-instance v1, Landroid/security/KeyStore;

    invoke-direct {v1, v0}, Landroid/security/KeyStore;-><init>(Landroid/security/keystore/IKeystoreService;)V

    return-object v1
.end method

.method public static getKeyStoreException(I)Landroid/security/KeyStoreException;
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    if-lez p0, :cond_9

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v0, 0x2

    if-eq p0, v0, :cond_7

    const/4 v0, 0x3

    if-eq p0, v0, :cond_6

    const/4 v0, 0x4

    if-eq p0, v0, :cond_5

    const/4 v0, 0x6

    if-eq p0, v0, :cond_4

    const/4 v0, 0x7

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8

    if-eq p0, v0, :cond_2

    const/16 v0, 0xf

    if-eq p0, v0, :cond_1

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    new-instance v0, Landroid/security/KeyStoreException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key permanently invalidated"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Operation requires authorization"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_2
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key blob corrupted"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_3
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key not found"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_4
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Permission denied"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_5
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "System error"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_6
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Keystore not initialized"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_7
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "User authentication required"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_8
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "OK"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_9
    const/16 v0, -0x10

    if-eq p0, v0, :cond_a

    new-instance v0, Landroid/security/KeyStoreException;

    invoke-static {p0}, Landroid/security/keymaster/KeymasterDefs;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_a
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Invalid user authentication validity duration"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method private declared-synchronized getToken()Landroid/os/IBinder;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/security/KeyStore;->mToken:Landroid/os/IBinder;

    :cond_0
    iget-object v0, p0, Landroid/security/KeyStore;->mToken:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private importKeyInternal(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object v1, p0

    new-instance v0, Landroid/security/KeyStore$KeyCharacteristicsPromise;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/security/KeyStore$KeyCharacteristicsPromise;-><init>(Landroid/security/KeyStore;Landroid/security/KeyStore$1;)V

    move-object v2, v0

    iget-object v0, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v11, 0x0

    invoke-interface {v0, v2, v11}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    :try_start_0
    iget-object v3, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    move-object v4, v2

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-interface/range {v3 .. v10}, Landroid/security/keystore/IKeystoreService;->importKey(Landroid/security/keystore/IKeystoreKeyCharacteristicsCallback;Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BII)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    iget-object v3, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v3}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v2, v11}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/security/KeyStore$KeyCharacteristicsPromise;->getFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/security/KeyStore$KeyCharacteristicsCallbackResult;

    invoke-virtual {v4}, Landroid/security/KeyStore$KeyCharacteristicsCallbackResult;->getKeystoreResponse()Landroid/security/keystore/KeystoreResponse;

    move-result-object v5

    invoke-virtual {v5}, Landroid/security/keystore/KeystoreResponse;->getErrorCode()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v0, v5

    if-eq v0, v3, :cond_1

    iget-object v3, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v3}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v2, v11}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v0

    :cond_1
    :try_start_2
    invoke-virtual {v4}, Landroid/security/KeyStore$KeyCharacteristicsCallbackResult;->getKeyCharacteristics()Landroid/security/keymaster/KeyCharacteristics;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v5, :cond_2

    const/4 v3, 0x4

    iget-object v6, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v6}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {v6, v2, v11}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v3

    :cond_2
    move-object/from16 v6, p7

    :try_start_3
    invoke-virtual {v6, v5}, Landroid/security/keymaster/KeyCharacteristics;->shallowCopyFrom(Landroid/security/keymaster/KeyCharacteristics;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    iget-object v7, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v7}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-interface {v7, v2, v11}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v3

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v6, p7

    :goto_0
    iget-object v3, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v3}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v2, v11}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    throw v0
.end method

.method private importWrappedKeyInternal(Ljava/lang/String;[BLjava/lang/String;[BLandroid/security/keymaster/KeymasterArguments;JJLandroid/security/keymaster/KeyCharacteristics;)I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object v1, p0

    new-instance v0, Landroid/security/KeyStore$KeyCharacteristicsPromise;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/security/KeyStore$KeyCharacteristicsPromise;-><init>(Landroid/security/KeyStore;Landroid/security/KeyStore$1;)V

    move-object v2, v0

    iget-object v0, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v14, 0x0

    invoke-interface {v0, v2, v14}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    :try_start_0
    iget-object v3, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    move-object v4, v2

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    invoke-interface/range {v3 .. v13}, Landroid/security/keystore/IKeystoreService;->importWrappedKey(Landroid/security/keystore/IKeystoreKeyCharacteristicsCallback;Ljava/lang/String;[BLjava/lang/String;[BLandroid/security/keymaster/KeymasterArguments;JJ)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    iget-object v3, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v3}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v2, v14}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/security/KeyStore$KeyCharacteristicsPromise;->getFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/security/KeyStore$KeyCharacteristicsCallbackResult;

    invoke-virtual {v4}, Landroid/security/KeyStore$KeyCharacteristicsCallbackResult;->getKeystoreResponse()Landroid/security/keystore/KeystoreResponse;

    move-result-object v5

    invoke-virtual {v5}, Landroid/security/keystore/KeystoreResponse;->getErrorCode()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v0, v5

    if-eq v0, v3, :cond_1

    iget-object v3, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v3}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v2, v14}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v0

    :cond_1
    :try_start_2
    invoke-virtual {v4}, Landroid/security/KeyStore$KeyCharacteristicsCallbackResult;->getKeyCharacteristics()Landroid/security/keymaster/KeyCharacteristics;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v5, :cond_2

    const/4 v3, 0x4

    iget-object v6, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v6}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {v6, v2, v14}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v3

    :cond_2
    move-object/from16 v6, p10

    :try_start_3
    invoke-virtual {v6, v5}, Landroid/security/keymaster/KeyCharacteristics;->shallowCopyFrom(Landroid/security/keymaster/KeyCharacteristics;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    iget-object v7, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v7}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-interface {v7, v2, v14}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v3

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v6, p10

    :goto_0
    iget-object v3, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v3}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v2, v14}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    throw v0
.end method

.method private makeLegacyArguments(Ljava/lang/String;)Landroid/security/keymaster/KeymasterArguments;
    .locals 9

    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    nop

    invoke-static {p1}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterAsymmetricKeyAlgorithm(Ljava/lang/String;)I

    move-result v1

    const v2, 0x10000002

    invoke-virtual {v0, v2, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    const/4 v1, 0x2

    const v2, 0x20000001

    invoke-virtual {v0, v2, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v5}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    const v2, 0x20000006

    invoke-virtual {v0, v2, v5}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    const-string v6, "RSA"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x5

    const/4 v8, 0x4

    if-eqz v6, :cond_0

    invoke-virtual {v0, v2, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    invoke-virtual {v0, v2, v8}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    invoke-virtual {v0, v2, v7}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    invoke-virtual {v0, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    :cond_0
    const v2, 0x20000005

    invoke-virtual {v0, v2, v4}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    invoke-virtual {v0, v2, v5}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    invoke-virtual {v0, v2, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    invoke-virtual {v0, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    invoke-virtual {v0, v2, v8}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    invoke-virtual {v0, v2, v7}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    const/4 v1, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    const v1, 0x700001f7

    invoke-virtual {v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    const v1, 0x60000191

    new-instance v2, Ljava/util/Date;

    const-wide v3, 0x7fffffffffffffffL

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Landroid/security/keymaster/KeymasterArguments;->addDate(ILjava/util/Date;)V

    const v1, 0x60000192

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Landroid/security/keymaster/KeymasterArguments;->addDate(ILjava/util/Date;)V

    const v1, 0x60000190

    new-instance v2, Ljava/util/Date;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Landroid/security/keymaster/KeymasterArguments;->addDate(ILjava/util/Date;)V

    return-object v0
.end method


# virtual methods
.method public abort(Landroid/os/IBinder;)I
    .locals 6

    const-string v0, "KeyStore"

    new-instance v1, Landroid/security/KeyStore$KeystoreResultPromise;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/security/KeyStore$KeystoreResultPromise;-><init>(Landroid/security/KeyStore;Landroid/security/KeyStore$1;)V

    const/4 v2, 0x4

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v4}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v4, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v4, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v4, v1, p1}, Landroid/security/keystore/IKeystoreService;->abort(Landroid/security/keystore/IKeystoreResponseCallback;Landroid/os/IBinder;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {v1}, Landroid/security/KeyStore$KeystoreResultPromise;->getFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/security/keystore/KeystoreResponse;

    invoke-virtual {v5}, Landroid/security/keystore/KeystoreResponse;->getErrorCode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v2}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v0

    :cond_0
    nop

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v4

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_1
    const-string v5, "Abort completed with exception"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v2

    :catch_1
    move-exception v4

    :try_start_2
    const-string v5, "Cannot connect to keystore"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v2

    :goto_0
    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v2}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    throw v0
.end method

.method public addAuthToken([B)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0, p1}, Landroid/security/keystore/IKeystoreService;->addAuthToken([B)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x4

    return v1
.end method

.method public addRngEntropy([BI)Z
    .locals 6

    const-string v0, "KeyStore"

    new-instance v1, Landroid/security/KeyStore$KeystoreResultPromise;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/security/KeyStore$KeystoreResultPromise;-><init>(Landroid/security/KeyStore;Landroid/security/KeyStore$1;)V

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v3}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v3, v1, p1, p2}, Landroid/security/keystore/IKeystoreService;->addRngEntropy(Landroid/security/keystore/IKeystoreResponseCallback;[BI)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-virtual {v1}, Landroid/security/KeyStore$KeystoreResultPromise;->getFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/security/keystore/KeystoreResponse;

    invoke-virtual {v5}, Landroid/security/keystore/KeystoreResponse;->getErrorCode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v4

    :cond_1
    nop

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "AddRngEntropy completed with exception"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v2

    :catch_1
    move-exception v3

    :try_start_2
    const-string v4, "Cannot connect to keystore"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v2

    :goto_1
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v3}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    throw v0
.end method

.method public attestDeviceIds(Landroid/security/keymaster/KeymasterArguments;Landroid/security/keymaster/KeymasterCertificateChain;)I
    .locals 8

    const-string v0, "KeyStore"

    new-instance v1, Landroid/security/KeyStore$CertificateChainPromise;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/security/KeyStore$CertificateChainPromise;-><init>(Landroid/security/KeyStore;Landroid/security/KeyStore$1;)V

    const/4 v2, 0x4

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v4}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v4, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    if-nez p1, :cond_0

    new-instance v4, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v4}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    move-object p1, v4

    :cond_0
    if-nez p2, :cond_1

    new-instance v4, Landroid/security/keymaster/KeymasterCertificateChain;

    invoke-direct {v4}, Landroid/security/keymaster/KeymasterCertificateChain;-><init>()V

    move-object p2, v4

    :cond_1
    iget-object v4, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v4, v1, p1}, Landroid/security/keystore/IKeystoreService;->attestDeviceIds(Landroid/security/keystore/IKeystoreCertificateChainCallback;Landroid/security/keymaster/KeymasterArguments;)I

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v4

    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/security/KeyStore$CertificateChainPromise;->getFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/security/KeyStore$KeyAttestationCallbackResult;

    invoke-virtual {v6}, Landroid/security/KeyStore$KeyAttestationCallbackResult;->getKeystoreResponse()Landroid/security/keystore/KeystoreResponse;

    move-result-object v7

    invoke-virtual {v7}, Landroid/security/keystore/KeystoreResponse;->getErrorCode()I

    move-result v7

    move v4, v7

    if-ne v4, v5, :cond_3

    invoke-virtual {v6}, Landroid/security/KeyStore$KeyAttestationCallbackResult;->getCertificateChain()Landroid/security/keymaster/KeymasterCertificateChain;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/security/keymaster/KeymasterCertificateChain;->shallowCopyFrom(Landroid/security/keymaster/KeymasterCertificateChain;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    nop

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v4

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "AttestDevicdeIds completed with exception"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v2

    :catch_1
    move-exception v4

    :try_start_3
    const-string v5, "Cannot connect to keystore"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v2

    :goto_0
    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v2}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    throw v0
.end method

.method public attestKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;Landroid/security/keymaster/KeymasterCertificateChain;)I
    .locals 8

    const-string v0, "KeyStore"

    new-instance v1, Landroid/security/KeyStore$CertificateChainPromise;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/security/KeyStore$CertificateChainPromise;-><init>(Landroid/security/KeyStore;Landroid/security/KeyStore$1;)V

    const/4 v2, 0x4

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v4}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v4, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    if-nez p2, :cond_0

    new-instance v4, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v4}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    move-object p2, v4

    :cond_0
    if-nez p3, :cond_1

    new-instance v4, Landroid/security/keymaster/KeymasterCertificateChain;

    invoke-direct {v4}, Landroid/security/keymaster/KeymasterCertificateChain;-><init>()V

    move-object p3, v4

    :cond_1
    iget-object v4, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v4, v1, p1, p2}, Landroid/security/keystore/IKeystoreService;->attestKey(Landroid/security/keystore/IKeystoreCertificateChainCallback;Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;)I

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v4

    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/security/KeyStore$CertificateChainPromise;->getFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/security/KeyStore$KeyAttestationCallbackResult;

    invoke-virtual {v6}, Landroid/security/KeyStore$KeyAttestationCallbackResult;->getKeystoreResponse()Landroid/security/keystore/KeystoreResponse;

    move-result-object v7

    invoke-virtual {v7}, Landroid/security/keystore/KeystoreResponse;->getErrorCode()I

    move-result v7

    move v4, v7

    if-ne v4, v5, :cond_3

    invoke-virtual {v6}, Landroid/security/KeyStore$KeyAttestationCallbackResult;->getCertificateChain()Landroid/security/keymaster/KeymasterCertificateChain;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/security/keymaster/KeymasterCertificateChain;->shallowCopyFrom(Landroid/security/keymaster/KeymasterCertificateChain;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    nop

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v4

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "AttestKey completed with exception"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v2

    :catch_1
    move-exception v4

    :try_start_3
    const-string v5, "Cannot connect to keystore"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v2

    :goto_0
    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v2}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    throw v0
.end method

.method public begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
    .locals 8

    if-eqz p5, :cond_0

    move-object v6, p5

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    move-object v6, v0

    :goto_0
    if-eqz p4, :cond_1

    move-object v5, p4

    goto :goto_1

    :cond_1
    new-instance p5, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {p5}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    move-object v5, p5

    :goto_1
    const/4 v7, -0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Landroid/security/KeyStore;->begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[BI)Landroid/security/keymaster/OperationResult;

    move-result-object p4

    return-object p4
.end method

.method public begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[BI)Landroid/security/keymaster/OperationResult;
    .locals 15

    move-object v1, p0

    const-string v2, "KeyStore"

    new-instance v0, Landroid/security/KeyStore$OperationPromise;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Landroid/security/KeyStore$OperationPromise;-><init>(Landroid/security/KeyStore;Landroid/security/KeyStore$1;)V

    move-object v13, v0

    const/4 v14, 0x0

    :try_start_0
    iget-object v0, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v13, v14}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    if-eqz p4, :cond_0

    move-object/from16 v10, p4

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v10, v0

    :goto_0
    if-eqz p5, :cond_1

    move-object/from16 v11, p5

    goto :goto_1

    :cond_1
    :try_start_1
    new-array v0, v14, [B
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v11, v0

    :goto_1
    :try_start_2
    iget-object v4, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-direct {p0}, Landroid/security/KeyStore;->getToken()Landroid/os/IBinder;

    move-result-object v6

    move-object v5, v13

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v12, p6

    invoke-interface/range {v4 .. v12}, Landroid/security/keystore/IKeystoreService;->begin(Landroid/security/keystore/IKeystoreOperationResultCallback;Landroid/os/IBinder;Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[BI)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    invoke-virtual {v13}, Landroid/security/KeyStore$OperationPromise;->getFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/security/keymaster/OperationResult;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v2, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v2}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v13, v14}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-object v4

    :cond_2
    :try_start_3
    new-instance v4, Landroid/security/keymaster/OperationResult;

    invoke-direct {v4, v0}, Landroid/security/keymaster/OperationResult;-><init>(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iget-object v2, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v2}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v13, v14}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-object v4

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 v11, p5

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v11, p5

    goto :goto_2

    :catch_3
    move-exception v0

    move-object/from16 v11, p5

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    goto :goto_4

    :catch_4
    move-exception v0

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    :goto_2
    :try_start_4
    const-string v4, "Begin completed with exception"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    nop

    iget-object v2, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v2}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v13, v14}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-object v3

    :catch_5
    move-exception v0

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    :goto_3
    :try_start_5
    const-string v4, "Cannot connect to keystore"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    nop

    iget-object v2, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v2}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v13, v14}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-object v3

    :catchall_2
    move-exception v0

    :goto_4
    iget-object v2, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v2}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v13, v14}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    throw v0
.end method

.method public cancelConfirmationPrompt(Landroid/os/IBinder;)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0, p1}, Landroid/security/keystore/IKeystoreService;->cancelConfirmationPrompt(Landroid/os/IBinder;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x5

    return v1
.end method

.method public clearUid(I)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    int-to-long v2, p1

    invoke-interface {v1, v2, v3}, Landroid/security/keystore/IKeystoreService;->clear_uid(J)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/keystore/IKeystoreService;->exist(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public delete(Ljava/lang/String;I)Z
    .locals 3

    invoke-virtual {p0, p1, p2}, Landroid/security/KeyStore;->delete2(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method delete2(Ljava/lang/String;I)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0, p1, p2}, Landroid/security/keystore/IKeystoreService;->del(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x4

    return v1
.end method

.method public exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;)Landroid/security/keymaster/ExportResult;
    .locals 6

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/security/KeyStore;->exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;I)Landroid/security/keymaster/ExportResult;

    move-result-object v0

    return-object v0
.end method

.method public exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;I)Landroid/security/keymaster/ExportResult;
    .locals 13

    move-object v1, p0

    const-string v2, "KeyStore"

    new-instance v0, Landroid/security/KeyStore$ExportKeyPromise;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Landroid/security/KeyStore$ExportKeyPromise;-><init>(Landroid/security/KeyStore;Landroid/security/KeyStore$1;)V

    move-object v11, v0

    const/4 v12, 0x0

    :try_start_0
    iget-object v0, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v11, v12}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    if-eqz p3, :cond_0

    move-object/from16 v8, p3

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/security/keymaster/KeymasterBlob;

    new-array v4, v12, [B

    invoke-direct {v0, v4}, Landroid/security/keymaster/KeymasterBlob;-><init>([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v8, v0

    :goto_0
    if-eqz p4, :cond_1

    move-object/from16 v9, p4

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance v0, Landroid/security/keymaster/KeymasterBlob;

    new-array v4, v12, [B

    invoke-direct {v0, v4}, Landroid/security/keymaster/KeymasterBlob;-><init>([B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, v0

    :goto_1
    :try_start_2
    iget-object v4, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    move-object v5, v11

    move-object v6, p1

    move v7, p2

    move/from16 v10, p5

    invoke-interface/range {v4 .. v10}, Landroid/security/keystore/IKeystoreService;->exportKey(Landroid/security/keystore/IKeystoreExportKeyCallback;Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;I)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    invoke-virtual {v11}, Landroid/security/KeyStore$ExportKeyPromise;->getFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/security/keymaster/ExportResult;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v2, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v2}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v11, v12}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-object v4

    :cond_2
    :try_start_3
    new-instance v4, Landroid/security/keymaster/ExportResult;

    invoke-direct {v4, v0}, Landroid/security/keymaster/ExportResult;-><init>(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iget-object v2, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v2}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v11, v12}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-object v4

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 v9, p4

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v9, p4

    goto :goto_2

    :catch_3
    move-exception v0

    move-object/from16 v9, p4

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    goto :goto_4

    :catch_4
    move-exception v0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    :goto_2
    :try_start_4
    const-string v4, "ExportKey completed with exception"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    nop

    iget-object v2, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v2}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v11, v12}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-object v3

    :catch_5
    move-exception v0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    :goto_3
    :try_start_5
    const-string v4, "Cannot connect to keystore"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    nop

    iget-object v2, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v2}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v11, v12}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-object v3

    :catchall_2
    move-exception v0

    :goto_4
    iget-object v2, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v2}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v11, v12}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    throw v0
.end method

.method public finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/security/KeyStore;->finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)Landroid/security/keymaster/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)Landroid/security/keymaster/OperationResult;
    .locals 10

    const-string v0, "KeyStore"

    new-instance v1, Landroid/security/KeyStore$OperationPromise;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/security/KeyStore$OperationPromise;-><init>(Landroid/security/KeyStore;Landroid/security/KeyStore$1;)V

    const/4 v9, 0x0

    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v3}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v1, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    if-eqz p2, :cond_0

    move-object v6, p2

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v3}, Landroid/security/keymaster/KeymasterArguments;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v6, v3

    :goto_0
    if-eqz p4, :cond_1

    move-object v8, p4

    goto :goto_1

    :cond_1
    :try_start_1
    new-array p2, v9, [B
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v8, p2

    :goto_1
    if-eqz p3, :cond_2

    move-object v7, p3

    goto :goto_2

    :cond_2
    :try_start_2
    new-array p2, v9, [B
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v7, p2

    :goto_2
    :try_start_3
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    move-object v4, v1

    move-object v5, p1

    invoke-interface/range {v3 .. v8}, Landroid/security/keystore/IKeystoreService;->finish(Landroid/security/keystore/IKeystoreOperationResultCallback;Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_3

    invoke-virtual {v1}, Landroid/security/KeyStore$OperationPromise;->getFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/security/keymaster/OperationResult;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object p4, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {p4}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-interface {p4, v1, v9}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-object p3

    :cond_3
    :try_start_4
    new-instance p3, Landroid/security/keymaster/OperationResult;

    invoke-direct {p3, p2}, Landroid/security/keymaster/OperationResult;-><init>(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object p4, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {p4}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-interface {p4, v1, v9}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-object p3

    :catchall_0
    move-exception p2

    move-object p3, v7

    move-object p4, v8

    goto :goto_5

    :catch_0
    move-exception p2

    move-object p3, v7

    move-object p4, v8

    goto :goto_3

    :catch_1
    move-exception p2

    move-object p3, v7

    move-object p4, v8

    goto :goto_4

    :catchall_1
    move-exception p2

    move-object p4, v8

    goto :goto_5

    :catch_2
    move-exception p2

    move-object p4, v8

    goto :goto_3

    :catch_3
    move-exception p2

    move-object p4, v8

    goto :goto_4

    :catch_4
    move-exception p2

    goto :goto_3

    :catch_5
    move-exception p2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v6, p2

    move-object p2, v0

    goto :goto_5

    :catch_6
    move-exception v3

    move-object v6, p2

    move-object p2, v3

    :goto_3
    :try_start_5
    const-string v3, "Finish completed with exception"

    invoke-static {v0, v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    nop

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v9}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-object v2

    :catch_7
    move-exception v3

    move-object v6, p2

    move-object p2, v3

    :goto_4
    :try_start_6
    const-string v3, "Cannot connect to keystore"

    invoke-static {v0, v3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    nop

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v9}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-object v2

    :catchall_3
    move-exception p2

    :goto_5
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v9}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    throw p2
.end method

.method public generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 16

    const/4 v1, 0x4

    const-string v2, "KeyStore"

    if-eqz p3, :cond_0

    move-object/from16 v6, p3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_8

    move-object v6, v0

    :goto_0
    if-eqz p2, :cond_1

    move-object/from16 v5, p2

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_6

    move-object v5, v0

    :goto_1
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    :try_start_2
    invoke-direct/range {v3 .. v9}, Landroid/security/KeyStore;->generateKeyInternal(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4

    const/16 v3, 0x10

    if-ne v0, v3, :cond_2

    move-object/from16 v3, p0

    :try_start_3
    iget-object v4, v3, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v14, p1

    move/from16 v15, p4

    :try_start_4
    invoke-interface {v4, v14, v15}, Landroid/security/keystore/IKeystoreService;->del(Ljava/lang/String;I)I

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object v9, v5

    move-object v10, v6

    move/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p6

    invoke-direct/range {v7 .. v13}, Landroid/security/KeyStore;->generateKeyInternal(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    move v0, v1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_4

    :cond_2
    move-object/from16 v3, p0

    move-object/from16 v14, p1

    move/from16 v15, p4

    :goto_2
    return v0

    :catch_4
    move-exception v0

    move-object/from16 v3, p0

    :goto_3
    move-object/from16 v14, p1

    move/from16 v15, p4

    goto :goto_5

    :catch_5
    move-exception v0

    move-object/from16 v3, p0

    :goto_4
    move-object/from16 v14, p1

    move/from16 v15, p4

    goto :goto_6

    :catch_6
    move-exception v0

    move-object/from16 v3, p0

    move-object/from16 v14, p1

    move/from16 v15, p4

    move-object/from16 v5, p2

    goto :goto_5

    :catch_7
    move-exception v0

    move-object/from16 v3, p0

    move-object/from16 v14, p1

    move/from16 v15, p4

    move-object/from16 v5, p2

    goto :goto_6

    :catch_8
    move-exception v0

    move-object/from16 v3, p0

    move-object/from16 v14, p1

    move/from16 v15, p4

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    :goto_5
    const-string/jumbo v4, "generateKey completed with exception"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :catch_9
    move-exception v0

    move-object/from16 v3, p0

    move-object/from16 v14, p1

    move/from16 v15, p4

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    :goto_6
    const-string v4, "Cannot connect to keystore"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 7

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/security/KeyStore;->generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;)[B
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;I)[B
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/security/KeyStore;->get(Ljava/lang/String;IZ)[B

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;IZ)[B
    .locals 5

    const/4 v0, 0x0

    const-string v1, "KeyStore"

    if-eqz p1, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v2, ""

    :goto_0
    move-object p1, v2

    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v2, p1, p2}, Landroid/security/keystore/IKeystoreService;->get(Ljava/lang/String;I)[B

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    if-eqz p3, :cond_1

    iget v3, v2, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_2

    :cond_1
    const-string v3, "KeyStore exception"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v0

    :catch_1
    move-exception v2

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public get(Ljava/lang/String;Z)[B
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/security/KeyStore;->get(Ljava/lang/String;IZ)[B

    move-result-object v0

    return-object v0
.end method

.method public getInvalidKeyException(Ljava/lang/String;II)Ljava/security/InvalidKeyException;
    .locals 1

    invoke-static {p3}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/security/KeyStore;->getInvalidKeyException(Ljava/lang/String;ILandroid/security/KeyStoreException;)Ljava/security/InvalidKeyException;

    move-result-object v0

    return-object v0
.end method

.method public getInvalidKeyException(Ljava/lang/String;ILandroid/security/KeyStoreException;)Ljava/security/InvalidKeyException;
    .locals 11

    invoke-virtual {p3}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Keystore operation failed"

    invoke-direct {v0, v1, p3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :pswitch_0
    new-instance v0, Landroid/security/keystore/KeyNotYetValidException;

    invoke-direct {v0}, Landroid/security/keystore/KeyNotYetValidException;-><init>()V

    return-object v0

    :pswitch_1
    new-instance v0, Landroid/security/keystore/KeyExpiredException;

    invoke-direct {v0}, Landroid/security/keystore/KeyExpiredException;-><init>()V

    return-object v0

    :cond_0
    :pswitch_2
    new-instance v0, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v0}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-static {v1}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v3

    const-string v4, "Failed to obtained key characteristics"

    invoke-direct {v2, v4, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :cond_1
    const v2, -0x5ffffe0a

    invoke-virtual {v0, v2}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedLongs(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Landroid/security/keystore/KeyPermanentlyInvalidatedException;

    invoke-direct {v3}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;-><init>()V

    return-object v3

    :cond_2
    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_3

    invoke-static {v3, v4}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v5, Landroid/security/keystore/UserNotAuthenticatedException;

    invoke-direct {v5}, Landroid/security/keystore/UserNotAuthenticatedException;-><init>()V

    return-object v5

    :cond_3
    invoke-direct {p0}, Landroid/security/KeyStore;->getFingerprintOnlySid()J

    move-result-wide v7

    cmp-long v9, v7, v5

    if-eqz v9, :cond_4

    invoke-static {v7, v8}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    new-instance v5, Landroid/security/keystore/UserNotAuthenticatedException;

    invoke-direct {v5}, Landroid/security/keystore/UserNotAuthenticatedException;-><init>()V

    return-object v5

    :cond_4
    invoke-direct {p0}, Landroid/security/KeyStore;->getFaceOnlySid()J

    move-result-wide v9

    cmp-long v5, v9, v5

    if-eqz v5, :cond_5

    invoke-static {v9, v10}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Landroid/security/keystore/UserNotAuthenticatedException;

    invoke-direct {v5}, Landroid/security/keystore/UserNotAuthenticatedException;-><init>()V

    return-object v5

    :cond_5
    new-instance v5, Landroid/security/keystore/KeyPermanentlyInvalidatedException;

    invoke-direct {v5}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;-><init>()V

    return-object v5

    :cond_6
    new-instance v0, Landroid/security/keystore/KeyPermanentlyInvalidatedException;

    invoke-direct {v0}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;-><init>()V

    return-object v0

    :cond_7
    new-instance v0, Landroid/security/keystore/UserNotAuthenticatedException;

    invoke-direct {v0}, Landroid/security/keystore/UserNotAuthenticatedException;-><init>()V

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 10

    const-string v0, "KeyStore"

    new-instance v1, Landroid/security/KeyStore$KeyCharacteristicsPromise;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/security/KeyStore$KeyCharacteristicsPromise;-><init>(Landroid/security/KeyStore;Landroid/security/KeyStore$1;)V

    const/4 v2, 0x4

    const/4 v9, 0x0

    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v3}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v1, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    if-eqz p2, :cond_0

    move-object v6, p2

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/security/keymaster/KeymasterBlob;

    new-array v4, v9, [B

    invoke-direct {v3, v4}, Landroid/security/keymaster/KeymasterBlob;-><init>([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v6, v3

    :goto_0
    if-eqz p3, :cond_1

    move-object v7, p3

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance p2, Landroid/security/keymaster/KeymasterBlob;

    new-array v3, v9, [B

    invoke-direct {p2, v3}, Landroid/security/keymaster/KeymasterBlob;-><init>([B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v7, p2

    :goto_1
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    move-object v4, v1

    move-object v5, p1

    move v8, p4

    invoke-interface/range {v3 .. v8}, Landroid/security/keystore/IKeystoreService;->getKeyCharacteristics(Landroid/security/keystore/IKeystoreKeyCharacteristicsCallback;Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;I)I

    move-result p2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p3, 0x1

    if-eq p2, p3, :cond_2

    iget-object p3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {p3}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-interface {p3, v1, v9}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return p2

    :cond_2
    :try_start_3
    invoke-virtual {v1}, Landroid/security/KeyStore$KeyCharacteristicsPromise;->getFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/security/KeyStore$KeyCharacteristicsCallbackResult;

    invoke-virtual {v3}, Landroid/security/KeyStore$KeyCharacteristicsCallbackResult;->getKeystoreResponse()Landroid/security/keystore/KeystoreResponse;

    move-result-object v4

    invoke-virtual {v4}, Landroid/security/keystore/KeystoreResponse;->getErrorCode()I

    move-result v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move p2, v4

    if-eq p2, p3, :cond_3

    iget-object p3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {p3}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-interface {p3, v1, v9}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return p2

    :cond_3
    :try_start_4
    invoke-virtual {v3}, Landroid/security/KeyStore$KeyCharacteristicsCallbackResult;->getKeyCharacteristics()Landroid/security/keymaster/KeyCharacteristics;

    move-result-object v4
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v4, :cond_4

    iget-object p3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {p3}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-interface {p3, v1, v9}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v2

    :cond_4
    :try_start_5
    invoke-virtual {p5, v4}, Landroid/security/keymaster/KeyCharacteristics;->shallowCopyFrom(Landroid/security/keymaster/KeyCharacteristics;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    nop

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v9}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return p3

    :catchall_0
    move-exception p2

    move-object p3, v7

    goto :goto_4

    :catch_0
    move-exception p2

    move-object p3, v7

    goto :goto_2

    :catch_1
    move-exception p2

    move-object p3, v7

    goto :goto_3

    :catch_2
    move-exception p2

    goto :goto_2

    :catch_3
    move-exception p2

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v6, p2

    move-object p2, v0

    goto :goto_4

    :catch_4
    move-exception v3

    move-object v6, p2

    move-object p2, v3

    :goto_2
    :try_start_6
    const-string v3, "GetKeyCharacteristics completed with exception"

    invoke-static {v0, v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    nop

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v9}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v2

    :catch_5
    move-exception v3

    move-object v6, p2

    move-object p2, v3

    :goto_3
    :try_start_7
    const-string v3, "Cannot connect to keystore"

    invoke-static {v0, v3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    nop

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v9}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v2

    :catchall_2
    move-exception p2

    :goto_4
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v9}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    throw p2
.end method

.method public getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeyCharacteristics;)I
    .locals 6

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0

    return v0
.end method

.method public getLastError()I
    .locals 1

    iget v0, p0, Landroid/security/KeyStore;->mError:I

    return v0
.end method

.method public getmtime(Ljava/lang/String;)J
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->getmtime(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getmtime(Ljava/lang/String;I)J
    .locals 5

    const-wide/16 v0, -0x1

    :try_start_0
    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v2, p1, p2}, Landroid/security/keystore/IKeystoreService;->getmtime(Ljava/lang/String;I)J

    move-result-wide v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0

    :catch_0
    move-exception v2

    const-string v3, "KeyStore"

    const-string v4, "Cannot connect to keystore"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v0
.end method

.method public grant(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/keystore/IKeystoreService;->grant(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 4

    const-string v0, "KeyStore"

    const/4 v1, 0x4

    :try_start_0
    invoke-direct/range {p0 .. p7}, Landroid/security/KeyStore;->importKeyInternal(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v3, p1, p5}, Landroid/security/keystore/IKeystoreService;->del(Ljava/lang/String;I)I

    invoke-direct/range {p0 .. p7}, Landroid/security/KeyStore;->importKeyInternal(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    :cond_0
    return v2

    :catch_0
    move-exception v2

    const-string v3, "ImportKey completed with exception"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :catch_1
    move-exception v2

    const-string v3, "Cannot connect to keystore"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 8

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0

    return v0
.end method

.method public importKey(Ljava/lang/String;[BII)Z
    .locals 11

    invoke-direct {p0, p2}, Landroid/security/KeyStore;->getAlgorithmFromPKCS8([B)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, v0}, Landroid/security/KeyStore;->makeLegacyArguments(Ljava/lang/String;)Landroid/security/keymaster/KeymasterArguments;

    move-result-object v10

    new-instance v9, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v9}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    const/4 v5, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, v10

    move-object v6, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v2 .. v9}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    new-instance v3, Landroid/security/KeyStoreException;

    const-string/jumbo v4, "legacy key import failed"

    invoke-direct {v3, v2, v4}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyStore"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    return v3
.end method

.method public importWrappedKey(Ljava/lang/String;[BLjava/lang/String;[BLandroid/security/keymaster/KeymasterArguments;JJILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 16

    const-string v1, "KeyStore"

    const/4 v2, 0x4

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    move-object/from16 v13, p11

    :try_start_0
    invoke-direct/range {v3 .. v13}, Landroid/security/KeyStore;->importWrappedKeyInternal(Ljava/lang/String;[BLjava/lang/String;[BLandroid/security/keymaster/KeymasterArguments;JJLandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4

    const/16 v3, 0x10

    if-ne v0, v3, :cond_0

    move-object/from16 v3, p0

    :try_start_1
    iget-object v4, v3, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v5, -0x1

    move-object/from16 v15, p1

    :try_start_2
    invoke-interface {v4, v15, v5}, Landroid/security/keystore/IKeystoreService;->del(Ljava/lang/String;I)I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-object/from16 v14, p11

    invoke-direct/range {v4 .. v14}, Landroid/security/KeyStore;->importWrappedKeyInternal(Ljava/lang/String;[BLjava/lang/String;[BLandroid/security/keymaster/KeymasterArguments;JJLandroid/security/keymaster/KeyCharacteristics;)I

    move-result v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_3

    :cond_0
    move-object/from16 v3, p0

    move-object/from16 v15, p1

    :goto_0
    return v0

    :catch_4
    move-exception v0

    move-object/from16 v3, p0

    :goto_1
    move-object/from16 v15, p1

    :goto_2
    const-string v4, "ImportWrappedKey completed with exception"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :catch_5
    move-exception v0

    move-object/from16 v3, p0

    :goto_3
    move-object/from16 v15, p1

    :goto_4
    const-string v4, "Cannot connect to keystore"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public insert(Ljava/lang/String;[BII)I
    .locals 3

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [B

    move-object p2, v0

    :cond_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/security/keystore/IKeystoreService;->insert(Ljava/lang/String;[BII)I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v1, p1, p3}, Landroid/security/keystore/IKeystoreService;->del(Ljava/lang/String;I)I

    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/security/keystore/IKeystoreService;->insert(Ljava/lang/String;[BII)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :cond_1
    return v0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x4

    return v1
.end method

.method public isConfirmationPromptSupported()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->isConfirmationPromptSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public isEmpty()Z
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
        trackingBug = 0x6e40dbfL
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->isEmpty(I)Z

    move-result v0

    return v0
.end method

.method public isEmpty(I)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v1, p1}, Landroid/security/keystore/IKeystoreService;->isEmpty(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public isHardwareBacked()Z
    .locals 1

    const-string v0, "RSA"

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->isHardwareBacked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isHardwareBacked(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/security/keystore/IKeystoreService;->is_hardware_backed(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public isUnlocked()Z
    .locals 2

    invoke-virtual {p0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public list(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public list(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 4

    const-string v0, "KeyStore"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v2, p1, p2}, Landroid/security/keystore/IKeystoreService;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    const-string v3, "KeyStore exception"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :catch_1
    move-exception v2

    const-string v3, "Cannot connect to keystore"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public listUidsOfAuthBoundKeys()[I
    .locals 8
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const-string v0, "KeyStore"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v3, v1}, Landroid/security/keystore/IKeystoreService;->listUidsOfAuthBoundKeys(Ljava/util/List;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const-string/jumbo v5, "listUidsOfAuthBoundKeys failed with error code %d"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_0
    nop

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Landroid/security/-$$Lambda$wddj3-hVVrg0MkscpMtYt3BzY8Y;->INSTANCE:Landroid/security/-$$Lambda$wddj3-hVVrg0MkscpMtYt3BzY8Y;

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v3

    const-string v4, "KeyStore exception"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :catch_1
    move-exception v3

    const-string v4, "Cannot connect to keystore"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public lock()Z
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->lock(I)Z

    move-result v0

    return v0
.end method

.method public lock(I)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v1, p1}, Landroid/security/keystore/IKeystoreService;->lock(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public onDeviceOffBody()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->onDeviceOffBody()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onUserAdded(I)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->onUserAdded(II)V

    return-void
.end method

.method public onUserAdded(II)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0, p1, p2}, Landroid/security/keystore/IKeystoreService;->onUserAdded(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onUserPasswordChanged(ILjava/lang/String;)Z
    .locals 4

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/keystore/IKeystoreService;->onUserPasswordChanged(ILjava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move v0, v2

    :cond_1
    return v0

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public onUserPasswordChanged(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/security/KeyStore;->onUserPasswordChanged(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onUserRemoved(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0, p1}, Landroid/security/keystore/IKeystoreService;->onUserRemoved(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public presentConfirmationPrompt(Landroid/os/IBinder;Ljava/lang/String;[BLjava/lang/String;I)I
    .locals 6

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/security/keystore/IKeystoreService;->presentConfirmationPrompt(Landroid/os/IBinder;Ljava/lang/String;[BLjava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x5

    return v1
.end method

.method public put(Ljava/lang/String;[BII)Z
    .locals 2

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/security/KeyStore;->insert(Ljava/lang/String;[BII)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public reset()Z
    .locals 4
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
        trackingBug = 0x6e40dbfL
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v1}, Landroid/security/keystore/IKeystoreService;->reset()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public state()Landroid/security/KeyStore$State;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v0

    return-object v0
.end method

.method public state(I)Landroid/security/KeyStore$State;
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0, p1}, Landroid/security/keystore/IKeystoreService;->getState(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v1, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, p0, Landroid/security/KeyStore;->mError:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    :cond_1
    sget-object v1, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    return-object v1

    :cond_2
    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public ungrant(Ljava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/keystore/IKeystoreService;->ungrant(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public unlock(ILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, ""

    :goto_0
    move-object p2, v1

    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/keystore/IKeystoreService;->unlock(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/security/KeyStore;->mError:I

    iget v1, p0, Landroid/security/KeyStore;->mError:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move v0, v2

    :cond_1
    return v0

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public unlock(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/security/KeyStore;->unlock(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public update(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
    .locals 6

    const-string v0, "KeyStore"

    new-instance v1, Landroid/security/KeyStore$OperationPromise;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/security/KeyStore$OperationPromise;-><init>(Landroid/security/KeyStore;Landroid/security/KeyStore$1;)V

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v4}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v4, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    if-eqz p2, :cond_0

    move-object v4, p2

    goto :goto_0

    :cond_0
    new-instance v4, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v4}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    :goto_0
    move-object p2, v4

    if-eqz p3, :cond_1

    move-object v4, p3

    goto :goto_1

    :cond_1
    new-array v4, v3, [B

    :goto_1
    move-object p3, v4

    iget-object v4, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v4, v1, p1, p2, p3}, Landroid/security/keystore/IKeystoreService;->update(Landroid/security/keystore/IKeystoreOperationResultCallback;Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    invoke-virtual {v1}, Landroid/security/KeyStore$OperationPromise;->getFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/security/keymaster/OperationResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-object v5

    :cond_2
    :try_start_1
    new-instance v5, Landroid/security/keymaster/OperationResult;

    invoke-direct {v5, v4}, Landroid/security/keymaster/OperationResult;-><init>(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-object v5

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "Update completed with exception"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-object v2

    :catch_1
    move-exception v4

    :try_start_3
    const-string v5, "Cannot connect to keystore"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v0}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-object v2

    :goto_2
    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/keystore/IKeystoreService;

    invoke-interface {v2}, Landroid/security/keystore/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    throw v0
.end method
