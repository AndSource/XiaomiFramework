.class public final synthetic Landroid/view/-$$Lambda$ViewRootImpl$zlBUjCwDtoAWMNaHI62DIq-eKFY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameCompleteCallback;


# instance fields
.field private final synthetic f$0:Landroid/os/Handler;

.field private final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Handler;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$ViewRootImpl$zlBUjCwDtoAWMNaHI62DIq-eKFY;->f$0:Landroid/os/Handler;

    iput-object p2, p0, Landroid/view/-$$Lambda$ViewRootImpl$zlBUjCwDtoAWMNaHI62DIq-eKFY;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onFrameComplete(J)V
    .locals 2

    iget-object v0, p0, Landroid/view/-$$Lambda$ViewRootImpl$zlBUjCwDtoAWMNaHI62DIq-eKFY;->f$0:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/-$$Lambda$ViewRootImpl$zlBUjCwDtoAWMNaHI62DIq-eKFY;->f$1:Ljava/util/ArrayList;

    invoke-static {v0, v1, p1, p2}, Landroid/view/ViewRootImpl;->lambda$performDraw$4(Landroid/os/Handler;Ljava/util/ArrayList;J)V

    return-void
.end method
