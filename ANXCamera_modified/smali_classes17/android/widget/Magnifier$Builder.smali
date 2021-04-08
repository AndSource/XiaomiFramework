.class public final Landroid/widget/Magnifier$Builder;
.super Ljava/lang/Object;
.source "Magnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Magnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBottomContentBound:I

.field private mClippingEnabled:Z

.field private mCornerRadius:F

.field private mElevation:F

.field private mHeight:I

.field private mHorizontalDefaultSourceToMagnifierOffset:I

.field private mLeftContentBound:I

.field private mOverlay:Landroid/graphics/drawable/Drawable;

.field private mRightContentBound:I

.field private mTopContentBound:I

.field private mVerticalDefaultSourceToMagnifierOffset:I

.field private mView:Landroid/view/View;

.field private mWidth:I

.field private mZoom:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Landroid/widget/Magnifier$Builder;->mView:Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/Magnifier$Builder;->applyDefaults()V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/Magnifier$Builder;)I
    .locals 1

    iget v0, p0, Landroid/widget/Magnifier$Builder;->mWidth:I

    return v0
.end method

.method static synthetic access$002(Landroid/widget/Magnifier$Builder;I)I
    .locals 0

    iput p1, p0, Landroid/widget/Magnifier$Builder;->mWidth:I

    return p1
.end method

.method static synthetic access$100(Landroid/widget/Magnifier$Builder;)I
    .locals 1

    iget v0, p0, Landroid/widget/Magnifier$Builder;->mHeight:I

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/Magnifier$Builder;)I
    .locals 1

    iget v0, p0, Landroid/widget/Magnifier$Builder;->mTopContentBound:I

    return v0
.end method

.method static synthetic access$1002(Landroid/widget/Magnifier$Builder;I)I
    .locals 0

    iput p1, p0, Landroid/widget/Magnifier$Builder;->mTopContentBound:I

    return p1
.end method

.method static synthetic access$102(Landroid/widget/Magnifier$Builder;I)I
    .locals 0

    iput p1, p0, Landroid/widget/Magnifier$Builder;->mHeight:I

    return p1
.end method

.method static synthetic access$1100(Landroid/widget/Magnifier$Builder;)I
    .locals 1

    iget v0, p0, Landroid/widget/Magnifier$Builder;->mRightContentBound:I

    return v0
.end method

.method static synthetic access$1102(Landroid/widget/Magnifier$Builder;I)I
    .locals 0

    iput p1, p0, Landroid/widget/Magnifier$Builder;->mRightContentBound:I

    return p1
.end method

.method static synthetic access$1200(Landroid/widget/Magnifier$Builder;)I
    .locals 1

    iget v0, p0, Landroid/widget/Magnifier$Builder;->mBottomContentBound:I

    return v0
.end method

.method static synthetic access$1202(Landroid/widget/Magnifier$Builder;I)I
    .locals 0

    iput p1, p0, Landroid/widget/Magnifier$Builder;->mBottomContentBound:I

    return p1
.end method

.method static synthetic access$1300(Landroid/widget/Magnifier$Builder;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/Magnifier$Builder;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/Magnifier$Builder;)F
    .locals 1

    iget v0, p0, Landroid/widget/Magnifier$Builder;->mElevation:F

    return v0
.end method

.method static synthetic access$202(Landroid/widget/Magnifier$Builder;F)F
    .locals 0

    iput p1, p0, Landroid/widget/Magnifier$Builder;->mElevation:F

    return p1
.end method

.method static synthetic access$300(Landroid/widget/Magnifier$Builder;)F
    .locals 1

    iget v0, p0, Landroid/widget/Magnifier$Builder;->mCornerRadius:F

    return v0
.end method

.method static synthetic access$302(Landroid/widget/Magnifier$Builder;F)F
    .locals 0

    iput p1, p0, Landroid/widget/Magnifier$Builder;->mCornerRadius:F

    return p1
.end method

.method static synthetic access$400(Landroid/widget/Magnifier$Builder;)F
    .locals 1

    iget v0, p0, Landroid/widget/Magnifier$Builder;->mZoom:F

    return v0
.end method

.method static synthetic access$402(Landroid/widget/Magnifier$Builder;F)F
    .locals 0

    iput p1, p0, Landroid/widget/Magnifier$Builder;->mZoom:F

    return p1
.end method

.method static synthetic access$500(Landroid/widget/Magnifier$Builder;)I
    .locals 1

    iget v0, p0, Landroid/widget/Magnifier$Builder;->mHorizontalDefaultSourceToMagnifierOffset:I

    return v0
.end method

.method static synthetic access$502(Landroid/widget/Magnifier$Builder;I)I
    .locals 0

    iput p1, p0, Landroid/widget/Magnifier$Builder;->mHorizontalDefaultSourceToMagnifierOffset:I

    return p1
.end method

.method static synthetic access$600(Landroid/widget/Magnifier$Builder;)I
    .locals 1

    iget v0, p0, Landroid/widget/Magnifier$Builder;->mVerticalDefaultSourceToMagnifierOffset:I

    return v0
.end method

.method static synthetic access$602(Landroid/widget/Magnifier$Builder;I)I
    .locals 0

    iput p1, p0, Landroid/widget/Magnifier$Builder;->mVerticalDefaultSourceToMagnifierOffset:I

    return p1
