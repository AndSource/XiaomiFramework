.class Lcom/miui/internal/view/menu/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/view/menu/d;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic fE:Landroid/view/SubMenu;

.field final synthetic q:Lcom/miui/internal/view/menu/d;


# direct methods
.method constructor <init>(Lcom/miui/internal/view/menu/d;Landroid/view/SubMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/view/menu/c;->q:Lcom/miui/internal/view/menu/d;

    iput-object p2, p0, Lcom/miui/internal/view/menu/c;->fE:Landroid/view/SubMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/view/menu/c;->q:Lcom/miui/internal/view/menu/d;

    iget-object v0, v0, Lcom/miui/internal/view/menu/d;->j:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/ImmersionListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Lcom/miui/internal/view/menu/c;->q:Lcom/miui/internal/view/menu/d;

    iget-object v0, v0, Lcom/miui/internal/view/menu/d;->j:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;

    iget-object v1, p0, Lcom/miui/internal/view/menu/c;->fE:Landroid/view/SubMenu;

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->update(Landroid/view/Menu;)V

    iget-object v0, p0, Lcom/miui/internal/view/menu/c;->q:Lcom/miui/internal/view/menu/d;

    iget-object v0, v0, Lcom/miui/internal/view/menu/d;->j:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;

    invoke-static {v0}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->b(Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;)Landroid/view/View;

    move-result-object v1

    iget-object p0, p0, Lcom/miui/internal/view/menu/c;->q:Lcom/miui/internal/view/menu/d;

    iget-object p0, p0, Lcom/miui/internal/view/menu/d;->j:Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;

    invoke-static {p0}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->c(Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lmiui/widget/ImmersionListPopupWindow;->fastShow(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method
