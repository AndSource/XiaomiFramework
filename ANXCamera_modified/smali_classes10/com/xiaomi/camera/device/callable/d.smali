.class public final synthetic Lcom/xiaomi/camera/device/callable/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic kg:Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;

.field private final synthetic lg:Ljava/lang/String;

.field private final synthetic mg:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/device/callable/d;->kg:Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;

    iput-object p2, p0, Lcom/xiaomi/camera/device/callable/d;->lg:Ljava/lang/String;

    iput p3, p0, Lcom/xiaomi/camera/device/callable/d;->mg:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/camera/device/callable/d;->kg:Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;

    iget-object v1, p0, Lcom/xiaomi/camera/device/callable/d;->lg:Ljava/lang/String;

    iget p0, p0, Lcom/xiaomi/camera/device/callable/d;->mg:I

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->c(Ljava/lang/String;I)V

    return-void
.end method
