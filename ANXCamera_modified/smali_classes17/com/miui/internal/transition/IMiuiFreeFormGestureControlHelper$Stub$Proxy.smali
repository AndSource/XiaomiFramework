.class Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMiuiFreeFormGestureControlHelper.java"

# interfaces
.implements Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.miui.internal.transition.IMiuiFreeFormGestureControlHelper"

    return-object v0
.end method

.method public hideCaptionView()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.miui.internal.transition.IMiuiFreeFormGestureControlHelper"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->getDefaultImpl()Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->getDefaultImpl()Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;->hideCaptionView()V
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

.method public notifyExitFreeFormApplicationStart()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.miui.internal.transition.IMiuiFreeFormGestureControlHelper"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->getDefaultImpl()Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->getDefaultImpl()Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;->notifyExitFreeFormApplicationStart()V
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

.method public notifyExitSmallFreeFormApplicationStart()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.miui.internal.transition.IMiuiFreeFormGestureControlHelper"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->getDefaultImpl()Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->getDefaultImpl()Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;->notifyExitSmallFreeFormApplicationStart()V
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

.method public notifyFreeFormApplicationResizeEnd(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.miui.internal.transition.IMiuiFreeFormGestureControlHelper"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v1, p0, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->getDefaultImpl()Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->getDefaultImpl()Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;->notifyFreeFormApplicationResizeEnd(J)V
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

.method public notifyFreeFormApplicationResizeStart()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.miui.internal.transition.IMiuiFreeFormGestureControlHelper"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->getDefaultImpl()Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->getDefaultImpl()Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;->notifyFreeFormApplicationResizeStart()V
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

.method public notifyFullScreenWidnowModeStart()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.miui.internal.transition.IMiuiFreeFormGestureControlHelper"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->getDefaultImpl()Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->getDefaultImpl()Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;->notifyFullScreenWidnowModeStart()V
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

.method public showCaptionView()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.miui.internal.transition.IMiuiFreeFormGestureControlHelper"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->getDefaultImpl()Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->getDefaultImpl()Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;->showCaptionView()V
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
