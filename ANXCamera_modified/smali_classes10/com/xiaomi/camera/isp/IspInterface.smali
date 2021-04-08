.class public Lcom/xiaomi/camera/isp/IspInterface;
.super Ljava/lang/Object;
.source "IspInterface.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IspInterface"


# instance fields
.field private final mContextLock:Ljava/lang/Object;

.field private mInputStream:Lcom/xiaomi/camera/isp/IspStream;

.field private mJpegOutputSurface:Landroid/view/Surface;

.field private mNativeContext:J

.field private mSettings:Landroid/os/Parcelable;

.field private mYuvOutputSurface:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "jni_ispinterface"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/xiaomi/camera/isp/IspInterface;->TAG:Ljava/lang/String;

    const-string v2, "load library jni_ispinterface.so failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-static {}, Lcom/xiaomi/camera/isp/IspInterface;->nativeClassInit()V

    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/camera/isp/IspStream;Landroid/view/Surface;Landroid/view/Surface;Landroid/os/Parcelable;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/isp/IspInterface;->mContextLock:Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/camera/isp/IspInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ctor: E "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/xiaomi/camera/isp/IspInterface;->mInputStream:Lcom/xiaomi/camera/isp/IspStream;

    iput-object p2, p0, Lcom/xiaomi/camera/isp/IspInterface;->mJpegOutputSurface:Landroid/view/Surface;

    iput-object p3, p0, Lcom/xiaomi/camera/isp/IspInterface;->mYuvOutputSurface:Landroid/view/Surface;

    iput-object p4, p0, Lcom/xiaomi/camera/isp/IspInterface;->mSettings:Landroid/os/Parcelable;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/xiaomi/camera/isp/IspInterface;->mInputStream:Lcom/xiaomi/camera/isp/IspStream;

    iget-object v5, p0, Lcom/xiaomi/camera/isp/IspInterface;->mJpegOutputSurface:Landroid/view/Surface;

    iget-object v6, p0, Lcom/xiaomi/camera/isp/IspInterface;->mYuvOutputSurface:Landroid/view/Surface;

    iget-object v7, p0, Lcom/xiaomi/camera/isp/IspInterface;->mSettings:Landroid/os/Parcelable;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/xiaomi/camera/isp/IspInterface;->nativeCreate(Ljava/lang/Object;Lcom/xiaomi/camera/isp/IspStream;Landroid/view/Surface;Landroid/view/Surface;Landroid/os/Parcelable;)V

    sget-object p1, Lcom/xiaomi/camera/isp/IspInterface;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ctor: X "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static create(Lcom/xiaomi/camera/isp/IspStream;Landroid/view/Surface;Landroid/view/Surface;Landroid/os/Parcelable;)Lcom/xiaomi/camera/isp/IspInterface;
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Lcom/xiaomi/camera/isp/IspInterface;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/xiaomi/camera/isp/IspInterface;-><init>(Lcom/xiaomi/camera/isp/IspStream;Landroid/view/Surface;Landroid/view/Surface;Landroid/os/Parcelable;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The jpeg output surface is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The inputStream is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCreate(Ljava/lang/Object;Lcom/xiaomi/camera/isp/IspStream;Landroid/view/Surface;Landroid/view/Surface;Landroid/os/Parcelable;)V
.end method

.method private native nativeDestroy()V
.end method

.method private native nativeSetFlipFlag(I)V
.end method

.method private native nativeYuvToJpeg(Lcom/xiaomi/camera/isp/IspRequest;)V
.end method

.method private native nativeYuvToYuv(Lcom/xiaomi/camera/isp/IspRequest;)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/xiaomi/camera/isp/IspInterface;->TAG:Ljava/lang/String;

    const-string v1, "postEventFromNative: E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/camera/isp/IspInterface;

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/xiaomi/camera/isp/IspInterface;->TAG:Ljava/lang/String;

    const-string v0, "postEventFromNative: X"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getInputStreamId()J
    .locals 2

    iget-object p0, p0, Lcom/xiaomi/camera/isp/IspInterface;->mInputStream:Lcom/xiaomi/camera/isp/IspStream;

    if-eqz p0, :cond_0

    iget-wide v0, p0, Lcom/xiaomi/camera/isp/IspStream;->streamId:J

    return-wide v0

    :cond_0
    sget-object p0, Lcom/xiaomi/camera/isp/IspInterface;->TAG:Ljava/lang/String;

    const-string v0, "getInputStreamId: input stream is not initialized"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public release()V
    .locals 3

    sget-object v0, Lcom/xiaomi/camera/isp/IspInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release: E "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterface;->mContextLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/camera/isp/IspInterface;->nativeDestroy()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/xiaomi/camera/isp/IspInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release: X "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setFlip(Z)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/isp/IspInterface;->mContextLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/isp/IspInterface;->nativeSetFlipFlag(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public yuvToJpeg(Lcom/xiaomi/camera/isp/IspRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/isp/IspInterface;->nativeYuvToJpeg(Lcom/xiaomi/camera/isp/IspRequest;)V

    return-void
.end method

.method public yuvToYuv(Lcom/xiaomi/camera/isp/IspRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/isp/IspInterface;->nativeYuvToYuv(Lcom/xiaomi/camera/isp/IspRequest;)V

    return-void
.end method
