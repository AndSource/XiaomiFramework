.class public abstract Landroid/net/wifi/IOnWifiUsabilityStatsListener$Stub;
.super Landroid/os/Binder;
.source "IOnWifiUsabilityStatsListener.java"

# interfaces
.implements Landroid/net/wifi/IOnWifiUsabilityStatsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IOnWifiUsabilityStatsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IOnWifiUsabilityStatsListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IOnWifiUsabilityStatsListener"

.field static final TRANSACTION_onWifiUsabilityStats:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.net.wifi.IOnWifiUsabilityStatsListener"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IOnWifiUsabilityStatsListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IOnWifiUsabilityStatsListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.net.wifi.IOnWifiUsabilityStatsListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/IOnWifiUsabilityStatsListener;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/net/wifi/IOnWifiUsabilityStatsListener;

    return-object v1

    :cond_1
    new-instance v1, Landroid/net/wifi/IOnWifiUsabilityStatsListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/IOnWifiUsabilityStatsListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/net/wifi/IOnWifiUsabilityStatsListener;
    .locals 1

    sget-object v0, Landroid/net/wifi/IOnWifiUsabilityStatsListener$Stub$Proxy;->sDefaultImpl:Landroid/net/wifi/IOnWifiUsabilityStatsListener;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string/jumbo v0, "onWifiUsabilityStats"

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/wifi/IOnWifiUsabilityStatsListener;)Z
    .locals 1

    sget-object v0, Landroid/net/wifi/IOnWifiUsabilityStatsListener$Stub$Proxy;->sDefaultImpl:Landroid/net/wifi/IOnWifiUsabilityStatsListener;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Landroid/net/wifi/IOnWifiUsabilityStatsListener$Stub$Proxy;->sDefaultImpl:Landroid/net/wifi/IOnWifiUsabilityStatsListener;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/net/wifi/IOnWifiUsabilityStatsListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.net.wifi.IOnWifiUsabilityStatsListener"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Landroid/net/wifi/WifiUsabilityStatsEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiUsabilityStatsEntry;

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/wifi/IOnWifiUsabilityStatsListener$Stub;->onWifiUsabilityStats(IZLandroid/net/wifi/WifiUsabilityStatsEntry;)V

    return v1
.end method
