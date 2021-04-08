.class Lmiui/animation/internal/AnimNotifiers$BeginNotifier;
.super Lmiui/animation/internal/AnimNotifiers$SingleUpdateNotify;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/animation/internal/AnimNotifiers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BeginNotifier"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/animation/internal/AnimNotifiers$SingleUpdateNotify;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lmiui/animation/listener/TransitionListener;Ljava/lang/Object;Lmiui/animation/listener/UpdateInfo;)V
    .locals 0

    invoke-virtual {p1, p2}, Lmiui/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    return-void
.end method
