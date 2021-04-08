.class public final synthetic Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$1$V1mxGgTDjVVHroIjJrHvYfUHCKE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$1$V1mxGgTDjVVHroIjJrHvYfUHCKE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$1$V1mxGgTDjVVHroIjJrHvYfUHCKE;

    invoke-direct {v0}, Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$1$V1mxGgTDjVVHroIjJrHvYfUHCKE;-><init>()V

    sput-object v0, Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$1$V1mxGgTDjVVHroIjJrHvYfUHCKE;->INSTANCE:Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$1$V1mxGgTDjVVHroIjJrHvYfUHCKE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/service/contentcapture/ContentCaptureService;

    check-cast p2, Landroid/service/contentcapture/ActivityEvent;

    invoke-static {p1, p2}, Landroid/service/contentcapture/ContentCaptureService$1;->lambda$onActivityEvent$6(Ljava/lang/Object;Landroid/service/contentcapture/ActivityEvent;)V

    return-void
.end method
