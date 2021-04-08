.class public final synthetic Lcom/android/camera/module/L;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic kg:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/L;->kg:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/L;->kg:Landroid/view/ViewGroup;

    invoke-static {p0}, Lcom/android/camera/module/MultiCameraModule;->b(Landroid/view/ViewGroup;)V

    return-void
.end method
