.class public final Landroid/net/wifi/WifiNetworkSuggestion$Builder;
.super Ljava/lang/Object;
.source "WifiNetworkSuggestion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiNetworkSuggestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final UNASSIGNED_PRIORITY:I = -0x1


# instance fields
.field private mBssid:Landroid/net/MacAddress;

.field private mIsAppInteractionRequired:Z

.field private mIsEnhancedOpen:Z

.field private mIsHiddenSSID:Z

.field private mIsMetered:Z

.field private mIsUserInteractionRequired:Z

.field private mPriority:I

.field private mSsid:Ljava/lang/String;

.field private mWpa2EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

.field private mWpa2PskPassphrase:Ljava/lang/String;

.field private mWpa3EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

.field private mWpa3SaePassphrase:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mSsid:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mBssid:Landroid/net/MacAddress;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsEnhancedOpen:Z

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa2PskPassphrase:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa3SaePassphrase:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa2EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa3EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iput-boolean v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsHiddenSSID:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsAppInteractionRequired:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsUserInteractionRequired:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsMetered:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mPriority:I

    return-void
.end method

.method private buildWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 4

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mSsid:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mBssid:Landroid/net/MacAddress;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    :cond_0
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->setSecurityParamsInWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    iget-boolean v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsHiddenSSID:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iget v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mPriority:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    nop

    iget-boolean v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsMetered:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    return-object v0
.end method

.method private setSecurityParamsInWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa2PskPassphrase:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "\""

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa2PskPassphrase:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa3SaePassphrase:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa3SaePassphrase:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa2EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa2EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa3EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa3EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsEnhancedOpen:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    :goto_0
    return-void
.end method

.method private validateSecurityParams()V
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsEnhancedOpen:Z

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa2PskPassphrase:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa3SaePassphrase:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa2EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa3EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v1, :cond_1

    move v3, v2

    :cond_1
    add-int/2addr v0, v3

    if-gt v0, v2, :cond_2

    return-void

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "only one of setIsEnhancedOpen, setWpa2Passphrase,setWpa3Passphrase, setWpa2EnterpriseConfig or setWpa3EnterpriseConfig can be invoked for network specifier"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public build()Landroid/net/wifi/WifiNetworkSuggestion;
    .locals 8

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mSsid:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mBssid:Landroid/net/MacAddress;

    if-eqz v0, :cond_1

    sget-object v1, Landroid/net/MacAddress;->BROADCAST_ADDRESS:Landroid/net/MacAddress;

    invoke-virtual {v0, v1}, Landroid/net/MacAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mBssid:Landroid/net/MacAddress;

    sget-object v1, Landroid/net/MacAddress;->ALL_ZEROS_ADDRESS:Landroid/net/MacAddress;

    invoke-virtual {v0, v1}, Landroid/net/MacAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "invalid bssid for suggestion"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->validateSecurityParams()V

    new-instance v0, Landroid/net/wifi/WifiNetworkSuggestion;

    invoke-direct {p0}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->buildWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-boolean v4, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsAppInteractionRequired:Z

    iget-boolean v5, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsUserInteractionRequired:Z

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/net/wifi/WifiNetworkSuggestion;-><init>(Landroid/net/wifi/WifiConfiguration;ZZILjava/lang/String;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "invalid ssid for suggestion"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setSsid should be invoked for suggestion"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBssid(Landroid/net/MacAddress;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .locals 1

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mBssid:Landroid/net/MacAddress;

    return-object p0
.end method

.method public setIsAppInteractionRequired(Z)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsAppInteractionRequired:Z

    return-object p0
.end method

.method public setIsEnhancedOpen(Z)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsEnhancedOpen:Z

    return-object p0
.end method

.method public setIsHiddenSsid(Z)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsHiddenSSID:Z

    return-object p0
.end method

.method public setIsMetered(Z)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsMetered:Z

    return-object p0
.end method

.method public setIsUserInteractionRequired(Z)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mIsUserInteractionRequired:Z

    return-object p0
.end method

.method public setPriority(I)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .locals 3

    if-ltz p1, :cond_0

    iput p1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mPriority:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid priority value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSsid(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .locals 3

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mSsid:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "SSID is not a valid unicode string"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setWpa2EnterpriseConfig(Landroid/net/wifi/WifiEnterpriseConfig;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .locals 1

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;)V

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa2EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    return-object p0
.end method

.method public setWpa2Passphrase(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .locals 3

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa2PskPassphrase:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "passphrase not ASCII encodable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setWpa3EnterpriseConfig(Landroid/net/wifi/WifiEnterpriseConfig;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .locals 1

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;)V

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa3EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    return-object p0
.end method

.method public setWpa3Passphrase(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;
    .locals 3

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, p0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->mWpa3SaePassphrase:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "passphrase not ASCII encodable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
