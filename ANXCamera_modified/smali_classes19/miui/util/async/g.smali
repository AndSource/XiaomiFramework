.class Lmiui/util/async/g;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/async/h;->a(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic iJ:Lmiui/util/async/TaskManager;

.field final synthetic jJ:Lmiui/util/async/Task;


# direct methods
.method constructor <init>(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V
    .locals 0

    iput-object p1, p0, Lmiui/util/async/g;->iJ:Lmiui/util/async/TaskManager;

    iput-object p2, p0, Lmiui/util/async/g;->jJ:Lmiui/util/async/Task;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lmiui/util/async/g;->iJ:Lmiui/util/async/TaskManager;

    iget-object v1, p0, Lmiui/util/async/g;->jJ:Lmiui/util/async/Task;

    invoke-static {v0, p0, v1}, Lmiui/util/async/h;->a(Lmiui/util/async/TaskManager;Ljava/lang/Thread;Lmiui/util/async/Task;)V

    return-void
.end method
