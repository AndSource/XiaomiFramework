.class Lmiui/media/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/media/e;->setOnErrorListener(Lmiui/media/Recorder$OnErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic j:Lmiui/media/e;


# direct methods
.method constructor <init>(Lmiui/media/e;)V
    .locals 0

    iput-object p1, p0, Lmiui/media/c;->j:Lmiui/media/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 0

    iget-object p1, p0, Lmiui/media/c;->j:Lmiui/media/e;

    invoke-static {p1}, Lmiui/media/e;->a(Lmiui/media/e;)Lmiui/media/Recorder$OnErrorListener;

    move-result-object p1

    iget-object p0, p0, Lmiui/media/c;->j:Lmiui/media/e;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lmiui/media/k;->b(IZ)I

    move-result p2

    invoke-interface {p1, p0, p2}, Lmiui/media/Recorder$OnErrorListener;->onError(Lmiui/media/Recorder;I)V

    return-void
.end method
