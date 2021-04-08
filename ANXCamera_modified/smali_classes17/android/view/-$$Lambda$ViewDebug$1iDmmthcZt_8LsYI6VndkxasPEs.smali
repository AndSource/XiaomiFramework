.class public final synthetic Landroid/view/-$$Lambda$ViewDebug$1iDmmthcZt_8LsYI6VndkxasPEs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/view/View;

.field private final synthetic f$1:[Landroid/graphics/Bitmap;

.field private final synthetic f$2:Z

.field private final synthetic f$3:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;[Landroid/graphics/Bitmap;ZLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$ViewDebug$1iDmmthcZt_8LsYI6VndkxasPEs;->f$0:Landroid/view/View;

    iput-object p2, p0, Landroid/view/-$$Lambda$ViewDebug$1iDmmthcZt_8LsYI6VndkxasPEs;->f$1:[Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Landroid/view/-$$Lambda$ViewDebug$1iDmmthcZt_8LsYI6VndkxasPEs;->f$2:Z

    iput-object p4, p0, Landroid/view/-$$Lambda$ViewDebug$1iDmmthcZt_8LsYI6VndkxasPEs;->f$3:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroid/view/-$$Lambda$ViewDebug$1iDmmthcZt_8LsYI6VndkxasPEs;->f$0:Landroid/view/View;

    iget-object v1, p0, Landroid/view/-$$Lambda$ViewDebug$1iDmmthcZt_8LsYI6VndkxasPEs;->f$1:[Landroid/graphics/Bitmap;

    iget-boolean v2, p0, Landroid/view/-$$Lambda$ViewDebug$1iDmmthcZt_8LsYI6VndkxasPEs;->f$2:Z

    iget-object v3, p0, Landroid/view/-$$Lambda$ViewDebug$1iDmmthcZt_8LsYI6VndkxasPEs;->f$3:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, v2, v3}, Landroid/view/ViewDebug;->lambda$performViewCapture$5(Landroid/view/View;[Landroid/graphics/Bitmap;ZLjava/util/concurrent/CountDownLatch;)V

    return-void
.end method
