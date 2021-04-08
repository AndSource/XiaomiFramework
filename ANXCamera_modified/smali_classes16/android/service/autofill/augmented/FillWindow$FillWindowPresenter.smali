.class final Landroid/service/autofill/augmented/FillWindow$FillWindowPresenter;
.super Landroid/view/autofill/IAutofillWindowPresenter$Stub;
.source "FillWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/augmented/FillWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FillWindowPresenter"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/autofill/augmented/FillWindow;


# direct methods
.method private constructor <init>(Landroid/service/autofill/augmented/FillWindow;)V
    .locals 0

    iput-object p1, p0, Landroid/service/autofill/augmented/FillWindow$FillWindowPresenter;->this$0:Landroid/service/autofill/augmented/FillWindow;

    invoke-direct {p0}, Landroid/view/autofill/IAutofillWindowPresenter$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/autofill/augmented/FillWindow;Landroid/service/autofill/augmented/FillWindow$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/autofill/augmented/FillWindow$FillWindowPresenter;-><init>(Landroid/service/autofill/augmented/FillWindow;)V

    return-void
.end method

.method static synthetic lambda$hide$1(Ljava/lang/Object;)V
    .locals 1

    move-object v0, p0

    check-cast v0, Landroid/service/autofill/augmented/FillWindow;

    invoke-static {v0}, Landroid/service/autofill/augmented/FillWindow;->access$300(Landroid/service/autofill/augmented/FillWindow;)V

    return-void
.end method

.method static synthetic lambda$show$0(Ljava/lang/Object;Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    move-object v0, p0

    check-cast v0, Landroid/service/autofill/augmented/FillWindow;

    invoke-static {v0, p1}, Landroid/service/autofill/augmented/FillWindow;->access$400(Landroid/service/autofill/augmented/FillWindow;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public hide(Landroid/graphics/Rect;)V
    .locals 3

    sget-boolean v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/service/autofill/augmented/FillWindow;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FillWindowPresenter.hide()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/service/autofill/augmented/FillWindow$FillWindowPresenter;->this$0:Landroid/service/autofill/augmented/FillWindow;

    invoke-static {v0}, Landroid/service/autofill/augmented/FillWindow;->access$200(Landroid/service/autofill/augmented/FillWindow;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/service/autofill/augmented/-$$Lambda$FillWindow$FillWindowPresenter$EnBAJTZRgK05SBPnOQ9Edaq3VXs;->INSTANCE:Landroid/service/autofill/augmented/-$$Lambda$FillWindow$FillWindowPresenter$EnBAJTZRgK05SBPnOQ9Edaq3VXs;

    iget-object v2, p0, Landroid/service/autofill/augmented/FillWindow$FillWindowPresenter;->this$0:Landroid/service/autofill/augmented/FillWindow;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public show(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)V
    .locals 3

    sget-boolean v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/service/autofill/augmented/FillWindow;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FillWindowPresenter.show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/service/autofill/augmented/FillWindow$FillWindowPresenter;->this$0:Landroid/service/autofill/augmented/FillWindow;

    invoke-static {v0}, Landroid/service/autofill/augmented/FillWindow;->access$200(Landroid/service/autofill/augmented/FillWindow;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/service/autofill/augmented/-$$Lambda$FillWindow$FillWindowPresenter$hdkNZGuYdsvcArvQ2SoMspO1EO8;->INSTANCE:Landroid/service/autofill/augmented/-$$Lambda$FillWindow$FillWindowPresenter$hdkNZGuYdsvcArvQ2SoMspO1EO8;

    iget-object v2, p0, Landroid/service/autofill/augmented/FillWindow$FillWindowPresenter;->this$0:Landroid/service/autofill/augmented/FillWindow;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
