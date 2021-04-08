.class public final synthetic Landroid/view/-$$Lambda$InsetsController$n9dGLDW5oKSxT73i9ZlnIPWSzms;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Landroid/view/InsetsController;


# direct methods
.method public synthetic constructor <init>(Landroid/view/InsetsController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$InsetsController$n9dGLDW5oKSxT73i9ZlnIPWSzms;->f$0:Landroid/view/InsetsController;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/view/-$$Lambda$InsetsController$n9dGLDW5oKSxT73i9ZlnIPWSzms;->f$0:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->lambda$controlAnimationUnchecked$2$InsetsController()Landroid/view/SyncRtSurfaceTransactionApplier;

    move-result-object v0

    return-object v0
.end method
