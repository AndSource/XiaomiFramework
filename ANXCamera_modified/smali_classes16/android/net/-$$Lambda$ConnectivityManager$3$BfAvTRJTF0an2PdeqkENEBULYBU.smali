.class public final synthetic Landroid/net/-$$Lambda$ConnectivityManager$3$BfAvTRJTF0an2PdeqkENEBULYBU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field private final synthetic f$0:Ljava/util/concurrent/Executor;

.field private final synthetic f$1:Landroid/net/ConnectivityManager$OnTetheringEventCallback;

.field private final synthetic f$2:Landroid/net/Network;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Landroid/net/ConnectivityManager$OnTetheringEventCallback;Landroid/net/Network;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$ConnectivityManager$3$BfAvTRJTF0an2PdeqkENEBULYBU;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/net/-$$Lambda$ConnectivityManager$3$BfAvTRJTF0an2PdeqkENEBULYBU;->f$1:Landroid/net/ConnectivityManager$OnTetheringEventCallback;

    iput-object p3, p0, Landroid/net/-$$Lambda$ConnectivityManager$3$BfAvTRJTF0an2PdeqkENEBULYBU;->f$2:Landroid/net/Network;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 3

    iget-object v0, p0, Landroid/net/-$$Lambda$ConnectivityManager$3$BfAvTRJTF0an2PdeqkENEBULYBU;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/net/-$$Lambda$ConnectivityManager$3$BfAvTRJTF0an2PdeqkENEBULYBU;->f$1:Landroid/net/ConnectivityManager$OnTetheringEventCallback;

    iget-object v2, p0, Landroid/net/-$$Lambda$ConnectivityManager$3$BfAvTRJTF0an2PdeqkENEBULYBU;->f$2:Landroid/net/Network;

    invoke-static {v0, v1, v2}, Landroid/net/ConnectivityManager$3;->lambda$onUpstreamChanged$1(Ljava/util/concurrent/Executor;Landroid/net/ConnectivityManager$OnTetheringEventCallback;Landroid/net/Network;)V

    return-void
.end method
