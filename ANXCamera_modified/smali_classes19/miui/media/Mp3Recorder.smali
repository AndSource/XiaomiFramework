.class public Lmiui/media/Mp3Recorder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/media/Mp3Recorder$a;,
        Lmiui/media/Mp3Recorder$b;,
        Lmiui/media/Mp3Recorder$RecordingErrorListener;
    }
.end annotation


# static fields
.field public static final ERR_COULD_NOT_START:I = 0x6

.field public static final ERR_ENCODE_PCM_FAILED:I = 0x4

.field public static final ERR_FILE_NOT_EXIST:I = 0x8

.field public static final ERR_ILLEGAL_STATE:I = 0x1

.field public static final ERR_MAX_SIZE_REACHED:I = 0x7

.field public static final ERR_OUT_STREAM_NOT_READY:I = 0x2

.field public static final ERR_RECORD_PCM_FAILED:I = 0x3

.field public static final ERR_WRITE_TO_FILE:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "Mp3Recorder"

.field private static final STATE_PAUSED:I = 0x3

.field public static final VBR_QUALITY_HIGH:I = 0x2

.field public static final VBR_QUALITY_LOW:I = 0x9

.field public static final VBR_QUALITY_MEDIUM:I = 0x6

.field private static final VQ:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

.field private static final WQ:I = 0x0

.field private static final XQ:I = 0x1

.field private static final YQ:I = 0x2

.field private static final ZQ:I = 0x4

.field private static final jR:I = 0x1


# instance fields
.field private DQ:I

.field private FQ:Ljava/lang/String;

.field private HQ:Ljava/io/File;

.field private JQ:I

.field private KQ:I

.field private LQ:I

.field private NQ:J

.field private OQ:J

.field private RQ:Landroid/media/AudioRecord;

.field private SQ:Lmiui/media/Mp3Recorder$b;

.field private TQ:I

.field private Ty:Ljava/io/FileOutputStream;

.field private UQ:I

.field private cR:I

.field private dR:I

.field private eR:I

.field private fR:I

