.class Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;
.super Landroid/os/AsyncTask;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadBitmapAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        "Lmiui/maml/ResourceManager$BitmapInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mLoadListener:Lmiui/maml/ResourceManager$AsyncLoadListener;

.field private mSrc:Ljava/lang/String;

.field final synthetic this$0:Lmiui/maml/ResourceManager;


# direct methods
.method public constructor <init>(Lmiui/maml/ResourceManager;Lmiui/maml/ResourceManager$AsyncLoadListener;)V
    .locals 0

    iput-object p1, p0, Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;->this$0:Lmiui/maml/ResourceManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;->mLoadListener:Lmiui/maml/ResourceManager$AsyncLoadListener;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;->doInBackground([Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;
    .locals 2

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;->mSrc:Ljava/lang/String;

    iget-object v0, p0, Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;->mSrc:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;->this$0:Lmiui/maml/ResourceManager;

    invoke-static {v1, v0}, Lmiui/maml/ResourceManager;->access$000(Lmiui/maml/ResourceManager;Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lmiui/maml/ResourceManager$BitmapInfo;

    invoke-virtual {p0, p1}, Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;->onPostExecute(Lmiui/maml/ResourceManager$BitmapInfo;)V

    return-void
.end method

.method protected onPostExecute(Lmiui/maml/ResourceManager$BitmapInfo;)V
    .locals 3

    iget-object v0, p0, Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;->this$0:Lmiui/maml/ResourceManager;

    invoke-static {v0}, Lmiui/maml/ResourceManager;->access$100(Lmiui/maml/ResourceManager;)Ljava/util/HashSet;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;->mLoadListener:Lmiui/maml/ResourceManager$AsyncLoadListener;

    iget-object v2, p0, Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;->mSrc:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lmiui/maml/ResourceManager$AsyncLoadListener;->onLoadComplete(Ljava/lang/String;Lmiui/maml/ResourceManager$BitmapInfo;)V

    iget-object v1, p0, Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;->this$0:Lmiui/maml/ResourceManager;

    invoke-static {v1}, Lmiui/maml/ResourceManager;->access$100(Lmiui/maml/ResourceManager;)Ljava/util/HashSet;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ResourceManager$LoadBitmapAsyncTask;->mSrc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
