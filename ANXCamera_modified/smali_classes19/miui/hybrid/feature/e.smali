.class Lmiui/hybrid/feature/e;
.super Lmiui/hybrid/LifecycleListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/hybrid/feature/Share;->d(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eP:Lmiui/hybrid/NativeInterface;

.field final synthetic gP:Lmiui/hybrid/Callback;

.field final synthetic j:Lmiui/hybrid/feature/Share;


# direct methods
.method constructor <init>(Lmiui/hybrid/feature/Share;Lmiui/hybrid/NativeInterface;Lmiui/hybrid/Callback;)V
    .locals 0

    iput-object p1, p0, Lmiui/hybrid/feature/e;->j:Lmiui/hybrid/feature/Share;

    iput-object p2, p0, Lmiui/hybrid/feature/e;->eP:Lmiui/hybrid/NativeInterface;

    iput-object p3, p0, Lmiui/hybrid/feature/e;->gP:Lmiui/hybrid/Callback;

    invoke-direct {p0}, Lmiui/hybrid/LifecycleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lmiui/hybrid/feature/e;->eP:Lmiui/hybrid/NativeInterface;

    invoke-virtual {p1, p0}, Lmiui/hybrid/NativeInterface;->removeLifecycleListener(Lmiui/hybrid/LifecycleListener;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    new-instance p1, Lmiui/hybrid/Response;

    const/4 p2, 0x0

    const-string p3, "success"

    invoke-direct {p1, p2, p3}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    new-instance p1, Lmiui/hybrid/Response;

    const/16 p2, 0x64

    const-string p3, "cancel"

    invoke-direct {p1, p2, p3}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lmiui/hybrid/Response;

    const/16 p2, 0xc8

    invoke-direct {p1, p2}, Lmiui/hybrid/Response;-><init>(I)V

    :goto_0
    iget-object p0, p0, Lmiui/hybrid/feature/e;->gP:Lmiui/hybrid/Callback;

    invoke-virtual {p0, p1}, Lmiui/hybrid/Callback;->callback(Lmiui/hybrid/Response;)V

    return-void
.end method
