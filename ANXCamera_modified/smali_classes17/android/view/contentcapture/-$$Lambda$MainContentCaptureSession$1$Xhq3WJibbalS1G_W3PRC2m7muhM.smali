.class public final synthetic Landroid/view/contentcapture/-$$Lambda$MainContentCaptureSession$1$Xhq3WJibbalS1G_W3PRC2m7muhM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/view/contentcapture/MainContentCaptureSession$1;

.field private final synthetic f$1:I

.field private final synthetic f$2:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Landroid/view/contentcapture/MainContentCaptureSession$1;ILandroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/contentcapture/-$$Lambda$MainContentCaptureSession$1$Xhq3WJibbalS1G_W3PRC2m7muhM;->f$0:Landroid/view/contentcapture/MainContentCaptureSession$1;

    iput p2, p0, Landroid/view/contentcapture/-$$Lambda$MainContentCaptureSession$1$Xhq3WJibbalS1G_W3PRC2m7muhM;->f$1:I

    iput-object p3, p0, Landroid/view/contentcapture/-$$Lambda$MainContentCaptureSession$1$Xhq3WJibbalS1G_W3PRC2m7muhM;->f$2:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroid/view/contentcapture/-$$Lambda$MainContentCaptureSession$1$Xhq3WJibbalS1G_W3PRC2m7muhM;->f$0:Landroid/view/contentcapture/MainContentCaptureSession$1;

    iget v1, p0, Landroid/view/contentcapture/-$$Lambda$MainContentCaptureSession$1$Xhq3WJibbalS1G_W3PRC2m7muhM;->f$1:I

    iget-object v2, p0, Landroid/view/contentcapture/-$$Lambda$MainContentCaptureSession$1$Xhq3WJibbalS1G_W3PRC2m7muhM;->f$2:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Landroid/view/contentcapture/MainContentCaptureSession$1;->lambda$send$1$MainContentCaptureSession$1(ILandroid/os/IBinder;)V

    return-void
.end method
