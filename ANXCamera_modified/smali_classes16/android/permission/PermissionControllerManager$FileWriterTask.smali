.class Landroid/permission/PermissionControllerManager$FileWriterTask;
.super Landroid/os/AsyncTask;
.source "PermissionControllerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/PermissionControllerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileWriterTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "[B",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final CHUNK_SIZE:I = 0x1000


# instance fields
.field private mLocalPipe:Landroid/os/ParcelFileDescriptor;

.field private mRemotePipe:Landroid/os/ParcelFileDescriptor;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/permission/PermissionControllerManager$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/permission/PermissionControllerManager$FileWriterTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [[B

    invoke-virtual {p0, p1}, Landroid/permission/PermissionControllerManager$FileWriterTask;->doInBackground([[B)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([[B)Ljava/lang/Void;
    .locals 5

    const/4 v0, 0x0

    aget-object v1, p1, v0

    :try_start_0
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v3, p0, Landroid/permission/PermissionControllerManager$FileWriterTask;->mLocalPipe:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v2, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :goto_0
    :try_start_1
    array-length v3, v1

    if-ge v0, v3, :cond_0

    array-length v3, v1

    sub-int/2addr v3, v0

    const/16 v4, 0x1000

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v1, v0, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit16 v0, v0, 0x1000

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v4

    :try_start_5
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/permission/PermissionControllerManager;->access$1000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error sending runtime permission backup"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method getRemotePipe()Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Landroid/permission/PermissionControllerManager$FileWriterTask;->mRemotePipe:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method interruptWrite()V
    .locals 1

    iget-object v0, p0, Landroid/permission/PermissionControllerManager$FileWriterTask;->mLocalPipe:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void
.end method

.method protected onCancelled()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/permission/PermissionControllerManager$FileWriterTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/permission/PermissionControllerManager$FileWriterTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    iget-object v0, p0, Landroid/permission/PermissionControllerManager$FileWriterTask;->mLocalPipe:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Landroid/permission/PermissionControllerManager$FileWriterTask;->mRemotePipe:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Landroid/permission/PermissionControllerManager$FileWriterTask;->mLocalPipe:Landroid/os/ParcelFileDescriptor;

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/permission/PermissionControllerManager;->access$1000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not create pipe needed to send runtime permission backup"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
