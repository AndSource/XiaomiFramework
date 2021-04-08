.class public final synthetic Lcom/android/camera/module/t;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic kg:Lcom/android/camera/module/CloneModule;

.field private final synthetic lg:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/CloneModule;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/t;->kg:Lcom/android/camera/module/CloneModule;

    iput-object p2, p0, Lcom/android/camera/module/t;->lg:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/t;->kg:Lcom/android/camera/module/CloneModule;

    iget-object p0, p0, Lcom/android/camera/module/t;->lg:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Lcom/android/camera/module/CloneModule;->a(Landroid/net/Uri;)V

    return-void
.end method
