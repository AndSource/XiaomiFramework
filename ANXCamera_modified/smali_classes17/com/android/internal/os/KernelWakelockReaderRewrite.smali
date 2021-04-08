.class public Lcom/android/internal/os/KernelWakelockReaderRewrite;
.super Ljava/lang/Object;
.source "KernelWakelockReaderRewrite.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final PROC_WAKELOCKS_FORMAT:[I

.field private static final TAG:Ljava/lang/String; = "KernelWakelockReader"

.field private static final WAKEUP_SOURCES_FORMAT:[I

.field private static sKernelWakelockUpdateVersion:I = 0x0

.field private static final sWakelockFile:Ljava/lang/String; = "/proc/wakelocks"

.field private static final sWakeupSourceFile:Ljava/lang/String; = "/d/wakeup_sources"


# instance fields
.field br_flag:Z

.field private final mProcWakelocksData:[J

.field private final mProcWakelocksName:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/internal/os/KernelWakelockReaderRewrite;->sKernelWakelockUpdateVersion:I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/os/KernelWakelockReaderRewrite;->PROC_WAKELOCKS_FORMAT:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/os/KernelWakelockReaderRewrite;->WAKEUP_SOURCES_FORMAT:[I

    return-void

    :array_0
    .array-data 4
        0x1409
        0x2009
        0x9
        0x9
        0x9
        0x2009
    .end array-data

    :array_1
    .array-data 4
        0x1009
        0x2109
        0x109
        0x109
        0x109
        0x109
        0x2109
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/os/KernelWakelockReaderRewrite;->mProcWakelocksName:[Ljava/lang/String;

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelWakelockReaderRewrite;->mProcWakelocksData:[J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/KernelWakelockReaderRewrite;->br_flag:Z

    return-void
.end method

.method private readInfoCheck([BIIJ)I
    .locals 4

    if-ltz p3, :cond_0

    array-length v0, p1

    sub-int/2addr v0, p2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/KernelWakelockReaderRewrite;->br_flag:Z

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p4

    const-wide/16 v2, 0x64

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reading wakelock stats took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KernelWakelockReader"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    array-length v2, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_4

    aget-byte v3, p1, v2

    if-nez v3, :cond_3

    move p2, v2

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return p2
.end method


# virtual methods
.method public parseProcWakelocks([BIZLcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    .locals 21
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p4

    const/4 v0, 0x0

    move v12, v0

    :goto_0
    const/16 v13, 0xa

    if-ge v12, v10, :cond_0

    aget-byte v0, v9, v12

    if-eq v0, v13, :cond_0

    aget-byte v0, v9, v12

    if-eqz v0, :cond_0

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v12, 0x1

    move v2, v0

    move v3, v0

    monitor-enter p0

    :try_start_0
    sget v0, Lcom/android/internal/os/KernelWakelockReaderRewrite;->sKernelWakelockUpdateVersion:I

    const/4 v14, 0x1

    add-int/2addr v0, v14

    sput v0, Lcom/android/internal/os/KernelWakelockReaderRewrite;->sKernelWakelockUpdateVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move v15, v3

    :goto_1
    if-ge v2, v10, :cond_b

    move v0, v15

    move v8, v0

    :goto_2
    if-ge v8, v10, :cond_1

    :try_start_1
    aget-byte v0, v9, v8

    if-eq v0, v13, :cond_1

    aget-byte v0, v9, v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    move v2, v8

    move v3, v15

    goto/16 :goto_a

    :cond_1
    add-int/lit8 v0, v10, -0x1

    if-le v8, v0, :cond_2

    move v2, v8

    goto/16 :goto_8

    :cond_2
    :try_start_2
    iget-object v0, v1, Lcom/android/internal/os/KernelWakelockReaderRewrite;->mProcWakelocksName:[Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v1, Lcom/android/internal/os/KernelWakelockReaderRewrite;->mProcWakelocksData:[J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v17, v0

    move v0, v15

    :goto_3
    if-ge v0, v8, :cond_4

    :try_start_3
    aget-byte v2, v9, v0

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_3

    const/16 v2, 0x3f

    aput-byte v2, v9, v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    nop

    if-eqz p3, :cond_5

    sget-object v0, Lcom/android/internal/os/KernelWakelockReaderRewrite;->WAKEUP_SOURCES_FORMAT:[I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v5, v0

    goto :goto_4

    :cond_5
    :try_start_4
    sget-object v0, Lcom/android/internal/os/KernelWakelockReaderRewrite;->PROC_WAKELOCKS_FORMAT:[I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v5, v0

    :goto_4
    const/4 v0, 0x0

    move-object/from16 v2, p1

    move v3, v15

    move v4, v8

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move/from16 v18, v8

    move-object v8, v0

    :try_start_5
    invoke-static/range {v2 .. v8}, Landroid/os/Process;->parseProcLine([BII[I[Ljava/lang/String;[J[F)Z

    move-result v0

    move v2, v0

    const/4 v0, 0x0

    aget-object v0, v16, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    aget-wide v4, v17, v14

    long-to-int v4, v4

    const-wide/16 v5, 0x3e8

    const/4 v0, 0x2

    if-eqz p3, :cond_6

    aget-wide v7, v17, v0

    mul-long/2addr v7, v5

    goto :goto_5

    :cond_6
    aget-wide v7, v17, v0

    const-wide/16 v19, 0x1f4

    add-long v7, v7, v19

    div-long/2addr v7, v5

    :goto_5
    if-eqz v2, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {v11, v3}, Lcom/android/internal/os/KernelWakelockStats;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/android/internal/os/KernelWakelockStats$Entry;

    sget v5, Lcom/android/internal/os/KernelWakelockReaderRewrite;->sKernelWakelockUpdateVersion:I

    invoke-direct {v0, v4, v7, v8, v5}, Lcom/android/internal/os/KernelWakelockStats$Entry;-><init>(IJI)V

    invoke-virtual {v11, v3, v0}, Lcom/android/internal/os/KernelWakelockStats;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_7
    invoke-virtual {v11, v3}, Lcom/android/internal/os/KernelWakelockStats;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/KernelWakelockStats$Entry;

    iget v5, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    sget v6, Lcom/android/internal/os/KernelWakelockReaderRewrite;->sKernelWakelockUpdateVersion:I

    if-ne v5, v6, :cond_8

    iget v5, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    add-int/2addr v5, v4

    iput v5, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    iget-wide v5, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    goto :goto_6

    :cond_8
    iput v4, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    iput-wide v7, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    sget v5, Lcom/android/internal/os/KernelWakelockReaderRewrite;->sKernelWakelockUpdateVersion:I

    iput v5, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_6
    goto :goto_7

    :cond_9
    if-nez v2, :cond_a

    :try_start_6
    const-string v0, "KernelWakelockReader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse proc line: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    sub-int v13, v18, v15

    invoke-direct {v6, v9, v15, v13}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_7

    :catch_0
    move-exception v0

    :try_start_7
    const-string v5, "KernelWakelockReader"

    const-string v6, "Failed to parse proc line!"

    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_a
    :goto_7
    add-int/lit8 v15, v18, 0x1

    move/from16 v2, v18

    const/16 v13, 0xa

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    move v3, v15

    move/from16 v2, v18

    goto :goto_a

    :catchall_2
    move-exception v0

    move/from16 v18, v8

    move v3, v15

    move/from16 v2, v18

    goto :goto_a

    :cond_b
    :goto_8
    :try_start_8
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/os/KernelWakelockStats;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/KernelWakelockStats$Entry;

    iget v3, v3, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    sget v4, Lcom/android/internal/os/KernelWakelockReaderRewrite;->sKernelWakelockUpdateVersion:I

    if-eq v3, v4, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    :cond_d
    sget v3, Lcom/android/internal/os/KernelWakelockReaderRewrite;->sKernelWakelockUpdateVersion:I

    iput v3, v11, Lcom/android/internal/os/KernelWakelockStats;->kernelWakelockVersion:I

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    return-object v11

    :catchall_3
    move-exception v0

    move v3, v15

    goto :goto_a

    :catchall_4
    move-exception v0

    :goto_a
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0
.end method

.method public final readKernelWakelockStats(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const-string v9, "failed to read kernel wakelocks"

    const-string v10, "KernelWakelockReader"

    const v0, 0x8000

    new-array v11, v0, [B

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v12

    const/4 v1, 0x0

    const/4 v13, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    const-string v2, "/proc/wakelocks"

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    move-object v14, v0

    move v15, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    const-string v3, "/d/wakeup_sources"

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    const/4 v1, 0x1

    move-object v14, v0

    move v15, v1

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/internal/os/KernelWakelockReaderRewrite;->br_flag:Z

    move/from16 v17, v1

    move v1, v0

    move/from16 v0, v17

    :goto_1
    array-length v2, v11

    sub-int/2addr v2, v0

    invoke-virtual {v14, v11, v0, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2

    move/from16 v16, v2

    if-lez v2, :cond_0

    add-int v0, v0, v16

    move/from16 v1, v16

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    goto :goto_2

    :cond_1
    move-object/from16 v1, p0

    move-object v2, v11

    move v3, v0

    move/from16 v4, v16

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/KernelWakelockReaderRewrite;->readInfoCheck([BIIJ)I

    move-result v1

    move v0, v1

    invoke-virtual {v7, v11, v0, v15, v8}, Lcom/android/internal/os/KernelWakelockReaderRewrite;->parseProcWakelocks([BIZLcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    iget-boolean v1, v7, Lcom/android/internal/os/KernelWakelockReaderRewrite;->br_flag:Z

    if-eqz v1, :cond_2

    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    :goto_2
    nop

    invoke-static {v12}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    :try_start_3
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    invoke-static {v10, v9, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-object v8

    :cond_2
    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v1, v0

    :try_start_4
    invoke-static {v10, v9, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    nop

    invoke-static {v12}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    :try_start_5
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    invoke-static {v10, v9, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    return-object v13

    :goto_5
    invoke-static {v12}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    :try_start_6
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    invoke-static {v10, v9, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    throw v1

    :catch_5
    move-exception v0

    const-string/jumbo v3, "neither /proc/wakelocks nor /d/wakeup_sources exists"

    invoke-static {v10, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13
.end method
