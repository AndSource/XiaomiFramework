.class Landroid/telephony/ims/RcsControllerCall;
.super Ljava/lang/Object;
.source "RcsControllerCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;,
        Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/RcsControllerCall;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic lambda$callWithNoReturn$0(Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;->methodOnIRcs(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/telephony/ims/RcsControllerCall$RcsServiceCall<",
            "TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    const-string/jumbo v0, "ircs"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ims/aidl/IRcs$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IRcs;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/RcsControllerCall;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;->methodOnIRcs(Landroid/telephony/ims/aidl/IRcs;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    new-instance v2, Landroid/telephony/ims/RcsMessageStoreException;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/telephony/ims/RcsMessageStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v1, Landroid/telephony/ims/RcsMessageStoreException;

    const-string v2, "Could not connect to RCS storage service"

    invoke-direct {v1, v2}, Landroid/telephony/ims/RcsMessageStoreException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method callWithNoReturn(Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/RcsMessageStoreException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/-$$Lambda$RcsControllerCall$lqKvRobLziMoZre7XkbJkfc5LEM;

    invoke-direct {v0, p1}, Landroid/telephony/ims/-$$Lambda$RcsControllerCall$lqKvRobLziMoZre7XkbJkfc5LEM;-><init>(Landroid/telephony/ims/RcsControllerCall$RcsServiceCallWithNoReturn;)V

    invoke-virtual {p0, v0}, Landroid/telephony/ims/RcsControllerCall;->call(Landroid/telephony/ims/RcsControllerCall$RcsServiceCall;)Ljava/lang/Object;

    return-void
.end method
