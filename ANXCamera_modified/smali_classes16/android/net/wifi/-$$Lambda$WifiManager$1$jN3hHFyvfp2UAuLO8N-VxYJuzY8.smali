.class public final synthetic Landroid/net/wifi/-$$Lambda$WifiManager$1$jN3hHFyvfp2UAuLO8N-VxYJuzY8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;

.field private final synthetic f$1:I

.field private final synthetic f$2:Z

.field private final synthetic f$3:Landroid/net/wifi/WifiUsabilityStatsEntry;


# direct methods
.method public synthetic constructor <init>(Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;IZLandroid/net/wifi/WifiUsabilityStatsEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/-$$Lambda$WifiManager$1$jN3hHFyvfp2UAuLO8N-VxYJuzY8;->f$0:Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;

    iput p2, p0, Landroid/net/wifi/-$$Lambda$WifiManager$1$jN3hHFyvfp2UAuLO8N-VxYJuzY8;->f$1:I

    iput-boolean p3, p0, Landroid/net/wifi/-$$Lambda$WifiManager$1$jN3hHFyvfp2UAuLO8N-VxYJuzY8;->f$2:Z

    iput-object p4, p0, Landroid/net/wifi/-$$Lambda$WifiManager$1$jN3hHFyvfp2UAuLO8N-VxYJuzY8;->f$3:Landroid/net/wifi/WifiUsabilityStatsEntry;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroid/net/wifi/-$$Lambda$WifiManager$1$jN3hHFyvfp2UAuLO8N-VxYJuzY8;->f$0:Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;

    iget v1, p0, Landroid/net/wifi/-$$Lambda$WifiManager$1$jN3hHFyvfp2UAuLO8N-VxYJuzY8;->f$1:I

    iget-boolean v2, p0, Landroid/net/wifi/-$$Lambda$WifiManager$1$jN3hHFyvfp2UAuLO8N-VxYJuzY8;->f$2:Z

    iget-object v3, p0, Landroid/net/wifi/-$$Lambda$WifiManager$1$jN3hHFyvfp2UAuLO8N-VxYJuzY8;->f$3:Landroid/net/wifi/WifiUsabilityStatsEntry;

    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/WifiManager$1;->lambda$onWifiUsabilityStats$0(Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;IZLandroid/net/wifi/WifiUsabilityStatsEntry;)V

    return-void
.end method
