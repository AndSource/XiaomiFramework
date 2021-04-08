.class Landroid/os/statistics/NativeBackTrace;
.super Ljava/lang/Object;
.source "NativeBackTrace.java"


# static fields
.field private static nativeBacktraceMapUpdated:Z


# instance fields
.field private mNativePtr:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/os/statistics/NativeBackTrace;->mNativePtr:J

    return-void
.end method

.method private static native nativeDispose(J)V
.end method

.method private static native nativeResolve(J)[Ljava/lang/String;
.end method

.method private static native nativeUpdateBacktraceMap()I
.end method

.method public static reset()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/statistics/NativeBackTrace;->nativeBacktraceMapUpdated:Z

    return-void
.end method

.method public static resolve(Landroid/os/statistics/NativeBackTrace;)[Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-boolean v0, Landroid/os/statistics/NativeBackTrace;->nativeBacktraceMapUpdated:Z

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/statistics/NativeBackTrace;->updateBacktraceMap()I

    const/4 v0, 0x1

    sput-boolean v0, Landroid/os/statistics/NativeBackTrace;->nativeBacktraceMapUpdated:Z

    :cond_1
    invoke-virtual {p0}, Landroid/os/statistics/NativeBackTrace;->resolve()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static updateBacktraceMap()I
    .locals 1

    invoke-static {}, Landroid/os/statistics/NativeBackTrace;->nativeUpdateBacktraceMap()I

    move-result v0

    return v0
.end method


# virtual methods
.method public dispose()V
    .locals 5

    iget-wide v0, p0, Landroid/os/statistics/NativeBackTrace;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Landroid/os/statistics/NativeBackTrace;->nativeDispose(J)V

    iput-wide v2, p0, Landroid/os/statistics/NativeBackTrace;->mNativePtr:J

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/statistics/NativeBackTrace;->dispose()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public resolve()[Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Landroid/os/statistics/NativeBackTrace;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    sget-object v0, Landroid/os/statistics/StackUtils;->emptyStack:[Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-static {v0, v1}, Landroid/os/statistics/NativeBackTrace;->nativeResolve(J)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
