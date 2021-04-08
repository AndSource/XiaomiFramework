.class public final synthetic Landroid/view/-$$Lambda$ViewRootImpl$YBiqAhbCbXVPSKdbE3K4rH2gpxI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameCompleteCallback;


# instance fields
.field private final synthetic f$0:Landroid/view/ViewRootImpl;

.field private final synthetic f$1:Landroid/os/Handler;

.field private final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewRootImpl;Landroid/os/Handler;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$ViewRootImpl$YBiqAhbCbXVPSKdbE3K4rH2gpxI;->f$0:Landroid/view/ViewRootImpl;

    iput-object p2, p0, Landroid/view/-$$Lambda$ViewRootImpl$YBiqAhbCbXVPSKdbE3K4rH2gpxI;->f$1:Landroid/os/Handler;

    iput-object p3, p0, Landroid/view/-$$Lambda$ViewRootImpl$YBiqAhbCbXVPSKdbE3K4rH2gpxI;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onFrameComplete(J)V
    .locals 3

    iget-object v0, p0, Landroid/view/-$$Lambda$ViewRootImpl$YBiqAhbCbXVPSKdbE3K4rH2gpxI;->f$0:Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/-$$Lambda$ViewRootImpl$YBiqAhbCbXVPSKdbE3K4rH2gpxI;->f$1:Landroid/os/Handler;

    iget-object v2, p0, Landroid/view/-$$Lambda$ViewRootImpl$YBiqAhbCbXVPSKdbE3K4rH2gpxI;->f$2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/view/ViewRootImpl;->lambda$performDraw$2$ViewRootImpl(Landroid/os/Handler;Ljava/util/ArrayList;J)V

    return-void
.end method
