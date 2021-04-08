.class Lmiui/animation/IAnimTarget$MonitorInfo;
.super Ljava/lang/Object;
.source "IAnimTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/animation/IAnimTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonitorInfo"
.end annotation


# instance fields
.field lastTime:J

.field monitor:Lmiui/animation/utils/VelocityMonitor;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/animation/utils/VelocityMonitor;

    invoke-direct {v0}, Lmiui/animation/utils/VelocityMonitor;-><init>()V

    iput-object v0, p0, Lmiui/animation/IAnimTarget$MonitorInfo;->monitor:Lmiui/animation/utils/VelocityMonitor;

    return-void
.end method
