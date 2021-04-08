.class public final synthetic Landroid/media/-$$Lambda$MediaDrm$yt6nGQRkzqmvdepRhmHi5hpgAOo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/media/MediaDrm;

.field private final synthetic f$1:Ljava/lang/Object;

.field private final synthetic f$2:Landroid/media/MediaDrm$ListenerWithExecutor;

.field private final synthetic f$3:I

.field private final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaDrm;Ljava/lang/Object;Landroid/media/MediaDrm$ListenerWithExecutor;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/-$$Lambda$MediaDrm$yt6nGQRkzqmvdepRhmHi5hpgAOo;->f$0:Landroid/media/MediaDrm;

    iput-object p2, p0, Landroid/media/-$$Lambda$MediaDrm$yt6nGQRkzqmvdepRhmHi5hpgAOo;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Landroid/media/-$$Lambda$MediaDrm$yt6nGQRkzqmvdepRhmHi5hpgAOo;->f$2:Landroid/media/MediaDrm$ListenerWithExecutor;

    iput p4, p0, Landroid/media/-$$Lambda$MediaDrm$yt6nGQRkzqmvdepRhmHi5hpgAOo;->f$3:I

    iput p5, p0, Landroid/media/-$$Lambda$MediaDrm$yt6nGQRkzqmvdepRhmHi5hpgAOo;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Landroid/media/-$$Lambda$MediaDrm$yt6nGQRkzqmvdepRhmHi5hpgAOo;->f$0:Landroid/media/MediaDrm;

    iget-object v1, p0, Landroid/media/-$$Lambda$MediaDrm$yt6nGQRkzqmvdepRhmHi5hpgAOo;->f$1:Ljava/lang/Object;

    iget-object v2, p0, Landroid/media/-$$Lambda$MediaDrm$yt6nGQRkzqmvdepRhmHi5hpgAOo;->f$2:Landroid/media/MediaDrm$ListenerWithExecutor;

    iget v3, p0, Landroid/media/-$$Lambda$MediaDrm$yt6nGQRkzqmvdepRhmHi5hpgAOo;->f$3:I

    iget v4, p0, Landroid/media/-$$Lambda$MediaDrm$yt6nGQRkzqmvdepRhmHi5hpgAOo;->f$4:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/media/MediaDrm;->lambda$postEventFromNative$4(Landroid/media/MediaDrm;Ljava/lang/Object;Landroid/media/MediaDrm$ListenerWithExecutor;II)V

    return-void
.end method
