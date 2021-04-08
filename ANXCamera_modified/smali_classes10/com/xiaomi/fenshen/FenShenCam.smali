.class public Lcom/xiaomi/fenshen/FenShenCam;
.super Ljava/lang/Object;
.source "FenShenCam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/fenshen/FenShenCam$Listener;,
        Lcom/xiaomi/fenshen/FenShenCam$Message;,
        Lcom/xiaomi/fenshen/FenShenCam$Mode;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CloneSDK"

.field private static listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

.field private static volatile sReleased:Z


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const-string v0, "CloneSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/xiaomi/fenshen/FenShenCam;->DEBUG:Z

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "fenshen"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load native library failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPhoto(Landroid/media/Image;)V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addPhoto "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloneSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v5

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v7

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v9

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v11

    invoke-static/range {v2 .. v11}, Lcom/xiaomi/fenshen/FenShenCam;->nativeAddPhoto(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    sget-object p0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->requestRender()V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "illegal image format, expect YUV image"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized addPreviewFrame(Landroid/media/Image;)V
    .locals 11

    const-class v0, Lcom/xiaomi/fenshen/FenShenCam;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/xiaomi/fenshen/FenShenCam;->sReleased:Z

    if-eqz v1, :cond_0

    const-string p0, "CloneSDK"

    const-string v1, "ignore render, released"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/xiaomi/fenshen/FenShenCam;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "CloneSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPreviewFrame "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v5

    aget-object v4, v5, v4

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v4

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    aget-object v6, v7, v6

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v6

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v9

    aget-object v8, v9, v8

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v8

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v10

    invoke-static/range {v1 .. v10}, Lcom/xiaomi/fenshen/FenShenCam;->nativeAddPreviewFrame(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    sget-object p0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    if-eqz p0, :cond_2

    sget-object p0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    invoke-interface {p0}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->requestRender()V

    goto :goto_0

    :cond_2
    const-string p0, "CloneSDK"

    const-string v1, "addPreviewFrame, can\'t requestRender since listener is null"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :cond_3
    :try_start_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "illegal image format, expect YUV image"

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static cancelPhoto()V
    .locals 2

    const-string v0, "CloneSDK"

    const-string v1, "cancelPhoto"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeCancelPhoto()V

    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->requestRender()V

    :cond_0
    return-void
.end method

.method public static cancelVideo()V
    .locals 2

    const-string v0, "CloneSDK"

    const-string v1, "cancelVideo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeCancelVideo()V

    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->requestRender()V

    :cond_0
    return-void
.end method

.method private static extractRawTo(Landroid/app/Activity;Ljava/io/File;)V
    .locals 4

    invoke-static {}, Lcom/xiaomi/fenshen/CloneUtil;->getCloneModelVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "CloneSDK"

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->matchCloneModelVersion(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "ignore extractRawTo, file exists and matched"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extractRawTo "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v1, "xseg2_dlc"

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 p1, 0x2800

    :try_start_2
    new-array p1, p1, [B

    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->updateCloneModelVersion(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x0

    :try_start_3
    invoke-static {p1, v1}, Lcom/xiaomi/fenshen/FenShenCam;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p0, :cond_2

    :try_start_4
    invoke-static {p1, p0}, Lcom/xiaomi/fenshen/FenShenCam;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-static {p1, v1}, Lcom/xiaomi/fenshen/FenShenCam;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    if-eqz p0, :cond_3

    :try_start_8
    invoke-static {p1, p0}, Lcom/xiaomi/fenshen/FenShenCam;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_3
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "extract raw file failed"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static finishPhoto()V
    .locals 0

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeFinishPhoto()V

    return-void
.end method

.method public static getCurrentSubjectCount()I
    .locals 1

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeGetCurrentSubjectCount()I

    move-result v0

    return v0
.end method

.method public static init(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/fenshen/FenShenCam;->sReleased:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init previewWidth "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", previewHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloneSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/fenshen/FenShenCam;->nativeInit(IILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static initResources(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "CloneSDK"

    const-string v1, "initResources E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v2, Ljava/io/File;

    const-string v3, "xseg2.dlc"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/xiaomi/fenshen/FenShenCam;->extractRawTo(Landroid/app/Activity;Ljava/io/File;)V

    const-string p0, "initResources X"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static native nativeAddPhoto(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V
.end method

.method private static native nativeAddPreviewFrame(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V
.end method

.method private static native nativeCancelPhoto()V
.end method

.method private static native nativeCancelVideo()V
.end method

.method private static native nativeFinishPhoto()V
.end method

.method private static native nativeGetCurrentSubjectCount()I
.end method

.method private static native nativeGetResultJpeg()[B
.end method

.method private static native nativeInit(IILjava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativePullCmd()Ljava/lang/String;
.end method

.method private static native nativeRelease()V
.end method

.method private static native nativeRender()I
.end method

.method private static native nativeRenderInit(IIIIII)I
.end method

.method private static native nativeSaveVideo(Ljava/lang/String;)V
.end method

.method private static native nativeSetMode(I)V
.end method

.method private static native nativeStart()V
.end method

.method private static native nativeStartRecordVideo()V
.end method

.method private static native nativeStopRecordVideo()V
.end method

.method public static declared-synchronized release()V
    .locals 3

    const-class v0, Lcom/xiaomi/fenshen/FenShenCam;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/xiaomi/fenshen/FenShenCam;->sReleased:Z

    if-eqz v1, :cond_0

    const-string v1, "CloneSDK"

    const-string v2, "ignore release twice"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    const-string v1, "CloneSDK"

    const-string v2, "release"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    sput-boolean v1, Lcom/xiaomi/fenshen/FenShenCam;->sReleased:Z

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeRelease()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized render()V
    .locals 5

    const-class v0, Lcom/xiaomi/fenshen/FenShenCam;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/xiaomi/fenshen/FenShenCam;->sReleased:Z

    if-eqz v1, :cond_0

    const-string v1, "CloneSDK"

    const-string v2, "ignore render, released"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeRender()I

    sget-boolean v1, Lcom/xiaomi/fenshen/FenShenCam;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "CloneSDK"

    const-string v2, "nativeRender "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeGetCurrentSubjectCount()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onSubjectCount(I)V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativePullCmd()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_3

    monitor-exit v0

    return-void

    :cond_3
    :try_start_2
    sget-boolean v2, Lcom/xiaomi/fenshen/FenShenCam;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "CloneSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "render cmd "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const-string v2, "request_render"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    invoke-interface {v1}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->requestRender()V

    goto :goto_0

    :cond_6
    const-string v2, "start_preview"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    invoke-interface {v1}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onStartPreview()V

    goto :goto_0

    :cond_7
    const-string v2, "stop_preview"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    invoke-interface {v1}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onStopPreview()V

    goto :goto_0

    :cond_8
    const-string v2, "stop_record"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    invoke-interface {v1}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onStopRecord()V

    goto :goto_0

    :cond_9
    const-string v2, "jpg_available"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeGetResultJpeg()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onPhotoResult([B)V

    goto :goto_0

    :cond_a
    const-string v2, "video_saved "

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    invoke-interface {v2, v1}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onVideoSaved(I)V

    goto/16 :goto_0

    :cond_b
    const-string v2, "msg_start"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->START:Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-interface {v1, v2}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onMessage(Lcom/xiaomi/fenshen/FenShenCam$Message;)V

    goto/16 :goto_0

    :cond_c
    const-string v2, "align_ok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->ALIGN_OK:Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-interface {v1, v2}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onMessage(Lcom/xiaomi/fenshen/FenShenCam$Message;)V

    goto/16 :goto_0

    :cond_d
    const-string v2, "align_warning"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->ALIGN_WARNING:Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-interface {v1, v2}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onMessage(Lcom/xiaomi/fenshen/FenShenCam$Message;)V

    goto/16 :goto_0

    :cond_e
    const-string v2, "align_fail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->ALIGN_TOO_LARGE_OR_FAILED:Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-interface {v1, v2}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onMessage(Lcom/xiaomi/fenshen/FenShenCam$Message;)V

    goto/16 :goto_0

    :cond_f
    const-string v2, "preview_no_person"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->PREVIEW_NO_PERSON:Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-interface {v1, v2}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onMessage(Lcom/xiaomi/fenshen/FenShenCam$Message;)V

    goto/16 :goto_0

    :cond_10
    const-string v2, "no_person"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->NO_PERSON:Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-interface {v1, v2}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onMessage(Lcom/xiaomi/fenshen/FenShenCam$Message;)V

    goto/16 :goto_0

    :cond_11
    const-string v2, "move_outside"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->MOVE_OUTSIDE:Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-interface {v1, v2}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onMessage(Lcom/xiaomi/fenshen/FenShenCam$Message;)V

    goto/16 :goto_0

    :cond_12
    const-string v2, "dynamic_scene"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->DYNAMIC_SCENE:Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-interface {v1, v2}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->onMessage(Lcom/xiaomi/fenshen/FenShenCam$Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static renderInit(IIIIII)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "renderInit screenW "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", screenH "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", drawX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", drawY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", drawW = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", drawH = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloneSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p5}, Lcom/xiaomi/fenshen/FenShenCam;->nativeRenderInit(IIIIII)I

    return-void
.end method

.method public static saveVideo(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/fenshen/FenShenCam;->nativeSaveVideo(Ljava/lang/String;)V

    sget-object p0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/xiaomi/fenshen/FenShenCam$Listener;->requestRender()V

    :cond_0
    return-void
.end method

.method public static setListener(Lcom/xiaomi/fenshen/FenShenCam$Listener;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setListener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloneSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/xiaomi/fenshen/FenShenCam;->listener:Lcom/xiaomi/fenshen/FenShenCam$Listener;

    return-void
.end method

.method public static setMode(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloneSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p0}, Lcom/xiaomi/fenshen/FenShenCam;->nativeSetMode(I)V

    return-void
.end method

.method public static start()V
    .locals 2

    const-string v0, "CloneSDK"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeStart()V

    return-void
.end method

.method public static startRecordVideo()V
    .locals 2

    const-string v0, "CloneSDK"

    const-string v1, "startRecordVideo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeStartRecordVideo()V

    return-void
.end method

.method public static stopRecordVideo()V
    .locals 2

    const-string v0, "CloneSDK"

    const-string v1, "stopRecordVideo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->nativeStopRecordVideo()V

    return-void
.end method
