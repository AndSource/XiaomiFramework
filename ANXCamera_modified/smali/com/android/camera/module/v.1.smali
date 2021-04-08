.class public final synthetic Lcom/android/camera/module/v;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic kg:Lcom/android/camera/module/CloneModule;

.field private final synthetic lg:Lcom/xiaomi/fenshen/FenShenCam$Message;

.field private final synthetic mg:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/CloneModule;Lcom/xiaomi/fenshen/FenShenCam$Message;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/v;->kg:Lcom/android/camera/module/CloneModule;

    iput-object p2, p0, Lcom/android/camera/module/v;->lg:Lcom/xiaomi/fenshen/FenShenCam$Message;

    iput p3, p0, Lcom/android/camera/module/v;->mg:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/v;->kg:Lcom/android/camera/module/CloneModule;

    iget-object v1, p0, Lcom/android/camera/module/v;->lg:Lcom/xiaomi/fenshen/FenShenCam$Message;

    iget p0, p0, Lcom/android/camera/module/v;->mg:I

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/module/CloneModule;->a(Lcom/xiaomi/fenshen/FenShenCam$Message;I)V

    return-void
.end method
