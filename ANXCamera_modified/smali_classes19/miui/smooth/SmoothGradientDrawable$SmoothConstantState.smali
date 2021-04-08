.class public Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/smooth/SmoothGradientDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SmoothConstantState"
.end annotation


# instance fields
.field mParent:Landroid/graphics/drawable/Drawable$ConstantState;

.field mc:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mc:F

    return-void
.end method

.method public constructor <init>(Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mc:F

    iget v0, p1, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mc:F

    iput v0, p0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mc:F

    iget-object p1, p1, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    iput-object p1, p0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getChangingConfigurations()I
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result p0

    return p0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lmiui/smooth/SmoothGradientDrawable;

    invoke-direct {v0, v1, v1, p0, v1}, Lmiui/smooth/SmoothGradientDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;Lmiui/smooth/b;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    invoke-direct {v0, p0}, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;-><init>(Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;)V

    invoke-virtual {p0, p1, p2, v0}, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->newSmoothGradientDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected newSmoothGradientDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;)Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance p0, Lmiui/smooth/SmoothGradientDrawable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lmiui/smooth/SmoothGradientDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;Lmiui/smooth/b;)V

    return-object p0
.end method

.method public setConstantState(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 0

    iput-object p1, p0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    return-void
.end method
