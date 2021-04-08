.class Lmiui/hybrid/feature/a;
.super Lmiui/hybrid/LifecycleListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/hybrid/feature/Barcode;->invoke(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eP:Lmiui/hybrid/NativeInterface;

.field final synthetic fP:Lmiui/hybrid/Request;

.field final synthetic j:Lmiui/hybrid/feature/Barcode;


# direct methods
.method constructor <init>(Lmiui/hybrid/feature/Barcode;Lmiui/hybrid/NativeInterface;Lmiui/hybrid/Request;)V
    .locals 0

    iput-object p1, p0, Lmiui/hybrid/feature/a;->j:Lmiui/hybrid/feature/Barcode;

    iput-object p2, p0, Lmiui/hybrid/feature/a;->eP:Lmiui/hybrid/NativeInterface;

    iput-object p3, p0, Lmiui/hybrid/feature/a;->fP:Lmiui/hybrid/Request;

    invoke-direct {p0}, Lmiui/hybrid/LifecycleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lmiui/hybrid/feature/Barcode;->y()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lmiui/hybrid/feature/a;->eP:Lmiui/hybrid/NativeInterface;

    invoke-virtual {p1, p0}, Lmiui/hybrid/NativeInterface;->removeLifecycleListener(Lmiui/hybrid/LifecycleListener;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    new-instance p1, Lmiui/hybrid/Response;

    const/4 p2, 0x0

    iget-object v0, p0, Lmiui/hybrid/feature/a;->j:Lmiui/hybrid/feature/Barcode;

    invoke-static {v0, p3}, Lmiui/hybrid/feature/Barcode;->a(Lmiui/hybrid/feature/Barcode;Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lmiui/hybrid/Response;-><init>(ILorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    new-instance p1, Lmiui/hybrid/Response;

    const/16 p2, 0x64

    invoke-direct {p1, p2}, Lmiui/hybrid/Response;-><init>(I)V

    goto :goto_0

    :cond_1
    new-instance p1, Lmiui/hybrid/Response;

    const/16 p2, 0xc8

    invoke-direct {p1, p2}, Lmiui/hybrid/Response;-><init>(I)V

    :goto_0
    iget-object p0, p0, Lmiui/hybrid/feature/a;->fP:Lmiui/hybrid/Request;

    invoke-virtual {p0}, Lmiui/hybrid/Request;->getCallback()Lmiui/hybrid/Callback;

    move-result-object p0

    invoke-virtual {p0, p1}, Lmiui/hybrid/Callback;->callback(Lmiui/hybrid/Response;)V

    :cond_2
    return-void
.end method
