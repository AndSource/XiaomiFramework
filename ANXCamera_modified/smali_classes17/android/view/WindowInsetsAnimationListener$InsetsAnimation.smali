.class public Landroid/view/WindowInsetsAnimationListener$InsetsAnimation;
.super Ljava/lang/Object;
.source "WindowInsetsAnimationListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowInsetsAnimationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InsetsAnimation"
.end annotation


# instance fields
.field private final mLowerBound:Landroid/graphics/Insets;

.field private final mTypeMask:I

.field private final mUpperBound:Landroid/graphics/Insets;


# direct methods
.method constructor <init>(ILandroid/graphics/Insets;Landroid/graphics/Insets;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/WindowInsetsAnimationListener$InsetsAnimation;->mTypeMask:I

    iput-object p2, p0, Landroid/view/WindowInsetsAnimationListener$InsetsAnimation;->mLowerBound:Landroid/graphics/Insets;

    iput-object p3, p0, Landroid/view/WindowInsetsAnimationListener$InsetsAnimation;->mUpperBound:Landroid/graphics/Insets;

    return-void
.end method


# virtual methods
.method public getLowerBound()Landroid/graphics/Insets;
    .locals 1

    iget-object v0, p0, Landroid/view/WindowInsetsAnimationListener$InsetsAnimation;->mLowerBound:Landroid/graphics/Insets;

    return-object v0
.end method

.method public getTypeMask()I
    .locals 1

    iget v0, p0, Landroid/view/WindowInsetsAnimationListener$InsetsAnimation;->mTypeMask:I

    return v0
.end method

.method public getUpperBound()Landroid/graphics/Insets;
    .locals 1

    iget-object v0, p0, Landroid/view/WindowInsetsAnimationListener$InsetsAnimation;->mUpperBound:Landroid/graphics/Insets;

    return-object v0
.end method
