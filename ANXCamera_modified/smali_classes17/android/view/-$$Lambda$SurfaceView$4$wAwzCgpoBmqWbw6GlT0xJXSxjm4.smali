.class public final synthetic Landroid/view/-$$Lambda$SurfaceView$4$wAwzCgpoBmqWbw6GlT0xJXSxjm4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/view/SurfaceView$4;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceView$4;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$SurfaceView$4$wAwzCgpoBmqWbw6GlT0xJXSxjm4;->f$0:Landroid/view/SurfaceView$4;

    iput-boolean p2, p0, Landroid/view/-$$Lambda$SurfaceView$4$wAwzCgpoBmqWbw6GlT0xJXSxjm4;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/view/-$$Lambda$SurfaceView$4$wAwzCgpoBmqWbw6GlT0xJXSxjm4;->f$0:Landroid/view/SurfaceView$4;

    iget-boolean v1, p0, Landroid/view/-$$Lambda$SurfaceView$4$wAwzCgpoBmqWbw6GlT0xJXSxjm4;->f$1:Z

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView$4;->lambda$setKeepScreenOn$0$SurfaceView$4(Z)V

    return-void
.end method
