.class final Lmiui/slide/SlideCoverEventManager$SlideCallbacks$Callback;
.super Ljava/lang/Object;
.source "SlideCoverEventManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/slide/SlideCoverEventManager$SlideCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Callback"
.end annotation


# instance fields
.field final mIdentity:Ljava/lang/String;

.field final mListener:Lmiui/slide/ISlideChangeListener;

.field final mProcessName:Ljava/lang/String;

.field final mUserId:I

.field final synthetic this$1:Lmiui/slide/SlideCoverEventManager$SlideCallbacks;


# direct methods
.method constructor <init>(Lmiui/slide/SlideCoverEventManager$SlideCallbacks;Lmiui/slide/ISlideChangeListener;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmiui/slide/SlideCoverEventManager$SlideCallbacks$Callback;->this$1:Lmiui/slide/SlideCoverEventManager$SlideCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmiui/slide/SlideCoverEventManager$SlideCallbacks$Callback;->mListener:Lmiui/slide/ISlideChangeListener;

    iput p3, p0, Lmiui/slide/SlideCoverEventManager$SlideCallbacks$Callback;->mUserId:I

    iput-object p4, p0, Lmiui/slide/SlideCoverEventManager$SlideCallbacks$Callback;->mProcessName:Ljava/lang/String;

    iput-object p5, p0, Lmiui/slide/SlideCoverEventManager$SlideCallbacks$Callback;->mIdentity:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    invoke-static {}, Lmiui/slide/SlideCoverEventManager;->access$2400()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lmiui/slide/SlideCoverEventManager$SlideCallbacks$Callback;->this$1:Lmiui/slide/SlideCoverEventManager$SlideCallbacks;

    invoke-static {v1}, Lmiui/slide/SlideCoverEventManager$SlideCallbacks;->access$2900(Lmiui/slide/SlideCoverEventManager$SlideCallbacks;)Landroid/util/ArrayMap;

    move-result-object v1

    iget-object v2, p0, Lmiui/slide/SlideCoverEventManager$SlideCallbacks$Callback;->mListener:Lmiui/slide/ISlideChangeListener;

    invoke-interface {v2}, Lmiui/slide/ISlideChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmiui/slide/SlideCoverEventManager$SlideCallbacks$Callback;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/slide/SlideCoverEventManager$SlideCallbacks$Callback;->mIdentity:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/slide/SlideCoverEventManager$SlideCallbacks$Callback;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
