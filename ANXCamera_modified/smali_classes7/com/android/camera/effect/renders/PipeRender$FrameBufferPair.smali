.class Lcom/android/camera/effect/renders/PipeRender$FrameBufferPair;
.super Ljava/lang/Object;
.source "PipeRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/renders/PipeRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameBufferPair"
.end annotation


# instance fields
.field private mCount:I

.field private mFBufferHeight:I

.field private mFBufferTextures:[I

.field private mFBufferWidth:I

.field private mFBuffers:[I

.field final synthetic this$0:Lcom/android/camera/effect/renders/PipeRender;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/renders/PipeRender;III)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRender$FrameBufferPair;->this$0:Lcom/android/camera/effect/renders/PipeRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/camera/effect/renders/PipeRender$FrameBufferPair;->mCount:I

    iput p3, p0, Lcom/android/camera/effect/renders/PipeRender$FrameBufferPair;->mFBufferWidth:I

    iput p4, p0, Lcom/android/camera/effect/renders/PipeRender$FrameBufferPair;->mFBufferHeight:I

    new-array p1, p2, [I

    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRender$FrameBufferPair;->mFBuffers:[I

    new-array p1, p2, [I

    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRender$FrameBufferPair;->mFBufferTextures:[I

    iget p1, p0, Lcom/android/camera/effect/renders/PipeRender$FrameBufferPair;->mCount:I

    iget p2, p0, Lcom/android/camera/effect/renders/PipeRender$FrameBufferPair;->mFBufferWidth:I

    iget p3, p0, Lcom/android/camera/effect/renders/PipeRender$FrameBufferPair;->mFBufferHeight:I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/effect/renders/PipeRender$FrameBufferPair;->initBufferPair(III)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/effect/renders/PipeRender$FrameBufferPair;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/PipeRender$FrameBufferPair;->updateBufferCount(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/effect/renders/PipeRender$FrameBufferPair;)[I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/effect/renders/PipeRender$FrameBufferPair;->mFBuffers:[I

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/camera/effect/renders/PipeRender$FrameBufferPair;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRender$FrameBufferPair;->mFBuffers:[I

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/effect/renders/PipeRender$FrameBufferPair;)[I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/effect/renders/PipeRender$FrameBufferPair;->mFBufferTextures:[I

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/camera/effect/renders/PipeRender$FrameBufferPair;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRender$FrameBufferPair;->mFBufferTextures:[I

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/camera/effect/renders/PipeRender$FrameBufferPair;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/effect/renders/PipeRender$FrameBufferPair;->mCount:I

    return p1
.end method

.method private declared-synchronized initBufferPair(III)V
    .locals 19

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/camera/effect/renders/PipeRender;->access$600()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "initBufferPair: count=%d size=%dx%d"

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v9, 0x2

    aput-object v6, v5, v9

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, p1

    move v2, v7

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, v1, Lcom/android/camera/effect/renders/PipeRender$FrameBufferPair;->mFBuffers:[I

    aget v3, v3, v2

    if-nez v3, :cond_0

    iget-object v3, v1, Lcom/android/camera/effect/renders/PipeRender$FrameBufferPair;->mFBuffers:[I

    invoke-static {v8, v3, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    iget-object v3, v1, Lcom/android/camera/effect/renders/PipeRender$FrameBufferPair;->mFBufferTextures:[I

    invoke-static {v8, v3, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    iget-object v3, v1, Lcom/android/camera/effect/renders/PipeRender$FrameBufferPair;->mFBufferTextures:[I

    aget v3, v3, v2

    const/16 v5, 0xde1

    invoke-static {v5, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v10, 0xde1

    const/4 v11, 0x0

    const/16 v12, 0x1908

    const/4 v15, 0x0

    const/16 v16, 0x1908

    const/16 v17, 0x1401

    const/16 v18, 0x0

    move/from16 v13, p2

    move/from16 v14, p3

    invoke-static/range {v10 .. v18}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v3, 0x2800

    const v6, 0x46180400    # 9729.0f

    invoke-static {v5, v3, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v3, 0x2801

    invoke-static {v5, v3, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v3, 0x2802

    const v6, 0x47012f00    # 33071.0f

    invoke-static {v5, v3, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v3, 0x2803

    invoke-static {v5, v3, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    iget-object v3, v1, Lcom/android/camera/effect/renders/PipeRender$FrameBufferPair;->mFBuffers:[I

    aget v3, v3, v2

    const v6, 0x8d40

    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v3, 0x8ce0

    iget-object v10, v1, Lcom/android/camera/effect/renders/PipeRender$FrameBufferPair;->mFBufferTextures:[I

    aget v10, v10, v2

    invoke-static {v6, v3, v5, v10, v7}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    invoke-static {}, Lcom/android/camera/effect/renders/PipeRender;->access$600()Ljava/lang/String;

    move-result-object v3

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v11, "fbo[%d]: %d %d %d*%d thread=%d"

    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v7

    iget-object v13, v1, Lcom/android/camera/effect/renders/PipeRender$FrameBufferPair;->mFBuffers:[I

    aget v13, v13, v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v8

    iget-object v13, v1, Lcom/android/camera/effect/renders/PipeRender$FrameBufferPair;->mFBufferTextures:[I

    aget v13, v13, v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v9

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v4

    const/4 v13, 0x4

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5, v7}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateBufferCount(I)V
    .locals 6

    iget v0, p0, Lcom/android/camera/effect/renders/PipeRender$FrameBufferPair;->mCount:I

    if-ge v0, p1, :cond_1

    new-array v1, p1, [I

    new-array v2, p1, [I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRender$FrameBufferPair;->mFBuffers:[I

    iget-object v3, p0, Lcom/android/camera/effect/renders/PipeRender$FrameBufferPair;->mFBufferTextures:[I

    array-length v4, v0

    const/4 v5, 0x0

    invoke-static {v0, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v3

    invoke-static {v3, v5, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iput p1, p0, Lcom/android/camera/effect/renders/PipeRender$FrameBufferPair;->mCount:I

    iput-object v1, p0, Lcom/android/camera/effect/renders/PipeRender$FrameBufferPair;->mFBuffers:[I

    iput-object v2, p0, Lcom/android/camera/effect/renders/PipeRender$FrameBufferPair;->mFBufferTextures:[I

    iget p1, p0, Lcom/android/camera/effect/renders/PipeRender$FrameBufferPair;->mCount:I

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRender$FrameBufferPair;->this$0:Lcom/android/camera/effect/renders/PipeRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/PipeRender;->access$400(Lcom/android/camera/effect/renders/PipeRender;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRender$FrameBufferPair;->this$0:Lcom/android/camera/effect/renders/PipeRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/PipeRender;->access$500(Lcom/android/camera/effect/renders/PipeRender;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/effect/renders/PipeRender$FrameBufferPair;->initBufferPair(III)V

    :cond_1
    return-void
.end method
