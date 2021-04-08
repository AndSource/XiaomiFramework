.class public Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;
.super Lcom/miui/internal/webkit/DeviceAccountLogin;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;
    }
.end annotation


# static fields
.field private static final vF:Ljava/lang/String; = "dialog"

.field private static final wF:I = 0x0

.field private static final xF:I = 0x1

.field private static final yF:I = 0x1f4


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mWebView:Lcom/miui/internal/hybrid/provider/AbsWebView;

.field private uF:Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/internal/hybrid/provider/AbsWebView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/internal/webkit/DeviceAccountLogin;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->mWebView:Lcom/miui/internal/hybrid/provider/AbsWebView;

    new-instance p1, Lcom/miui/internal/webkit/a;

    invoke-direct {p1, p0}, Lcom/miui/internal/webkit/a;-><init>(Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;)V

    iput-object p1, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private Wd()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->dismissDialog()V

    new-instance v0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;

    invoke-direct {v0}, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->uF:Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;

    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->uF:Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;

    iget-object p0, p0, Lcom/miui/internal/webkit/DeviceAccountLogin;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v1, "dialog"

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->Wd()V

    return-void
.end method

.method static synthetic b(Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->dismissDialog()V

    return-void
.end method

.method static synthetic c(Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;)Lcom/miui/internal/hybrid/provider/AbsWebView;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->mWebView:Lcom/miui/internal/hybrid/provider/AbsWebView;

    return-object p0
.end method

.method private dismissDialog()V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->uF:Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->uF:Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->uF:Lcom/miui/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;

    return-void
.end method


# virtual methods
.method public onLoginCancel()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->dismissDialog()V

    iget-object p0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->mWebView:Lcom/miui/internal/hybrid/provider/AbsWebView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/hybrid/provider/AbsWebView;->setVisibility(I)V

    return-void
.end method

.method public onLoginFail()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->dismissDialog()V

    iget-object v0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->mWebView:Lcom/miui/internal/hybrid/provider/AbsWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->setVisibility(I)V

    iget-object p0, p0, Lcom/miui/internal/webkit/DeviceAccountLogin;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/miui/internal/R$string;->web_sso_login_fail:I

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onLoginPageFinished()V
    .locals 3

    iget-object p0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onLoginStart()V
    .locals 3

    iget-object p0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onLoginSuccess(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/webkit/DefaultDeviceAccountLogin;->mWebView:Lcom/miui/internal/hybrid/provider/AbsWebView;

    invoke-virtual {p0, p1}, Lcom/miui/internal/hybrid/provider/AbsWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
