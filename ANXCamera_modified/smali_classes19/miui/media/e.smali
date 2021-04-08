.class Lmiui/media/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/media/Recorder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/media/e$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Media:LocalMediaRecorder"

.field private static final wQ:Lmiui/reflect/Method;


# instance fields
.field private cQ:Ljava/lang/Object;

.field private dQ:Landroid/media/MediaRecorder;

.field private eQ:Landroid/os/ParcelFileDescriptor;

.field private fQ:Lmiui/media/e$a;

.field private gQ:Ljava/lang/String;

.field private hQ:Ljava/lang/String;

.field private iQ:I

.field private jQ:I

.field private kQ:I

.field private lQ:I

.field private mQ:I

.field private mStartTime:J

.field private nQ:J

.field private oQ:I

.field private pQ:J

.field private qQ:I

.field private rQ:Landroid/media/MediaRecorder$OnErrorListener;

.field private sQ:Landroid/media/MediaRecorder$OnInfoListener;

.field private tQ:Lmiui/media/Recorder$OnErrorListener;

.field private uQ:Z

.field private vQ:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-class v0, Landroid/media/MediaRecorder;

    const-string v1, "setParameter"

    const-string v2, "(Ljava/lang/String;)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Media:LocalMediaRecorder"

    const-string v2, "Could not get method:setParameter"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lmiui/media/e;->wQ:Lmiui/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/media/e;->cQ:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lmiui/media/e;->iQ:I

    iput v0, p0, Lmiui/media/e;->jQ:I

    iput v0, p0, Lmiui/media/e;->kQ:I

    iput v0, p0, Lmiui/media/e;->lQ:I

    iput v0, p0, Lmiui/media/e;->mQ:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lmiui/media/e;->nQ:J

    iput v0, p0, Lmiui/media/e;->oQ:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lmiui/media/e;->pQ:J

    iput v0, p0, Lmiui/media/e;->qQ:I

    iput-wide v1, p0, Lmiui/media/e;->mStartTime:J

    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lmiui/media/e;->dQ:Landroid/media/MediaRecorder;

    return-void
.end method

