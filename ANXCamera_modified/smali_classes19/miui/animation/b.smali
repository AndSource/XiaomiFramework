.class Lmiui/animation/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/animation/ViewTarget;->executeOnInitialized(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic JC:Landroid/view/View;

.field final synthetic j:Lmiui/animation/ViewTarget;

.field final synthetic jJ:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lmiui/animation/ViewTarget;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lmiui/animation/b;->j:Lmiui/animation/ViewTarget;

    iput-object p2, p0, Lmiui/animation/b;->JC:Landroid/view/View;

    iput-object p3, p0, Lmiui/animation/b;->jJ:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lmiui/animation/b;->j:Lmiui/animation/ViewTarget;

    iget-object v1, p0, Lmiui/animation/b;->JC:Landroid/view/View;

    iget-object p0, p0, Lmiui/animation/b;->jJ:Ljava/lang/Runnable;

    invoke-static {v0, v1, p0}, Lmiui/animation/ViewTarget;->a(Lmiui/animation/ViewTarget;Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method
