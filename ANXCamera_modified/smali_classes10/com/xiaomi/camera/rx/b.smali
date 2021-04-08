.class public final synthetic Lcom/xiaomi/camera/rx/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic kg:Lcom/xiaomi/camera/rx/SimpleDisposable;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/camera/rx/SimpleDisposable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/rx/b;->kg:Lcom/xiaomi/camera/rx/SimpleDisposable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/rx/b;->kg:Lcom/xiaomi/camera/rx/SimpleDisposable;

    invoke-virtual {p0}, Lcom/xiaomi/camera/rx/SimpleDisposable;->Xm()V

    return-void
.end method
