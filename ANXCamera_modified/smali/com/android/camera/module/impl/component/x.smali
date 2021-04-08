.class public final synthetic Lcom/android/camera/module/impl/component/x;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic kg:Lcom/android/camera/module/Camera2Module;

.field private final synthetic lg:Z

.field private final synthetic mg:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/Camera2Module;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/impl/component/x;->kg:Lcom/android/camera/module/Camera2Module;

    iput-boolean p2, p0, Lcom/android/camera/module/impl/component/x;->lg:Z

    iput p3, p0, Lcom/android/camera/module/impl/component/x;->mg:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/impl/component/x;->kg:Lcom/android/camera/module/Camera2Module;

    iget-boolean v1, p0, Lcom/android/camera/module/impl/component/x;->lg:Z

    iget p0, p0, Lcom/android/camera/module/impl/component/x;->mg:I

    invoke-static {v0, v1, p0}, Lcom/android/camera/module/impl/component/MiAsdDetectImpl;->a(Lcom/android/camera/module/Camera2Module;ZI)V

    return-void
.end method
