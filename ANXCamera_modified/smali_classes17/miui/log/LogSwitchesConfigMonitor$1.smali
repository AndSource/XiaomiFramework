.class Lmiui/log/LogSwitchesConfigMonitor$1;
.super Landroid/os/FileObserver;
.source "LogSwitchesConfigMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/log/LogSwitchesConfigMonitor;->startMonitoring(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/log/LogSwitchesConfigMonitor;


# direct methods
.method constructor <init>(Lmiui/log/LogSwitchesConfigMonitor;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lmiui/log/LogSwitchesConfigMonitor$1;->this$0:Lmiui/log/LogSwitchesConfigMonitor;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor$1;->this$0:Lmiui/log/LogSwitchesConfigMonitor;

    invoke-static {v0}, Lmiui/log/LogSwitchesConfigMonitor;->access$000(Lmiui/log/LogSwitchesConfigMonitor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor$1;->this$0:Lmiui/log/LogSwitchesConfigMonitor;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lmiui/log/LogSwitchesConfigMonitor$1;->this$0:Lmiui/log/LogSwitchesConfigMonitor;

    iget-object v2, p0, Lmiui/log/LogSwitchesConfigMonitor$1;->this$0:Lmiui/log/LogSwitchesConfigMonitor;

    invoke-static {v2}, Lmiui/log/LogSwitchesConfigMonitor;->access$300(Lmiui/log/LogSwitchesConfigMonitor;)Lmiui/log/LogSwitchesConfigApplier;

    move-result-object v2

    iget-object v3, p0, Lmiui/log/LogSwitchesConfigMonitor$1;->this$0:Lmiui/log/LogSwitchesConfigMonitor;

    invoke-static {v3}, Lmiui/log/LogSwitchesConfigMonitor;->access$200(Lmiui/log/LogSwitchesConfigMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/log/LogSwitchesConfigApplier;->apply(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/log/LogSwitchesConfigMonitor;->access$102(Lmiui/log/LogSwitchesConfigMonitor;Ljava/util/HashMap;)Ljava/util/HashMap;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method
