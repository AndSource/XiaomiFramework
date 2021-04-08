.class public abstract Lmiui/telephony/MiuiTelephonyBase;
.super Lmiui/telephony/IMiuiTelephony$Stub;
.source "MiuiTelephonyBase.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MiuiTelephonyBase"

    sput-object v0, Lmiui/telephony/MiuiTelephonyBase;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/telephony/IMiuiTelephony$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getCellLocationForSlot(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 2

    sget-object v0, Lmiui/telephony/MiuiTelephonyBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "unexpected getCellLocation method call"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceIdList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lmiui/telephony/MiuiTelephonyBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "unexpected getDeviceIdList method call"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public getImei(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getImeiList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public getMeid(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMeidList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public getSmallDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isFiveGCapable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isGwsdSupport()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isImsRegistered(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUserFiveGEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVideoTelephonyAvailable(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVolteEnabledByPlatform()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVolteEnabledByPlatformForSlot(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVolteEnabledByUser()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVolteEnabledByUserForSlot(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVtEnabledByPlatform()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVtEnabledByPlatformForSlot(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isWifiCallingAvailable(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setCallForwardingOption(IIILjava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 2

    sget-object v0, Lmiui/telephony/MiuiTelephonyBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "unexpected setCallForwardingOption method call"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setIccCardActivate(IZ)V
    .locals 0

    return-void
.end method

.method public setUserFiveGEnabled(Z)V
    .locals 0

    return-void
.end method
