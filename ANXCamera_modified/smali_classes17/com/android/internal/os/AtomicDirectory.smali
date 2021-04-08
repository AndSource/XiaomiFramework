.class public final Lcom/android/internal/os/AtomicDirectory;
.super Ljava/lang/Object;
.source "AtomicDirectory.java"


# instance fields
.field private final mBackupDirectory:Ljava/io/File;

.field private mBackupDirectoryFd:I

.field private final mBaseDirectory:Ljava/io/File;

.field private mBaseDirectoryFd:I

.field private final mOpenFiles:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/io/File;",
            "Ljava/io/FileOutputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mOpenFiles:Landroid/util/ArrayMap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectoryFd:I

    iput v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBackupDirectoryFd:I

    const-string v0, "baseDirectory cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectory:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_bak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBackupDirectory:Ljava/io/File;

    return-void
.end method

.method private backup()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectoryFd:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/AtomicDirectory;->getDirectoryFd(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectoryFd:I

    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBackupDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBackupDirectory:Ljava/io/File;

    invoke-static {v0}, Lcom/android/internal/os/AtomicDirectory;->deleteDirectory(Ljava/io/File;)V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectory:Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/os/AtomicDirectory;->mBackupDirectory:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectoryFd:I

    iput v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBackupDirectoryFd:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectoryFd:I

    iget v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBackupDirectoryFd:I

    invoke-static {v0}, Lcom/android/internal/os/AtomicDirectory;->fsyncDirectoryFd(I)V

    return-void

    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t backup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectory:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/os/AtomicDirectory;->mBackupDirectory:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static deleteDirectory(Ljava/io/File;)V
    .locals 4

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/android/internal/os/AtomicDirectory;->deleteDirectory(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private static native fsyncDirectoryFd(I)V
.end method

.method private static native getDirectoryFd(Ljava/lang/String;)I
.end method

.method private getOrCreateBaseDirectory()Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f9

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t create directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectory:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectoryFd:I

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/AtomicDirectory;->getDirectoryFd(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectoryFd:I

    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectory:Ljava/io/File;

    return-object v0
.end method

.method private restore()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBackupDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBackupDirectoryFd:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBackupDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/AtomicDirectory;->getDirectoryFd(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBackupDirectoryFd:I

    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectory:Ljava/io/File;

    invoke-static {v0}, Lcom/android/internal/os/AtomicDirectory;->deleteDirectory(Ljava/io/File;)V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBackupDirectory:Ljava/io/File;

    iget-object v2, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectory:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBackupDirectoryFd:I

    iput v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectoryFd:I

    iput v1, p0, Lcom/android/internal/os/AtomicDirectory;->mBackupDirectoryFd:I

    iget v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectoryFd:I

    invoke-static {v0}, Lcom/android/internal/os/AtomicDirectory;->fsyncDirectoryFd(I)V

    return-void

    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t restore "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/os/AtomicDirectory;->mBackupDirectory:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectory:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwIfSomeFilesOpen()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mOpenFiles:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unclosed files: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/os/AtomicDirectory;->mOpenFiles:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public closeWrite(Ljava/io/FileOutputStream;)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mOpenFiles:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/os/AtomicDirectory;->mOpenFiles:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    :try_start_0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :goto_1
    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown file stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public delete()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectory:Ljava/io/File;

    invoke-static {v0}, Lcom/android/internal/os/AtomicDirectory;->deleteDirectory(Ljava/io/File;)V

    iget v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectoryFd:I

    invoke-static {v0}, Lcom/android/internal/os/AtomicDirectory;->fsyncDirectoryFd(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBackupDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBackupDirectory:Ljava/io/File;

    invoke-static {v0}, Lcom/android/internal/os/AtomicDirectory;->deleteDirectory(Ljava/io/File;)V

    iget v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBackupDirectoryFd:I

    invoke-static {v0}, Lcom/android/internal/os/AtomicDirectory;->fsyncDirectoryFd(I)V

    :cond_1
    return-void
.end method

.method public exists()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBackupDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public failWrite()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/os/AtomicDirectory;->throwIfSomeFilesOpen()V

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/os/AtomicDirectory;->restore()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :goto_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectoryFd:I

    iput v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBackupDirectoryFd:I

    return-void
.end method

.method public failWrite(Ljava/io/FileOutputStream;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mOpenFiles:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/os/AtomicDirectory;->mOpenFiles:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public finishRead()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectoryFd:I

    iput v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBackupDirectoryFd:I

    return-void
.end method

.method public finishWrite()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/os/AtomicDirectory;->throwIfSomeFilesOpen()V

    iget v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectoryFd:I

    invoke-static {v0}, Lcom/android/internal/os/AtomicDirectory;->fsyncDirectoryFd(I)V

    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBackupDirectory:Ljava/io/File;

    invoke-static {v0}, Lcom/android/internal/os/AtomicDirectory;->deleteDirectory(Ljava/io/File;)V

    iget v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBackupDirectoryFd:I

    invoke-static {v0}, Lcom/android/internal/os/AtomicDirectory;->fsyncDirectoryFd(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBaseDirectoryFd:I

    iput v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBackupDirectoryFd:I

    return-void
.end method

.method public getBackupDirectory()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/AtomicDirectory;->mBackupDirectory:Ljava/io/File;

    return-object v0
.end method

.method public openWrite(Ljava/io/File;)Ljava/io/FileOutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/os/AtomicDirectory;->getOrCreateBaseDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-object v1, p0, Lcom/android/internal/os/AtomicDirectory;->mOpenFiles:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already open file"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must be a file in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/os/AtomicDirectory;->getOrCreateBaseDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startRead()Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/os/AtomicDirectory;->restore()V

    invoke-direct {p0}, Lcom/android/internal/os/AtomicDirectory;->getOrCreateBaseDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public startWrite()Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/os/AtomicDirectory;->backup()V

    invoke-direct {p0}, Lcom/android/internal/os/AtomicDirectory;->getOrCreateBaseDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
