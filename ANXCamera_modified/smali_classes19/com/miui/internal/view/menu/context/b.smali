.class Lcom/miui/internal/view/menu/context/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;-><init>(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;Landroid/widget/PopupWindow$OnDismissListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic j:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;


# direct methods
.method constructor <init>(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/view/menu/context/b;->j:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/internal/view/menu/context/b;->j:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;

    invoke-static {p1}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->a(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;)Lcom/miui/internal/view/menu/context/ContextMenuAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/internal/view/menu/context/b;->j:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;

    invoke-static {p2}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->b(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/miui/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    invoke-interface {p1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/internal/view/menu/context/b;->j:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;

    new-instance p3, Lcom/miui/internal/view/menu/context/a;

    invoke-direct {p3, p0, p1}, Lcom/miui/internal/view/menu/context/a;-><init>(Lcom/miui/internal/view/menu/context/b;Landroid/view/SubMenu;)V

    invoke-virtual {p2, p3}, Lmiui/widget/ImmersionListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/view/menu/context/b;->j:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
