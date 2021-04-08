.class Lcom/miui/whetstone/PowerKeeperPolicy$3;
.super Ljava/lang/Object;
.source "PowerKeeperPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/whetstone/PowerKeeperPolicy;->checkNetworkState(Ljava/lang/String;ILcom/miui/whetstone/INetStateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

.field final synthetic val$callback:Lcom/miui/whetstone/INetStateCallback;

.field final synthetic val$netId:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/whetstone/PowerKeeperPolicy;ILjava/lang/String;Lcom/miui/whetstone/INetStateCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$3;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    iput p2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$3;->val$netId:I

    iput-object p3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$3;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$3;->val$callback:Lcom/miui/whetstone/INetStateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "connect to "

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$3;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v2}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$700(Lcom/miui/whetstone/PowerKeeperPolicy;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v3

    const-string v4, "PowerKeeperPolicy"

    if-eqz v3, :cond_6

    iget v5, v3, Landroid/net/Network;->netId:I

    iget v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy$3;->val$netId:I

    if-eq v5, v6, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/net/URL;

    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy$3;->val$url:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    move-object v5, v6

    const/16 v6, 0x1388

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v6, 0x2710

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v7, 0xcc

    if-eq v6, v7, :cond_1

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$800()Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy$3;->val$url:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " return "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    nop

    :goto_0
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v6

    :try_start_1
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->access$800()Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$3;->val$url:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " failed"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    if-eqz v5, :cond_6

    goto :goto_0

    :goto_1
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw v0

    :cond_6
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$3;->val$callback:Lcom/miui/whetstone/INetStateCallback;

    iget v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$3;->val$netId:I

    invoke-interface {v0, v1, v2}, Lcom/miui/whetstone/INetStateCallback;->onCheckComplete(ZI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v2, "callback powerkeeper fail"

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method
