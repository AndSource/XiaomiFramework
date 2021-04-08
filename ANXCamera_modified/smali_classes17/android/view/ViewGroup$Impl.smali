.class Landroid/view/ViewGroup$Impl;
.super Ljava/lang/Object;
.source "ViewGroup.java"

# interfaces
.implements Lcom/miui/internal/variable/api/v29/Android_View_ViewGroup$Interface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewGroup$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewGroup$Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public addInArray(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->originalAddInArray(Landroid/view/View;I)V

    return-void
.end method

.method public init(Landroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    return-void
.end method

.method public onChildVisibilityChanged(Landroid/view/ViewGroup;Landroid/view/View;II)V
    .locals 0

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/ViewGroup;->originalOnChildVisibilityChanged(Landroid/view/View;II)V

    return-void
.end method

.method public removeFromArray(Landroid/view/ViewGroup;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->originalRemoveFromArray(I)V

    return-void
.end method

.method public removeFromArray(Landroid/view/ViewGroup;II)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->originalRemoveFromArray(II)V

    return-void
.end method

.method public resolveLayoutDirection(Landroid/view/ViewGroup;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->originalResolveLayoutDirection()Z

    move-result v0

    return v0
.end method
