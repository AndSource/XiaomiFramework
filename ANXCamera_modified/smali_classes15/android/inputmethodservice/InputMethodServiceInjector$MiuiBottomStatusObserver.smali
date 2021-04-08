.class Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;
.super Landroid/database/ContentObserver;
.source "InputMethodServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MiuiBottomStatusObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const-string v0, "InputMethodService"

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    :try_start_0
    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$100()Z

    move-result v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$200(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$102(Z)Z

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$300(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Landroid/inputmethodservice/InputMethodUtil;->sNavigationBarFullScreenValue:Z

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/inputmethodservice/InputMethodUtil;->updateGestureLineSupport(Landroid/content/Context;)V

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/inputmethodservice/InputMethodUtil;->updateGestureLineEnable(Landroid/content/Context;)V

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$400(Landroid/content/Context;)V

    if-nez v1, :cond_0

    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Add miui bottom view."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$500(Landroid/content/Context;)V

    :cond_0
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodServiceInjector$MiuiBottomStatusObserver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/inputmethodservice/InputMethodServiceInjector;->access$600(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to read user miui bottom choice, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
