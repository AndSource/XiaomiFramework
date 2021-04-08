.class public Lmiui/content/res/FixedSizeStringBuffer;
.super Ljava/lang/Object;
.source "FixedSizeStringBuffer.java"


# static fields
.field private static final STRING_CAPACITY:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "FixedSizeStringBuffer"

.field private static sBufferPool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/ref/SoftReference<",
            "Lmiui/content/res/FixedSizeStringBuffer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sMutex:Ljava/lang/Object;


# instance fields
.field private mBuf:[C

.field private mLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lmiui/content/res/FixedSizeStringBuffer;->sBufferPool:Ljava/util/LinkedList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiui/content/res/FixedSizeStringBuffer;->sMutex:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    new-array v0, p1, [C

    iput-object v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mBuf:[C

    return-void
.end method

.method public static freeBuffer(Lmiui/content/res/FixedSizeStringBuffer;)V
    .locals 3

    sget-object v0, Lmiui/content/res/FixedSizeStringBuffer;->sMutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lmiui/content/res/FixedSizeStringBuffer;->sBufferPool:Ljava/util/LinkedList;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getBuffer()Lmiui/content/res/FixedSizeStringBuffer;
    .locals 6

    const/4 v0, 0x0

    sget-object v1, Lmiui/content/res/FixedSizeStringBuffer;->sMutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lmiui/content/res/FixedSizeStringBuffer;->sBufferPool:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :try_start_1
    sget-object v2, Lmiui/content/res/FixedSizeStringBuffer;->sBufferPool:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/content/res/FixedSizeStringBuffer;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move-object v0, v3

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "FixedSizeStringBuffer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sBufferPool remove() throw exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    sput-object v3, Lmiui/content/res/FixedSizeStringBuffer;->sBufferPool:Ljava/util/LinkedList;

    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    new-instance v1, Lmiui/content/res/FixedSizeStringBuffer;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2}, Lmiui/content/res/FixedSizeStringBuffer;-><init>(I)V

    move-object v0, v1

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/content/res/FixedSizeStringBuffer;->setLength(I)V

    return-object v0

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;II)V

    return-void
.end method

.method public append(Ljava/lang/String;II)V
    .locals 4

    sub-int v0, p3, p2

    iget v1, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    add-int/2addr v0, v1

    iget-object v2, p0, Lmiui/content/res/FixedSizeStringBuffer;->mBuf:[C

    array-length v3, v2

    if-gt v0, v3, :cond_0

    invoke-virtual {p1, p2, p3, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    iget v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    sub-int v1, p3, p2

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    :cond_0
    return-void
.end method

.method public assign(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/content/res/FixedSizeStringBuffer;->assign(Ljava/lang/String;I)V

    return-void
.end method

.method public assign(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mBuf:[C

    array-length v1, v0

    if-gt p2, v1, :cond_0

    iput p2, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    :cond_0
    return-void
.end method

.method public move(I)V
    .locals 1

    iget v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    return-void
.end method

.method public setLength(I)V
    .locals 0

    iput p1, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lmiui/content/res/FixedSizeStringBuffer;->mBuf:[C

    iget v1, p0, Lmiui/content/res/FixedSizeStringBuffer;->mLen:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
