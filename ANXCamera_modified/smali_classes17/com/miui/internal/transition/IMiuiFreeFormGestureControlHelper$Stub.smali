.class public abstract Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;
.super Landroid/os/Binder;
.source "IMiuiFreeFormGestureControlHelper.java"

# interfaces
.implements Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.internal.transition.IMiuiFreeFormGestureControlHelper"

.field static final TRANSACTION_hideCaptionView:I = 0x7

.field static final TRANSACTION_notifyExitFreeFormApplicationStart:I = 0x2

.field static final TRANSACTION_notifyExitSmallFreeFormApplicationStart:I = 0x3

.field static final TRANSACTION_notifyFreeFormApplicationResizeEnd:I = 0x5

.field static final TRANSACTION_notifyFreeFormApplicationResizeStart:I = 0x4

.field static final TRANSACTION_notifyFullScreenWidnowModeStart:I = 0x1

.field static final TRANSACTION_showCaptionView:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.internal.transition.IMiuiFreeFormGestureControlHelper"

    invoke-virtual {p0, p0, v0}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.miui.internal.transition.IMiuiFreeFormGestureControlHelper"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    return-object v1

    :cond_1
    new-instance v1, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;
    .locals 1

    sget-object v0, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub$Proxy;->sDefaultImpl:Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "hideCaptionView"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "showCaptionView"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "notifyFreeFormApplicationResizeEnd"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "notifyFreeFormApplicationResizeStart"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "notifyExitSmallFreeFormApplicationStart"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "notifyExitFreeFormApplicationStart"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "notifyFullScreenWidnowModeStart"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setDefaultImpl(Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;)Z
    .locals 1

    sget-object v0, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub$Proxy;->sDefaultImpl:Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub$Proxy;->sDefaultImpl:Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper;

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

    invoke-static {p1}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "com.miui.internal.transition.IMiuiFreeFormGestureControlHelper"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->hideCaptionView()V

    return v2

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->showCaptionView()V

    return v2

    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->notifyFreeFormApplicationResizeEnd(J)V

    return v2

    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->notifyFreeFormApplicationResizeStart()V

    return v2

    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->notifyExitSmallFreeFormApplicationStart()V

    return v2

    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->notifyExitFreeFormApplicationStart()V

    return v2

    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/internal/transition/IMiuiFreeFormGestureControlHelper$Stub;->notifyFullScreenWidnowModeStart()V

    return v2

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
