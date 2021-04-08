.class public abstract Lmiuix/springback/trigger/DefaultTrigger$Action;
.super Ljava/lang/Object;
.source "DefaultTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/springback/trigger/DefaultTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Action"
.end annotation


# static fields
.field static final DISTANCE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lmiuix/springback/trigger/DefaultTrigger$Action;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mEnterPoint:I

.field mTriggerPoint:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmiuix/springback/trigger/DefaultTrigger$Action$1;

    invoke-direct {v0}, Lmiuix/springback/trigger/DefaultTrigger$Action$1;-><init>()V

    sput-object v0, Lmiuix/springback/trigger/DefaultTrigger$Action;->DISTANCE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiuix/springback/trigger/DefaultTrigger$Action;->mEnterPoint:I

    iput p2, p0, Lmiuix/springback/trigger/DefaultTrigger$Action;->mTriggerPoint:I

    return-void
.end method


# virtual methods
.method notifyActivated()V
    .locals 0

    invoke-virtual {p0}, Lmiuix/springback/trigger/DefaultTrigger$Action;->onActivated()V

    return-void
.end method

.method notifyEntered()V
    .locals 0

    invoke-virtual {p0}, Lmiuix/springback/trigger/DefaultTrigger$Action;->onEntered()V

    return-void
.end method

.method notifyExit()V
    .locals 0

    invoke-virtual {p0}, Lmiuix/springback/trigger/DefaultTrigger$Action;->onExit()V

    return-void
.end method

.method notifyTriggered()V
    .locals 0

    invoke-virtual {p0}, Lmiuix/springback/trigger/DefaultTrigger$Action;->onTriggered()V

    return-void
.end method

.method protected abstract onActivated()V
.end method

.method protected abstract onEntered()V
.end method

.method protected abstract onExit()V
.end method

.method protected abstract onTriggered()V
.end method
