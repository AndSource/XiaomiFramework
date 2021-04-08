.class Lmiui/media/b;
.super Lmiui/media/e;
.source "SourceFile"


# static fields
.field private static final yQ:Ljava/lang/String; = "#!AMR-WB\n"

.field private static final zQ:Ljava/lang/String; = "#!AMR\n"


# instance fields
.field private xQ:Z


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/media/e;-><init>()V

    return-void
.end method


# virtual methods
.method protected H()I
    .locals 0

    iget-boolean p0, p0, Lmiui/media/b;->xQ:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x9

    goto :goto_0

    :cond_0
    const/4 p0, 0x6

    :goto_0
    return p0
.end method

.method public canPause()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public release()V
    .locals 1

    invoke-super {p0}, Lmiui/media/e;->release()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/media/b;->xQ:Z

    return-void
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lmiui/media/e;->reset()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/media/b;->xQ:Z

    return-void
.end method

.method public setAudioEncoder(I)V
    .locals 2

    invoke-super {p0, p1}, Lmiui/media/e;->setAudioEncoder(I)V

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iput-boolean v0, p0, Lmiui/media/b;->xQ:Z

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiui/media/b;->xQ:Z

    :cond_1
    :goto_0
    return-void
.end method
