.class public Lmiui/animation/internal/AnimNotifiers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/animation/internal/AnimNotifiers$CompleteNotifier;,
        Lmiui/animation/internal/AnimNotifiers$CancelAllNotifier;,
        Lmiui/animation/internal/AnimNotifiers$AnimEndNotifier;,
        Lmiui/animation/internal/AnimNotifiers$CancelNotifier;,
        Lmiui/animation/internal/AnimNotifiers$PropertyBeginNotifier;,
        Lmiui/animation/internal/AnimNotifiers$BeginNotifier;,
        Lmiui/animation/internal/AnimNotifiers$UpdateAndEndNotifier;,
        Lmiui/animation/internal/AnimNotifiers$SingleUpdateNotify;,
        Lmiui/animation/internal/AnimNotifiers$BaseUpdateNotify;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getListenerKey(Lmiui/animation/IAnimTarget;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lmiui/animation/IAnimTarget;->getId()I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    int-to-long p0, p0

    add-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static getNotifier(Ljava/lang/Class;Lmiui/animation/IAnimTarget;)Lmiui/animation/internal/AnimNotifiers$BaseUpdateNotify;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lmiui/animation/internal/AnimNotifiers$BaseUpdateNotify;",
            ">;",
            "Lmiui/animation/IAnimTarget;",
            ")",
            "Lmiui/animation/internal/AnimNotifiers$BaseUpdateNotify;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lmiui/animation/utils/ObjectPool;->acquire(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/animation/internal/AnimNotifiers$BaseUpdateNotify;

    invoke-virtual {p0, p1}, Lmiui/animation/internal/AnimNotifiers$BaseUpdateNotify;->setTarget(Lmiui/animation/IAnimTarget;)V

    return-object p0
.end method
