.class public Lmiui/view/menu/ContextMenuDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/view/menu/ContextMenuDialog$a;
    }
.end annotation


# instance fields
.field private final WW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mBuilder:Lmiui/view/menu/ContextMenuDialog$a;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/view/menu/ContextMenuDialog;->WW:Ljava/util/List;

    iput-object p1, p0, Lmiui/view/menu/ContextMenuDialog;->mContext:Landroid/content/Context;

    new-instance p1, Lmiui/view/menu/ContextMenuDialog$a;

    iget-object v0, p0, Lmiui/view/menu/ContextMenuDialog;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lmiui/view/menu/ContextMenuDialog$a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lmiui/view/menu/ContextMenuDialog;->mBuilder:Lmiui/view/menu/ContextMenuDialog$a;

    iget-object p1, p0, Lmiui/view/menu/ContextMenuDialog;->mBuilder:Lmiui/view/menu/ContextMenuDialog$a;

    new-instance v0, Lmiui/view/menu/a;

    invoke-direct {v0, p0}, Lmiui/view/menu/a;-><init>(Lmiui/view/menu/ContextMenuDialog;)V

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->setCallback(Lcom/miui/internal/view/menu/MenuBuilder$Callback;)V

    return-void
.end method

.method static synthetic a(Lmiui/view/menu/ContextMenuDialog;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lmiui/view/menu/ContextMenuDialog;->WW:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public addMenuItem(ILjava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lmiui/view/menu/ContextMenuDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lmiui/view/menu/ContextMenuDialog;->addMenuItem(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public addMenuItem(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lmiui/view/menu/ContextMenuDialog;->mBuilder:Lmiui/view/menu/ContextMenuDialog$a;

    iget-object v1, p0, Lmiui/view/menu/ContextMenuDialog;->WW:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, p1}, Lcom/miui/internal/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-object p0, p0, Lmiui/view/menu/ContextMenuDialog;->WW:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setIcon(I)V
    .locals 0

    iget-object p0, p0, Lmiui/view/menu/ContextMenuDialog;->mBuilder:Lmiui/view/menu/ContextMenuDialog$a;

    invoke-virtual {p0, p1}, Lmiui/view/menu/ContextMenuDialog$a;->setHeaderIcon(I)Lcom/miui/internal/view/menu/MenuBuilder;

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lmiui/view/menu/ContextMenuDialog;->mBuilder:Lmiui/view/menu/ContextMenuDialog$a;

    invoke-virtual {p0, p1}, Lmiui/view/menu/ContextMenuDialog$a;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)Lcom/miui/internal/view/menu/MenuBuilder;

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    iget-object p0, p0, Lmiui/view/menu/ContextMenuDialog;->mBuilder:Lmiui/view/menu/ContextMenuDialog$a;

    invoke-virtual {p0, p1}, Lmiui/view/menu/ContextMenuDialog$a;->setHeaderTitle(I)Lcom/miui/internal/view/menu/MenuBuilder;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lmiui/view/menu/ContextMenuDialog;->mBuilder:Lmiui/view/menu/ContextMenuDialog$a;

    invoke-virtual {p0, p1}, Lmiui/view/menu/ContextMenuDialog$a;->setHeaderTitle(Ljava/lang/CharSequence;)Lcom/miui/internal/view/menu/MenuBuilder;

    return-void
.end method

.method public show()V
    .locals 1

    iget-object p0, p0, Lmiui/view/menu/ContextMenuDialog;->mBuilder:Lmiui/view/menu/ContextMenuDialog$a;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/view/menu/ContextMenuDialog$a;->show(Landroid/os/IBinder;)Lcom/miui/internal/view/menu/MenuDialogHelper;

    return-void
.end method
