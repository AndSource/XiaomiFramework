.class Lmiui/media/a;
.super Lmiui/media/e;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/media/e;-><init>()V

    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setAudioSource(I)V
    .locals 0

    invoke-super {p0, p1}, Lmiui/media/e;->setAudioSource(I)V

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lmiui/media/e;->setOutputFormat(I)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lmiui/media/e;->setAudioEncoder(I)V

    return-void
.end method
