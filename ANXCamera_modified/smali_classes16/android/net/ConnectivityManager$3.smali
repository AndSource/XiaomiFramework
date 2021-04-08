.class Landroid/net/ConnectivityManager$3;
.super Landroid/net/ITetheringEventCallback$Stub;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ConnectivityManager;->registerTetheringEventCallback(Ljava/util/concurrent/Executor;Landroid/net/ConnectivityManager$OnTetheringEventCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ConnectivityManager;

.field final synthetic val$callback:Landroid/net/ConnectivityManager$OnTetheringEventCallback;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroid/net/ConnectivityManager;Ljava/util/concurrent/Executor;Landroid/net/ConnectivityManager$OnTetheringEventCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/net/ConnectivityManager$3;->this$0:Landroid/net/ConnectivityManager;

    iput-object p2, p0, Landroid/net/ConnectivityManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/net/ConnectivityManager$3;->val$callback:Landroid/net/ConnectivityManager$OnTetheringEventCallback;

    invoke-direct {p0}, Landroid/net/ITetheringEventCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onUpstreamChanged$0(Landroid/net/ConnectivityManager$OnTetheringEventCallback;Landroid/net/Network;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager$OnTetheringEventCallback;->onUpstreamChanged(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic lambda$onUpstreamChanged$1(Ljava/util/concurrent/Executor;Landroid/net/ConnectivityManager$OnTetheringEventCallback;Landroid/net/Network;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/net/-$$Lambda$ConnectivityManager$3$Hh_etCA-vVs2IV58umWLOd1O4yk;

    invoke-direct {v0, p1, p2}, Landroid/net/-$$Lambda$ConnectivityManager$3$Hh_etCA-vVs2IV58umWLOd1O4yk;-><init>(Landroid/net/ConnectivityManager$OnTetheringEventCallback;Landroid/net/Network;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onUpstreamChanged(Landroid/net/Network;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/ConnectivityManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/net/ConnectivityManager$3;->val$callback:Landroid/net/ConnectivityManager$OnTetheringEventCallback;

    new-instance v2, Landroid/net/-$$Lambda$ConnectivityManager$3$BfAvTRJTF0an2PdeqkENEBULYBU;

    invoke-direct {v2, v0, v1, p1}, Landroid/net/-$$Lambda$ConnectivityManager$3$BfAvTRJTF0an2PdeqkENEBULYBU;-><init>(Ljava/util/concurrent/Executor;Landroid/net/ConnectivityManager$OnTetheringEventCallback;Landroid/net/Network;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
