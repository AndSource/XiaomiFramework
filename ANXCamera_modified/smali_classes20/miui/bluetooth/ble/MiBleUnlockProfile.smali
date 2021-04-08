.class public Lmiui/bluetooth/ble/MiBleUnlockProfile;
.super Lmiui/bluetooth/ble/MiBleProfile;
.source "MiBleUnlockProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmiui/bluetooth/ble/MiBleProfile;-><init>(Landroid/content/Context;Ljava/lang/String;Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;)V

    return-void
.end method


# virtual methods
.method public registerUnlockListener(Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-instance v1, Lmiui/bluetooth/ble/MiBleUnlockProfile$1;

    invoke-direct {v1, p0, p1}, Lmiui/bluetooth/ble/MiBleUnlockProfile$1;-><init>(Lmiui/bluetooth/ble/MiBleUnlockProfile;Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;)V

    invoke-virtual {p0, v0, v1}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->registerPropertyNotifyCallback(ILmiui/bluetooth/ble/MiBleProfile$IPropertyNotifyCallback;)Z

    return-void
.end method

.method public setLock(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleUnlockProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleUnlockProfile;->mDevice:Ljava/lang/String;

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleUnlockProfile;->mClientId:Landroid/os/ParcelUuid;

    invoke-interface {v0, v1, v2, p1}, Lmiui/bluetooth/ble/IBluetoothMiBle;->authorize(Ljava/lang/String;Landroid/os/ParcelUuid;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setRssiThreshold(I)Z
    .locals 3

    invoke-virtual {p0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleUnlockProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleUnlockProfile;->mDevice:Ljava/lang/String;

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleUnlockProfile;->mClientId:Landroid/os/ParcelUuid;

    invoke-interface {v0, v1, v2, p1}, Lmiui/bluetooth/ble/IBluetoothMiBle;->setRssiThreshold(Ljava/lang/String;Landroid/os/ParcelUuid;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public unlock()Z
    .locals 3

    invoke-virtual {p0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lmiui/bluetooth/ble/MiBleUnlockProfile;->mService:Lmiui/bluetooth/ble/IBluetoothMiBle;

    iget-object v1, p0, Lmiui/bluetooth/ble/MiBleUnlockProfile;->mDevice:Ljava/lang/String;

    iget-object v2, p0, Lmiui/bluetooth/ble/MiBleUnlockProfile;->mClientId:Landroid/os/ParcelUuid;

    invoke-interface {v0, v1, v2}, Lmiui/bluetooth/ble/IBluetoothMiBle;->authenticate(Ljava/lang/String;Landroid/os/ParcelUuid;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterUnlockListener()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->unregisterPropertyNotifyCallback(I)Z

    return-void
.end method
