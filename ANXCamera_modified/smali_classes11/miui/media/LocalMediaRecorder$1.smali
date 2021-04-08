.class Lmiui/media/LocalMediaRecorder$1;
.super Ljava/lang/Object;
.source "LocalMediaRecorder.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/media/LocalMediaRecorder;->setOnErrorListener(Lmiui/media/Recorder$OnErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/media/LocalMediaRecorder;


# direct methods
.method constructor <init>(Lmiui/media/LocalMediaRecorder;)V
    .locals 0

    iput-object p1, p0, Lmiui/media/LocalMediaRecorder$1;->this$0:Lmiui/media/LocalMediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 0

    iget-object p1, p0, Lmiui/media/LocalMediaRecorder$1;->this$0:Lmiui/media/LocalMediaRecorder;

    invoke-static {p1}, Lmiui/media/LocalMediaRecorder;->access$000(Lmiui/media/LocalMediaRecorder;)Lmiui/media/Recorder$OnErrorListener;

    move-result-object p1

    iget-object p0, p0, Lmiui/media/LocalMediaRecorder$1;->this$0:Lmiui/media/LocalMediaRecorder;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lmiui/media/RecorderUtils;->convertErrorCode(IZ)I

    move-result p2

    invoke-interface {p1, p0, p2}, Lmiui/media/Recorder$OnErrorListener;->onError(Lmiui/media/Recorder;I)V

    return-void
.end method
