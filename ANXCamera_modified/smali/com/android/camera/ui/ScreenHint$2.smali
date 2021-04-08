.class Lcom/android/camera/ui/ScreenHint$2;
.super Ljava/lang/Object;
.source "ScreenHint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/ScreenHint;->showFirstUseHint(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ScreenHint;

.field final synthetic val$doNext:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ScreenHint;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/ScreenHint$2;->this$0:Lcom/android/camera/ui/ScreenHint;

    iput-object p2, p0, Lcom/android/camera/ui/ScreenHint$2;->val$doNext:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint$2;->this$0:Lcom/android/camera/ui/ScreenHint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ScreenHint;->recordFirstUse(Z)V

    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint$2;->this$0:Lcom/android/camera/ui/ScreenHint;

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->dismissSystemChoiceDialog()V

    iget-object p0, p0, Lcom/android/camera/ui/ScreenHint$2;->val$doNext:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
