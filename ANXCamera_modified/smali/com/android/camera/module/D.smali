.class public final synthetic Lcom/android/camera/module/D;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic kg:Lcom/android/camera/module/LiveModule;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/LiveModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/D;->kg:Lcom/android/camera/module/LiveModule;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/D;->kg:Lcom/android/camera/module/LiveModule;

    invoke-virtual {p0}, Lcom/android/camera/module/LiveModule;->sd()V

    return-void
.end method