.method private E(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lmiui/media/e;->wQ:Lmiui/reflect/Method;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lmiui/media/e;->wQ:Lmiui/reflect/Method;

    const-class v1, Landroid/media/MediaRecorder;

    iget-object p0, p0, Lmiui/media/e;->dQ:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, p0, v2}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private Me()V
    .locals 4

    iget-object v0, p0, Lmiui/media/e;->fQ:Lmiui/media/e$a;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lmiui/media/e$a;->a(Lmiui/media/e$a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lmiui/media/e;->fQ:Lmiui/media/e$a;

    invoke-static {v1}, Lmiui/media/e$a;->a(Lmiui/media/e$a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lmiui/media/e;->fQ:Lmiui/media/e$a;

    invoke-static {v1}, Lmiui/media/e$a;->a(Lmiui/media/e$a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "Media:LocalMediaRecorder"

    const-string v3, "InterruptedException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/e;->fQ:Lmiui/media/e$a;

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic a(Lmiui/media/e;)Lmiui/media/Recorder$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lmiui/media/e;->tQ:Lmiui/media/Recorder$OnErrorListener;

    return-object p0
.end method

.method static synthetic b(Lmiui/media/e;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmiui/media/e;->gQ:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected H()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected I()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/e;->gQ:Ljava/lang/String;

    iput-object v0, p0, Lmiui/media/e;->hQ:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lmiui/media/e;->iQ:I

    iput v1, p0, Lmiui/media/e;->jQ:I

    iput v1, p0, Lmiui/media/e;->lQ:I

    iput v1, p0, Lmiui/media/e;->kQ:I

    iput v1, p0, Lmiui/media/e;->mQ:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lmiui/media/e;->nQ:J

    iput v1, p0, Lmiui/media/e;->qQ:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lmiui/media/e;->pQ:J

    iput-object v0, p0, Lmiui/media/e;->rQ:Landroid/media/MediaRecorder$OnErrorListener;

    iput-object v0, p0, Lmiui/media/e;->sQ:Landroid/media/MediaRecorder$OnInfoListener;

    iput-object v0, p0, Lmiui/media/e;->tQ:Lmiui/media/Recorder$OnErrorListener;

    return-void
.end method

.method public canPause()Z
    .locals 1

    iget-object p0, p0, Lmiui/media/e;->cQ:Ljava/lang/Object;

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMaxAmplitude()I
    .locals 2

    iget-object v0, p0, Lmiui/media/e;->cQ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lmiui/media/e;->uQ:Z

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lmiui/media/e;->dQ:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result p0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getRecordingTimeInMillis()J
    .locals 4

    invoke-virtual {p0}, Lmiui/media/e;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lmiui/media/e;->vQ:I

    int-to-long v0, p0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lmiui/media/e;->mStartTime:J

    sub-long/2addr v0, v2

    iget p0, p0, Lmiui/media/e;->vQ:I

    int-to-long v2, p0

    add-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public isPaused()Z
    .locals 1

    iget-object v0, p0, Lmiui/media/e;->cQ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lmiui/media/e;->uQ:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public pause()V
    .locals 7

    iget-object v0, p0, Lmiui/media/e;->cQ:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lmiui/media/e;->uQ:Z

    iget-object v1, p0, Lmiui/media/e;->dQ:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    iget-object v1, p0, Lmiui/media/e;->dQ:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/media/e;->dQ:Landroid/media/MediaRecorder;

    iget v1, p0, Lmiui/media/e;->vQ:I

    int-to-long v1, v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lmiui/media/e;->mStartTime:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lmiui/media/e;->vQ:I

    iget-object v1, p0, Lmiui/media/e;->eQ:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lmiui/media/e;->eQ:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0}, Lmiui/media/e;->Me()V

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lmiui/media/e;->gQ:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, p0, Lmiui/media/e;->pQ:J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public prepare()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmiui/media/e;->cQ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lmiui/media/e;->dQ:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->prepare()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lmiui/media/e;->cQ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lmiui/media/e;->I()V

    iget-object v1, p0, Lmiui/media/e;->dQ:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/media/e;->dQ:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/media/e;->dQ:Landroid/media/MediaRecorder;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lmiui/media/e;->cQ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lmiui/media/e;->I()V

    iget-object p0, p0, Lmiui/media/e;->dQ:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->reset()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public resume()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmiui/media/e;->cQ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lmiui/media/e;->uQ:Z

    if-eqz v1, :cond_b

    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v1, p0, Lmiui/media/e;->dQ:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lmiui/media/e;->hQ:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmiui/media/e;->hQ:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmiui/media/e;->setExtraParameters(Ljava/lang/String;)V

    :cond_0
    iget v1, p0, Lmiui/media/e;->iQ:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lmiui/media/e;->dQ:Landroid/media/MediaRecorder;

    iget v3, p0, Lmiui/media/e;->iQ:I

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    :cond_1
    iget v1, p0, Lmiui/media/e;->jQ:I

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lmiui/media/e;->dQ:Landroid/media/MediaRecorder;

    iget v3, p0, Lmiui/media/e;->jQ:I

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    :cond_2
    iget v1, p0, Lmiui/media/e;->kQ:I

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lmiui/media/e;->dQ:Landroid/media/MediaRecorder;

    iget v3, p0, Lmiui/media/e;->kQ:I

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    :cond_3
    iget v1, p0, Lmiui/media/e;->lQ:I

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lmiui/media/e;->dQ:Landroid/media/MediaRecorder;

    iget v3, p0, Lmiui/media/e;->lQ:I

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    :cond_4
    iget v1, p0, Lmiui/media/e;->mQ:I

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lmiui/media/e;->dQ:Landroid/media/MediaRecorder;

    iget v3, p0, Lmiui/media/e;->mQ:I

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    :cond_5
    iget v1, p0, Lmiui/media/e;->qQ:I

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lmiui/media/e;->dQ:Landroid/media/MediaRecorder;

    iget v3, p0, Lmiui/media/e;->qQ:I

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    :cond_6
    iget-wide v3, p0, Lmiui/media/e;->nQ:J

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    iget-object v1, p0, Lmiui/media/e;->dQ:Landroid/media/MediaRecorder;

    iget-wide v3, p0, Lmiui/media/e;->nQ:J

    iget-wide v5, p0, Lmiui/media/e;->pQ:J

    sub-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    :cond_7
    iget v1, p0, Lmiui/media/e;->oQ:I

    if-eq v1, v2, :cond_8

    iget-object v1, p0, Lmiui/media/e;->dQ:Landroid/media/MediaRecorder;

    iget v2, p0, Lmiui/media/e;->oQ:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    :cond_8
    iget-object v1, p0, Lmiui/media/e;->rQ:Landroid/media/MediaRecorder$OnErrorListener;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lmiui/media/e;->dQ:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lmiui/media/e;->rQ:Landroid/media/MediaRecorder$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    :cond_9
    iget-object v1, p0, Lmiui/media/e;->sQ:Landroid/media/MediaRecorder$OnInfoListener;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lmiui/media/e;->dQ:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lmiui/media/e;->sQ:Landroid/media/MediaRecorder$OnInfoListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    :cond_a
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v1, v2

    iput-object v2, p0, Lmiui/media/e;->eQ:Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lmiui/media/e$a;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-direct {v2, p0, v1}, Lmiui/media/e$a;-><init>(Lmiui/media/e;Landroid/os/ParcelFileDescriptor;)V

    iput-object v2, p0, Lmiui/media/e;->fQ:Lmiui/media/e$a;

    iget-object v1, p0, Lmiui/media/e;->dQ:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lmiui/media/e;->eQ:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    iget-object v1, p0, Lmiui/media/e;->fQ:Lmiui/media/e$a;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object v1, p0, Lmiui/media/e;->dQ:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V

    iget-object v1, p0, Lmiui/media/e;->dQ:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    iput-boolean v3, p0, Lmiui/media/e;->uQ:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lmiui/media/e;->mStartTime:J

    :cond_b
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setAudioChannel(I)V
    .locals 2

    iget-object v0, p0, Lmiui/media/e;->cQ:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x10

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    :try_start_0
    iput p1, p0, Lmiui/media/e;->qQ:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    iput p1, p0, Lmiui/media/e;->qQ:I

    :goto_0
    iget-object p1, p0, Lmiui/media/e;->dQ:Landroid/media/MediaRecorder;

    iget p0, p0, Lmiui/media/e;->qQ:I

    invoke-virtual {p1, p0}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setAudioEncoder(I)V
    .locals 1

    iget-object v0, p0, Lmiui/media/e;->cQ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lmiui/media/e;->lQ:I

    iget-object p0, p0, Lmiui/media/e;->dQ:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setAudioEncodingBitRate(I)V
    .locals 1

    iget-object v0, p0, Lmiui/media/e;->cQ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lmiui/media/e;->mQ:I

    iget-object p0, p0, Lmiui/media/e;->dQ:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setAudioSamplingRate(I)V
    .locals 1

    iget-object v0, p0, Lmiui/media/e;->cQ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lmiui/media/e;->jQ:I

    iget-object p0, p0, Lmiui/media/e;->dQ:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setAudioSource(I)V
    .locals 1

    iget-object v0, p0, Lmiui/media/e;->cQ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lmiui/media/e;->iQ:I

    iget-object p0, p0, Lmiui/media/e;->dQ:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setExtraParameters(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lmiui/media/e;->cQ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lmiui/media/e;->hQ:Ljava/lang/String;

    invoke-direct {p0, p1}, Lmiui/media/e;->E(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setMaxDuration(I)V
    .locals 1

    iget-object v0, p0, Lmiui/media/e;->cQ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lmiui/media/e;->oQ:I

    iget-object p0, p0, Lmiui/media/e;->dQ:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setMaxFileSize(J)V
    .locals 1

    iget-object v0, p0, Lmiui/media/e;->cQ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-wide p1, p0, Lmiui/media/e;->nQ:J

    iget-object p0, p0, Lmiui/media/e;->dQ:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V
    .locals 1

    iget-object v0, p0, Lmiui/media/e;->cQ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lmiui/media/e;->rQ:Landroid/media/MediaRecorder$OnErrorListener;

    iget-object p0, p0, Lmiui/media/e;->dQ:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setOnErrorListener(Lmiui/media/Recorder$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lmiui/media/e;->tQ:Lmiui/media/Recorder$OnErrorListener;

    new-instance p1, Lmiui/media/c;

    invoke-direct {p1, p0}, Lmiui/media/c;-><init>(Lmiui/media/e;)V

    invoke-virtual {p0, p1}, Lmiui/media/e;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    new-instance p1, Lmiui/media/d;

    invoke-direct {p1, p0}, Lmiui/media/d;-><init>(Lmiui/media/e;)V

    invoke-virtual {p0, p1}, Lmiui/media/e;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    .locals 1

    iget-object v0, p0, Lmiui/media/e;->cQ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lmiui/media/e;->sQ:Landroid/media/MediaRecorder$OnInfoListener;

    iget-object p0, p0, Lmiui/media/e;->dQ:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lmiui/media/e;->cQ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lmiui/media/e;->gQ:Ljava/lang/String;

    iget-object p0, p0, Lmiui/media/e;->dQ:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setOutputFormat(I)V
    .locals 1

    iget-object v0, p0, Lmiui/media/e;->cQ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lmiui/media/e;->kQ:I

    iget-object p0, p0, Lmiui/media/e;->dQ:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setQuality(I)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lmiui/media/e;->cQ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lmiui/media/e;->dQ:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lmiui/media/e;->mStartTime:J

    const/4 v1, 0x0

    iput v1, p0, Lmiui/media/e;->vQ:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lmiui/media/e;->cQ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lmiui/media/e;->I()V

    iget-object v1, p0, Lmiui/media/e;->dQ:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/media/e;->dQ:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    iget-object v1, p0, Lmiui/media/e;->eQ:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lmiui/media/e;->eQ:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0}, Lmiui/media/e;->Me()V

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/media/e;->uQ:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
