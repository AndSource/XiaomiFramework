.class Lmiui/animation/controller/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/animation/controller/FolmeTouch;->bindViewOfListItem(Landroid/view/View;[Lmiui/animation/base/AnimConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic JC:Landroid/view/View;

.field final synthetic YK:[Lmiui/animation/base/AnimConfig;

.field final synthetic j:Lmiui/animation/controller/FolmeTouch;


# direct methods
.method constructor <init>(Lmiui/animation/controller/FolmeTouch;Landroid/view/View;[Lmiui/animation/base/AnimConfig;)V
    .locals 0

    iput-object p1, p0, Lmiui/animation/controller/c;->j:Lmiui/animation/controller/FolmeTouch;

    iput-object p2, p0, Lmiui/animation/controller/c;->JC:Landroid/view/View;

    iput-object p3, p0, Lmiui/animation/controller/c;->YK:[Lmiui/animation/base/AnimConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lmiui/animation/controller/c;->j:Lmiui/animation/controller/FolmeTouch;

    iget-object v1, p0, Lmiui/animation/controller/c;->JC:Landroid/view/View;

    iget-object p0, p0, Lmiui/animation/controller/c;->YK:[Lmiui/animation/base/AnimConfig;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Lmiui/animation/controller/FolmeTouch;->a(Lmiui/animation/controller/FolmeTouch;Landroid/view/View;Z[Lmiui/animation/base/AnimConfig;)Z

    return-void
.end method
