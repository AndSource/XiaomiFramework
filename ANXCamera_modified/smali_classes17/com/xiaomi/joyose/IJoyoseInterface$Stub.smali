.class public abstract Lcom/xiaomi/joyose/IJoyoseInterface$Stub;
.super Landroid/os/Binder;
.source "IJoyoseInterface.java"

# interfaces
.implements Lcom/xiaomi/joyose/IJoyoseInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/joyose/IJoyoseInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/joyose/IJoyoseInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.joyose.IJoyoseInterface"

.field static final TRANSACTION_MiPlatformBoosterForOneway:I = 0x7

.field static final TRANSACTION_MiPlatformBoosterForSync:I = 0x8

.field static final TRANSACTION_getGameMotorAppList:I = 0x9

.field static final TRANSACTION_handleGameBoosterForOneway:I = 0x3

.field static final TRANSACTION_handleGameBoosterForSync:I = 0x4

.field static final TRANSACTION_invokeOneway:I = 0xc

.field static final TRANSACTION_invokeOnewayInter:I = 0xe

.field static final TRANSACTION_invokeSync:I = 0xd

.field static final TRANSACTION_invokeSyncInter:I = 0xf

.field static final TRANSACTION_predictAppBucketLevel:I = 0x5

.field static final TRANSACTION_predictAppsBucketLevel:I = 0x6

.field static final TRANSACTION_registerGameEngineListener:I = 0x1

.field static final TRANSACTION_registerMiPlatformBoosterListener:I = 0xa

.field static final TRANSACTION_unRegisterGameEngineListener:I = 0x2

.field static final TRANSACTION_unRegisterMiPlatformBoosterListener:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaomi.joyose.IJoyoseInterface"

    invoke-virtual {p0, p0, v0}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/joyose/IJoyoseInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.xiaomi.joyose.IJoyoseInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/xiaomi/joyose/IJoyoseInterface;

    return-object v1

    :cond_1
    new-instance v1, Lcom/xiaomi/joyose/IJoyoseInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/xiaomi/joyose/IJoyoseInterface;
    .locals 1

    sget-object v0, Lcom/xiaomi/joyose/IJoyoseInterface$Stub$Proxy;->sDefaultImpl:Lcom/xiaomi/joyose/IJoyoseInterface;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "invokeSyncInter"

    return-object v0

    :pswitch_1
    const-string v0, "invokeOnewayInter"

    return-object v0

    :pswitch_2
    const-string v0, "invokeSync"

    return-object v0

    :pswitch_3
    const-string v0, "invokeOneway"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "unRegisterMiPlatformBoosterListener"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "registerMiPlatformBoosterListener"

    return-object v0

    :pswitch_6
    const-string v0, "getGameMotorAppList"

    return-object v0

    :pswitch_7
    const-string v0, "MiPlatformBoosterForSync"

    return-object v0

    :pswitch_8
    const-string v0, "MiPlatformBoosterForOneway"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "predictAppsBucketLevel"

    return-object v0

    :pswitch_a
    const-string/jumbo v0, "predictAppBucketLevel"

    return-object v0

    :pswitch_b
    const-string v0, "handleGameBoosterForSync"

    return-object v0

    :pswitch_c
    const-string v0, "handleGameBoosterForOneway"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "unRegisterGameEngineListener"

    return-object v0

    :pswitch_e
    const-string/jumbo v0, "registerGameEngineListener"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static setDefaultImpl(Lcom/xiaomi/joyose/IJoyoseInterface;)Z
    .locals 1

    sget-object v0, Lcom/xiaomi/joyose/IJoyoseInterface$Stub$Proxy;->sDefaultImpl:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/xiaomi/joyose/IJoyoseInterface$Stub$Proxy;->sDefaultImpl:Lcom/xiaomi/joyose/IJoyoseInterface;

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

    invoke-static {p1}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.xiaomi.joyose.IJoyoseInterface"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_6

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0, v3, v4}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->invokeSyncInter(Ljava/lang/String;Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_1

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v5, p3, v2}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v2

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p0, v1, v3}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->invokeOnewayInter(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    return v2

    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {p0, v3, v4}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->invokeSync(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_4

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v5, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v2

    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {p0, v1, v3}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->invokeOneway(Ljava/lang/String;Landroid/os/Bundle;)V

    return v2

    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/joyose/IMiGameBoosterCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/joyose/IMiGameBoosterCallback;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->unRegisterMiPlatformBoosterListener(Lcom/xiaomi/joyose/IMiGameBoosterCallback;)V

    return v2

    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/joyose/IMiGameBoosterCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/joyose/IMiGameBoosterCallback;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->registerMiPlatformBoosterListener(ILcom/xiaomi/joyose/IMiGameBoosterCallback;)V

    return v2

    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->getGameMotorAppList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v2

    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->MiPlatformBoosterForSync(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->MiPlatformBoosterForOneway(ILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->predictAppsBucketLevel(Ljava/util/List;I)V

    return v2

    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->predictAppBucketLevel(Ljava/lang/String;)V

    return v2

    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->handleGameBoosterForSync(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->handleGameBoosterForOneway(ILjava/lang/String;)V

    return v2

    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/joyose/IGameEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/joyose/IGameEngineCallback;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->unRegisterGameEngineListener(Lcom/xiaomi/joyose/IGameEngineCallback;)V

    return v2

    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/joyose/IGameEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/joyose/IGameEngineCallback;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->registerGameEngineListener(ILcom/xiaomi/joyose/IGameEngineCallback;)V

    return v2

    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
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
