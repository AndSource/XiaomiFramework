.class Lmiui/media/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/media/Mp3Recorder$RecordingErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/media/g;->setOnErrorListener(Lmiui/media/Recorder$OnErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic j:Lmiui/media/g;


# direct methods
.method constructor <init>(Lmiui/media/g;)V
    .locals 0

    iput-object p1, p0, Lmiui/media/f;->j:Lmiui/media/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lmiui/media/Mp3Recorder;I)V
    .locals 1

    iget-object p1, p0, Lmiui/media/f;->j:Lmiui/media/g;

    invoke-static {p1}, Lmiui/media/g;->a(Lmiui/media/g;)Lmiui/media/Recorder$OnErrorListener;

    move-result-object p1

    iget-object p0, p0, Lmiui/media/f;->j:Lmiui/media/g;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lmiui/media/k;->b(IZ)I

    move-result p2

    invoke-interface {p1, p0, p2}, Lmiui/media/Recorder$OnErrorListener;->onError(Lmiui/media/Recorder;I)V

    return-void
.end method
