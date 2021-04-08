.class Lmiui/slide/SlideCloudConfigHelper$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "SlideCloudConfigHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/slide/SlideCloudConfigHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/slide/SlideCloudConfigHelper;


# direct methods
.method constructor <init>(Lmiui/slide/SlideCloudConfigHelper;)V
    .locals 0

    iput-object p1, p0, Lmiui/slide/SlideCloudConfigHelper$2;->this$0:Lmiui/slide/SlideCloudConfigHelper;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 5

    iget-object v0, p0, Lmiui/slide/SlideCloudConfigHelper$2;->this$0:Lmiui/slide/SlideCloudConfigHelper;

    invoke-static {v0}, Lmiui/slide/SlideCloudConfigHelper;->access$100(Lmiui/slide/SlideCloudConfigHelper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPackageAdded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SlideCloudConfigHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lmiui/slide/SlideCloudConfigHelper$2;->this$0:Lmiui/slide/SlideCloudConfigHelper;

    invoke-static {v0}, Lmiui/slide/SlideCloudConfigHelper;->access$200(Lmiui/slide/SlideCloudConfigHelper;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lmiui/slide/SlideCloudConfigHelper$2;->this$0:Lmiui/slide/SlideCloudConfigHelper;

    iget v4, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3, v2, p1, v4}, Lmiui/slide/SlideCloudConfigHelper;->access$300(Lmiui/slide/SlideCloudConfigHelper;ZLjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Lmiui/slide/SlideCloudConfigHelper$2;->this$0:Lmiui/slide/SlideCloudConfigHelper;

    invoke-virtual {v0}, Lmiui/slide/SlideCloudConfigHelper;->registerSlideActivityChangeListener()V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageAdded(Ljava/lang/String;I)V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lmiui/slide/SlideCloudConfigHelper$2;->this$0:Lmiui/slide/SlideCloudConfigHelper;

    invoke-static {v0}, Lmiui/slide/SlideCloudConfigHelper;->access$100(Lmiui/slide/SlideCloudConfigHelper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPackageRemoved "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SlideCloudConfigHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/slide/SlideCloudConfigHelper$2;->this$0:Lmiui/slide/SlideCloudConfigHelper;

    invoke-static {v0}, Lmiui/slide/SlideCloudConfigHelper;->access$400(Lmiui/slide/SlideCloudConfigHelper;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageRemoved(Ljava/lang/String;I)V

    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 5

    iget-object v0, p0, Lmiui/slide/SlideCloudConfigHelper$2;->this$0:Lmiui/slide/SlideCloudConfigHelper;

    invoke-static {v0}, Lmiui/slide/SlideCloudConfigHelper;->access$100(Lmiui/slide/SlideCloudConfigHelper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPackageUpdateFinished "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SlideCloudConfigHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lmiui/slide/SlideCloudConfigHelper$2;->this$0:Lmiui/slide/SlideCloudConfigHelper;

    invoke-static {v0}, Lmiui/slide/SlideCloudConfigHelper;->access$200(Lmiui/slide/SlideCloudConfigHelper;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lmiui/slide/SlideCloudConfigHelper$2;->this$0:Lmiui/slide/SlideCloudConfigHelper;

    iget v4, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3, v2, p1, v4}, Lmiui/slide/SlideCloudConfigHelper;->access$300(Lmiui/slide/SlideCloudConfigHelper;ZLjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageUpdateFinished(Ljava/lang/String;I)V

    return-void
.end method
