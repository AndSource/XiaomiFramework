.class public abstract Lmiui/upnp/utils/Binding;
.super Ljava/lang/Object;
.source "Binding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/upnp/utils/Binding$MyServiceConnection;,
        Lmiui/upnp/utils/Binding$State;,
        Lmiui/upnp/utils/Binding$ServiceState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private connection:Landroid/content/ServiceConnection;

.field private context:Landroid/content/Context;

.field private final serviceState:Lmiui/upnp/utils/Binding$ServiceState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lmiui/upnp/utils/Binding;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/upnp/utils/Binding;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/upnp/utils/Binding$ServiceState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/upnp/utils/Binding$ServiceState;-><init>(Lmiui/upnp/utils/Binding;Lmiui/upnp/utils/Binding$1;)V

    iput-object v0, p0, Lmiui/upnp/utils/Binding;->serviceState:Lmiui/upnp/utils/Binding$ServiceState;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmiui/upnp/utils/Binding;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmiui/upnp/utils/Binding;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/upnp/utils/Binding;)Lmiui/upnp/utils/Binding$ServiceState;
    .locals 1

    iget-object v0, p0, Lmiui/upnp/utils/Binding;->serviceState:Lmiui/upnp/utils/Binding$ServiceState;

    return-object v0
.end method


# virtual methods
.method protected declared-synchronized bind(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/upnp/utils/Binding;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lmiui/upnp/utils/Binding;->TAG:Ljava/lang/String;

    const-string v3, "context is null"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lmiui/upnp/utils/Binding;->serviceState:Lmiui/upnp/utils/Binding$ServiceState;

    iget-object v0, v0, Lmiui/upnp/utils/Binding$ServiceState;->value:Lmiui/upnp/utils/Binding$State;

    sget-object v3, Lmiui/upnp/utils/Binding$State;->UNBIND:Lmiui/upnp/utils/Binding$State;

    if-eq v0, v3, :cond_1

    sget-object v0, Lmiui/upnp/utils/Binding;->TAG:Ljava/lang/String;

    const-string v3, "bind, but serviceState is: %s"

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lmiui/upnp/utils/Binding;->serviceState:Lmiui/upnp/utils/Binding$ServiceState;

    iget-object v5, v5, Lmiui/upnp/utils/Binding$ServiceState;->value:Lmiui/upnp/utils/Binding$State;

    invoke-virtual {v5}, Lmiui/upnp/utils/Binding$State;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lmiui/upnp/utils/Binding;->serviceState:Lmiui/upnp/utils/Binding$ServiceState;

    sget-object v3, Lmiui/upnp/utils/Binding$State;->BINDING:Lmiui/upnp/utils/Binding$State;

    iput-object v3, v0, Lmiui/upnp/utils/Binding$ServiceState;->value:Lmiui/upnp/utils/Binding$State;

    new-instance v0, Lmiui/upnp/utils/Binding$MyServiceConnection;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lmiui/upnp/utils/Binding$MyServiceConnection;-><init>(Lmiui/upnp/utils/Binding;Lmiui/upnp/utils/Binding$1;)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lmiui/upnp/utils/Binding;->context:Landroid/content/Context;

    invoke-virtual {v4, v3, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    if-eqz v4, :cond_3

    iput-object v0, p0, Lmiui/upnp/utils/Binding;->connection:Landroid/content/ServiceConnection;

    iget-object v4, p0, Lmiui/upnp/utils/Binding;->serviceState:Lmiui/upnp/utils/Binding$ServiceState;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lmiui/upnp/utils/Binding;->serviceState:Lmiui/upnp/utils/Binding$ServiceState;

    iget-object v5, v5, Lmiui/upnp/utils/Binding$ServiceState;->value:Lmiui/upnp/utils/Binding$State;

    sget-object v6, Lmiui/upnp/utils/Binding$State;->BINDING:Lmiui/upnp/utils/Binding$State;

    if-ne v5, v6, :cond_2

    sget-object v5, Lmiui/upnp/utils/Binding;->TAG:Ljava/lang/String;

    const-string v6, "(%s) waiting..."

    new-array v7, v2, [Ljava/lang/Object;

    aput-object p2, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v5, p0, Lmiui/upnp/utils/Binding;->serviceState:Lmiui/upnp/utils/Binding$ServiceState;

    iput-boolean v2, v5, Lmiui/upnp/utils/Binding$ServiceState;->waiting:Z

    iget-object v5, p0, Lmiui/upnp/utils/Binding;->serviceState:Lmiui/upnp/utils/Binding$ServiceState;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    iget-object v5, p0, Lmiui/upnp/utils/Binding;->serviceState:Lmiui/upnp/utils/Binding$ServiceState;

    iput-boolean v1, v5, Lmiui/upnp/utils/Binding$ServiceState;->waiting:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_3
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_2
    :goto_0
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :cond_3
    sget-object v4, Lmiui/upnp/utils/Binding;->TAG:Ljava/lang/String;

    const-string v5, "bindService failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lmiui/upnp/utils/Binding;->serviceState:Lmiui/upnp/utils/Binding$ServiceState;

    sget-object v5, Lmiui/upnp/utils/Binding$State;->UNBIND:Lmiui/upnp/utils/Binding$State;

    iput-object v5, v4, Lmiui/upnp/utils/Binding$ServiceState;->value:Lmiui/upnp/utils/Binding$State;

    nop

    :goto_1
    iget-object v0, p0, Lmiui/upnp/utils/Binding;->serviceState:Lmiui/upnp/utils/Binding$ServiceState;

    iget-object v0, v0, Lmiui/upnp/utils/Binding$ServiceState;->value:Lmiui/upnp/utils/Binding$State;

    sget-object v3, Lmiui/upnp/utils/Binding$State;->BOUND:Lmiui/upnp/utils/Binding$State;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ne v0, v3, :cond_4

    move v1, v2

    :cond_4
    monitor-exit p0

    return v1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lmiui/upnp/utils/Binding;->context:Landroid/content/Context;

    return-object v0
.end method

.method public isBound()Z
    .locals 2

    iget-object v0, p0, Lmiui/upnp/utils/Binding;->serviceState:Lmiui/upnp/utils/Binding$ServiceState;

    iget-object v0, v0, Lmiui/upnp/utils/Binding$ServiceState;->value:Lmiui/upnp/utils/Binding$State;

    sget-object v1, Lmiui/upnp/utils/Binding$State;->BOUND:Lmiui/upnp/utils/Binding$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end method

.method protected abstract onServiceDisconnected(Landroid/content/ComponentName;)V
.end method

.method public declared-synchronized unbind()Z
    .locals 6

    monitor-enter p0

    :try_start_0
    sget-object v0, Lmiui/upnp/utils/Binding;->TAG:Ljava/lang/String;

    const-string v1, "unbind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/upnp/utils/Binding;->serviceState:Lmiui/upnp/utils/Binding$ServiceState;

    iget-object v0, v0, Lmiui/upnp/utils/Binding$ServiceState;->value:Lmiui/upnp/utils/Binding$State;

    sget-object v1, Lmiui/upnp/utils/Binding$State;->UNBIND:Lmiui/upnp/utils/Binding$State;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lmiui/upnp/utils/Binding;->TAG:Ljava/lang/String;

    const-string v1, "unbind, but serviceState is: %s"

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lmiui/upnp/utils/Binding;->serviceState:Lmiui/upnp/utils/Binding$ServiceState;

    iget-object v5, v5, Lmiui/upnp/utils/Binding$ServiceState;->value:Lmiui/upnp/utils/Binding$State;

    invoke-virtual {v5}, Lmiui/upnp/utils/Binding$State;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/upnp/utils/Binding;->connection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/upnp/utils/Binding;->context:Landroid/content/Context;

    iget-object v1, p0, Lmiui/upnp/utils/Binding;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/upnp/utils/Binding;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lmiui/upnp/utils/Binding;->onServiceDisconnected(Landroid/content/ComponentName;)V

    :cond_1
    iget-object v0, p0, Lmiui/upnp/utils/Binding;->serviceState:Lmiui/upnp/utils/Binding$ServiceState;

    sget-object v1, Lmiui/upnp/utils/Binding$State;->UNBIND:Lmiui/upnp/utils/Binding$State;

    iput-object v1, v0, Lmiui/upnp/utils/Binding$ServiceState;->value:Lmiui/upnp/utils/Binding$State;

    :goto_0
    iget-object v0, p0, Lmiui/upnp/utils/Binding;->serviceState:Lmiui/upnp/utils/Binding$ServiceState;

    iget-object v0, v0, Lmiui/upnp/utils/Binding$ServiceState;->value:Lmiui/upnp/utils/Binding$State;

    sget-object v1, Lmiui/upnp/utils/Binding$State;->UNBIND:Lmiui/upnp/utils/Binding$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_2

    move v2, v3

    :cond_2
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
