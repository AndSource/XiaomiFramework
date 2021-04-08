.class public final synthetic Landroid/net/wifi/-$$Lambda$WifiManager$1$HHq94tH9ygKDknRiBOn9DYskiOc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field private final synthetic f$0:Ljava/util/concurrent/Executor;

.field private final synthetic f$1:Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;

.field private final synthetic f$2:I

.field private final synthetic f$3:Z

.field private final synthetic f$4:Landroid/net/wifi/WifiUsabilityStatsEntry;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;IZLandroid/net/wifi/WifiUsabilityStatsEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/-$$Lambda$WifiManager$1$HHq94tH9ygKDknRiBOn9DYskiOc;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/net/wifi/-$$Lambda$WifiManager$1$HHq94tH9ygKDknRiBOn9DYskiOc;->f$1:Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;

    iput p3, p0, Landroid/net/wifi/-$$Lambda$WifiManager$1$HHq94tH9ygKDknRiBOn9DYskiOc;->f$2:I

    iput-boolean p4, p0, Landroid/net/wifi/-$$Lambda$WifiManager$1$HHq94tH9ygKDknRiBOn9DYskiOc;->f$3:Z

    iput-object p5, p0, Landroid/net/wifi/-$$Lambda$WifiManager$1$HHq94tH9ygKDknRiBOn9DYskiOc;->f$4:Landroid/net/wifi/WifiUsabilityStatsEntry;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 5

    iget-object v0, p0, Landroid/net/wifi/-$$Lambda$WifiManager$1$HHq94tH9ygKDknRiBOn9DYskiOc;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/net/wifi/-$$Lambda$WifiManager$1$HHq94tH9ygKDknRiBOn9DYskiOc;->f$1:Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;

    iget v2, p0, Landroid/net/wifi/-$$Lambda$WifiManager$1$HHq94tH9ygKDknRiBOn9DYskiOc;->f$2:I

    iget-boolean v3, p0, Landroid/net/wifi/-$$Lambda$WifiManager$1$HHq94tH9ygKDknRiBOn9DYskiOc;->f$3:Z

    iget-object v4, p0, Landroid/net/wifi/-$$Lambda$WifiManager$1$HHq94tH9ygKDknRiBOn9DYskiOc;->f$4:Landroid/net/wifi/WifiUsabilityStatsEntry;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/net/wifi/WifiManager$1;->lambda$onWifiUsabilityStats$1(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;IZLandroid/net/wifi/WifiUsabilityStatsEntry;)V

    return-void
.end method
