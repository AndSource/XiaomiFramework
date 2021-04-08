.class Lmiui/media/g;
.super Lmiui/media/Mp3Recorder;
.source "SourceFile"

# interfaces
.implements Lmiui/media/Recorder;


# instance fields
.field private rQ:Lmiui/media/Recorder$OnErrorListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/media/Mp3Recorder;-><init>()V

    return-void
.end method

.method static synthetic a(Lmiui/media/g;)Lmiui/media/Recorder$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lmiui/media/g;->rQ:Lmiui/media/Recorder$OnErrorListener;

    return-object p0
.end method


# virtual methods
.method public canPause()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setAudioEncoder(I)V
    .locals 0

    return-void
.end method

.method public setAudioEncodingBitRate(I)V
    .locals 0

    invoke-super {p0, p1}, Lmiui/media/Mp3Recorder;->setOutBitRate(I)V

    return-void
.end method

.method public setMaxDuration(I)V
    .locals 2

    int-to-long v0, p1

    invoke-super {p0, v0, v1}, Lmiui/media/Mp3Recorder;->setMaxDuration(J)V

    return-void
.end method

.method public setOnErrorListener(Lmiui/media/Recorder$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lmiui/media/g;->rQ:Lmiui/media/Recorder$OnErrorListener;

    new-instance p1, Lmiui/media/f;

    invoke-direct {p1, p0}, Lmiui/media/f;-><init>(Lmiui/media/g;)V

    invoke-super {p0, p1}, Lmiui/media/Mp3Recorder;->setOnErrorListener(Lmiui/media/Mp3Recorder$RecordingErrorListener;)V

    return-void
.end method

.method public setOutputFormat(I)V
    .locals 0

    return-void
.end method
