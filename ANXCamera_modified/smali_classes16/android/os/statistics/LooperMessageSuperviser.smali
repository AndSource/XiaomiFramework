.class public Landroid/os/statistics/LooperMessageSuperviser;
.super Ljava/lang/Object;
.source "LooperMessageSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;,
        Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginLooperMessage(Landroid/os/ILooperMonitorable;Landroid/os/Message;)V
    .locals 1

    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isPerfEventReportable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Landroid/os/ILooperMonitorable;->isMonitorLooper()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Landroid/os/statistics/LooperMessageSuperviser;->nativeBeginLooperMessage()V

    return-void
.end method

.method public static endLooperMessage(Landroid/os/ILooperMonitorable;Landroid/os/Message;J)V
    .locals 5

    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isPerfEventReportable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Landroid/os/ILooperMonitorable;->isMonitorLooper()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    move-object v3, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iget v4, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v3, v4, v2, p2, p3}, Landroid/os/statistics/LooperMessageSuperviser;->nativeEndLooperMessage(Ljava/lang/String;ILjava/lang/String;J)V

    return-void
.end method

.method private static native nativeBeginLooperMessage()V
.end method

.method private static native nativeEndLooperMessage(Ljava/lang/String;ILjava/lang/String;J)V
.end method
