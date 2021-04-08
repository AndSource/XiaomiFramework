.class Landroid/net/wifi/WifiManager$1;
.super Landroid/net/wifi/IOnWifiUsabilityStatsListener$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiManager;->addOnWifiUsabilityStatsListener(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiManager;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$listener:Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiManager$1;->this$0:Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Landroid/net/wifi/WifiManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/net/wifi/WifiManager$1;->val$listener:Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;

    invoke-direct {p0}, Landroid/net/wifi/IOnWifiUsabilityStatsListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onWifiUsabilityStats$0(Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;IZLandroid/net/wifi/WifiUsabilityStatsEntry;)V
    .locals 0

    invoke-interface {p0, p1, p2, p3}, Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;->onWifiUsabilityStats(IZLandroid/net/wifi/WifiUsabilityStatsEntry;)V

    return-void
.end method

.method static synthetic lambda$onWifiUsabilityStats$1(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;IZLandroid/net/wifi/WifiUsabilityStatsEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/net/wifi/-$$Lambda$WifiManager$1$jN3hHFyvfp2UAuLO8N-VxYJuzY8;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/net/wifi/-$$Lambda$WifiManager$1$jN3hHFyvfp2UAuLO8N-VxYJuzY8;-><init>(Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;IZLandroid/net/wifi/WifiUsabilityStatsEntry;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onWifiUsabilityStats(IZLandroid/net/wifi/WifiUsabilityStatsEntry;)V
    .locals 8

    iget-object v0, p0, Landroid/net/wifi/WifiManager$1;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->access$000(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnWifiUsabilityStatsListener: onWifiUsabilityStats: seqNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Landroid/net/wifi/WifiManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Landroid/net/wifi/WifiManager$1;->val$listener:Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;

    new-instance v0, Landroid/net/wifi/-$$Lambda$WifiManager$1$HHq94tH9ygKDknRiBOn9DYskiOc;

    move-object v2, v0

    move v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Landroid/net/wifi/-$$Lambda$WifiManager$1$HHq94tH9ygKDknRiBOn9DYskiOc;-><init>(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;IZLandroid/net/wifi/WifiUsabilityStatsEntry;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
