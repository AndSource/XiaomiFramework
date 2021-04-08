.class Lmiui/slide/SlideCoverEventManager$SlideCallbacks;
.super Landroid/os/Handler;
.source "SlideCoverEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/slide/SlideCoverEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideCallbacks"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/slide/SlideCoverEventManager$SlideCallbacks$Callback;
    }
.end annotation


# instance fields
.field private final mCallbackMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lmiui/slide/SlideCoverEventManager$SlideCallbacks$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lmiui/slide/SlideCoverEventManager;


# direct methods
.method public constructor <init>(Lmiui/slide/SlideCoverEventManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lmiui/slide/SlideCoverEventManager$SlideCallbacks;->this$0:Lmiui/slide/SlideCoverEventManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lmiui/slide/SlideCoverEventManager$SlideCallbacks;->mCallbackMap:Landroid/util/ArrayMap;

    return-void
.end method

.method static synthetic access$100(Lmiui/slide/SlideCoverEventManager$SlideCallbacks;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lmiui/slide/SlideCoverEventManager$SlideCallbacks;->notifyStatusChanged(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lmiui/slide/SlideCoverEventManager$SlideCallbacks;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager$SlideCallbacks;->mCallbackMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private notifyStatusChanged(I)Z
    .locals 11

    invoke-static {}, Lmiui/slide/SlideCoverEventManager;->access$2400()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lmiui/slide/SlideCoverEventManager;->access$2500()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "gamebooster"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lmiui/slide/SlideCoverEventManager$SlideCallbacks;->this$0:Lmiui/slide/SlideCoverEventManager;

    invoke-static {v4}, Lmiui/slide/SlideCoverEventManager;->access$2000(Lmiui/slide/SlideCoverEventManager;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "sliderpanel"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lmiui/slide/SlideCoverEventManager$SlideCallbacks;->this$0:Lmiui/slide/SlideCoverEventManager;

    invoke-static {v4}, Lmiui/slide/SlideCoverEventManager;->access$2600(Lmiui/slide/SlideCoverEventManager;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lmiui/slide/SlideCoverEventManager$SlideCallbacks;->this$0:Lmiui/slide/SlideCoverEventManager;

    invoke-static {v4}, Lmiui/slide/SlideCoverEventManager;->access$1600(Lmiui/slide/SlideCoverEventManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    iget-object v5, p0, Lmiui/slide/SlideCoverEventManager$SlideCallbacks;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    iget-object v8, p0, Lmiui/slide/SlideCoverEventManager$SlideCallbacks;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/slide/SlideCoverEventManager$SlideCallbacks$Callback;

    move-object v1, v8

    if-eqz v1, :cond_3

    iget-object v8, v1, Lmiui/slide/SlideCoverEventManager$SlideCallbacks$Callback;->mIdentity:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v8

    iput-object v1, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lmiui/slide/SlideCoverEventManager$SlideCallbacks$Callback;->mProcessName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lmiui/slide/SlideCoverEventManager$SlideCallbacks$Callback;->mIdentity:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-static {p0, p1, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    const/4 v4, 0x1

    :cond_3
    goto :goto_1

    :cond_4
    if-eqz v4, :cond_7

    if-eqz v1, :cond_6

    iget v2, v1, Lmiui/slide/SlideCoverEventManager$SlideCallbacks$Callback;->mUserId:I

    iget-object v6, p0, Lmiui/slide/SlideCoverEventManager$SlideCallbacks;->this$0:Lmiui/slide/SlideCoverEventManager;

    invoke-static {v6}, Lmiui/slide/SlideCoverEventManager;->access$1400(Lmiui/slide/SlideCoverEventManager;)I

    move-result v6

    if-ne v2, v6, :cond_6

    if-nez p1, :cond_6

    const-string v2, "gamebooster"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lmiui/slide/SlideCoverEventManager$SlideCallbacks;->this$0:Lmiui/slide/SlideCoverEventManager;

    invoke-static {v2}, Lmiui/slide/SlideCoverEventManager;->access$2708(Lmiui/slide/SlideCoverEventManager;)I

    :cond_5
    const-string v2, "sliderpanel"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lmiui/slide/SlideCoverEventManager$SlideCallbacks;->this$0:Lmiui/slide/SlideCoverEventManager;

    invoke-static {v2}, Lmiui/slide/SlideCoverEventManager;->access$2808(Lmiui/slide/SlideCoverEventManager;)I

    :cond_6
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    :cond_7
    goto/16 :goto_0

    :cond_8
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getCallbacks()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lmiui/slide/SlideCoverEventManager$SlideCallbacks$Callback;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/slide/SlideCoverEventManager$SlideCallbacks;->mCallbackMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const-string v0, "SlideCoverEventManager"

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lmiui/slide/SlideCoverEventManager$SlideCallbacks$Callback;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    :try_start_0
    iget-object v4, v2, Lmiui/slide/SlideCoverEventManager$SlideCallbacks$Callback;->mListener:Lmiui/slide/ISlideChangeListener;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-interface {v4, v5}, Lmiui/slide/ISlideChangeListener;->onSlideChanged(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notify event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " on user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lmiui/slide/SlideCoverEventManager$SlideCallbacks$Callback;->mUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_1
    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :goto_0
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    nop

    return-void

    :goto_1
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0
.end method

.method public register(Ljava/lang/String;ILjava/lang/String;Lmiui/slide/ISlideChangeListener;)V
    .locals 9

    invoke-static {}, Lmiui/slide/SlideCoverEventManager;->access$2400()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-interface {p4}, Lmiui/slide/ISlideChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v8, Lmiui/slide/SlideCoverEventManager$SlideCallbacks$Callback;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p4

    move v5, p2

    move-object v6, p3

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lmiui/slide/SlideCoverEventManager$SlideCallbacks$Callback;-><init>(Lmiui/slide/SlideCoverEventManager$SlideCallbacks;Lmiui/slide/ISlideChangeListener;ILjava/lang/String;Ljava/lang/String;)V

    move-object v2, v8

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    const-string v3, "SlideCoverEventManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " registered"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lmiui/slide/SlideCoverEventManager$SlideCallbacks;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "SlideCoverEventManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to register listener for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public unregister(Landroid/os/IBinder;)V
    .locals 4

    invoke-static {}, Lmiui/slide/SlideCoverEventManager;->access$2400()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lmiui/slide/SlideCoverEventManager$SlideCallbacks;->mCallbackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/slide/SlideCoverEventManager$SlideCallbacks$Callback;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lmiui/slide/SlideCoverEventManager$SlideCallbacks$Callback;->mListener:Lmiui/slide/ISlideChangeListener;

    invoke-interface {v2}, Lmiui/slide/ISlideChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
