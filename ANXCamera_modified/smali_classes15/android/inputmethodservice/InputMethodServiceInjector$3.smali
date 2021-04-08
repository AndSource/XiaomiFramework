.class Landroid/inputmethodservice/InputMethodServiceInjector$3;
.super Ljava/lang/Object;
.source "InputMethodServiceInjector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/InputMethodServiceInjector;->openQuickPasteView(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodServiceInjector$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodServiceInjector$3;->val$context:Landroid/content/Context;

    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$2700()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$2800(Landroid/content/Context;Z)V

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$1002(Z)Z

    return-void
.end method
