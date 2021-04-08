.class Lmiui/animation/controller/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/animation/controller/FolmeTouch;->handleTouchOf(Landroid/view/View;Z[Lmiui/animation/base/AnimConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic JC:Landroid/view/View;

.field final synthetic YK:[Lmiui/animation/base/AnimConfig;

.field final synthetic ZK:Z

.field final synthetic _K:Z

.field final synthetic j:Lmiui/animation/controller/FolmeTouch;


# direct methods
.method constructor <init>(Lmiui/animation/controller/FolmeTouch;ZLandroid/view/View;[Lmiui/animation/base/AnimConfig;Z)V
    .locals 0

    iput-object p1, p0, Lmiui/animation/controller/d;->j:Lmiui/animation/controller/FolmeTouch;

    iput-boolean p2, p0, Lmiui/animation/controller/d;->ZK:Z

    iput-object p3, p0, Lmiui/animation/controller/d;->JC:Landroid/view/View;

    iput-object p4, p0, Lmiui/animation/controller/d;->YK:[Lmiui/animation/base/AnimConfig;

    iput-boolean p5, p0, Lmiui/animation/controller/d;->_K:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-boolean v0, p0, Lmiui/animation/controller/d;->ZK:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/animation/controller/d;->j:Lmiui/animation/controller/FolmeTouch;

    iget-object v1, p0, Lmiui/animation/controller/d;->JC:Landroid/view/View;

    const/4 v2, 0x1

    iget-object v3, p0, Lmiui/animation/controller/d;->YK:[Lmiui/animation/base/AnimConfig;

    invoke-static {v0, v1, v2, v3}, Lmiui/animation/controller/FolmeTouch;->a(Lmiui/animation/controller/FolmeTouch;Landroid/view/View;Z[Lmiui/animation/base/AnimConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/animation/controller/d;->j:Lmiui/animation/controller/FolmeTouch;

    iget-object v1, p0, Lmiui/animation/controller/d;->JC:Landroid/view/View;

    iget-boolean p0, p0, Lmiui/animation/controller/d;->_K:Z

    invoke-static {v0, v1, p0}, Lmiui/animation/controller/FolmeTouch;->a(Lmiui/animation/controller/FolmeTouch;Landroid/view/View;Z)V

    :cond_0
    return-void
.end method
