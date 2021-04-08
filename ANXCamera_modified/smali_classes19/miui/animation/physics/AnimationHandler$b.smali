.class abstract Lmiui/animation/physics/AnimationHandler$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/animation/physics/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation


# instance fields
.field final mDispatcher:Lmiui/animation/physics/AnimationHandler$a;


# direct methods
.method constructor <init>(Lmiui/animation/physics/AnimationHandler$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/animation/physics/AnimationHandler$b;->mDispatcher:Lmiui/animation/physics/AnimationHandler$a;

    return-void
.end method


# virtual methods
.method abstract postFrameCallback()V
.end method
