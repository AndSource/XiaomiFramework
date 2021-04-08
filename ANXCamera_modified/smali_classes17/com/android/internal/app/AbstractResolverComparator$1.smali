.class Lcom/android/internal/app/AbstractResolverComparator$1;
.super Landroid/os/Handler;
.source "AbstractResolverComparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AbstractResolverComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/AbstractResolverComparator;


# direct methods
.method constructor <init>(Lcom/android/internal/app/AbstractResolverComparator;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/AbstractResolverComparator$1;->this$0:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AbstractResolverComparator$1;->this$0:Lcom/android/internal/app/AbstractResolverComparator;

    iget-object v0, v0, Lcom/android/internal/app/AbstractResolverComparator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/internal/app/AbstractResolverComparator$1;->this$0:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractResolverComparator;->afterCompute()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AbstractResolverComparator$1;->this$0:Lcom/android/internal/app/AbstractResolverComparator;

    iget-object v0, v0, Lcom/android/internal/app/AbstractResolverComparator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/AbstractResolverComparator$1;->this$0:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AbstractResolverComparator;->handleResultMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/android/internal/app/AbstractResolverComparator$1;->this$0:Lcom/android/internal/app/AbstractResolverComparator;

    iget-object v0, v0, Lcom/android/internal/app/AbstractResolverComparator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/internal/app/AbstractResolverComparator$1;->this$0:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractResolverComparator;->afterCompute()V

    :cond_2
    :goto_0
    return-void
.end method
