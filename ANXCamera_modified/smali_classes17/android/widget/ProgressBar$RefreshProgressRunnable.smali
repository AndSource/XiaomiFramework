.class Landroid/widget/ProgressBar$RefreshProgressRunnable;
.super Ljava/lang/Object;
.source "ProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshProgressRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ProgressBar;


# direct methods
.method private constructor <init>(Landroid/widget/ProgressBar;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ProgressBar$RefreshProgressRunnable;-><init>(Landroid/widget/ProgressBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    invoke-static {v1}, Landroid/widget/ProgressBar;->access$100(Landroid/widget/ProgressBar;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    invoke-static {v3}, Landroid/widget/ProgressBar;->access$100(Landroid/widget/ProgressBar;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar$RefreshData;

    iget-object v4, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    iget v5, v3, Landroid/widget/ProgressBar$RefreshData;->id:I

    iget v6, v3, Landroid/widget/ProgressBar$RefreshData;->progress:I

    iget-boolean v7, v3, Landroid/widget/ProgressBar$RefreshData;->fromUser:Z

    const/4 v8, 0x1

    iget-boolean v9, v3, Landroid/widget/ProgressBar$RefreshData;->animate:Z

    invoke-static/range {v4 .. v9}, Landroid/widget/ProgressBar;->access$200(Landroid/widget/ProgressBar;IIZZZ)V

    invoke-virtual {v3}, Landroid/widget/ProgressBar$RefreshData;->recycle()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    invoke-static {v2}, Landroid/widget/ProgressBar;->access$100(Landroid/widget/ProgressBar;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/widget/ProgressBar;->access$302(Landroid/widget/ProgressBar;Z)Z

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
