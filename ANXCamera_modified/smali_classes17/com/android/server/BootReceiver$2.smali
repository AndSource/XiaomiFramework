.class Lcom/android/server/BootReceiver$2;
.super Landroid/os/FileObserver;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BootReceiver;->logBootEvents(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BootReceiver;

.field final synthetic val$db:Landroid/os/DropBoxManager;

.field final synthetic val$headers:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/BootReceiver;Ljava/lang/String;ILandroid/os/DropBoxManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BootReceiver$2;->this$0:Lcom/android/server/BootReceiver;

    iput-object p4, p0, Lcom/android/server/BootReceiver$2;->val$db:Landroid/os/DropBoxManager;

    iput-object p5, p0, Lcom/android/server/BootReceiver$2;->val$headers:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 8

    invoke-static {}, Lcom/android/server/BootReceiver;->access$200()Ljava/util/HashMap;

    move-result-object v6

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/android/server/BootReceiver;->access$300()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v7, v0

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tombstone_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/BootReceiver$2;->val$db:Landroid/os/DropBoxManager;

    iget-object v2, p0, Lcom/android/server/BootReceiver$2;->val$headers:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/server/BootReceiver;->access$400()I

    move-result v4

    const-string v5, "SYSTEM_TOMBSTONE"

    move-object v1, v6

    invoke-static/range {v0 .. v5}, Lcom/android/server/BootReceiver;->access$500(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BootReceiver"

    const-string v2, "Can\'t log tombstone"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Lcom/android/server/BootReceiver$2;->this$0:Lcom/android/server/BootReceiver;

    invoke-static {v0, v6}, Lcom/android/server/BootReceiver;->access$600(Lcom/android/server/BootReceiver;Ljava/util/HashMap;)V

    return-void
.end method
