.class public abstract Landroid/net/wifi/INetworkRequestMatchCallback$Stub;
.super Landroid/os/Binder;
.source "INetworkRequestMatchCallback.java"

# interfaces
.implements Landroid/net/wifi/INetworkRequestMatchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/INetworkRequestMatchCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/INetworkRequestMatchCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.INetworkRequestMatchCallback"

.field static final TRANSACTION_onAbort:I = 0x2

.field static final TRANSACTION_onMatch:I = 0x3

.field static final TRANSACTION_onUserSelectionCallbackRegistration:I = 0x1

.field static final TRANSACTION_onUserSelectionConnectFailure:I = 0x5

.field static final TRANSACTION_onUserSelectionConnectSuccess:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.net.wifi.INetworkRequestMatchCallback"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/INetworkRequestMatchCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/INetworkRequestMatchCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.net.wifi.INetworkRequestMatchCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/INetworkRequestMatchCallback;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/net/wifi/INetworkRequestMatchCallback;

    return-object v1

    :cond_1
    new-instance v1, Landroid/net/wifi/INetworkRequestMatchCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/INetworkRequestMatchCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/net/wifi/INetworkRequestMatchCallback;
    .locals 1

    sget-object v0, Landroid/net/wifi/INetworkRequestMatchCallback$Stub$Proxy;->sDefaultImpl:Landroid/net/wifi/INetworkRequestMatchCallback;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string/jumbo v0, "onUserSelectionConnectFailure"

    return-object v0

    :cond_1
    const-string/jumbo v0, "onUserSelectionConnectSuccess"

    return-object v0

    :cond_2
    const-string/jumbo v0, "onMatch"

    return-object v0

    :cond_3
    const-string/jumbo v0, "onAbort"

    return-object v0

    :cond_4
    const-string/jumbo v0, "onUserSelectionCallbackRegistration"

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/wifi/INetworkRequestMatchCallback;)Z
    .locals 1

    sget-object v0, Landroid/net/wifi/INetworkRequestMatchCallback$Stub$Proxy;->sDefaultImpl:Landroid/net/wifi/INetworkRequestMatchCallback;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Landroid/net/wifi/INetworkRequestMatchCallback$Stub$Proxy;->sDefaultImpl:Landroid/net/wifi/INetworkRequestMatchCallback;

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

    invoke-static {p1}, Landroid/net/wifi/INetworkRequestMatchCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.net.wifi.INetworkRequestMatchCallback"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_7

    const/4 v2, 0x2

    if-eq p1, v2, :cond_6

    const/4 v2, 0x3

    if-eq p1, v2, :cond_5

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

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

    if-eqz v2, :cond_2

    sget-object v2, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v2}, Landroid/net/wifi/INetworkRequestMatchCallback$Stub;->onUserSelectionConnectFailure(Landroid/net/wifi/WifiConfiguration;)V

    return v1

    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0, v2}, Landroid/net/wifi/INetworkRequestMatchCallback$Stub;->onUserSelectionConnectSuccess(Landroid/net/wifi/WifiConfiguration;)V

    return v1

    :cond_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v2, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/wifi/INetworkRequestMatchCallback$Stub;->onMatch(Ljava/util/List;)V

    return v1

    :cond_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/INetworkRequestMatchCallback$Stub;->onAbort()V

    return v1

    :cond_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/INetworkRequestUserSelectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/INetworkRequestUserSelectionCallback;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/wifi/INetworkRequestMatchCallback$Stub;->onUserSelectionCallbackRegistration(Landroid/net/wifi/INetworkRequestUserSelectionCallback;)V

    return v1
.end method
