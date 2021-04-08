.class public final synthetic Landroid/view/-$$Lambda$ViewRootImpl$7A_3tkr_Kw4TZAeIUGVlOoTcZhg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/view/ViewRootImpl;

.field private final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewRootImpl;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$ViewRootImpl$7A_3tkr_Kw4TZAeIUGVlOoTcZhg;->f$0:Landroid/view/ViewRootImpl;

    iput-object p2, p0, Landroid/view/-$$Lambda$ViewRootImpl$7A_3tkr_Kw4TZAeIUGVlOoTcZhg;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/view/-$$Lambda$ViewRootImpl$7A_3tkr_Kw4TZAeIUGVlOoTcZhg;->f$0:Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/-$$Lambda$ViewRootImpl$7A_3tkr_Kw4TZAeIUGVlOoTcZhg;->f$1:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->lambda$performDraw$1$ViewRootImpl(Ljava/util/ArrayList;)V

    return-void
.end method
