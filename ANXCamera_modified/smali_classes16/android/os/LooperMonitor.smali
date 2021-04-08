.class public Landroid/os/LooperMonitor;
.super Ljava/lang/Object;
.source "LooperMonitor.java"

# interfaces
.implements Landroid/os/ILooperMonitorable;


# instance fields
.field private mEnableMonitor:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enableMonitor(Z)V
    .locals 4

    iput-boolean p1, p0, Landroid/os/LooperMonitor;->mEnableMonitor:Z

    if-eqz p1, :cond_1

    :try_start_0
    const-string/jumbo v0, "getQueue"

    const-class v1, Landroid/os/MessageQueue;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v3}, Lmiui/util/ReflectionUtils;->callMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageQueue;

    if-eqz v0, :cond_0

    const-string v1, "enableMonitor"

    const-class v3, Ljava/lang/Void;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3, v2}, Lmiui/util/ReflectionUtils;->callMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    :goto_0
    return-void
.end method

.method public isMonitorLooper()Z
    .locals 1

    iget-boolean v0, p0, Landroid/os/LooperMonitor;->mEnableMonitor:Z

    return v0
.end method
