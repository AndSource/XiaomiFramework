.class Lmiui/animation/ValueTarget$1;
.super Ljava/lang/Object;
.source "ValueTarget.java"

# interfaces
.implements Lmiui/animation/ITargetCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/animation/ValueTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTarget(Ljava/lang/Object;)Lmiui/animation/IAnimTarget;
    .locals 1

    new-instance p0, Lmiui/animation/ValueTarget;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/animation/ValueTarget;-><init>(Ljava/lang/Object;Lmiui/animation/ValueTarget$1;)V

    return-object p0
.end method
