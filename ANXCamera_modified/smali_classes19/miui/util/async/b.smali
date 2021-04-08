.class Lmiui/util/async/b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/async/TaskInfoDeliverer;->setCallbackThread(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic j:Lmiui/util/async/TaskInfoDeliverer;


# direct methods
.method constructor <init>(Lmiui/util/async/TaskInfoDeliverer;)V
    .locals 0

    iput-object p1, p0, Lmiui/util/async/b;->j:Lmiui/util/async/TaskInfoDeliverer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object p0, p0, Lmiui/util/async/b;->j:Lmiui/util/async/TaskInfoDeliverer;

    new-instance v0, Lmiui/util/async/TaskInfoDeliverer$a;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/util/async/TaskInfoDeliverer$a;-><init>(Landroid/os/Looper;)V

    invoke-static {p0, v0}, Lmiui/util/async/TaskInfoDeliverer;->a(Lmiui/util/async/TaskInfoDeliverer;Lmiui/util/async/TaskInfoDeliverer$a;)Lmiui/util/async/TaskInfoDeliverer$a;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
