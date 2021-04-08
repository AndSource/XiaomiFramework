.class Lcom/miui/mishare/app/view/MiShareTransmissionView$5$1;
.super Ljava/lang/Object;
.source "MiShareTransmissionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/mishare/app/view/MiShareTransmissionView$5;->onTaskIdChanged(Lcom/miui/mishare/MiShareTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/mishare/app/view/MiShareTransmissionView$5;

.field final synthetic val$task:Lcom/miui/mishare/MiShareTask;


# direct methods
.method constructor <init>(Lcom/miui/mishare/app/view/MiShareTransmissionView$5;Lcom/miui/mishare/MiShareTask;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$1;->this$1:Lcom/miui/mishare/app/view/MiShareTransmissionView$5;

    iput-object p2, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$1;->val$task:Lcom/miui/mishare/MiShareTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$1;->this$1:Lcom/miui/mishare/app/view/MiShareTransmissionView$5;

    iget-object v0, v0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5;->this$0:Lcom/miui/mishare/app/view/MiShareTransmissionView;

    invoke-static {v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->access$400(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5$1;->val$task:Lcom/miui/mishare/MiShareTask;

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->replaceTaskId(Lcom/miui/mishare/MiShareTask;)V

    return-void
.end method