.field private gR:[S

.field private hR:[B

.field private hz:J

.field private iQ:I

.field private iR:Lmiui/media/Mp3Encoder;

.field private mEventHandler:Landroid/os/Handler;

.field private mParams:Ljava/lang/String;

.field private rQ:Lmiui/media/Mp3Recorder$RecordingErrorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Media_AudioRecord_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class$Factory;->get()Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    move-result-object v0

    sput-object v0, Lmiui/media/Mp3Recorder;->VQ:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lmiui/media/Mp3Recorder$a;

    invoke-direct {v1, p0, v0}, Lmiui/media/Mp3Recorder$a;-><init>(Lmiui/media/Mp3Recorder;Landroid/os/Looper;)V

    iput-object v1, p0, Lmiui/media/Mp3Recorder;->mEventHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lmiui/media/Mp3Recorder$a;

    invoke-direct {v1, p0, v0}, Lmiui/media/Mp3Recorder$a;-><init>(Lmiui/media/Mp3Recorder;Landroid/os/Looper;)V

    iput-object v1, p0, Lmiui/media/Mp3Recorder;->mEventHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_1
    const-string v0, "Mp3Recorder"

    const-string v1, "Could not create event handler"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->mEventHandler:Landroid/os/Handler;

    :goto_0
    invoke-virtual {p0}, Lmiui/media/Mp3Recorder;->reset()V

    return-void
.end method

.method static synthetic a(Lmiui/media/Mp3Recorder;)I
    .locals 0

    iget p0, p0, Lmiui/media/Mp3Recorder;->TQ:I

    return p0
.end method

.method static synthetic a(Lmiui/media/Mp3Recorder;[SI)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiui/media/Mp3Recorder;->b([SI)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lmiui/media/Mp3Recorder;J)J
    .locals 2

    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->OQ:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->OQ:J

    return-wide v0
.end method

.method private a(Landroid/media/AudioRecord;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lmiui/media/Mp3Recorder;->VQ:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    invoke-virtual {p0}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class;->isExtraParamSupported()Z

    move-result p0

    const-string v0, "Mp3Recorder"

    if-eqz p0, :cond_0

    sget-object p0, Lmiui/media/Mp3Recorder;->VQ:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class;->setParameters(Landroid/media/AudioRecord;Ljava/lang/String;)I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setParameters: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "Do not support extra parameters"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lmiui/media/Mp3Recorder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/media/Mp3Recorder;->notifyError(I)V

    return-void
.end method

.method static synthetic b(Lmiui/media/Mp3Recorder;I)I
    .locals 0

    iput p1, p0, Lmiui/media/Mp3Recorder;->KQ:I

    return p1
.end method

.method private b([SI)I
    .locals 2

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    if-ge p0, p2, :cond_2

    aget-short v1, p1, p0

    if-gez v1, :cond_0

    aget-short v1, p1, p0

    neg-int v1, v1

    goto :goto_1

    :cond_0
    aget-short v1, p1, p0

    :goto_1
    if-le v1, v0, :cond_1

    move v0, v1

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method static synthetic b(Lmiui/media/Mp3Recorder;J)J
    .locals 2

    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->NQ:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->NQ:J

    return-wide v0
.end method

.method static synthetic b(Lmiui/media/Mp3Recorder;)[B
    .locals 0

    iget-object p0, p0, Lmiui/media/Mp3Recorder;->hR:[B

    return-object p0
.end method

.method static synthetic c(Lmiui/media/Mp3Recorder;)Lmiui/media/Mp3Encoder;
    .locals 0

    iget-object p0, p0, Lmiui/media/Mp3Recorder;->iR:Lmiui/media/Mp3Encoder;

    return-object p0
.end method

.method static synthetic d(Lmiui/media/Mp3Recorder;)I
    .locals 0

    iget p0, p0, Lmiui/media/Mp3Recorder;->LQ:I

    return p0
.end method

.method static synthetic e(Lmiui/media/Mp3Recorder;)Lmiui/media/Mp3Recorder$RecordingErrorListener;
    .locals 0

    iget-object p0, p0, Lmiui/media/Mp3Recorder;->rQ:Lmiui/media/Mp3Recorder$RecordingErrorListener;

    return-object p0
.end method

.method static synthetic f(Lmiui/media/Mp3Recorder;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lmiui/media/Mp3Recorder;->HQ:Ljava/io/File;

    return-object p0
.end method

.method static synthetic g(Lmiui/media/Mp3Recorder;)J
    .locals 2

    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->OQ:J

    return-wide v0
.end method

.method static synthetic h(Lmiui/media/Mp3Recorder;)J
    .locals 2

    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->hz:J

    return-wide v0
.end method

.method static synthetic i(Lmiui/media/Mp3Recorder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmiui/media/Mp3Recorder;->FQ:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j(Lmiui/media/Mp3Recorder;)Ljava/io/FileOutputStream;
    .locals 0

    iget-object p0, p0, Lmiui/media/Mp3Recorder;->Ty:Ljava/io/FileOutputStream;

    return-object p0
.end method

.method static synthetic k(Lmiui/media/Mp3Recorder;)[S
    .locals 0

    iget-object p0, p0, Lmiui/media/Mp3Recorder;->gR:[S

    return-object p0
.end method

.method static synthetic l(Lmiui/media/Mp3Recorder;)Landroid/media/AudioRecord;
    .locals 0

    iget-object p0, p0, Lmiui/media/Mp3Recorder;->RQ:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic m(Lmiui/media/Mp3Recorder;)I
    .locals 0

    iget p0, p0, Lmiui/media/Mp3Recorder;->JQ:I

    return p0
.end method

.method private notifyError(I)V
    .locals 2

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lmiui/media/Mp3Recorder;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getMaxAmplitude()I
    .locals 0

    iget p0, p0, Lmiui/media/Mp3Recorder;->KQ:I

    return p0
.end method

.method public getRecordingSizeInByte()J
    .locals 2

    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->OQ:J

    return-wide v0
.end method

.method public getRecordingTimeInMillis()J
    .locals 4

    iget-wide v0, p0, Lmiui/media/Mp3Recorder;->NQ:J

    long-to-double v0, v0

    iget v2, p0, Lmiui/media/Mp3Recorder;->DQ:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    iget p0, p0, Lmiui/media/Mp3Recorder;->LQ:I

    int-to-double v2, p0

    div-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public isExtraParamSupported()Z
    .locals 0

    sget-object p0, Lmiui/media/Mp3Recorder;->VQ:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    invoke-virtual {p0}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class;->isExtraParamSupported()Z

    move-result p0

    return p0
.end method

.method public isPaused()Z
    .locals 1

    iget p0, p0, Lmiui/media/Mp3Recorder;->TQ:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declared-synchronized pause()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmiui/media/Mp3Recorder;->TQ:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->SQ:Lmiui/media/Mp3Recorder$b;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lmiui/media/Mp3Recorder;->TQ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->SQ:Lmiui/media/Mp3Recorder$b;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "Mp3Recorder"

    const-string v2, "InterruptedException when pause"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->RQ:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    const-string v0, "Mp3Recorder"

    const-string v1, "AudioRecord stoped"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->RQ:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const-string v0, "Mp3Recorder"

    const-string v1, "AudioRecord released"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->RQ:Landroid/media/AudioRecord;

    const-string v0, "Mp3Recorder"

    const-string v1, "Mp3Recorder paused"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recording not started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public prepare()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lmiui/media/Mp3Recorder;->DQ:I

    iget v1, p0, Lmiui/media/Mp3Recorder;->JQ:I

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lmiui/media/Mp3Recorder;->UQ:I

    iget v0, p0, Lmiui/media/Mp3Recorder;->UQ:I

    const-string v1, "Mp3Recorder"

    if-ltz v0, :cond_2

    mul-int/2addr v0, v2

    new-array v0, v0, [S

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->gR:[S

    new-instance v0, Landroid/media/AudioRecord;

    iget v4, p0, Lmiui/media/Mp3Recorder;->iQ:I

    iget v5, p0, Lmiui/media/Mp3Recorder;->DQ:I

    iget v6, p0, Lmiui/media/Mp3Recorder;->JQ:I

    const/4 v7, 0x2

    iget-object v3, p0, Lmiui/media/Mp3Recorder;->gR:[S

    array-length v8, v3

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->RQ:Landroid/media/AudioRecord;

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->RQ:Landroid/media/AudioRecord;

    iget-object v3, p0, Lmiui/media/Mp3Recorder;->mParams:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lmiui/media/Mp3Recorder;->a(Landroid/media/AudioRecord;Ljava/lang/String;)V

    const-string v0, "Apply new AudioRecord"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lmiui/media/Mp3Recorder;->JQ:I

    const/16 v3, 0xc

    if-ne v0, v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lmiui/media/Mp3Recorder;->cR:I

    iget v0, p0, Lmiui/media/Mp3Recorder;->JQ:I

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    iput v2, p0, Lmiui/media/Mp3Recorder;->LQ:I

    const-wide v2, 0x40bc200000000000L    # 7200.0

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->gR:[S

    array-length v0, v0

    int-to-double v5, v0

    const-wide/high16 v7, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v5, v7

    add-double/2addr v5, v2

    double-to-int v0, v5

    new-array v0, v0, [B

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->hR:[B

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->iR:Lmiui/media/Mp3Encoder;

    iget v2, p0, Lmiui/media/Mp3Recorder;->DQ:I

    invoke-virtual {v0, v2}, Lmiui/media/Mp3Encoder;->setInSampleRate(I)V

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->iR:Lmiui/media/Mp3Encoder;

    iget v2, p0, Lmiui/media/Mp3Recorder;->cR:I

    invoke-virtual {v0, v2}, Lmiui/media/Mp3Encoder;->setOutMode(I)V

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->iR:Lmiui/media/Mp3Encoder;

    iget v2, p0, Lmiui/media/Mp3Recorder;->LQ:I

    invoke-virtual {v0, v2}, Lmiui/media/Mp3Encoder;->setChannelCount(I)V

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->iR:Lmiui/media/Mp3Encoder;

    iget v2, p0, Lmiui/media/Mp3Recorder;->DQ:I

    invoke-virtual {v0, v2}, Lmiui/media/Mp3Encoder;->setOutSampleRate(I)V

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->iR:Lmiui/media/Mp3Encoder;

    iget v2, p0, Lmiui/media/Mp3Recorder;->dR:I

    invoke-virtual {v0, v2}, Lmiui/media/Mp3Encoder;->setOutBitRate(I)V

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->iR:Lmiui/media/Mp3Encoder;

    iget v2, p0, Lmiui/media/Mp3Recorder;->eR:I

    invoke-virtual {v0, v2}, Lmiui/media/Mp3Encoder;->setQuality(I)V

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->iR:Lmiui/media/Mp3Encoder;

    iget v2, p0, Lmiui/media/Mp3Recorder;->fR:I

    invoke-virtual {v0, v2}, Lmiui/media/Mp3Encoder;->setVBRQuality(I)V

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->iR:Lmiui/media/Mp3Encoder;

    invoke-virtual {v0}, Lmiui/media/Mp3Encoder;->init()Z

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lmiui/media/Mp3Recorder;->FQ:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->HQ:Ljava/io/File;

    iput v4, p0, Lmiui/media/Mp3Recorder;->TQ:I

    const-string p0, "Mp3Recorder prepared"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string p0, "Error when getting min buffer size"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Could not calculate the min buffer size"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->RQ:Landroid/media/AudioRecord;

    const-string v1, "Mp3Recorder"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->RQ:Landroid/media/AudioRecord;

    const-string v0, "AudioRecord released"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lmiui/media/Mp3Recorder;->iR:Lmiui/media/Mp3Encoder;

    invoke-virtual {p0}, Lmiui/media/Mp3Encoder;->close()I

    const-string p0, "Mp3Recorder released"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lmiui/media/Mp3Recorder;->TQ:I

    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/media/Mp3Recorder;->RQ:Landroid/media/AudioRecord;

    const/4 v1, 0x1

    iput v1, p0, Lmiui/media/Mp3Recorder;->iQ:I

    const v1, 0xac44

    iput v1, p0, Lmiui/media/Mp3Recorder;->DQ:I

    const/16 v1, 0x10

    iput v1, p0, Lmiui/media/Mp3Recorder;->JQ:I

    iput v0, p0, Lmiui/media/Mp3Recorder;->eR:I

    iput v0, p0, Lmiui/media/Mp3Recorder;->TQ:I

    const/16 v0, 0x40

    iput v0, p0, Lmiui/media/Mp3Recorder;->dR:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->NQ:J

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->OQ:J

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lmiui/media/Mp3Recorder;->hz:J

    const/4 v0, -0x1

    iput v0, p0, Lmiui/media/Mp3Recorder;->fR:I

    new-instance v0, Lmiui/media/Mp3Encoder;

    invoke-direct {v0}, Lmiui/media/Mp3Encoder;-><init>()V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->iR:Lmiui/media/Mp3Encoder;

    return-void
.end method

.method public declared-synchronized resume()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmiui/media/Mp3Recorder;->TQ:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    new-instance v0, Landroid/media/AudioRecord;

    iget v3, p0, Lmiui/media/Mp3Recorder;->iQ:I

    iget v4, p0, Lmiui/media/Mp3Recorder;->DQ:I

    iget v5, p0, Lmiui/media/Mp3Recorder;->JQ:I

    const/4 v6, 0x2

    iget-object v2, p0, Lmiui/media/Mp3Recorder;->gR:[S

    array-length v7, v2

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->RQ:Landroid/media/AudioRecord;

    const-string v0, "Mp3Recorder"

    const-string v2, "Apply new AudioRecord"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->RQ:Landroid/media/AudioRecord;

    iget-object v2, p0, Lmiui/media/Mp3Recorder;->mParams:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lmiui/media/Mp3Recorder;->a(Landroid/media/AudioRecord;Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->RQ:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->RQ:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    if-ne v0, v1, :cond_0

    const-string v0, "Mp3Recorder"

    const-string v1, "AudioRecord started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    iput v0, p0, Lmiui/media/Mp3Recorder;->TQ:I

    new-instance v0, Lmiui/media/Mp3Recorder$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/media/Mp3Recorder$b;-><init>(Lmiui/media/Mp3Recorder;Lmiui/media/j;)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->SQ:Lmiui/media/Mp3Recorder$b;

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->SQ:Lmiui/media/Mp3Recorder$b;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-string v0, "Mp3Recorder"

    const-string v1, "Mp3Recorder resumed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Mp3 record could not start: other input already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "Mp3Recorder"

    const-string v1, "Recording is going on"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recording is going on"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAudioChannel(I)V
    .locals 0

    iput p1, p0, Lmiui/media/Mp3Recorder;->JQ:I

    return-void
.end method

.method public setAudioSamplingRate(I)V
    .locals 0

    iput p1, p0, Lmiui/media/Mp3Recorder;->DQ:I

    return-void
.end method

.method public setAudioSource(I)V
    .locals 0

    iput p1, p0, Lmiui/media/Mp3Recorder;->iQ:I

    return-void
.end method

.method public setExtraParameters(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lmiui/media/Mp3Recorder;->VQ:Lcom/miui/internal/variable/Android_Media_AudioRecord_class;

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Media_AudioRecord_class;->isExtraParamSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lmiui/media/Mp3Recorder;->mParams:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Do not support extra parameter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMaxDuration(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Lmiui/media/Mp3Recorder;->dR:I

    div-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    mul-long/2addr p1, v0

    iput-wide p1, p0, Lmiui/media/Mp3Recorder;->hz:J

    goto :goto_0

    :cond_0
    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lmiui/media/Mp3Recorder;->hz:J

    :goto_0
    return-void
.end method

.method public setMaxFileSize(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iput-wide p1, p0, Lmiui/media/Mp3Recorder;->hz:J

    goto :goto_0

    :cond_0
    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lmiui/media/Mp3Recorder;->hz:J

    :goto_0
    return-void
.end method

.method public setOnErrorListener(Lmiui/media/Mp3Recorder$RecordingErrorListener;)V
    .locals 0

    iput-object p1, p0, Lmiui/media/Mp3Recorder;->rQ:Lmiui/media/Mp3Recorder$RecordingErrorListener;

    return-void
.end method

.method public setOutBitRate(I)V
    .locals 0

    iput p1, p0, Lmiui/media/Mp3Recorder;->dR:I

    return-void
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmiui/media/Mp3Recorder;->FQ:Ljava/lang/String;

    return-void
.end method

.method public setQuality(I)V
    .locals 0

    iput p1, p0, Lmiui/media/Mp3Recorder;->eR:I

    return-void
.end method

.method public setVBRQuality(I)V
    .locals 0

    iput p1, p0, Lmiui/media/Mp3Recorder;->fR:I

    return-void
.end method

.method public declared-synchronized start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->SQ:Lmiui/media/Mp3Recorder$b;

    if-nez v0, :cond_2

    iget v0, p0, Lmiui/media/Mp3Recorder;->TQ:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lmiui/media/Mp3Recorder;->TQ:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lmiui/media/Mp3Recorder;->NQ:J

    iput-wide v2, p0, Lmiui/media/Mp3Recorder;->OQ:J

    iput v1, p0, Lmiui/media/Mp3Recorder;->TQ:I

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->RQ:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->RQ:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lmiui/media/Mp3Recorder;->HQ:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->Ty:Ljava/io/FileOutputStream;

    const-string v0, "Mp3Recorder"

    const-string v1, "AudioRecord started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lmiui/media/Mp3Recorder$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/media/Mp3Recorder$b;-><init>(Lmiui/media/Mp3Recorder;Lmiui/media/j;)V

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->SQ:Lmiui/media/Mp3Recorder$b;

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->SQ:Lmiui/media/Mp3Recorder$b;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-string v0, "Mp3Recorder"

    const-string v1, "Mp3Recorder started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Mp3 record could not start: other input already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "Mp3Recorder"

    const-string v1, "Recorder not prepared"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recorder not prepared"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v0, "Mp3Recorder"

    const-string v1, "Recording has started"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recording has already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmiui/media/Mp3Recorder;->TQ:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lmiui/media/Mp3Recorder;->TQ:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Mp3Recorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recorder should not be stopped in state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/media/Mp3Recorder;->TQ:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recorder shoul not be stopped in state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/media/Mp3Recorder;->TQ:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x4

    iput v0, p0, Lmiui/media/Mp3Recorder;->TQ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->SQ:Lmiui/media/Mp3Recorder$b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->SQ:Lmiui/media/Mp3Recorder$b;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->SQ:Lmiui/media/Mp3Recorder$b;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "Mp3Recorder"

    const-string v2, "InterruptedException when stop"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/media/Mp3Recorder;->SQ:Lmiui/media/Mp3Recorder$b;

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->iR:Lmiui/media/Mp3Encoder;

    iget-object v1, p0, Lmiui/media/Mp3Recorder;->hR:[B

    iget-object v2, p0, Lmiui/media/Mp3Recorder;->hR:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v2}, Lmiui/media/Mp3Encoder;->flush([BI)I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-lez v0, :cond_4

    :try_start_3
    iget-object v1, p0, Lmiui/media/Mp3Recorder;->Ty:Ljava/io/FileOutputStream;

    iget-object v2, p0, Lmiui/media/Mp3Recorder;->hR:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/FileOutputStream;->write([BII)V

    iget v0, p0, Lmiui/media/Mp3Recorder;->fR:I

    if-ltz v0, :cond_3

    iget v0, p0, Lmiui/media/Mp3Recorder;->fR:I

    const/16 v1, 0x9

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->iR:Lmiui/media/Mp3Encoder;

    iget-object v1, p0, Lmiui/media/Mp3Recorder;->FQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/media/Mp3Encoder;->writeVBRHeader(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :try_start_4
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ty:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_5
    const-string v1, "Mp3Recorder"

    const-string v2, "Error file cannot be closed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->RQ:Landroid/media/AudioRecord;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->RQ:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    const-string v0, "Mp3Recorder"

    const-string v1, "AudioRecord stoped"

    :goto_3
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :cond_4
    :try_start_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Buffer flush must greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    :try_start_7
    const-string v1, "Mp3Recorder"

    const-string v2, "Error file cannot be written when flush"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->Ty:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    :catch_3
    move-exception v0

    :try_start_9
    const-string v1, "Mp3Recorder"

    const-string v2, "Error file cannot be closed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    iget-object v0, p0, Lmiui/media/Mp3Recorder;->RQ:Landroid/media/AudioRecord;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmiui/media/Mp3Recorder;->RQ:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    const-string v0, "Mp3Recorder"

    const-string v1, "AudioRecord stoped"

    goto :goto_3

    :cond_5
    :goto_5
    const-string v0, "Mp3Recorder"

    const-string v1, "Mp3Recorder stoped"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    monitor-exit p0

    return-void

    :goto_6
    :try_start_a
    iget-object v1, p0, Lmiui/media/Mp3Recorder;->Ty:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_7

    :catch_4
    move-exception v1

    :try_start_b
    const-string v2, "Mp3Recorder"

    const-string v3, "Error file cannot be closed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    iget-object v1, p0, Lmiui/media/Mp3Recorder;->RQ:Landroid/media/AudioRecord;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lmiui/media/Mp3Recorder;->RQ:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    const-string v1, "Mp3Recorder"

    const-string v2, "AudioRecord stoped"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
