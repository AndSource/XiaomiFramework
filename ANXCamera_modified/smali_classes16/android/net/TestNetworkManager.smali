.class public Landroid/net/TestNetworkManager;
.super Ljava/lang/Object;
.source "TestNetworkManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mService:Landroid/net/ITestNetworkManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/net/TestNetworkManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/TestNetworkManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/ITestNetworkManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "missing ITestNetworkManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ITestNetworkManager;

    iput-object v0, p0, Landroid/net/TestNetworkManager;->mService:Landroid/net/ITestNetworkManager;

    return-void
.end method


# virtual methods
.method public createTapInterface()Landroid/net/TestNetworkInterface;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/net/TestNetworkManager;->mService:Landroid/net/ITestNetworkManager;

    invoke-interface {v0}, Landroid/net/ITestNetworkManager;->createTapInterface()Landroid/net/TestNetworkInterface;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public createTunInterface([Landroid/net/LinkAddress;)Landroid/net/TestNetworkInterface;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/net/TestNetworkManager;->mService:Landroid/net/ITestNetworkManager;

    invoke-interface {v0, p1}, Landroid/net/ITestNetworkManager;->createTunInterface([Landroid/net/LinkAddress;)Landroid/net/TestNetworkInterface;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setupTestNetwork(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/net/TestNetworkManager;->mService:Landroid/net/ITestNetworkManager;

    invoke-interface {v0, p1, p2}, Landroid/net/ITestNetworkManager;->setupTestNetwork(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public teardownTestNetwork(Landroid/net/Network;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/net/TestNetworkManager;->mService:Landroid/net/ITestNetworkManager;

    iget v1, p1, Landroid/net/Network;->netId:I

    invoke-interface {v0, v1}, Landroid/net/ITestNetworkManager;->teardownTestNetwork(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
