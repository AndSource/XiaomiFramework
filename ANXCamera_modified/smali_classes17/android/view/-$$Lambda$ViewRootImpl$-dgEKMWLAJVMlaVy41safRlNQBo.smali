.class public final synthetic Landroid/view/-$$Lambda$ViewRootImpl$-dgEKMWLAJVMlaVy41safRlNQBo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$ViewRootImpl$-dgEKMWLAJVMlaVy41safRlNQBo;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/view/-$$Lambda$ViewRootImpl$-dgEKMWLAJVMlaVy41safRlNQBo;->f$0:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->lambda$performDraw$3(Ljava/util/ArrayList;)V

    return-void
.end method
