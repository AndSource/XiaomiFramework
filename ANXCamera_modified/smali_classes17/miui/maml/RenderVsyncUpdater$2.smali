.class Lmiui/maml/RenderVsyncUpdater$2;
.super Ljava/lang/Object;
.source "RenderVsyncUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/RenderVsyncUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/RenderVsyncUpdater;


# direct methods
.method constructor <init>(Lmiui/maml/RenderVsyncUpdater;)V
    .locals 0

    iput-object p1, p0, Lmiui/maml/RenderVsyncUpdater$2;->this$0:Lmiui/maml/RenderVsyncUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater$2;->this$0:Lmiui/maml/RenderVsyncUpdater;

    invoke-static {v0}, Lmiui/maml/RenderVsyncUpdater;->access$200(Lmiui/maml/RenderVsyncUpdater;)V

    return-void
.end method
