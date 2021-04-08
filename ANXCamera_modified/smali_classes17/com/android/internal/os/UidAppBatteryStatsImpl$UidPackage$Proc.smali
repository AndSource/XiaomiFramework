.class public Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;
.super Ljava/lang/Object;
.source "UidAppBatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proc"
.end annotation


# instance fields
.field mActive:Z

.field protected mBsi:Lcom/android/internal/os/BatteryStatsImpl;

.field mForegroundTime:J

.field mLoadedForegroundTime:J

.field final mName:Ljava/lang/String;

.field mUnpluggedForegroundTime:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;->mActive:Z

    iput-object p1, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iput-object p2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;->mName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method


# virtual methods
.method public addForegroundTimeLocked(J)V
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;->mForegroundTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;->mForegroundTime:J

    return-void
.end method

.method public detach()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;->mActive:Z

    iget-object v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method public getForegroundTime(I)J
    .locals 4

    iget-wide v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;->mForegroundTime:J

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;->mLoadedForegroundTime:J

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    iget-wide v2, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;->mUnpluggedForegroundTime:J

    sub-long/2addr v0, v2

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;->mActive:Z

    return v0
.end method

.method public onTimeStarted(JJJ)V
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;->mForegroundTime:J

    iput-wide v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;->mUnpluggedForegroundTime:J

    return-void
.end method

.method public onTimeStopped(JJJ)V
    .locals 0

    return-void
.end method

.method readFromParcelLocked(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;->mForegroundTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;->mLoadedForegroundTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;->mUnpluggedForegroundTime:J

    return-void
.end method

.method public reset(Z)Z
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;->mUnpluggedForegroundTime:J

    iput-wide v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;->mLoadedForegroundTime:J

    iput-wide v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;->mForegroundTime:J

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;->detach()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method writeToParcelLocked(Landroid/os/Parcel;)V
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;->mForegroundTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;->mLoadedForegroundTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;->mUnpluggedForegroundTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