.end method

.method static synthetic access$700(Landroid/widget/Magnifier$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/Magnifier$Builder;->mOverlay:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$702(Landroid/widget/Magnifier$Builder;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Landroid/widget/Magnifier$Builder;->mOverlay:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$800(Landroid/widget/Magnifier$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Magnifier$Builder;->mClippingEnabled:Z

    return v0
.end method

.method static synthetic access$802(Landroid/widget/Magnifier$Builder;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Magnifier$Builder;->mClippingEnabled:Z

    return p1
.end method

.method static synthetic access$900(Landroid/widget/Magnifier$Builder;)I
    .locals 1

    iget v0, p0, Landroid/widget/Magnifier$Builder;->mLeftContentBound:I

    return v0
.end method

.method static synthetic access$902(Landroid/widget/Magnifier$Builder;I)I
    .locals 0

    iput p1, p0, Landroid/widget/Magnifier$Builder;->mLeftContentBound:I

    return p1
.end method

.method private applyDefaults()V
    .locals 4

    iget-object v0, p0, Landroid/widget/Magnifier$Builder;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/Magnifier$Builder;->mWidth:I

    const v1, 0x10500de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/Magnifier$Builder;->mHeight:I

    const v1, 0x10500dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Landroid/widget/Magnifier$Builder;->mElevation:F

    const v1, 0x10500dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Landroid/widget/Magnifier$Builder;->mCornerRadius:F

    const v1, 0x10500e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Landroid/widget/Magnifier$Builder;->mZoom:F

    nop

    const v1, 0x10500df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/Magnifier$Builder;->mHorizontalDefaultSourceToMagnifierOffset:I

    nop

    const v1, 0x10500e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/Magnifier$Builder;->mVerticalDefaultSourceToMagnifierOffset:I

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, 0x106013f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Landroid/widget/Magnifier$Builder;->mOverlay:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/Magnifier$Builder;->mClippingEnabled:Z

    iput v1, p0, Landroid/widget/Magnifier$Builder;->mLeftContentBound:I

    iput v1, p0, Landroid/widget/Magnifier$Builder;->mTopContentBound:I

    iput v1, p0, Landroid/widget/Magnifier$Builder;->mRightContentBound:I

    iput v1, p0, Landroid/widget/Magnifier$Builder;->mBottomContentBound:I

    return-void
.end method


# virtual methods
.method public build()Landroid/widget/Magnifier;
    .locals 2

    new-instance v0, Landroid/widget/Magnifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Magnifier;-><init>(Landroid/widget/Magnifier$Builder;Landroid/widget/Magnifier$1;)V

    return-object v0
.end method

.method public setClippingEnabled(Z)Landroid/widget/Magnifier$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Magnifier$Builder;->mClippingEnabled:Z

    return-object p0
.end method

.method public setCornerRadius(F)Landroid/widget/Magnifier$Builder;
    .locals 1

    const-string v0, "Corner radius should be non-negative"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    iput p1, p0, Landroid/widget/Magnifier$Builder;->mCornerRadius:F

    return-object p0
.end method

.method public setDefaultSourceToMagnifierOffset(II)Landroid/widget/Magnifier$Builder;
    .locals 0

    iput p1, p0, Landroid/widget/Magnifier$Builder;->mHorizontalDefaultSourceToMagnifierOffset:I

    iput p2, p0, Landroid/widget/Magnifier$Builder;->mVerticalDefaultSourceToMagnifierOffset:I

    return-object p0
.end method

.method public setElevation(F)Landroid/widget/Magnifier$Builder;
    .locals 1

    const-string v0, "Elevation should be non-negative"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonNegative(FLjava/lang/String;)F

    iput p1, p0, Landroid/widget/Magnifier$Builder;->mElevation:F

    return-object p0
.end method

.method public setInitialZoom(F)Landroid/widget/Magnifier$Builder;
    .locals 1

    const-string v0, "Zoom should be positive"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(FLjava/lang/String;)F

    iput p1, p0, Landroid/widget/Magnifier$Builder;->mZoom:F

    return-object p0
.end method

.method public setOverlay(Landroid/graphics/drawable/Drawable;)Landroid/widget/Magnifier$Builder;
    .locals 0

    iput-object p1, p0, Landroid/widget/Magnifier$Builder;->mOverlay:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setSize(II)Landroid/widget/Magnifier$Builder;
    .locals 1

    const-string v0, "Width should be positive"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    const-string v0, "Height should be positive"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    iput p1, p0, Landroid/widget/Magnifier$Builder;->mWidth:I

    iput p2, p0, Landroid/widget/Magnifier$Builder;->mHeight:I

    return-object p0
.end method

.method public setSourceBounds(IIII)Landroid/widget/Magnifier$Builder;
    .locals 0

    iput p1, p0, Landroid/widget/Magnifier$Builder;->mLeftContentBound:I

    iput p2, p0, Landroid/widget/Magnifier$Builder;->mTopContentBound:I

    iput p3, p0, Landroid/widget/Magnifier$Builder;->mRightContentBound:I

    iput p4, p0, Landroid/widget/Magnifier$Builder;->mBottomContentBound:I

    return-object p0
.end method
