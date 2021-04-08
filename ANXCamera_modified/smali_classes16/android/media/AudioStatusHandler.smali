.class public Landroid/media/AudioStatusHandler;
.super Ljava/lang/Object;
.source "AudioStatusHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioStatusHandler$ModeState;,
        Landroid/media/AudioStatusHandler$AudioState;,
        Landroid/media/AudioStatusHandler$DeviceState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DELAY:J = 0x1d4c0L

.field public static final KEY_PID:Ljava/lang/String; = "pid"

.field public static final KEY_STATE:Ljava/lang/String; = "state"

.field public static final KEY_USAGE:Ljava/lang/String; = "usage"

.field public static final MODE_MASK_FOR_NOTIFY:Ljava/lang/String; = "mode_mask_for_notify"

.field public static final MODE_MASK_FOR_NOTIFY_DEFAULT:Ljava/lang/String; = "3"

.field private static final MSG_CANCEL_MODE_NOTIFICATION:I = 0x2712

.field private static final MSG_SEND_MODE_NOTIFICATION:I = 0x2711

.field private static final TAG:Ljava/lang/String;

.field private static sAudioStatusHandler:Landroid/media/AudioStatusHandler;


# instance fields
.field private mAudioState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/media/AudioStatusHandler$AudioState;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDeviceState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/media/AudioStatusHandler$DeviceState;",
            ">;"
        }
    .end annotation
.end field

.field private mHandle:Landroid/os/Handler;

.field private final mStateLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Landroid/media/AudioStatusHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/AudioStatusHandler;->TAG:Ljava/lang/String;

    sget-object v0, Landroid/media/AudioStatusHandler;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/AudioStatusHandler;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioStatusHandler;->mAudioState:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioStatusHandler;->mDeviceState:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioStatusHandler;->mStateLock:Ljava/lang/Object;

    new-instance v0, Landroid/media/AudioStatusHandler$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/media/AudioStatusHandler$1;-><init>(Landroid/media/AudioStatusHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/AudioStatusHandler;->mHandle:Landroid/os/Handler;

    iput-object p1, p0, Landroid/media/AudioStatusHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Landroid/media/AudioStatusHandler;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioStatusHandler;->mStateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/AudioStatusHandler;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioStatusHandler;->mAudioState:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/media/AudioStatusHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Landroid/media/AudioStatusHandler;->DEBUG:Z

    return v0
.end method

.method static synthetic access$400(Landroid/media/AudioStatusHandler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioStatusHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/AudioStatusHandler;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/AudioStatusHandler;->cancelMessage(I)V

    return-void
.end method

.method static synthetic access$600(Landroid/media/AudioStatusHandler;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioStatusHandler;->sendMessage(IJ)V

    return-void
.end method

.method private addAudioState(I)Landroid/media/AudioStatusHandler$AudioState;
    .locals 5

    iget-object v0, p0, Landroid/media/AudioStatusHandler;->mAudioState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioStatusHandler$AudioState;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/media/AudioStatusHandler$ModeState;

    invoke-direct {v1, p0}, Landroid/media/AudioStatusHandler$ModeState;-><init>(Landroid/media/AudioStatusHandler;)V

    move-object v0, v1

    nop

    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/media/AudioStatusHandler;->mDeviceState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioStatusHandler$DeviceState;

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Landroid/media/AudioStatusHandler;->addDeviceState(I)Landroid/media/AudioStatusHandler$DeviceState;

    move-result-object v1

    :cond_2
    invoke-virtual {v0, v1}, Landroid/media/AudioStatusHandler$AudioState;->updateDeviceState(Landroid/media/AudioStatusHandler$DeviceState;)Z

    iget-object v2, p0, Landroid/media/AudioStatusHandler;->mStateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroid/media/AudioStatusHandler;->mAudioState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Landroid/media/AudioStatusHandler;->mDeviceState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method private addDeviceState(I)Landroid/media/AudioStatusHandler$DeviceState;
    .locals 4

    iget-object v0, p0, Landroid/media/AudioStatusHandler;->mDeviceState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioStatusHandler$DeviceState;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/media/AudioStatusHandler$DeviceState;

    invoke-direct {v1, p0, p1}, Landroid/media/AudioStatusHandler$DeviceState;-><init>(Landroid/media/AudioStatusHandler;I)V

    move-object v0, v1

    iget-object v1, p0, Landroid/media/AudioStatusHandler;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/media/AudioStatusHandler;->mDeviceState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private cancelMessage(I)V
    .locals 1

    iget-object v0, p0, Landroid/media/AudioStatusHandler;->mHandle:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioStatusHandler;->mHandle:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/media/AudioStatusHandler;
    .locals 2

    sget-object v0, Landroid/media/AudioStatusHandler;->sAudioStatusHandler:Landroid/media/AudioStatusHandler;

    if-nez v0, :cond_1

    const-class v0, Landroid/media/AudioStatusHandler;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/media/AudioStatusHandler;->sAudioStatusHandler:Landroid/media/AudioStatusHandler;

    if-nez v1, :cond_0

    new-instance v1, Landroid/media/AudioStatusHandler;

    invoke-direct {v1, p0}, Landroid/media/AudioStatusHandler;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/media/AudioStatusHandler;->sAudioStatusHandler:Landroid/media/AudioStatusHandler;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Landroid/media/AudioStatusHandler;->sAudioStatusHandler:Landroid/media/AudioStatusHandler;

    return-object v0
.end method

.method private sendMessage(IJ)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/media/AudioStatusHandler;->cancelMessage(I)V

    iget-object v0, p0, Landroid/media/AudioStatusHandler;->mHandle:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public handleAudioStatusChanged(Landroid/os/Bundle;)V
    .locals 5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo v0, "usage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/AudioStatusHandler;->addAudioState(I)Landroid/media/AudioStatusHandler$AudioState;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Landroid/media/AudioStatusHandler$AudioState;->update(Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    sget-boolean v2, Landroid/media/AudioStatusHandler;->DEBUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Landroid/media/AudioStatusHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleAudioStatusChanged type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/media/AudioStatusHandler$AudioState;->mUsage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/media/AudioStatusHandler$AudioState;->mPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/media/AudioStatusHandler$AudioState;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    :goto_0
    sget-boolean v2, Landroid/media/AudioStatusHandler;->DEBUG:Z

    if-eqz v2, :cond_4

    sget-object v2, Landroid/media/AudioStatusHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleAudioStatusChanged no update for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method public handleSetForceUse(IILjava/lang/String;)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/media/AudioStatusHandler;->addDeviceState(I)Landroid/media/AudioStatusHandler$DeviceState;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioStatusHandler$DeviceState;->update(IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v1, Landroid/media/AudioStatusHandler;->DEBUG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "handleSetForceUse("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/media/AudioStatusHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleSetForceUse type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Landroid/media/AudioStatusHandler;->mAudioState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioStatusHandler$AudioState;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/media/AudioStatusHandler$AudioState;->updateDeviceState(Landroid/media/AudioStatusHandler$DeviceState;)Z

    invoke-virtual {v1}, Landroid/media/AudioStatusHandler$AudioState;->onConfigChanaged()Z

    :cond_2
    return-void

    :cond_3
    :goto_0
    sget-boolean v1, Landroid/media/AudioStatusHandler;->DEBUG:Z

    if-eqz v1, :cond_4

    sget-object v1, Landroid/media/AudioStatusHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleSetForceUse no update for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method
