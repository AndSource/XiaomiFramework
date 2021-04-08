.class Landroid/app/Activity$1;
.super Landroid/app/IRequestFinishCallback$Stub;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/Activity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/app/IRequestFinishCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$requestFinish$0$Activity$1()V
    .locals 1

    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finishAfterTransition()V

    return-void
.end method

.method public requestFinish()V
    .locals 2

    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/app/-$$Lambda$Activity$1$pR5b3qDyhldlD2RtkXoHHxgyGPU;

    invoke-direct {v1, p0}, Landroid/app/-$$Lambda$Activity$1$pR5b3qDyhldlD2RtkXoHHxgyGPU;-><init>(Landroid/app/Activity$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
