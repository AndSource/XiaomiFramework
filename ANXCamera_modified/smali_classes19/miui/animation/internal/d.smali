.class Lmiui/animation/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/animation/internal/AnimRunner;->cancel(Lmiui/animation/IAnimTarget;[Lmiui/animation/property/FloatProperty;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic j:Lmiui/animation/internal/AnimRunner;

.field final synthetic sL:Lmiui/animation/IAnimTarget;

.field final synthetic vL:[Lmiui/animation/property/FloatProperty;


# direct methods
.method constructor <init>(Lmiui/animation/internal/AnimRunner;Lmiui/animation/IAnimTarget;[Lmiui/animation/property/FloatProperty;)V
    .locals 0

    iput-object p1, p0, Lmiui/animation/internal/d;->j:Lmiui/animation/internal/AnimRunner;

    iput-object p2, p0, Lmiui/animation/internal/d;->sL:Lmiui/animation/IAnimTarget;

    iput-object p3, p0, Lmiui/animation/internal/d;->vL:[Lmiui/animation/property/FloatProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lmiui/animation/internal/d;->sL:Lmiui/animation/IAnimTarget;

    invoke-virtual {v0}, Lmiui/animation/IAnimTarget;->getAnimTask()Lmiui/animation/internal/AnimTask;

    move-result-object v0

    iget-object p0, p0, Lmiui/animation/internal/d;->vL:[Lmiui/animation/property/FloatProperty;

    invoke-virtual {v0, p0}, Lmiui/animation/internal/AnimTask;->cancel([Lmiui/animation/property/FloatProperty;)V

    return-void
.end method
