.class Lmiui/animation/ViewTarget$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/animation/ITargetCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/animation/ViewTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmiui/animation/ITargetCreator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;)Lmiui/animation/IAnimTarget;
    .locals 1

    invoke-static {}, Lmiui/animation/ViewTarget;->p()Lmiui/animation/ViewTarget$ViewAttachStateListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    new-instance p0, Lmiui/animation/ViewTarget;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/animation/ViewTarget;-><init>(Landroid/view/View;Lmiui/animation/ViewTarget$1;)V

    return-object p0
.end method

.method public bridge synthetic createTarget(Ljava/lang/Object;)Lmiui/animation/IAnimTarget;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lmiui/animation/ViewTarget$1;->c(Landroid/view/View;)Lmiui/animation/IAnimTarget;

    move-result-object p0

    return-object p0
.end method
