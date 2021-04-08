.class public Lcom/miui/internal/hybrid/webkit/WebViewClient;
.super Lcom/miui/internal/hybrid/provider/AbsWebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/hybrid/webkit/WebViewClient$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lmiui/hybrid/HybridViewClient;Lmiui/hybrid/HybridView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/hybrid/provider/AbsWebViewClient;-><init>(Lmiui/hybrid/HybridViewClient;Lmiui/hybrid/HybridView;)V

    return-void
.end method

.method static synthetic a(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/provider/AbsWebViewClient;->mHybridView:Lmiui/hybrid/HybridView;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/provider/AbsWebViewClient;->mHybridView:Lmiui/hybrid/HybridView;

    return-object p0
.end method

.method static synthetic c(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/provider/AbsWebViewClient;->mHybridView:Lmiui/hybrid/HybridView;

    return-object p0
.end method

.method static synthetic d(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/provider/AbsWebViewClient;->mHybridView:Lmiui/hybrid/HybridView;

    return-object p0
.end method

.method static synthetic e(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/provider/AbsWebViewClient;->mHybridView:Lmiui/hybrid/HybridView;

    return-object p0
.end method

.method static synthetic f(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/provider/AbsWebViewClient;->mHybridView:Lmiui/hybrid/HybridView;

    return-object p0
.end method

.method static synthetic g(Lcom/miui/internal/hybrid/webkit/WebViewClient;)Lmiui/hybrid/HybridView;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/provider/AbsWebViewClient;->mHybridView:Lmiui/hybrid/HybridView;

    return-object p0
.end method


# virtual methods
.method public getWebViewClient()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/miui/internal/hybrid/webkit/WebViewClient$a;

    invoke-direct {v0, p0}, Lcom/miui/internal/hybrid/webkit/WebViewClient$a;-><init>(Lcom/miui/internal/hybrid/webkit/WebViewClient;)V

    return-object v0
.end method

.method public onPageFinished(Lmiui/hybrid/HybridView;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/provider/AbsWebViewClient;->mHybridViewClient:Lmiui/hybrid/HybridViewClient;

    invoke-virtual {p0, p1, p2}, Lmiui/hybrid/HybridViewClient;->onPageFinished(Lmiui/hybrid/HybridView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Lmiui/hybrid/HybridView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/provider/AbsWebViewClient;->mHybridViewClient:Lmiui/hybrid/HybridViewClient;

    invoke-virtual {p0, p1, p2, p3}, Lmiui/hybrid/HybridViewClient;->onPageStarted(Lmiui/hybrid/HybridView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Lmiui/hybrid/HybridView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/provider/AbsWebViewClient;->mHybridViewClient:Lmiui/hybrid/HybridViewClient;

    invoke-virtual {p0, p1, p2, p3, p4}, Lmiui/hybrid/HybridViewClient;->onReceivedError(Lmiui/hybrid/HybridView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedLoginRequest(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/provider/AbsWebViewClient;->mHybridViewClient:Lmiui/hybrid/HybridViewClient;

    invoke-virtual {p0, p1, p2, p3, p4}, Lmiui/hybrid/HybridViewClient;->onReceivedLoginRequest(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Lmiui/hybrid/HybridView;Lmiui/hybrid/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/provider/AbsWebViewClient;->mHybridViewClient:Lmiui/hybrid/HybridViewClient;

    invoke-virtual {p0, p1, p2, p3}, Lmiui/hybrid/HybridViewClient;->onReceivedSslError(Lmiui/hybrid/HybridView;Lmiui/hybrid/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public shouldInterceptRequest(Lmiui/hybrid/HybridView;Ljava/lang/String;)Lmiui/hybrid/HybridResourceResponse;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/provider/AbsWebViewClient;->mHybridViewClient:Lmiui/hybrid/HybridViewClient;

    invoke-virtual {p0, p1, p2}, Lmiui/hybrid/HybridViewClient;->shouldInterceptRequest(Lmiui/hybrid/HybridView;Ljava/lang/String;)Lmiui/hybrid/HybridResourceResponse;

    move-result-object p0

    return-object p0
.end method

.method public shouldOverrideUrlLoading(Lmiui/hybrid/HybridView;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/provider/AbsWebViewClient;->mHybridViewClient:Lmiui/hybrid/HybridViewClient;

    invoke-virtual {p0, p1, p2}, Lmiui/hybrid/HybridViewClient;->shouldOverrideUrlLoading(Lmiui/hybrid/HybridView;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
