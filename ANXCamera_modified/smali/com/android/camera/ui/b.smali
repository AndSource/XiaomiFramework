.class public final synthetic Lcom/android/camera/ui/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private final synthetic kg:Lcom/android/camera/ui/ModeSelectView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/ui/ModeSelectView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/b;->kg:Lcom/android/camera/ui/ModeSelectView;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/b;->kg:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {p0}, Lcom/android/camera/ui/ModeSelectView;->ma()V

    return-void
.end method
