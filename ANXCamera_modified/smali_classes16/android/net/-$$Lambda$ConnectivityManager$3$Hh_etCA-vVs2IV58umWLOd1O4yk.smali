.class public final synthetic Landroid/net/-$$Lambda$ConnectivityManager$3$Hh_etCA-vVs2IV58umWLOd1O4yk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/net/ConnectivityManager$OnTetheringEventCallback;

.field private final synthetic f$1:Landroid/net/Network;


# direct methods
.method public synthetic constructor <init>(Landroid/net/ConnectivityManager$OnTetheringEventCallback;Landroid/net/Network;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$ConnectivityManager$3$Hh_etCA-vVs2IV58umWLOd1O4yk;->f$0:Landroid/net/ConnectivityManager$OnTetheringEventCallback;

    iput-object p2, p0, Landroid/net/-$$Lambda$ConnectivityManager$3$Hh_etCA-vVs2IV58umWLOd1O4yk;->f$1:Landroid/net/Network;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/net/-$$Lambda$ConnectivityManager$3$Hh_etCA-vVs2IV58umWLOd1O4yk;->f$0:Landroid/net/ConnectivityManager$OnTetheringEventCallback;

    iget-object v1, p0, Landroid/net/-$$Lambda$ConnectivityManager$3$Hh_etCA-vVs2IV58umWLOd1O4yk;->f$1:Landroid/net/Network;

    invoke-static {v0, v1}, Landroid/net/ConnectivityManager$3;->lambda$onUpstreamChanged$0(Landroid/net/ConnectivityManager$OnTetheringEventCallback;Landroid/net/Network;)V

    return-void
.end method
