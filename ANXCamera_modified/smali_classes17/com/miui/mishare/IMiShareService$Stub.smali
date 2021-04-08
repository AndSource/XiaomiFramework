.class public abstract Lcom/miui/mishare/IMiShareService$Stub;
.super Landroid/os/Binder;
.source "IMiShareService.java"

# interfaces
.implements Lcom/miui/mishare/IMiShareService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/mishare/IMiShareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/mishare/IMiShareService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.mishare.IMiShareService"

.field static final TRANSACTION_cancel:I = 0xa

.field static final TRANSACTION_closeScreenThrow:I = 0x13

.field static final TRANSACTION_disable:I = 0x5

.field static final TRANSACTION_discover:I = 0x6

.field static final TRANSACTION_discoverWithIntent:I = 0x7

.field static final TRANSACTION_enable:I = 0x4

.field static final TRANSACTION_getState:I = 0x1

.field static final TRANSACTION_getThumbnail:I = 0xf

.field static final TRANSACTION_openScreenThrow:I = 0x12

.field static final TRANSACTION_receive:I = 0xd

.field static final TRANSACTION_refuse:I = 0xe

.field static final TRANSACTION_registerScreenThrowListener:I = 0x10

.field static final TRANSACTION_registerStateListener:I = 0x2

.field static final TRANSACTION_registerTaskStateListener:I = 0xb

.field static final TRANSACTION_send:I = 0x9

.field static final TRANSACTION_stopDiscover:I = 0x8

.field static final TRANSACTION_unregisterScreenThrowListener:I = 0x11

.field static final TRANSACTION_unregisterStateListener:I = 0x3

.field static final TRANSACTION_unregisterTaskStateListener:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.mishare.IMiShareService"

    invoke-virtual {p0, p0, v0}, Lcom/miui/mishare/IMiShareService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/mishare/IMiShareService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.miui.mishare.IMiShareService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/mishare/IMiShareService;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/miui/mishare/IMiShareService;

    return-object v1

    :cond_1
    new-instance v1, Lcom/miui/mishare/IMiShareService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/mishare/IMiShareService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/miui/mishare/IMiShareService;
    .locals 1

    sget-object v0, Lcom/miui/mishare/IMiShareService$Stub$Proxy;->sDefaultImpl:Lcom/miui/mishare/IMiShareService;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "closeScreenThrow"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "openScreenThrow"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "unregisterScreenThrowListener"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "registerScreenThrowListener"

    return-object v0

    :pswitch_4
    const-string v0, "getThumbnail"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "refuse"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "receive"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "unregisterTaskStateListener"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "registerTaskStateListener"

    return-object v0

    :pswitch_9
    const-string v0, "cancel"

    return-object v0

    :pswitch_a
    const-string/jumbo v0, "send"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "stopDiscover"

    return-object v0

    :pswitch_c
    const-string v0, "discoverWithIntent"

    return-object v0

    :pswitch_d
    const-string v0, "discover"

    return-object v0

    :pswitch_e
    const-string v0, "disable"

    return-object v0

    :pswitch_f
    const-string v0, "enable"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "unregisterStateListener"

    return-object v0

    :pswitch_11
    const-string/jumbo v0, "registerStateListener"

    return-object v0

    :pswitch_12
    const-string v0, "getState"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static setDefaultImpl(Lcom/miui/mishare/IMiShareService;)Z
    .locals 1

    sget-object v0, Lcom/miui/mishare/IMiShareService$Stub$Proxy;->sDefaultImpl:Lcom/miui/mishare/IMiShareService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/miui/mishare/IMiShareService$Stub$Proxy;->sDefaultImpl:Lcom/miui/mishare/IMiShareService;

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

    invoke-static {p1}, Lcom/miui/mishare/IMiShareService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.miui.mishare.IMiShareService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_6

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/mishare/IMiShareService$Stub;->closeScreenThrow()V

    return v2

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/mishare/IMiShareService$Stub;->openScreenThrow()V

    return v2

    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/mishare/IMiShareService$Stub;->unregisterScreenThrowListener()V

    return v2

    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/mishare/IScreenThrowListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/mishare/IScreenThrowListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/mishare/IMiShareService$Stub;->registerScreenThrowListener(Lcom/miui/mishare/IScreenThrowListener;)V

    return v2

    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/miui/mishare/MiShareTask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/mishare/MiShareTask;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/mishare/IThumbnailCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/mishare/IThumbnailCallback;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/miui/mishare/IMiShareService$Stub;->getThumbnail(Lcom/miui/mishare/MiShareTask;Lcom/miui/mishare/IThumbnailCallback;)V

    return v2

    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/miui/mishare/MiShareTask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/mishare/MiShareTask;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Lcom/miui/mishare/IMiShareService$Stub;->refuse(Lcom/miui/mishare/MiShareTask;)V

    return v2

    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/miui/mishare/MiShareTask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/mishare/MiShareTask;

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0, v1}, Lcom/miui/mishare/IMiShareService$Stub;->receive(Lcom/miui/mishare/MiShareTask;)V

    return v2

    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/mishare/IMiShareTaskStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/mishare/IMiShareTaskStateListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/mishare/IMiShareService$Stub;->unregisterTaskStateListener(Lcom/miui/mishare/IMiShareTaskStateListener;)V

    return v2

    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/mishare/IMiShareTaskStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/mishare/IMiShareTaskStateListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/mishare/IMiShareService$Stub;->registerTaskStateListener(Lcom/miui/mishare/IMiShareTaskStateListener;)V

    return v2

    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/miui/mishare/MiShareTask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/mishare/MiShareTask;

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p0, v1}, Lcom/miui/mishare/IMiShareService$Stub;->cancel(Lcom/miui/mishare/MiShareTask;)V

    return v2

    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/miui/mishare/MiShareTask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/mishare/MiShareTask;

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {p0, v1}, Lcom/miui/mishare/IMiShareService$Stub;->send(Lcom/miui/mishare/MiShareTask;)V

    return v2

    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/mishare/IMiShareDiscoverCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/mishare/IMiShareDiscoverCallback;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/mishare/IMiShareService$Stub;->stopDiscover(Lcom/miui/mishare/IMiShareDiscoverCallback;)V

    return v2

    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/mishare/IMiShareDiscoverCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/mishare/IMiShareDiscoverCallback;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {p0, v1, v3}, Lcom/miui/mishare/IMiShareService$Stub;->discoverWithIntent(Lcom/miui/mishare/IMiShareDiscoverCallback;Landroid/content/Intent;)V

    return v2

    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/mishare/IMiShareDiscoverCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/mishare/IMiShareDiscoverCallback;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/mishare/IMiShareService$Stub;->discover(Lcom/miui/mishare/IMiShareDiscoverCallback;)V

    return v2

    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/mishare/IMiShareService$Stub;->disable()V

    return v2

    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/mishare/IMiShareService$Stub;->enable()V

    return v2

    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/mishare/IMiShareStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/mishare/IMiShareStateListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/mishare/IMiShareService$Stub;->unregisterStateListener(Lcom/miui/mishare/IMiShareStateListener;)V

    return v2

    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/mishare/IMiShareStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/mishare/IMiShareStateListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/mishare/IMiShareService$Stub;->registerStateListener(Lcom/miui/mishare/IMiShareStateListener;)V

    return v2

    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/mishare/IMiShareService$Stub;->getState()I

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
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
