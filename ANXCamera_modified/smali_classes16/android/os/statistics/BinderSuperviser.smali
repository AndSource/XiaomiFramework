.class public Landroid/os/statistics/BinderSuperviser;
.super Ljava/lang/Object;
.source "BinderSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/BinderSuperviser$SingleBinderExecution;,
        Landroid/os/statistics/BinderSuperviser$BinderExecutionFields;,
        Landroid/os/statistics/BinderSuperviser$SingleBinderCall;,
        Landroid/os/statistics/BinderSuperviser$BinderCallFields;,
        Landroid/os/statistics/BinderSuperviser$BinderStarvation;,
        Landroid/os/statistics/BinderSuperviser$BinderStarvationDetails;,
        Landroid/os/statistics/BinderSuperviser$BinderWrapper;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/os/statistics/BinderSuperviser;->getInterfaceDescriptor(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getInterfaceDescriptor(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p0, Landroid/os/statistics/BinderSuperviser$BinderWrapper;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/os/statistics/BinderSuperviser$BinderWrapper;

    invoke-virtual {v1}, Landroid/os/statistics/BinderSuperviser$BinderWrapper;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    :cond_0
    instance-of v1, p0, Landroid/os/IBinder;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Landroid/os/IBinder;

    invoke-interface {v1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :cond_1
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    :goto_1
    if-nez v0, :cond_2

    const-string v1, ""

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    return-object v1
.end method
