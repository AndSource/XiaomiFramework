.class Lmiui/vip/VipWebClient$1;
.super Ljava/lang/Object;
.source "VipWebClient.java"

# interfaces
.implements Lcom/miui/internal/vip/utils/ImageDownloader$OnFileDownload;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/vip/VipWebClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/vip/VipWebClient;


# direct methods
.method constructor <init>(Lmiui/vip/VipWebClient;)V
    .locals 0

    iput-object p1, p0, Lmiui/vip/VipWebClient$1;->this$0:Lmiui/vip/VipWebClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownload(Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lmiui/vip/VipWebClient$1;->this$0:Lmiui/vip/VipWebClient;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lmiui/vip/VipWebClient$1;->this$0:Lmiui/vip/VipWebClient;

    iget-object v4, v4, Lmiui/vip/VipWebClient;->mAccount:Lmiui/vip/VipWebClient$AccountInfo;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lmiui/vip/VipWebClient$1;->this$0:Lmiui/vip/VipWebClient;

    iget-object v4, v4, Lmiui/vip/VipWebClient;->mAccount:Lmiui/vip/VipWebClient$AccountInfo;

    iget-object v4, v4, Lmiui/vip/VipWebClient$AccountInfo;->id:Ljava/lang/String;

    move-object v0, v4

    iget-object v4, p0, Lmiui/vip/VipWebClient$1;->this$0:Lmiui/vip/VipWebClient;

    iget-object v4, v4, Lmiui/vip/VipWebClient;->mAccount:Lmiui/vip/VipWebClient$AccountInfo;

    iget-object v4, v4, Lmiui/vip/VipWebClient$AccountInfo;->userName:Ljava/lang/String;

    move-object v1, v4

    iget-object v4, p0, Lmiui/vip/VipWebClient$1;->this$0:Lmiui/vip/VipWebClient;

    iget-object v4, v4, Lmiui/vip/VipWebClient;->mAccount:Lmiui/vip/VipWebClient$AccountInfo;

    iget-object v4, v4, Lmiui/vip/VipWebClient$AccountInfo;->avatarUrl:Ljava/lang/String;

    invoke-static {v4}, Lcom/miui/internal/vip/utils/Utils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lmiui/vip/VipWebClient$1;->this$0:Lmiui/vip/VipWebClient;

    invoke-static {v3, v2}, Lmiui/vip/VipWebClient;->access$000(Lmiui/vip/VipWebClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v1, v4}, Lmiui/vip/VipWebClient;->access$100(Lmiui/vip/VipWebClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_1
    :goto_0
    return-void
.end method
