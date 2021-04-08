.class abstract Lmiui/animation/internal/AnimNotifiers$SingleUpdateNotify;
.super Lmiui/animation/internal/AnimNotifiers$BaseUpdateNotify;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/animation/internal/AnimNotifiers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "SingleUpdateNotify"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/animation/internal/AnimNotifiers$BaseUpdateNotify;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lmiui/animation/listener/TransitionListener;Ljava/lang/Object;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/animation/listener/TransitionListener;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lmiui/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/listener/UpdateInfo;

    invoke-virtual {p0, p1, p2, v0}, Lmiui/animation/internal/AnimNotifiers$SingleUpdateNotify;->a(Lmiui/animation/listener/TransitionListener;Ljava/lang/Object;Lmiui/animation/listener/UpdateInfo;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lmiui/animation/internal/AnimNotifiers$SingleUpdateNotify;->a(Lmiui/animation/listener/TransitionListener;Ljava/lang/Object;Lmiui/animation/listener/UpdateInfo;)V

    :cond_1
    return-void
.end method

.method abstract a(Lmiui/animation/listener/TransitionListener;Ljava/lang/Object;Lmiui/animation/listener/UpdateInfo;)V
.end method
