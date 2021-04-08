.class Landroid/os/statistics/StackUtils;
.super Ljava/lang/Object;
.source "StackUtils.java"


# static fields
.field private static final MAX_STACK_DEPTH:I = 0x20

.field private static final MAX_STACK_LENGH:I = 0x400

.field public static final emptyJsonedStack:Lorg/json/JSONArray;

.field public static final emptyStack:[Ljava/lang/String;

.field private static final sStackTraceStringBuilder:Ljava/lang/StringBuilder;

.field private static final sStackTraceStringBuilderBusy:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final suggestedStackTopMethodFullNames:[Ljava/lang/String;

.field private static volatile topClassMethodSimpleNames:[Ljava/util/ArrayList;

.field private static volatile topClasses:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 75

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Landroid/os/statistics/StackUtils;->emptyStack:[Ljava/lang/String;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    sput-object v1, Landroid/os/statistics/StackUtils;->emptyJsonedStack:Lorg/json/JSONArray;

    const-string/jumbo v2, "java.lang.Thread.sleep"

    const-string/jumbo v3, "java.lang.Thread.join"

    const-string/jumbo v4, "java.util.concurrent.Semaphore.acquire"

    const-string/jumbo v5, "java.util.concurrent.Semaphore.acquireUninterruptibly"

    const-string/jumbo v6, "java.util.concurrent.Semaphore.tryAcquire"

    const-string/jumbo v7, "java.util.concurrent.Semaphore.release"

    const-string/jumbo v8, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer.acquire"

    const-string/jumbo v9, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer.acquireInterruptibly"

    const-string/jumbo v10, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer.tryAcquireNanos"

    const-string/jumbo v11, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer.release"

    const-string/jumbo v12, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer.acquireShared"

    const-string/jumbo v13, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer.acquireSharedInterruptibly"

    const-string/jumbo v14, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer.tryAcquireSharedNanos"

    const-string/jumbo v15, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer.releaseShared"

    const-string/jumbo v16, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer$ConditionObject.signal"

    const-string/jumbo v17, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer$ConditionObject.signalAll"

    const-string/jumbo v18, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer$ConditionObject.await"

    const-string/jumbo v19, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer$ConditionObject.awaitNanos"

    const-string/jumbo v20, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer$ConditionObject.awaitUntil"

    const-string/jumbo v21, "java.util.concurrent.locks.AbstractQueuedLongSynchronizer$ConditionObject.awaitUninterruptibly"

    const-string/jumbo v22, "java.util.concurrent.locks.AbstractQueuedSynchronizer.acquire"

    const-string/jumbo v23, "java.util.concurrent.locks.AbstractQueuedSynchronizer.acquireInterruptibly"

    const-string/jumbo v24, "java.util.concurrent.locks.AbstractQueuedSynchronizer.tryAcquireNanos"

    const-string/jumbo v25, "java.util.concurrent.locks.AbstractQueuedSynchronizer.release"

    const-string/jumbo v26, "java.util.concurrent.locks.AbstractQueuedSynchronizer.acquireShared"

    const-string/jumbo v27, "java.util.concurrent.locks.AbstractQueuedSynchronizer.acquireSharedInterruptibly"

    const-string/jumbo v28, "java.util.concurrent.locks.AbstractQueuedSynchronizer.tryAcquireSharedNanos"

    const-string/jumbo v29, "java.util.concurrent.locks.AbstractQueuedSynchronizer.releaseShared"

    const-string/jumbo v30, "java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.signal"

    const-string/jumbo v31, "java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.signalAll"

    const-string/jumbo v32, "java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.await"

    const-string/jumbo v33, "java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.awaitNanos"

    const-string/jumbo v34, "java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.awaitUntil"

    const-string/jumbo v35, "java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.awaitUninterruptibly"

    const-string/jumbo v36, "java.util.concurrent.locks.ReentrantLock.lock"

    const-string/jumbo v37, "java.util.concurrent.locks.ReentrantLock.lockInterruptibly"

    const-string/jumbo v38, "java.util.concurrent.locks.ReentrantLock.tryLock"

    const-string/jumbo v39, "java.util.concurrent.locks.ReentrantLock.unlock"

    const-string/jumbo v40, "java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock.lock"

    const-string/jumbo v41, "java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock.lockInterruptibly"

    const-string/jumbo v42, "java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock.tryLock"

    const-string/jumbo v43, "java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock.unlock"

    const-string/jumbo v44, "java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock.lock"

    const-string/jumbo v45, "java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock.lockInterruptibly"

    const-string/jumbo v46, "java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock.tryLock"

    const-string/jumbo v47, "java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock.unlock"

    const-string/jumbo v48, "java.util.concurrent.locks.StampedLock$ReadLockView.lock"

    const-string/jumbo v49, "java.util.concurrent.locks.StampedLock$ReadLockView.lockInterruptibly"

    const-string/jumbo v50, "java.util.concurrent.locks.StampedLock$ReadLockView.tryLock"

    const-string/jumbo v51, "java.util.concurrent.locks.StampedLock$ReadLockView.unlock"

    const-string/jumbo v52, "java.util.concurrent.locks.StampedLock$WriteLockView.lock"

    const-string/jumbo v53, "java.util.concurrent.locks.StampedLock$WriteLockView.lockInterruptibly"

    const-string/jumbo v54, "java.util.concurrent.locks.StampedLock$WriteLockView.tryLock"

    const-string/jumbo v55, "java.util.concurrent.locks.StampedLock$WriteLockView.unlock"

    const-string/jumbo v56, "java.util.concurrent.locks.StampedLock.writeLock"

    const-string/jumbo v57, "java.util.concurrent.locks.StampedLock.tryWriteLock"

    const-string/jumbo v58, "java.util.concurrent.locks.StampedLock.writeLockInterruptibly"

    const-string/jumbo v59, "java.util.concurrent.locks.StampedLock.readLock"

    const-string/jumbo v60, "java.util.concurrent.locks.StampedLock.tryReadLock"

    const-string/jumbo v61, "java.util.concurrent.locks.StampedLock.readLockInterruptibly"

    const-string/jumbo v62, "java.util.concurrent.locks.StampedLock.unlockWrite"

    const-string/jumbo v63, "java.util.concurrent.locks.StampedLock.unlockRead"

    const-string/jumbo v64, "java.util.concurrent.locks.StampedLock.unlock"

    const-string/jumbo v65, "java.util.concurrent.locks.StampedLock.tryConvertToReadLock"

    const-string/jumbo v66, "java.util.concurrent.locks.StampedLock.tryConvertToWriteLock"

    const-string/jumbo v67, "java.util.concurrent.locks.StampedLock.tryConvertToOptimisticRead"

    const-string/jumbo v68, "java.util.concurrent.locks.StampedLock.tryUnlockWrite"

    const-string/jumbo v69, "java.util.concurrent.locks.StampedLock.tryUnlockRead"

    const-string/jumbo v70, "java.util.concurrent.locks.StampedLock.unstampedUnlockRead"

    const-string/jumbo v71, "java.util.concurrent.locks.LockSupport.park"

    const-string/jumbo v72, "java.util.concurrent.locks.LockSupport.parkNanos"

    const-string/jumbo v73, "java.util.concurrent.locks.LockSupport.parkUntil"

    const-string/jumbo v74, "java.util.concurrent.locks.LockSupport.unpark"

    filled-new-array/range {v2 .. v74}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/statistics/StackUtils;->suggestedStackTopMethodFullNames:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v1, Landroid/os/statistics/StackUtils;->sStackTraceStringBuilder:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Landroid/os/statistics/StackUtils;->sStackTraceStringBuilderBusy:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStackTrace(Lorg/json/JSONArray;)[Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    sget-object v0, Landroid/os/statistics/StackUtils;->emptyStack:[Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, ""

    aput-object v3, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getStackTrace([Ljava/lang/StackTraceElement;[Ljava/lang/Class;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v0, 0x0

    const/4 v4, 0x0

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0x20

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v7, 0x400

    if-eqz v3, :cond_3

    array-length v8, v3

    if-lez v8, :cond_3

    const/4 v8, 0x0

    :goto_0
    array-length v9, v3

    if-ge v8, v9, :cond_2

    aget-object v9, v3, v8

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v0, v10

    if-ge v4, v6, :cond_3

    if-lt v0, v7, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    move v8, v0

    goto :goto_3

    :cond_3
    :goto_2
    move v8, v0

    :goto_3
    if-ge v4, v6, :cond_1b

    if-ge v8, v7, :cond_1b

    if-eqz v1, :cond_1b

    array-length v0, v1

    if-nez v0, :cond_4

    goto/16 :goto_15

    :cond_4
    sget-object v0, Landroid/os/statistics/StackUtils;->topClassMethodSimpleNames:[Ljava/util/ArrayList;

    const/4 v9, 0x0

    if-nez v0, :cond_9

    const-class v10, Landroid/os/statistics/StackUtils;

    monitor-enter v10

    :try_start_0
    sget-object v0, Landroid/os/statistics/StackUtils;->topClassMethodSimpleNames:[Ljava/util/ArrayList;

    if-nez v0, :cond_8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v11, v0

    sget-object v12, Landroid/os/statistics/StackUtils;->suggestedStackTopMethodFullNames:[Ljava/lang/String;

    array-length v13, v12

    move v14, v9

    :goto_4
    if-ge v14, v13, :cond_6

    aget-object v0, v12, v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v15, v0

    :try_start_1
    const-string v0, "."

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v15, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v17

    move-object/from16 v18, v17

    move-object/from16 v6, v18

    invoke-virtual {v11, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    if-nez v18, :cond_5

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v19

    move-object/from16 v9, v18

    invoke-virtual {v11, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_5
    move-object/from16 v9, v18

    :goto_5
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    goto :goto_6

    :catch_0
    move-exception v0

    :goto_6
    add-int/lit8 v14, v14, 0x1

    const/16 v6, 0x20

    const/16 v7, 0x400

    const/4 v9, 0x0

    goto :goto_4

    :cond_6
    :try_start_2
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/Class;

    invoke-interface {v0, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    array-length v6, v0

    new-array v6, v6, [Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Class;

    aput-object v12, v0, v7

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    aput-object v13, v6, v7

    nop

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_7
    sput-object v0, Landroid/os/statistics/StackUtils;->topClasses:[Ljava/lang/Class;

    sput-object v6, Landroid/os/statistics/StackUtils;->topClassMethodSimpleNames:[Ljava/util/ArrayList;

    :cond_8
    monitor-exit v10

    goto :goto_8

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_9
    :goto_8
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_c

    array-length v9, v2

    if-lt v9, v7, :cond_a

    const/4 v9, 0x0

    aget-object v10, v2, v9

    const-class v9, Ljava/lang/Thread;

    if-ne v10, v9, :cond_a

    const/4 v6, 0x1

    goto :goto_9

    :cond_a
    array-length v9, v2

    const/4 v10, 0x4

    if-lt v9, v10, :cond_c

    const/4 v9, 0x0

    aget-object v10, v2, v9

    const-class v9, Ljava/lang/Object;

    if-ne v10, v9, :cond_c

    aget-object v9, v2, v7

    const-class v10, Ljava/lang/Thread;

    if-eq v9, v10, :cond_b

    const/4 v9, 0x2

    aget-object v9, v2, v9

    const-class v10, Ljava/lang/Thread;

    if-eq v9, v10, :cond_b

    const/4 v9, 0x3

    aget-object v9, v2, v9

    const-class v10, Ljava/lang/Thread;

    if-ne v9, v10, :cond_c

    :cond_b
    const/4 v6, 0x1

    :cond_c
    :goto_9
    if-eqz v6, :cond_10

    array-length v9, v1

    sub-int/2addr v9, v7

    move v0, v9

    :goto_a
    if-lez v0, :cond_10

    aget-object v9, v2, v0

    if-eqz v9, :cond_f

    const/4 v10, -0x1

    const/4 v11, 0x0

    :goto_b
    sget-object v12, Landroid/os/statistics/StackUtils;->topClasses:[Ljava/lang/Class;

    array-length v12, v12

    if-ge v11, v12, :cond_e

    sget-object v12, Landroid/os/statistics/StackUtils;->topClasses:[Ljava/lang/Class;

    aget-object v12, v12, v11

    if-ne v12, v9, :cond_d

    move v10, v11

    goto :goto_c

    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_e
    :goto_c
    if-ltz v10, :cond_f

    aget-object v11, v1, v0

    sget-object v12, Landroid/os/statistics/StackUtils;->topClassMethodSimpleNames:[Ljava/util/ArrayList;

    aget-object v12, v12, v10

    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    goto :goto_d

    :cond_f
    nop

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_10
    :goto_d
    const/4 v9, 0x0

    sget-object v10, Landroid/os/statistics/StackUtils;->sStackTraceStringBuilderBusy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v7

    if-eqz v7, :cond_11

    sget-object v7, Landroid/os/statistics/StackUtils;->sStackTraceStringBuilder:Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_11
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v10, 0x100

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_e
    const/4 v10, 0x0

    move v11, v0

    :goto_f
    array-length v12, v1

    if-ge v11, v12, :cond_19

    aget-object v12, v1, v11

    if-nez v12, :cond_12

    const/16 v14, 0x20

    const/16 v15, 0x400

    goto/16 :goto_13

    :cond_12
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    if-nez v2, :cond_13

    const/4 v13, 0x0

    goto :goto_10

    :cond_13
    aget-object v13, v2, v11

    :goto_10
    const/16 v14, 0x2e

    if-eqz v13, :cond_14

    if-ne v9, v13, :cond_14

    const/16 v15, 0x2d

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_11

    :cond_14
    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_11
    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v10, :cond_17

    const/4 v10, 0x1

    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v14

    if-eqz v14, :cond_15

    const-string v14, "(Native)"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_15
    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_16

    const/16 v14, 0x28

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v14, 0x3a

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v14, 0x29

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_16
    const-string v14, "(None)"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    :goto_12
    move-object v9, v13

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    add-int/2addr v8, v14

    const/16 v14, 0x20

    if-ge v4, v14, :cond_19

    const/16 v15, 0x400

    if-lt v8, v15, :cond_18

    goto :goto_14

    :cond_18
    :goto_13
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_f

    :cond_19
    :goto_14
    sget-object v11, Landroid/os/statistics/StackUtils;->sStackTraceStringBuilder:Ljava/lang/StringBuilder;

    if-ne v7, v11, :cond_1a

    sget-object v11, Landroid/os/statistics/StackUtils;->sStackTraceStringBuilderBusy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    return-object v11

    :cond_1b
    :goto_15
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
