.class public Lcom/miui/internal/yellowpage/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;,
        Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;,
        Lcom/miui/internal/yellowpage/ImageLoader$State;
    }
.end annotation


# static fields
.field private static final BITMAP_CACHE_SIZE:I = 0xa00000

.field private static final MESSAGE_REQUEST_LOAD:I = 0x2

.field private static final MESSAGE_REQUEST_LOADED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ImageLoader"

.field private static final THREAD_POOL_COUNT:I = 0x6

.field private static final UI_MODE_INIT:I = -0x1

.field private static sDisplayHeight:I

.field private static sDisplayWidth:I

.field private static sLoader:Lcom/miui/internal/yellowpage/ImageLoader;


# instance fields
.field private final BITMAP_CACHE_LOCK:Ljava/lang/Object;

.field private final mBitmapCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Lmiui/yellowpage/YellowPageImgLoader$Image;",
            "Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentUiMode:I

.field private final mDefaultBitmapCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mMainThreadHandler:Landroid/os/Handler;

.field private mNetworkAccess:I

.field private volatile mPauseLoading:Z

.field private final mPendingRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lmiui/yellowpage/YellowPageImgLoader$Image;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRequestingImageViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lmiui/yellowpage/YellowPageImgLoader$Image;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->BITMAP_CACHE_LOCK:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mCurrentUiMode:I

    new-instance v0, Lcom/miui/internal/yellowpage/ImageLoader$1;

    const/high16 v1, 0xa00000

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/yellowpage/ImageLoader$1;-><init>(Lcom/miui/internal/yellowpage/ImageLoader;I)V

    iput-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mDefaultBitmapCache:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPendingRequests:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mRequestingImageViews:Ljava/util/Map;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mMainThreadHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/internal/yellowpage/ImageLoader;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->BITMAP_CACHE_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/internal/yellowpage/ImageLoader;)Landroid/util/LruCache;
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/internal/yellowpage/ImageLoader;Lmiui/yellowpage/YellowPageImgLoader$Image;Z)[B
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImage(Lmiui/yellowpage/YellowPageImgLoader$Image;Z)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/internal/yellowpage/ImageLoader;Lmiui/yellowpage/YellowPageImgLoader$Image;[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/yellowpage/ImageLoader;->cacheBitmap(Lmiui/yellowpage/YellowPageImgLoader$Image;[B)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/internal/yellowpage/ImageLoader;Lmiui/yellowpage/YellowPageImgLoader$Image;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/internal/yellowpage/ImageLoader;->removeFailedImage(Lmiui/yellowpage/YellowPageImgLoader$Image;)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/internal/yellowpage/ImageLoader;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static acquireScreenAttr(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v2, Lcom/miui/internal/yellowpage/ImageLoader;->sDisplayHeight:I

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v2, Lcom/miui/internal/yellowpage/ImageLoader;->sDisplayWidth:I

    return-void
.end method

.method private bindCachedImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;)Lcom/miui/internal/yellowpage/ImageLoader$State;
    .locals 4

    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->BITMAP_CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v1, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mState:Lcom/miui/internal/yellowpage/ImageLoader$State;

    sget-object v3, Lcom/miui/internal/yellowpage/ImageLoader$State;->LOADED:Lcom/miui/internal/yellowpage/ImageLoader$State;

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v2}, Lcom/miui/internal/yellowpage/ImageLoader;->bindImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    sget-object v2, Lcom/miui/internal/yellowpage/ImageLoader$State;->LOADED:Lcom/miui/internal/yellowpage/ImageLoader$State;

    monitor-exit v0

    return-object v2

    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mState:Lcom/miui/internal/yellowpage/ImageLoader$State;

    monitor-exit v0

    return-object v2

    :cond_1
    const-string v2, "ImageLoader"

    const-string v3, "cannot get image"

    invoke-static {v2, v3}, Lmiui/yellowpage/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/miui/internal/yellowpage/ImageLoader$State;->NEEDED:Lcom/miui/internal/yellowpage/ImageLoader$State;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private bindDefaultImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;Landroid/graphics/Bitmap;I)V
    .locals 5

    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/internal/yellowpage/ImageLoader;->getCurrentUiMode(Landroid/content/Context;)I

    move-result v0

    invoke-static {p3, p4}, Lcom/miui/internal/yellowpage/ImageLoader;->getDefaultImageKey(Landroid/graphics/Bitmap;I)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mCurrentUiMode:I

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mDefaultBitmapCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iput v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mCurrentUiMode:I

    :cond_0
    iget-object v2, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mDefaultBitmapCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    if-eqz p3, :cond_1

    :try_start_0
    invoke-virtual {p2, p3}, Lmiui/yellowpage/YellowPageImgLoader$Image;->proccessImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    iget-object v3, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p2, v3}, Lmiui/yellowpage/YellowPageImgLoader$Image;->proccessImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_1

    :goto_0
    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_2

    :cond_2
    :goto_1
    nop

    :goto_2
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mDefaultBitmapCache:Ljava/util/Map;

    invoke-static {p3, p4}, Lcom/miui/internal/yellowpage/ImageLoader;->getDefaultImageKey(Landroid/graphics/Bitmap;I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private bindImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private static bitmapToByteArray(Landroid/graphics/Bitmap;)[B
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private cacheBitmap(Lmiui/yellowpage/YellowPageImgLoader$Image;[B)V
    .locals 4

    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->BITMAP_CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;

    if-nez v1, :cond_0

    new-instance v2, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;-><init>(Lcom/miui/internal/yellowpage/ImageLoader$1;)V

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;

    move-object v1, v2

    :goto_0
    invoke-direct {p0, p1, v1, p2}, Lcom/miui/internal/yellowpage/ImageLoader;->inflateBitmap(Lmiui/yellowpage/YellowPageImgLoader$Image;Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;[B)V

    iget-object v2, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/miui/internal/yellowpage/ImageLoader$State;->LOADED:Lcom/miui/internal/yellowpage/ImageLoader$State;

    iput-object v2, v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mState:Lcom/miui/internal/yellowpage/ImageLoader$State;

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/miui/internal/yellowpage/ImageLoader$State;->NEEDED:Lcom/miui/internal/yellowpage/ImageLoader$State;

    iput-object v2, v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mState:Lcom/miui/internal/yellowpage/ImageLoader$State;

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v2, 0x1

    if-gt v0, p3, :cond_0

    if-le v1, p2, :cond_2

    :cond_0
    int-to-float v3, v0

    int-to-float v4, p3

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v4, v1

    int-to-float v5, p2

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    if-ge v3, v4, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    move v2, v5

    :cond_2
    return v2
.end method

.method private decodeBitmap([B)Landroid/graphics/Bitmap;
    .locals 5

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getDisplayWidth()I

    move-result v2

    invoke-direct {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getDisplayHeight()I

    move-result v4

    invoke-direct {p0, v0, v2, v4}, Lcom/miui/internal/yellowpage/ImageLoader;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    array-length v1, p1

    invoke-static {p1, v3, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCurrentUiMode(Landroid/content/Context;)I
    .locals 4

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    iget v3, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v3, 0x30

    return v0
.end method

.method private static getDefaultImageKey(Landroid/graphics/Bitmap;I)Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getDisplayHeight()I
    .locals 1

    sget v0, Lcom/miui/internal/yellowpage/ImageLoader;->sDisplayHeight:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/internal/yellowpage/ImageLoader;->acquireScreenAttr(Landroid/content/Context;)V

    :cond_0
    sget v0, Lcom/miui/internal/yellowpage/ImageLoader;->sDisplayHeight:I

    return v0
.end method

.method private getDisplayWidth()I
    .locals 1

    sget v0, Lcom/miui/internal/yellowpage/ImageLoader;->sDisplayWidth:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/internal/yellowpage/ImageLoader;->acquireScreenAttr(Landroid/content/Context;)V

    :cond_0
    sget v0, Lcom/miui/internal/yellowpage/ImageLoader;->sDisplayWidth:I

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;
    .locals 2

    const-class v0, Lcom/miui/internal/yellowpage/ImageLoader;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/internal/yellowpage/ImageLoader;->sLoader:Lcom/miui/internal/yellowpage/ImageLoader;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/internal/yellowpage/ImageLoader;

    invoke-direct {v1, p0}, Lcom/miui/internal/yellowpage/ImageLoader;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/internal/yellowpage/ImageLoader;->sLoader:Lcom/miui/internal/yellowpage/ImageLoader;

    :cond_0
    sget-object v1, Lcom/miui/internal/yellowpage/ImageLoader;->sLoader:Lcom/miui/internal/yellowpage/ImageLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;I)Lcom/miui/internal/yellowpage/ImageLoader;
    .locals 2

    const-class v0, Lcom/miui/internal/yellowpage/ImageLoader;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/internal/yellowpage/ImageLoader;->sLoader:Lcom/miui/internal/yellowpage/ImageLoader;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/internal/yellowpage/ImageLoader;

    invoke-direct {v1, p0}, Lcom/miui/internal/yellowpage/ImageLoader;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/internal/yellowpage/ImageLoader;->sLoader:Lcom/miui/internal/yellowpage/ImageLoader;

    :cond_0
    sget-object v1, Lcom/miui/internal/yellowpage/ImageLoader;->sLoader:Lcom/miui/internal/yellowpage/ImageLoader;

    iput p1, v1, Lcom/miui/internal/yellowpage/ImageLoader;->mNetworkAccess:I

    sget-object v1, Lcom/miui/internal/yellowpage/ImageLoader;->sLoader:Lcom/miui/internal/yellowpage/ImageLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private inflateBitmap(Lmiui/yellowpage/YellowPageImgLoader$Image;Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;[B)V
    .locals 3

    const-string v0, "ImageLoader"

    if-eqz p3, :cond_1

    :try_start_0
    invoke-direct {p0, p3}, Lcom/miui/internal/yellowpage/ImageLoader;->decodeBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Lmiui/yellowpage/YellowPageImgLoader$Image;->proccessImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p2, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const-string v2, "Can not decode bitmap bytes."

    invoke-static {v0, v2}, Lmiui/yellowpage/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    const-string v1, "The holder\'s bytes should not be null"

    invoke-static {v0, v1}, Lmiui/yellowpage/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    :goto_3
    return-void
.end method

.method private loadCachedImageBytes(Lmiui/yellowpage/YellowPageImgLoader$Image;)[B
    .locals 4

    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->BITMAP_CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mState:Lcom/miui/internal/yellowpage/ImageLoader$State;

    sget-object v3, Lcom/miui/internal/yellowpage/ImageLoader$State;->LOADED:Lcom/miui/internal/yellowpage/ImageLoader$State;

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/miui/internal/yellowpage/ImageLoader;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    monitor-exit v0

    return-object v2

    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loadImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;Landroid/graphics/Bitmap;I)V
    .locals 3

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lmiui/yellowpage/YellowPageImgLoader$Image;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/yellowpage/ImageLoader;->bindCachedImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;)Lcom/miui/internal/yellowpage/ImageLoader$State;

    move-result-object v0

    sget-object v1, Lcom/miui/internal/yellowpage/ImageLoader$State;->LOADED:Lcom/miui/internal/yellowpage/ImageLoader$State;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/internal/yellowpage/ImageLoader;->bindDefaultImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;Landroid/graphics/Bitmap;I)V

    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPendingRequests:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/miui/internal/yellowpage/ImageLoader;->requestLoading(Landroid/widget/ImageView;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadImage: invalid image : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-nez p2, :cond_3

    move-object v2, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lmiui/yellowpage/YellowPageImgLoader$Image;->getUrl()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImageLoader"

    invoke-static {v2, v0}, Lmiui/yellowpage/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/internal/yellowpage/ImageLoader;->bindDefaultImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;Landroid/graphics/Bitmap;I)V

    :goto_1
    return-void
.end method

.method private loadImage(Lmiui/yellowpage/YellowPageImgLoader$Image;Z)[B
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImage(Lmiui/yellowpage/YellowPageImgLoader$Image;ZI)[B

    move-result-object v0

    return-object v0
.end method

.method private loadImage(Lmiui/yellowpage/YellowPageImgLoader$Image;ZI)[B
    .locals 18

    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Lmiui/yellowpage/YellowPageImgLoader$Image;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    return-object v3

    :cond_0
    const/4 v4, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/miui/internal/yellowpage/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v5, Lmiui/yellowpage/YellowPageContract$ImageLookup;->CONTENT_URI_IMAGE:Landroid/net/Uri;

    invoke-virtual/range {p1 .. p1}, Lmiui/yellowpage/YellowPageImgLoader$Image;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "w"

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_29

    move-object v4, v0

    nop

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v6, v0

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v9
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_15
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v11, 0x0

    cmp-long v0, v9, v11

    const/4 v9, -0x1

    const/16 v10, 0x1000

    const/4 v13, 0x0

    if-nez v0, :cond_9

    if-eqz p2, :cond_9

    :try_start_2
    sget-object v0, Lmiui/yellowpage/YellowPageContract$ImageLookup;->CONTENT_URI_IMAGE_CLOUD:Landroid/net/Uri;

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    move-object v14, v0

    const-string v0, "timeout"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v0, v15}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "overwrite_network_access"

    iget v15, v1, Lcom/miui/internal/yellowpage/ImageLoader;->mNetworkAccess:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v0, v15}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, v1, Lcom/miui/internal/yellowpage/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v15

    const-string v3, "r"

    invoke-virtual {v0, v15, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    move-object v8, v0

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v16

    cmp-long v0, v16, v11

    if-nez v0, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v0

    move-object v7, v0

    new-array v0, v10, [B

    move v3, v13

    :goto_0
    invoke-virtual {v7, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    move v3, v10

    if-eq v10, v9, :cond_2

    invoke-virtual {v6, v0, v13, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v10, v0

    const/4 v0, 0x1

    iput-boolean v0, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v0, v9

    invoke-static {v9, v13, v0, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-object v0, v10, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v10, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v11, "image"

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    array-length v0, v9

    if-lez v0, :cond_3

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->createOutputStream()Ljava/io/FileOutputStream;

    move-result-object v0

    move-object v5, v0

    invoke-virtual {v5, v9}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_15
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    nop

    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    nop

    :try_start_4
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    nop

    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    nop

    :try_start_6
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    nop

    :try_start_7
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    return-object v9

    :cond_3
    goto/16 :goto_12

    :cond_4
    :try_start_8
    new-instance v0, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid mime type ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_15
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_5
    :goto_6
    nop

    if-eqz v5, :cond_6

    :try_start_9
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_7

    :catch_5
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_7
    nop

    :try_start_a
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_8

    :catch_6
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_8
    if-eqz v7, :cond_7

    :try_start_b
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_9

    :catch_7
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_9
    if-eqz v8, :cond_8

    :try_start_c
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_a

    :catch_8
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_a
    nop

    :try_start_d
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_b

    :catch_9
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_b
    const/4 v3, 0x0

    return-object v3

    :catch_a
    move-exception v0

    :try_start_e
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-object v3, Lmiui/yellowpage/YellowPageContract$ImageLookup;->CONTENT_URI_IMAGE_CLOUD:Landroid/net/Uri;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    const-string v10, "fileName"

    invoke-virtual/range {p1 .. p1}, Lmiui/yellowpage/YellowPageImgLoader$Image;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    iget-object v3, v1, Lcom/miui/internal/yellowpage/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    nop

    goto/16 :goto_12

    :cond_9
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v14

    cmp-long v0, v14, v11

    if-lez v0, :cond_d

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v0

    move-object v7, v0

    new-array v0, v10, [B

    move-object v3, v0

    move v0, v13

    :goto_c
    invoke-virtual {v7, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    move v11, v10

    if-eq v10, v9, :cond_a

    invoke-virtual {v6, v3, v13, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    move v0, v11

    goto :goto_c

    :cond_a
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_d

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_1f
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_15
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v5, :cond_b

    :try_start_f
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    goto :goto_d

    :catch_b
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_b
    :goto_d
    nop

    :try_start_10
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    goto :goto_e

    :catch_c
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_e
    nop

    :try_start_11
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d

    goto :goto_f

    :catch_d
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_f
    if-eqz v8, :cond_c

    :try_start_12
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_e

    goto :goto_10

    :catch_e
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_c
    :goto_10
    nop

    :try_start_13
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_f

    goto :goto_11

    :catch_f
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_11
    return-object v9

    :cond_d
    :goto_12
    if-eqz v5, :cond_e

    :try_start_14
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_10

    goto :goto_13

    :catch_10
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_e
    :goto_13
    nop

    :try_start_15
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_11

    goto :goto_14

    :catch_11
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_14
    if-eqz v7, :cond_f

    :try_start_16
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_12

    goto :goto_15

    :catch_12
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_f
    :goto_15
    if-eqz v8, :cond_10

    :try_start_17
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_13

    goto :goto_16

    :catch_13
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_10
    :goto_16
    nop

    :try_start_18
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_14

    :goto_17
    goto/16 :goto_24

    :catch_14
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto/16 :goto_25

    :catch_15
    move-exception v0

    :try_start_19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    if-eqz v5, :cond_11

    :try_start_1a
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_16

    goto :goto_18

    :catch_16
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_11
    :goto_18
    if-eqz v6, :cond_12

    :try_start_1b
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_17

    goto :goto_19

    :catch_17
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_12
    :goto_19
    if-eqz v7, :cond_13

    :try_start_1c
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_18

    goto :goto_1a

    :catch_18
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_13
    :goto_1a
    if-eqz v8, :cond_14

    :try_start_1d
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_19

    goto :goto_1b

    :catch_19
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_14
    :goto_1b
    if-eqz v4, :cond_1d

    :try_start_1e
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_14

    goto :goto_17

    :catch_1a
    move-exception v0

    :try_start_1f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    if-eqz v5, :cond_15

    :try_start_20
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_1b

    goto :goto_1c

    :catch_1b
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_15
    :goto_1c
    if-eqz v6, :cond_16

    :try_start_21
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_1c

    goto :goto_1d

    :catch_1c
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_16
    :goto_1d
    if-eqz v7, :cond_17

    :try_start_22
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_1d

    goto :goto_1e

    :catch_1d
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_17
    :goto_1e
    if-eqz v8, :cond_18

    :try_start_23
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_1e

    goto :goto_1f

    :catch_1e
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_18
    :goto_1f
    if-eqz v4, :cond_1d

    :try_start_24
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_14

    goto/16 :goto_17

    :catch_1f
    move-exception v0

    :try_start_25
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    if-eqz v5, :cond_19

    :try_start_26
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_20

    goto :goto_20

    :catch_20
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_19
    :goto_20
    if-eqz v6, :cond_1a

    :try_start_27
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_21

    goto :goto_21

    :catch_21
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1a
    :goto_21
    if-eqz v7, :cond_1b

    :try_start_28
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_22

    goto :goto_22

    :catch_22
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1b
    :goto_22
    if-eqz v8, :cond_1c

    :try_start_29
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_23

    goto :goto_23

    :catch_23
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1c
    :goto_23
    if-eqz v4, :cond_1d

    :try_start_2a
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_14

    goto/16 :goto_17

    :cond_1d
    :goto_24
    const/4 v3, 0x0

    return-object v3

    :goto_25
    if-eqz v5, :cond_1e

    :try_start_2b
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_24

    goto :goto_26

    :catch_24
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1e
    :goto_26
    if-eqz v6, :cond_1f

    :try_start_2c
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_25

    goto :goto_27

    :catch_25
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1f
    :goto_27
    if-eqz v7, :cond_20

    :try_start_2d
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_26

    goto :goto_28

    :catch_26
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_20
    :goto_28
    if-eqz v8, :cond_21

    :try_start_2e
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_27

    goto :goto_29

    :catch_27
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_21
    :goto_29
    if-eqz v4, :cond_22

    :try_start_2f
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_28

    goto :goto_2a

    :catch_28
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_22
    :goto_2a
    throw v3

    :catch_29
    move-exception v0

    const-string v3, "ImageLoader"

    const-string v5, "The yellowpage provider\'s image can not be written now"

    invoke-static {v3, v5, v0}, Lmiui/yellowpage/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    return-object v3
.end method

.method private onRequestLoad(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Lcom/miui/internal/yellowpage/ImageLoader;->requestLoading(Landroid/widget/ImageView;)Z

    :cond_1
    return-void
.end method

.method private onRequestLoaded(Landroid/os/Message;)V
    .locals 10

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmiui/yellowpage/YellowPageImgLoader$Image;

    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->BITMAP_CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mRequestingImageViews:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/Reference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmiui/yellowpage/YellowPageImgLoader$Image;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v6, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;

    if-eqz v6, :cond_2

    iget-object v7, v6, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mState:Lcom/miui/internal/yellowpage/ImageLoader$State;

    sget-object v8, Lcom/miui/internal/yellowpage/ImageLoader$State;->LOADED:Lcom/miui/internal/yellowpage/ImageLoader$State;

    if-ne v7, v8, :cond_2

    iget-object v7, v6, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v5, v7}, Lcom/miui/internal/yellowpage/ImageLoader;->bindImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    const-string v7, "ImageLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage:ImageView with image "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " bound"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lmiui/yellowpage/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v7, "ImageLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage:image "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " was garbage collected"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lmiui/yellowpage/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    const/4 v8, 0x2

    iput v8, v7, Landroid/os/Message;->what:I

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-direct {v8, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v8, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v8, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v8, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    :goto_1
    goto/16 :goto_0

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private removeFailedImage(Lmiui/yellowpage/YellowPageImgLoader$Image;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->BITMAP_CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private requestLoading(Landroid/widget/ImageView;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPauseLoading:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lmiui/yellowpage/YellowPageImgLoader$Image;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/yellowpage/YellowPageImgLoader$Image;

    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mRequestingImageViews:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    if-nez v1, :cond_0

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object v1, v2

    iget-object v2, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mRequestingImageViews:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;

    invoke-direct {v3, p0, v0}, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;-><init>(Lcom/miui/internal/yellowpage/ImageLoader;Lmiui/yellowpage/YellowPageImgLoader$Image;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public cancelRequest(Landroid/widget/ImageView;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/internal/yellowpage/ImageLoader;->onRequestLoad(Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/internal/yellowpage/ImageLoader;->onRequestLoaded(Landroid/os/Message;)V

    nop

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public loadImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public loadImageBitmap(Lmiui/yellowpage/YellowPageImgLoader$Image;Z)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImageBytes(Lmiui/yellowpage/YellowPageImgLoader$Image;Z)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/internal/yellowpage/ImageLoader;->decodeBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public loadImageBytes(Lmiui/yellowpage/YellowPageImgLoader$Image;Z)[B
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImageBytes(Lmiui/yellowpage/YellowPageImgLoader$Image;ZII)[B

    move-result-object v0

    return-object v0
.end method

.method public loadImageBytes(Lmiui/yellowpage/YellowPageImgLoader$Image;ZII)[B
    .locals 3

    invoke-direct {p0, p1}, Lcom/miui/internal/yellowpage/ImageLoader;->loadCachedImageBytes(Lmiui/yellowpage/YellowPageImgLoader$Image;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p4}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImage(Lmiui/yellowpage/YellowPageImgLoader$Image;ZI)[B

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/yellowpage/ImageLoader;->cacheBitmap(Lmiui/yellowpage/YellowPageImgLoader$Image;[B)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    const-string v1, "ImageLoader"

    const-string v2, "failed to load image, return default res"

    invoke-static {v1, v2}, Lmiui/yellowpage/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/internal/yellowpage/ImageLoader;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public pauseLoading()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPauseLoading:Z

    return-void
.end method

.method public resumeLoading()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPauseLoading:Z

    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/miui/internal/yellowpage/ImageLoader;->requestLoading(Landroid/widget/ImageView;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_1
    :goto_1
    goto :goto_0

    :cond_2
    return-void
.end method
