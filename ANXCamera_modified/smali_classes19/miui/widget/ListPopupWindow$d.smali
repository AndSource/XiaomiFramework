.class Lmiui/widget/ListPopupWindow$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic j:Lmiui/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Lmiui/widget/ListPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/ListPopupWindow$d;->j:Lmiui/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/widget/ListPopupWindow;Lmiui/widget/S;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/widget/ListPopupWindow$d;-><init>(Lmiui/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lmiui/widget/ListPopupWindow$d;->j:Lmiui/widget/ListPopupWindow;

    invoke-virtual {p1}, Lmiui/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lmiui/widget/ListPopupWindow$d;->j:Lmiui/widget/ListPopupWindow;

    invoke-static {p1}, Lmiui/widget/ListPopupWindow;->c(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ArrowPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/widget/ArrowPopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/widget/ListPopupWindow$d;->j:Lmiui/widget/ListPopupWindow;

    invoke-static {p1}, Lmiui/widget/ListPopupWindow;->a(Lmiui/widget/ListPopupWindow;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lmiui/widget/ListPopupWindow$d;->j:Lmiui/widget/ListPopupWindow;

    invoke-static {p2}, Lmiui/widget/ListPopupWindow;->d(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ListPopupWindow$f;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lmiui/widget/ListPopupWindow$d;->j:Lmiui/widget/ListPopupWindow;

    invoke-static {p0}, Lmiui/widget/ListPopupWindow;->d(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ListPopupWindow$f;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow$f;->run()V

    :cond_0
    return-void
.end method
