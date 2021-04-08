.class public abstract Lmiuix/springback/trigger/DefaultTrigger$SimpleAction;
.super Lmiuix/springback/trigger/DefaultTrigger$Action;
.source "DefaultTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/springback/trigger/DefaultTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleAction"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lmiuix/springback/trigger/DefaultTrigger;->access$3600()I

    move-result v0

    invoke-static {}, Lmiuix/springback/trigger/DefaultTrigger;->access$3700()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lmiuix/springback/trigger/DefaultTrigger$Action;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected onCreateIndicator(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
