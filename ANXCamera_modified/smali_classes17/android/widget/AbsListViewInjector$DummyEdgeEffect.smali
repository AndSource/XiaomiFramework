.class Landroid/widget/AbsListViewInjector$DummyEdgeEffect;
.super Landroid/widget/EdgeEffect;
.source "AbsListViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListViewInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DummyEdgeEffect"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAbsorb(I)V
    .locals 0

    return-void
.end method

.method public onPull(F)V
    .locals 0

    return-void
.end method

.method public onPull(FF)V
    .locals 0

    return-void
.end method

.method public onRelease()V
    .locals 0

    return-void
.end method
