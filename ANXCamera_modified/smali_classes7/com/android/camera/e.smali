.class public final synthetic Lcom/android/camera/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic kg:Lcom/android/camera/Camera$5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/Camera$5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/e;->kg:Lcom/android/camera/Camera$5;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/e;->kg:Lcom/android/camera/Camera$5;

    invoke-virtual {p0}, Lcom/android/camera/Camera$5;->xc()V

    return-void
.end method
