.class public Lcom/miui/internal/vip/utils/FileWriter;
.super Ljava/lang/Object;
.source "FileWriter.java"


# static fields
.field static final TAG:Ljava/lang/String; = "CacheFileWriter"

.field static final TEMP:Ljava/lang/String; = ".temp"

.field private static final sThread:Ljava/util/concurrent/Executor;


# instance fields
.field mFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mFile:Ljava/io/File;

.field mOut:Ljava/io/OutputStream;

.field mRealPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/miui/internal/vip/utils/RunnableHelper;->createSingleThreadPool()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/vip/utils/FileWriter;->sThread:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/vip/utils/FileWriter;->mFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lcom/miui/internal/vip/utils/FileWriter;->sThread:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/miui/internal/vip/utils/FileWriter$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/internal/vip/utils/FileWriter$1;-><init>(Lcom/miui/internal/vip/utils/FileWriter;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static deleteFile(Ljava/io/File;)V
    .locals 4

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/miui/internal/vip/utils/FileWriter;->deleteNonDirectory(Ljava/io/File;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/miui/internal/vip/utils/FileWriter;->deleteFile(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/miui/internal/vip/utils/FileWriter;->deleteNonDirectory(Ljava/io/File;)V

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private static deleteNonDirectory(Ljava/io/File;)V
    .locals 4

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "directory"

    goto :goto_0

    :cond_0
    const-string v2, "file"

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    const-string v3, "suc"

    goto :goto_1

    :cond_1
    const-string v3, "failed"

    :goto_1
    aput-object v3, v1, v2

    const-string v2, "CacheFileWriterdelete %s %s %s"

    invoke-static {v2, v1}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    sget-object v0, Lcom/miui/internal/vip/utils/FileWriter;->sThread:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/miui/internal/vip/utils/FileWriter$4;

    invoke-direct {v1, p0}, Lcom/miui/internal/vip/utils/FileWriter$4;-><init>(Lcom/miui/internal/vip/utils/FileWriter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method closeOutputStream()V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/vip/utils/FileWriter;->mOut:Ljava/io/OutputStream;

    invoke-static {v0}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/vip/utils/FileWriter;->mOut:Ljava/io/OutputStream;

    return-void
.end method

.method onFileOperationError()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/internal/vip/utils/FileWriter;->closeOutputStream()V

    iget-object v0, p0, Lcom/miui/internal/vip/utils/FileWriter;->mFile:Ljava/io/File;

    invoke-static {v0}, Lcom/miui/internal/vip/utils/FileWriter;->deleteFile(Ljava/io/File;)V

    return-void
.end method

.method public writeToFile(I)V
    .locals 2

    if-ltz p1, :cond_0

    sget-object v0, Lcom/miui/internal/vip/utils/FileWriter;->sThread:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/miui/internal/vip/utils/FileWriter$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/internal/vip/utils/FileWriter$2;-><init>(Lcom/miui/internal/vip/utils/FileWriter;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public writeToFile([BII)V
    .locals 3

    if-lez p3, :cond_0

    new-array v0, p3, [B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v1, Lcom/miui/internal/vip/utils/FileWriter;->sThread:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/miui/internal/vip/utils/FileWriter$3;

    invoke-direct {v2, p0, v0, p3}, Lcom/miui/internal/vip/utils/FileWriter$3;-><init>(Lcom/miui/internal/vip/utils/FileWriter;[BI)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
