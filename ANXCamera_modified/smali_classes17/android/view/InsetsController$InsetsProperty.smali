.class Landroid/view/InsetsController$InsetsProperty;
.super Landroid/util/Property;
.source "InsetsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InsetsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InsetsProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/view/WindowInsetsAnimationController;",
        "Landroid/graphics/Insets;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    const-class v0, Landroid/graphics/Insets;

    const-string v1, "Insets"

    invoke-direct {p0, v0, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/WindowInsetsAnimationController;)Landroid/graphics/Insets;
    .locals 1

    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->getCurrentInsets()Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/WindowInsetsAnimationController;

    invoke-virtual {p0, p1}, Landroid/view/InsetsController$InsetsProperty;->get(Landroid/view/WindowInsetsAnimationController;)Landroid/graphics/Insets;

    move-result-object p1

    return-object p1
.end method

.method public set(Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;)V
    .locals 0

    invoke-interface {p1, p2}, Landroid/view/WindowInsetsAnimationController;->changeInsets(Landroid/graphics/Insets;)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/view/WindowInsetsAnimationController;

    check-cast p2, Landroid/graphics/Insets;

    invoke-virtual {p0, p1, p2}, Landroid/view/InsetsController$InsetsProperty;->set(Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;)V

    return-void
.end method
