.class public final synthetic Landroid/media/-$$Lambda$MediaRouter$Static$Client$xd63sG7fVJYYu49J1xqN8JYQvo4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/media/MediaRouter$Static$Client;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaRouter$Static$Client;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/-$$Lambda$MediaRouter$Static$Client$xd63sG7fVJYYu49J1xqN8JYQvo4;->f$0:Landroid/media/MediaRouter$Static$Client;

    iput-object p2, p0, Landroid/media/-$$Lambda$MediaRouter$Static$Client$xd63sG7fVJYYu49J1xqN8JYQvo4;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/media/-$$Lambda$MediaRouter$Static$Client$xd63sG7fVJYYu49J1xqN8JYQvo4;->f$0:Landroid/media/MediaRouter$Static$Client;

    iget-object v1, p0, Landroid/media/-$$Lambda$MediaRouter$Static$Client$xd63sG7fVJYYu49J1xqN8JYQvo4;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$Static$Client;->lambda$onSelectedRouteChanged$0$MediaRouter$Static$Client(Ljava/lang/String;)V

    return-void
.end method
