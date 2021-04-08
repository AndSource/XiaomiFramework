.class public abstract Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothMiBlePropertyCallback.java"

# interfaces
.implements Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.bluetooth.ble.IBluetoothMiBlePropertyCallback"

.field static final TRANSACTION_notifyProperty:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "miui.bluetooth.ble.IBluetoothMiBlePropertyCallback"

    invoke-virtual {p0, p0, v0}, Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "miui.bluetooth.ble.IBluetoothMiBlePropertyCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;

    return-object v1

    :cond_1
    new-instance v1, Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;
    .locals 1

    sget-object v0, Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback$Stub$Proxy;->sDefaultImpl:Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;)Z
    .locals 1

    sget-object v0, Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback$Stub$Proxy;->sDefaultImpl:Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback$Stub$Proxy;->sDefaultImpl:Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;

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

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "miui.bluetooth.ble.IBluetoothMiBlePropertyCallback"

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

    if-eqz v2, :cond_2

    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback$Stub;->notifyProperty(Landroid/os/ParcelUuid;I[B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
