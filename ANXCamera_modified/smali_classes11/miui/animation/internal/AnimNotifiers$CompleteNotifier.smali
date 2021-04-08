.class Lmiui/animation/internal/AnimNotifiers$CompleteNotifier;
.super Lmiui/animation/internal/AnimNotifiers$SingleUpdateNotify;
.source "AnimNotifiers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/animation/internal/AnimNotifiers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompleteNotifier"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/animation/internal/AnimNotifiers$SingleUpdateNotify;-><init>()V

    return-void
.end method


# virtual methods
.method doNotify(Lmiui/animation/listener/TransitionListener;Ljava/lang/Object;Lmiui/animation/listener/UpdateInfo;)V
    .locals 0

    invoke-virtual {p1, p2}, Lmiui/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    return-void
.end method

.method public onNotifyEnd()V
    .locals 3

    iget-object v0, p0, Lmiui/animation/internal/AnimNotifiers$BaseUpdateNotify;->mTarget:Lmiui/animation/IAnimTarget;

    iget-object v1, p0, Lmiui/animation/internal/AnimNotifiers$BaseUpdateNotify;->mTag:Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiui/animation/internal/AnimNotifiers;->getListenerKey(Lmiui/animation/IAnimTarget;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lmiui/animation/listener/TransitionListener;

    const/4 v2, 0x0

    new-array v2, v2, [Lmiui/animation/listener/TransitionListener;

    invoke-static {v0, v1, v2}, Lmiui/animation/listener/ListenerBus;->removeListener(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-super {p0}, Lmiui/animation/internal/AnimNotifiers$BaseUpdateNotify;->onNotifyEnd()V

    return-void
.end method
