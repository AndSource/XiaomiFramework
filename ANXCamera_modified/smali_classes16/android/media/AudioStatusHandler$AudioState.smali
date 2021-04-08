.class abstract Landroid/media/AudioStatusHandler$AudioState;
.super Ljava/lang/Object;
.source "AudioStatusHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioStatusHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "AudioState"
.end annotation


# instance fields
.field final DEFAULT_STATE:I

.field mDeviceState:Landroid/media/AudioStatusHandler$DeviceState;

.field mPid:I

.field mStartTime:J

.field mState:I

.field mUsage:I

.field final synthetic this$0:Landroid/media/AudioStatusHandler;


# direct methods
.method public constructor <init>(Landroid/media/AudioStatusHandler;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/AudioStatusHandler$AudioState;-><init>(Landroid/media/AudioStatusHandler;II)V

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioStatusHandler;II)V
    .locals 2

    iput-object p1, p0, Landroid/media/AudioStatusHandler$AudioState;->this$0:Landroid/media/AudioStatusHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Landroid/media/AudioStatusHandler$AudioState;->DEFAULT_STATE:I

    iput p2, p0, Landroid/media/AudioStatusHandler$AudioState;->mUsage:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioStatusHandler$AudioState;->mPid:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/AudioStatusHandler$AudioState;->mStartTime:J

    iget v0, p0, Landroid/media/AudioStatusHandler$AudioState;->DEFAULT_STATE:I

    iput v0, p0, Landroid/media/AudioStatusHandler$AudioState;->mState:I

    return-void
.end method


# virtual methods
.method public isActive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract onConfigChanaged()Z
.end method

.method public abstract onMessageReceived(Landroid/os/Message;)Z
.end method

.method public abstract onStateChanged()V
.end method

.method public update(Landroid/os/Bundle;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/media/AudioStatusHandler$AudioState;->mUsage:I

    const-string/jumbo v2, "usage"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    const-string/jumbo v1, "pid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget v2, p0, Landroid/media/AudioStatusHandler$AudioState;->DEFAULT_STATE:I

    const-string/jumbo v3, "state"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget v3, p0, Landroid/media/AudioStatusHandler$AudioState;->mPid:I

    if-ne v1, v3, :cond_2

    iget v3, p0, Landroid/media/AudioStatusHandler$AudioState;->mState:I

    if-ne v2, v3, :cond_2

    return v0

    :cond_2
    iput v1, p0, Landroid/media/AudioStatusHandler$AudioState;->mPid:I

    iput v2, p0, Landroid/media/AudioStatusHandler$AudioState;->mState:I

    iget-wide v3, p0, Landroid/media/AudioStatusHandler$AudioState;->mStartTime:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/media/AudioStatusHandler$AudioState;->mStartTime:J

    :cond_3
    iget v0, p0, Landroid/media/AudioStatusHandler$AudioState;->mState:I

    iget v3, p0, Landroid/media/AudioStatusHandler$AudioState;->DEFAULT_STATE:I

    if-ne v0, v3, :cond_4

    iput-wide v5, p0, Landroid/media/AudioStatusHandler$AudioState;->mStartTime:J

    :cond_4
    invoke-virtual {p0}, Landroid/media/AudioStatusHandler$AudioState;->onStateChanged()V

    const/4 v0, 0x1

    return v0

    :cond_5
    :goto_0
    return v0
.end method

.method public updateDeviceState(Landroid/media/AudioStatusHandler$DeviceState;)Z
    .locals 1

    iput-object p1, p0, Landroid/media/AudioStatusHandler$AudioState;->mDeviceState:Landroid/media/AudioStatusHandler$DeviceState;

    const/4 v0, 0x1

    return v0
.end method
