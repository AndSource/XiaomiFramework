.class Lmiui/hybrid/feature/d;
.super Lmiui/hybrid/LifecycleListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/hybrid/feature/Network;->b(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eP:Lmiui/hybrid/NativeInterface;

.field final synthetic j:Lmiui/hybrid/feature/Network;


# direct methods
.method constructor <init>(Lmiui/hybrid/feature/Network;Lmiui/hybrid/NativeInterface;)V
    .locals 0

    iput-object p1, p0, Lmiui/hybrid/feature/d;->j:Lmiui/hybrid/feature/Network;

    iput-object p2, p0, Lmiui/hybrid/feature/d;->eP:Lmiui/hybrid/NativeInterface;

    invoke-direct {p0}, Lmiui/hybrid/LifecycleListener;-><init>()V

    return-void
.end method

.method private unregister()V
    .locals 2

    iget-object v0, p0, Lmiui/hybrid/feature/d;->j:Lmiui/hybrid/feature/Network;

    iget-object v1, p0, Lmiui/hybrid/feature/d;->eP:Lmiui/hybrid/NativeInterface;

    invoke-static {v0, v1}, Lmiui/hybrid/feature/Network;->a(Lmiui/hybrid/feature/Network;Lmiui/hybrid/NativeInterface;)V

    iget-object p0, p0, Lmiui/hybrid/feature/d;->j:Lmiui/hybrid/feature/Network;

    invoke-static {p0}, Lmiui/hybrid/feature/Network;->a(Lmiui/hybrid/feature/Network;)Lmiui/hybrid/Callback;

    move-result-object p0

    new-instance v0, Lmiui/hybrid/Response;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lmiui/hybrid/Response;-><init>(I)V

    invoke-virtual {p0, v0}, Lmiui/hybrid/Callback;->callback(Lmiui/hybrid/Response;)V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 0

    invoke-direct {p0}, Lmiui/hybrid/feature/d;->unregister()V

    return-void
.end method

.method public onPageChange()V
    .locals 0

    invoke-direct {p0}, Lmiui/hybrid/feature/d;->unregister()V

    return-void
.end method
