.class public abstract Landroid/app/IEphemeralResolver$Stub;
.super Landroid/os/Binder;
.source "IEphemeralResolver.java"

# interfaces
.implements Landroid/app/IEphemeralResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IEphemeralResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IEphemeralResolver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IEphemeralResolver"

.field static final TRANSACTION_getEphemeralIntentFilterList:I = 0x2

.field static final TRANSACTION_getEphemeralResolveInfoList:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.IEphemeralResolver"

    invoke-virtual {p0, p0, v0}, Landroid/app/IEphemeralResolver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IEphemeralResolver;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.app.IEphemeralResolver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IEphemeralResolver;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/app/IEphemeralResolver;

    return-object v1

    :cond_1
    new-instance v1, Landroid/app/IEphemeralResolver$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IEphemeralResolver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/app/IEphemeralResolver;
    .locals 1

    sget-object v0, Landroid/app/IEphemeralResolver$Stub$Proxy;->sDefaultImpl:Landroid/app/IEphemeralResolver;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "getEphemeralIntentFilterList"

    return-object v0

    :cond_1
    const-string v0, "getEphemeralResolveInfoList"

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/app/IEphemeralResolver;)Z
    .locals 1

    sget-object v0, Landroid/app/IEphemeralResolver$Stub$Proxy;->sDefaultImpl:Landroid/app/IEphemeralResolver;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Landroid/app/IEphemeralResolver$Stub$Proxy;->sDefaultImpl:Landroid/app/IEphemeralResolver;

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

    invoke-static {p1}, Landroid/app/IEphemeralResolver$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.app.IEphemeralResolver"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

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

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IEphemeralResolver$Stub;->getEphemeralIntentFilterList(Landroid/os/IRemoteCallback;Ljava/lang/String;I)V

    return v1

    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IEphemeralResolver$Stub;->getEphemeralResolveInfoList(Landroid/os/IRemoteCallback;[II)V

    return v1
.end method
