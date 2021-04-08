.class Lcom/miui/internal/view/menu/context/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->f(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/miui/internal/view/menu/context/c;->j:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/internal/view/menu/context/c;->j:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;

    invoke-static {p1}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->b(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/internal/view/menu/context/c;->j:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;

    invoke-static {v0}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->f(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/miui/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    iget-object p0, p0, Lcom/miui/internal/view/menu/context/c;->j:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
