.class public final synthetic Landroid/view/-$$Lambda$ViewDebug$hyDSYptlxuUTTyRIONqWzWWVDB0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Ljava/util/concurrent/Callable;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$ViewDebug$hyDSYptlxuUTTyRIONqWzWWVDB0;->f$0:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/view/-$$Lambda$ViewDebug$hyDSYptlxuUTTyRIONqWzWWVDB0;->f$0:Ljava/util/concurrent/Callable;

    check-cast p1, Landroid/graphics/Picture;

    invoke-static {v0, p1}, Landroid/view/ViewDebug;->lambda$startRenderingCommandsCapture$4(Ljava/util/concurrent/Callable;Landroid/graphics/Picture;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
