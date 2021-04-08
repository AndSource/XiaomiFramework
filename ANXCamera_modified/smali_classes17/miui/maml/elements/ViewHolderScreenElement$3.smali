.class Lmiui/maml/elements/ViewHolderScreenElement$3;
.super Ljava/lang/Object;
.source "ViewHolderScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/elements/ViewHolderScreenElement;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/ViewHolderScreenElement;


# direct methods
.method constructor <init>(Lmiui/maml/elements/ViewHolderScreenElement;)V
    .locals 0

    iput-object p1, p0, Lmiui/maml/elements/ViewHolderScreenElement$3;->this$0:Lmiui/maml/elements/ViewHolderScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lmiui/maml/elements/ViewHolderScreenElement$3;->this$0:Lmiui/maml/elements/ViewHolderScreenElement;

    iget-object v0, v0, Lmiui/maml/elements/ViewHolderScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getViewManager()Landroid/view/ViewManager;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/ViewHolderScreenElement$3;->this$0:Lmiui/maml/elements/ViewHolderScreenElement;

    invoke-static {v1}, Lmiui/maml/elements/ViewHolderScreenElement;->access$000(Lmiui/maml/elements/ViewHolderScreenElement;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lmiui/maml/elements/ViewHolderScreenElement$3;->this$0:Lmiui/maml/elements/ViewHolderScreenElement;

    invoke-virtual {v1}, Lmiui/maml/elements/ViewHolderScreenElement;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/elements/ViewHolderScreenElement$3;->this$0:Lmiui/maml/elements/ViewHolderScreenElement;

    invoke-virtual {v2, v1}, Lmiui/maml/elements/ViewHolderScreenElement;->onUpdateView(Landroid/view/View;)V

    iget-object v2, p0, Lmiui/maml/elements/ViewHolderScreenElement$3;->this$0:Lmiui/maml/elements/ViewHolderScreenElement;

    invoke-static {v2}, Lmiui/maml/elements/ViewHolderScreenElement;->access$100(Lmiui/maml/elements/ViewHolderScreenElement;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lmiui/maml/elements/ViewHolderScreenElement$3;->this$0:Lmiui/maml/elements/ViewHolderScreenElement;

    invoke-static {v2}, Lmiui/maml/elements/ViewHolderScreenElement;->access$200(Lmiui/maml/elements/ViewHolderScreenElement;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/ViewHolderScreenElement$3;->this$0:Lmiui/maml/elements/ViewHolderScreenElement;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lmiui/maml/elements/ViewHolderScreenElement;->access$002(Lmiui/maml/elements/ViewHolderScreenElement;Z)Z

    iget-object v2, p0, Lmiui/maml/elements/ViewHolderScreenElement$3;->this$0:Lmiui/maml/elements/ViewHolderScreenElement;

    invoke-virtual {v2, v1}, Lmiui/maml/elements/ViewHolderScreenElement;->onViewAdded(Landroid/view/View;)V

    :cond_1
    return-void
.end method
