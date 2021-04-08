.class Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAugmentedAutofillService.java"

# interfaces
.implements Landroid/service/autofill/augmented/IAugmentedAutofillService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/service/autofill/augmented/IAugmentedAutofillService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "android.service.autofill.augmented.IAugmentedAutofillService"

    return-object v0
.end method

.method public onConnected(ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.service.autofill.augmented.IAugmentedAutofillService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;->getDefaultImpl()Landroid/service/autofill/augmented/IAugmentedAutofillService;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;->getDefaultImpl()Landroid/service/autofill/augmented/IAugmentedAutofillService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/service/autofill/augmented/IAugmentedAutofillService;->onConnected(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onDestroyAllFillWindowsRequest()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.service.autofill.augmented.IAugmentedAutofillService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;->getDefaultImpl()Landroid/service/autofill/augmented/IAugmentedAutofillService;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;->getDefaultImpl()Landroid/service/autofill/augmented/IAugmentedAutofillService;

    move-result-object v2

    invoke-interface {v2}, Landroid/service/autofill/augmented/IAugmentedAutofillService;->onDestroyAllFillWindowsRequest()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onDisconnected()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.service.autofill.augmented.IAugmentedAutofillService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;->getDefaultImpl()Landroid/service/autofill/augmented/IAugmentedAutofillService;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;->getDefaultImpl()Landroid/service/autofill/augmented/IAugmentedAutofillService;

    move-result-object v2

    invoke-interface {v2}, Landroid/service/autofill/augmented/IAugmentedAutofillService;->onDisconnected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onFillRequest(ILandroid/os/IBinder;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/service/autofill/augmented/IFillCallback;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v14

    :try_start_0
    const-string v0, "android.service.autofill.augmented.IAugmentedAutofillService"

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v15, p1

    :try_start_1
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v10, p2

    invoke-virtual {v14, v10}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move/from16 v8, p3

    invoke-virtual {v14, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v11, :cond_0

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v11, v14, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz v12, :cond_1

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v12, v14, v1}, Landroid/view/autofill/AutofillId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    if-eqz v13, :cond_2

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v13, v14, v1}, Landroid/view/autofill/AutofillValue;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    move-wide/from16 v6, p7

    invoke-virtual {v14, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v1, 0x0

    if-eqz p9, :cond_3

    invoke-interface/range {p9 .. p9}, Landroid/service/autofill/augmented/IFillCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v1

    :goto_3
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move-object/from16 v9, p0

    iget-object v2, v9, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    invoke-interface {v2, v3, v14, v1, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;->getDefaultImpl()Landroid/service/autofill/augmented/IAugmentedAutofillService;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;->getDefaultImpl()Landroid/service/autofill/augmented/IAugmentedAutofillService;

    move-result-object v1

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Landroid/service/autofill/augmented/IAugmentedAutofillService;->onFillRequest(ILandroid/os/IBinder;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/service/autofill/augmented/IFillCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_4
    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move/from16 v15, p1

    :goto_4
    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
