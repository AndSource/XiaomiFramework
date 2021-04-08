.class public Lcom/miui/internal/widget/SlidingButtonHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ANIMATION_DURATION:I = 0x104

.field private static final FULL_ALPHA:I = 0xff


# instance fields
.field private Bc:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

.field private DH:Lmiui/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/animation/property/FloatProperty<",
            "Lcom/miui/internal/widget/SlidingButtonHelper;",
            ">;"
        }
    .end annotation
.end field

.field private EH:F

.field private FH:Lmiui/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/animation/property/FloatProperty<",
            "Lcom/miui/internal/widget/SlidingButtonHelper;",
            ">;"
        }
    .end annotation
.end field

.field private HH:F

.field private IH:Lmiui/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/animation/property/FloatProperty<",
            "Lcom/miui/internal/widget/SlidingButtonHelper;",
            ">;"
        }
    .end annotation
.end field

.field private JH:F

.field private Jr:Landroid/graphics/drawable/StateListDrawable;

.field private LH:Lmiui/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/animation/property/FloatProperty<",
            "Lcom/miui/internal/widget/SlidingButtonHelper;",
            ">;"
        }
    .end annotation
.end field

.field private NH:Lmiui/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/animation/property/FloatProperty<",
            "Lcom/miui/internal/widget/SlidingButtonHelper;",
            ">;"
        }
    .end annotation
.end field

.field private OH:Landroid/graphics/drawable/Drawable;

.field private QH:Landroid/graphics/drawable/Drawable;

.field private RH:Landroid/graphics/drawable/Drawable;

.field private Tf:I

.field private UH:Landroid/graphics/drawable/Drawable;

.field private VH:Landroid/graphics/drawable/Drawable;

.field private WG:Landroid/graphics/drawable/Drawable;

.field private XG:Landroid/graphics/drawable/Drawable;

.field private YG:I

.field private ZG:Landroid/graphics/drawable/Drawable;

.field private _G:I

.field private aH:I

.field private bH:I

.field private cH:I

.field private dH:I

.field private eH:I

.field private fH:Z

.field private gH:Z

.field private hH:I

.field private iH:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private jH:Z

.field private kH:Landroid/animation/Animator$AnimatorListener;

.field private lH:Lmiui/animation/physics/SpringAnimation;

.field private mAnimator:Landroid/animation/Animator;

.field private mHeight:I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mView:Landroid/widget/CompoundButton;

.field private mWidth:I

.field private nH:Lmiui/animation/physics/SpringAnimation;

.field private oH:Lmiui/animation/physics/SpringAnimation;

.field private pH:Lmiui/animation/physics/SpringAnimation;

.field private qH:Lmiui/animation/physics/SpringAnimation;

.field private rH:Lmiui/animation/physics/SpringAnimation;

.field private sH:Lmiui/animation/physics/SpringAnimation;

.field private tH:Lmiui/animation/physics/SpringAnimation;

.field private uH:Lmiui/animation/physics/SpringAnimation;

.field private vH:Lmiui/animation/physics/SpringAnimation;

.field private wH:Lmiui/animation/physics/SpringAnimation;

.field private xH:F

.field private yH:Lmiui/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/animation/property/FloatProperty<",
            "Lcom/miui/internal/widget/SlidingButtonHelper;",
            ">;"
        }
    .end annotation
.end field

.field private zH:F


# direct methods
.method public constructor <init>(Landroid/widget/CompoundButton;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mTmpRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->jH:Z

    new-instance v0, Lcom/miui/internal/widget/M;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/M;-><init>(Lcom/miui/internal/widget/SlidingButtonHelper;)V

    iput-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->kH:Landroid/animation/Animator$AnimatorListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->xH:F

    new-instance v1, Lcom/miui/internal/widget/N;

    const-string v2, "MaskUnCheckedSlideBarAlpha"

    invoke-direct {v1, p0, v2}, Lcom/miui/internal/widget/N;-><init>(Lcom/miui/internal/widget/SlidingButtonHelper;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->yH:Lmiui/animation/property/FloatProperty;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->zH:F

    new-instance v2, Lcom/miui/internal/widget/O;

    const-string v3, "MaskCheckedSlideBarAlpha"

    invoke-direct {v2, p0, v3}, Lcom/miui/internal/widget/O;-><init>(Lcom/miui/internal/widget/SlidingButtonHelper;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->DH:Lmiui/animation/property/FloatProperty;

    const v2, 0x3dcccccd    # 0.1f

    iput v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->EH:F

    new-instance v2, Lcom/miui/internal/widget/P;

    const-string v3, "StrokeAlpha"

    invoke-direct {v2, p0, v3}, Lcom/miui/internal/widget/P;-><init>(Lcom/miui/internal/widget/SlidingButtonHelper;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->FH:Lmiui/animation/property/FloatProperty;

    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->HH:F

    new-instance v2, Lcom/miui/internal/widget/Q;

    const-string v3, "SliderShadowAlpha"

    invoke-direct {v2, p0, v3}, Lcom/miui/internal/widget/Q;-><init>(Lcom/miui/internal/widget/SlidingButtonHelper;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->IH:Lmiui/animation/property/FloatProperty;

    iput v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->JH:F

    new-instance v1, Lcom/miui/internal/widget/S;

    const-string v2, "SliderScale"

    invoke-direct {v1, p0, v2}, Lcom/miui/internal/widget/S;-><init>(Lcom/miui/internal/widget/SlidingButtonHelper;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->LH:Lmiui/animation/property/FloatProperty;

    new-instance v1, Lcom/miui/internal/widget/T;

    const-string v2, "SliderOffset"

    invoke-direct {v1, p0, v2}, Lcom/miui/internal/widget/T;-><init>(Lcom/miui/internal/widget/SlidingButtonHelper;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->NH:Lmiui/animation/property/FloatProperty;

    new-instance v1, Lcom/miui/internal/widget/U;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/U;-><init>(Lcom/miui/internal/widget/SlidingButtonHelper;)V

    iput-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->Bc:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    iput-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->zH:F

    :cond_0
    invoke-direct {p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->_d()V

    invoke-direct {p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->fa()V

    return-void
.end method

.method private _d()V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$drawable;->sliding_btn_slider_shadow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->OH:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$drawable;->sliding_btn_slider_stroke_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->QH:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic a(Lcom/miui/internal/widget/SlidingButtonHelper;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method private a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)Landroid/graphics/drawable/Drawable;
    .locals 4

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mWidth:I

    iget v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1, p2, v3, v3, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-direct {p1, p2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget p2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mWidth:I

    iget p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mHeight:I

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p2, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object p1
.end method

.method private a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/StateListDrawable;
    .locals 4

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lcom/miui/internal/R$attr;->slidingBarColor:I

    invoke-static {p1, v3}, Lmiui/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result p1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, p1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-direct {p0, p2, p3, v1}, Lcom/miui/internal/widget/SlidingButtonHelper;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p2, p4, v0}, Lcom/miui/internal/widget/SlidingButtonHelper;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$color;->black:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-direct {p0, p2, p3, v0}, Lcom/miui/internal/widget/SlidingButtonHelper;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p1, p4, p2}, Lcom/miui/internal/widget/SlidingButtonHelper;->initMaskedSlideBar(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iget p2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mWidth:I

    iget p3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mHeight:I

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/StateListDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-object p1
.end method

.method private a(IILandroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->fH:Z

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->onPressedInner()V

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->dH:I

    iget v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->bH:I

    if-le v0, v1, :cond_1

    iget v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->cH:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move p2, p3

    :cond_1
    :goto_0
    iput-boolean p2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->jH:Z

    goto :goto_1

    :cond_2
    iput-boolean p3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->fH:Z

    :goto_1
    iput p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->Tf:I

    iput p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->eH:I

    iput-boolean p3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->gH:Z

    return-void
.end method

.method private ae()V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->tH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->tH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->sH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->zH:F

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->uH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->uH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->vH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->xH:F

    :cond_3
    return-void
.end method

.method private animateToggle()V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/SlidingButtonHelper;->w(Z)V

    const v0, 0x10000003

    invoke-static {v0}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->performHapticFeedback(I)Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/miui/internal/widget/SlidingButtonHelper;)I
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->dH:I

    return p0
.end method

.method private b(IILandroid/graphics/Rect;)V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->fH:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->gH:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->animateToggle()V

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->dH:I

    iget v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->cH:I

    div-int/lit8 v2, v2, 0x2

    if-lt v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/internal/widget/SlidingButtonHelper;->w(Z)V

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x10000003

    invoke-static {p1}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p2, p1}, Landroid/widget/CompoundButton;->performHapticFeedback(I)Z

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->animateToggle()V

    :cond_3
    :goto_1
    iput-boolean v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->fH:Z

    iput-boolean v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->gH:Z

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p0, v1}, Landroid/widget/CompoundButton;->setPressed(Z)V

    return-void
.end method

.method private be()V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->sH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->sH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->tH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->zH:F

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->vH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->vH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->uH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x3d4ccccd    # 0.05f

    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->xH:F

    :cond_3
    return-void
.end method

.method static synthetic c(Lcom/miui/internal/widget/SlidingButtonHelper;)I
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->cH:I

    return p0
.end method

.method static synthetic d(Lcom/miui/internal/widget/SlidingButtonHelper;)Landroid/widget/CompoundButton;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    return-object p0
.end method

.method static synthetic e(Lcom/miui/internal/widget/SlidingButtonHelper;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->iH:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object p0
.end method

.method private fa()V
    .locals 8

    new-instance v0, Lmiui/animation/physics/SpringAnimation;

    iget-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->LH:Lmiui/animation/property/FloatProperty;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v0, p0, v1, v2}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->lH:Lmiui/animation/physics/SpringAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->lH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    const v1, 0x4476bd71

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->lH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v2}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->lH:Lmiui/animation/physics/SpringAnimation;

    const v3, 0x3b03126f    # 0.002f

    invoke-virtual {v0, v3}, Lmiui/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->lH:Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->Bc:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiui/animation/physics/DynamicAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

    new-instance v0, Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->LH:Lmiui/animation/property/FloatProperty;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, p0, v4, v5}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->nH:Lmiui/animation/physics/SpringAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->nH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->nH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->nH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0, v3}, Lmiui/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->nH:Lmiui/animation/physics/SpringAnimation;

    iget-object v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->Bc:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v2}, Lmiui/animation/physics/DynamicAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

    new-instance v0, Lmiui/animation/physics/SpringAnimation;

    iget-object v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->IH:Lmiui/animation/property/FloatProperty;

    invoke-direct {v0, p0, v2, v5}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->oH:Lmiui/animation/physics/SpringAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->oH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->oH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    const v2, 0x3f7d70a4    # 0.99f

    invoke-virtual {v0, v2}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->oH:Lmiui/animation/physics/SpringAnimation;

    const/high16 v3, 0x3b800000    # 0.00390625f

    invoke-virtual {v0, v3}, Lmiui/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->oH:Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->Bc:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiui/animation/physics/DynamicAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

    new-instance v0, Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->IH:Lmiui/animation/property/FloatProperty;

    const/4 v6, 0x0

    invoke-direct {v0, p0, v4, v6}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->pH:Lmiui/animation/physics/SpringAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->pH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->pH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->pH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0, v3}, Lmiui/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->pH:Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->Bc:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiui/animation/physics/DynamicAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

    new-instance v0, Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->FH:Lmiui/animation/property/FloatProperty;

    const v7, 0x3e19999a    # 0.15f

    invoke-direct {v0, p0, v4, v7}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->qH:Lmiui/animation/physics/SpringAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->qH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->qH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->qH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0, v3}, Lmiui/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->qH:Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->Bc:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiui/animation/physics/DynamicAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

    new-instance v0, Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->FH:Lmiui/animation/property/FloatProperty;

    const v7, 0x3dcccccd    # 0.1f

    invoke-direct {v0, p0, v4, v7}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->rH:Lmiui/animation/physics/SpringAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->rH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->rH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->rH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0, v3}, Lmiui/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->rH:Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->Bc:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiui/animation/physics/DynamicAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

    new-instance v0, Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->DH:Lmiui/animation/property/FloatProperty;

    invoke-direct {v0, p0, v4, v5}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->sH:Lmiui/animation/physics/SpringAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->sH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    const v4, 0x43db51ec

    invoke-virtual {v0, v4}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->sH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->sH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0, v3}, Lmiui/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->sH:Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->Bc:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiui/animation/physics/DynamicAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

    new-instance v0, Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->DH:Lmiui/animation/property/FloatProperty;

    invoke-direct {v0, p0, v4, v6}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->tH:Lmiui/animation/physics/SpringAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->tH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->tH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->tH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0, v3}, Lmiui/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->tH:Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->Bc:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiui/animation/physics/DynamicAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

    new-instance v0, Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->yH:Lmiui/animation/property/FloatProperty;

    const v5, 0x3d4ccccd    # 0.05f

    invoke-direct {v0, p0, v4, v5}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->uH:Lmiui/animation/physics/SpringAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->uH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->uH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->uH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0, v3}, Lmiui/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->uH:Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->Bc:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiui/animation/physics/DynamicAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

    new-instance v0, Lmiui/animation/physics/SpringAnimation;

    iget-object v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->yH:Lmiui/animation/property/FloatProperty;

    invoke-direct {v0, p0, v4, v6}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->vH:Lmiui/animation/physics/SpringAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->vH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->vH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->vH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0, v3}, Lmiui/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiui/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->vH:Lmiui/animation/physics/SpringAnimation;

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->Bc:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, p0}, Lmiui/animation/physics/DynamicAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

    return-void
.end method

.method private g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method private h(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 3

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mWidth:I

    iget v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mHeight:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mWidth:I

    iget p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mHeight:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method private ja(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-static {v0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    neg-int p1, p1

    :cond_0
    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->dH:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->dH:I

    iget p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->dH:I

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->bH:I

    if-ge p1, v0, :cond_1

    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->dH:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->cH:I

    if-le p1, v0, :cond_2

    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->dH:I

    :cond_2
    :goto_0
    iget p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->dH:I

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->bH:I

    if-eq p1, v0, :cond_4

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->cH:I

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p1, 0x1

    :goto_2
    if-eqz p1, :cond_5

    iget-boolean v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->jH:Z

    if-nez v0, :cond_5

    const v0, 0x10000003

    invoke-static {v0}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->performHapticFeedback(I)Z

    :cond_5
    iput-boolean p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->jH:Z

    iget p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->dH:I

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/SlidingButtonHelper;->setSliderOffset(I)V

    return-void
.end method

.method private ka(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->fH:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->Tf:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lcom/miui/internal/widget/SlidingButtonHelper;->ja(I)V

    iput p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->Tf:I

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->eH:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->hH:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->gH:Z

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private w(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->cH:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->bH:I

    :goto_0
    iget-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mAnimator:Landroid/animation/Animator;

    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    const-string v2, "SliderOffset"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Lmiui/view/animation/QuarticEaseInOutInterpolator;

    invoke-direct {v2}, Lmiui/view/animation/QuarticEaseInOutInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-boolean v2, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x104

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mAnimator:Landroid/animation/Animator;

    iget-object v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->kH:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mAnimator:Landroid/animation/Animator;

    new-instance v2, Lcom/miui/internal/widget/L;

    invoke-direct {v2, p0}, Lcom/miui/internal/widget/L;-><init>(Lcom/miui/internal/widget/SlidingButtonHelper;)V

    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/miui/internal/widget/SlidingButtonHelper;->animateToState(Landroid/animation/Animator;ZILjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public addState(Landroid/graphics/drawable/StateListDrawable;[ILandroid/graphics/drawable/Drawable;[ILandroid/graphics/drawable/Drawable;I)V
    .locals 0

    return-void
.end method

.method public animateToState(Landroid/animation/Animator;ZILjava/lang/Runnable;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->wH:Lmiui/animation/physics/SpringAnimation;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->wH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiui/animation/physics/DynamicAnimation;->cancel()V

    :cond_0
    new-instance p1, Lmiui/animation/physics/SpringAnimation;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->NH:Lmiui/animation/property/FloatProperty;

    int-to-float p3, p3

    invoke-direct {p1, p0, v0, p3}, Lmiui/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;F)V

    iput-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->wH:Lmiui/animation/physics/SpringAnimation;

    iget-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->wH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object p1

    const p3, 0x4476bd71

    invoke-virtual {p1, p3}, Lmiui/animation/physics/SpringForce;->setStiffness(F)Lmiui/animation/physics/SpringForce;

    iget-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->wH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiui/animation/physics/SpringAnimation;->getSpring()Lmiui/animation/physics/SpringForce;

    move-result-object p1

    const p3, 0x3f333333    # 0.7f

    invoke-virtual {p1, p3}, Lmiui/animation/physics/SpringForce;->setDampingRatio(F)Lmiui/animation/physics/SpringForce;

    iget-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->wH:Lmiui/animation/physics/SpringAnimation;

    iget-object p3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->Bc:Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {p1, p3}, Lmiui/animation/physics/DynamicAnimation;->addUpdateListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiui/animation/physics/DynamicAnimation;

    iget-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->wH:Lmiui/animation/physics/SpringAnimation;

    new-instance p3, Lcom/miui/internal/widget/V;

    invoke-direct {p3, p0, p4}, Lcom/miui/internal/widget/V;-><init>(Lcom/miui/internal/widget/SlidingButtonHelper;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p3}, Lmiui/animation/physics/DynamicAnimation;->addEndListener(Lmiui/animation/physics/DynamicAnimation$OnAnimationEndListener;)Lmiui/animation/physics/DynamicAnimation;

    iget-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->wH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiui/animation/physics/SpringAnimation;->start()V

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->sH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->sH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {p0}, Lmiui/animation/physics/SpringAnimation;->start()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->tH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {p1}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->tH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {p0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method public getMaskCheckedSlideBarAlpha()F
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->zH:F

    return p0
.end method

.method public getMaskUnCheckedPressedSlideBarAlpha()F
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->xH:F

    return p0
.end method

.method public getMeasuredHeight()I
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mHeight:I

    return p0
.end method

.method public getMeasuredWidth()I
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mWidth:I

    return p0
.end method

.method public getSliderOffset()F
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->dH:I

    int-to-float p0, p0

    return p0
.end method

.method public getSliderOnAlpha()I
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->YG:I

    return p0
.end method

.method public getSliderScale()F
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->JH:F

    return p0
.end method

.method public getSliderShadowAlpha()F
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->HH:F

    return p0
.end method

.method public getStrokeAlpha()F
    .locals 0

    iget p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->EH:F

    return p0
.end method

.method public initMaskedSlideBar(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->RH:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->UH:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->VH:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public initResource(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 7

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setDrawingCacheEnabled(Z)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->hH:I

    sget v0, Lcom/miui/internal/R$styleable;->SlidingButton_frame:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->WG:Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/miui/internal/R$styleable;->SlidingButton_sliderOn:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->XG:Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/miui/internal/R$styleable;->SlidingButton_sliderOff:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->ZG:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    sget v2, Lcom/miui/internal/R$styleable;->SlidingButton_android_background:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->WG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mWidth:I

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->WG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mHeight:I

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mWidth:I

    iget-object v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->XG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->_G:I

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mHeight:I

    iget-object v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->XG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->aH:I

    iput v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->bH:I

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mWidth:I

    iget v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->_G:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->cH:I

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->bH:I

    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->dH:I

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sget v2, Lcom/miui/internal/R$styleable;->SlidingButton_barOff:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    sget v3, Lcom/miui/internal/R$styleable;->SlidingButton_barOn:I

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    sget v3, Lcom/miui/internal/R$styleable;->SlidingButton_barOff:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Lcom/miui/internal/R$styleable;->SlidingButton_barOn:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v3}, Lcom/miui/internal/widget/SlidingButtonHelper;->h(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget v5, v0, Landroid/util/TypedValue;->type:I

    iget v6, v2, Landroid/util/TypedValue;->type:I

    if-ne v5, v6, :cond_0

    iget v5, v0, Landroid/util/TypedValue;->data:I

    iget v6, v2, Landroid/util/TypedValue;->data:I

    if-ne v5, v6, :cond_0

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    if-ne v0, v2, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_0
    invoke-direct {p0, v4}, Lcom/miui/internal/widget/SlidingButtonHelper;->h(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->WG:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mWidth:I

    iget v5, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mHeight:I

    invoke-virtual {v2, v1, v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    sget v2, Lcom/miui/internal/R$styleable;->SlidingButton_mask:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mWidth:I

    iget v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mHeight:I

    invoke-virtual {p2, v1, v1, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-direct {p0, p2}, Lcom/miui/internal/widget/SlidingButtonHelper;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {p0, p1, p2, v0, v3}, Lcom/miui/internal/widget/SlidingButtonHelper;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->Jr:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    invoke-virtual {p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->setSliderDrawState()V

    iget-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->cH:I

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/SlidingButtonHelper;->setSliderOffset(I)V

    :cond_4
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->Jr:Landroid/graphics/drawable/StateListDrawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method public notifyCheckedChangeListener()V
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->iH:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    new-instance v2, Lcom/miui/internal/widget/K;

    invoke-direct {v2, p0, v0}, Lcom/miui/internal/widget/K;-><init>(Lcom/miui/internal/widget/SlidingButtonHelper;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    goto :goto_0

    :cond_0
    const/16 v0, 0x7f

    :goto_0
    int-to-float v1, v0

    const/high16 v2, 0x437f0000    # 255.0f

    div-float v5, v1, v2

    iget-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->Jr:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0, p1, v5, v1}, Lcom/miui/internal/widget/SlidingButtonHelper;->onDrawSlideBar(Landroid/graphics/Canvas;FLandroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->WG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->WG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-static {v1}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mWidth:I

    iget v3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->dH:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->_G:I

    sub-int/2addr v2, v3

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->dH:I

    :goto_1
    move v6, v2

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mWidth:I

    iget v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->dH:I

    sub-int/2addr v1, v2

    goto :goto_2

    :cond_2
    iget v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->_G:I

    iget v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->dH:I

    add-int/2addr v1, v2

    :goto_2
    move v8, v1

    iget v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mHeight:I

    iget v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->aH:I

    sub-int/2addr v1, v2

    div-int/lit8 v7, v1, 0x2

    add-int v9, v7, v2

    add-int v1, v8, v6

    div-int/lit8 v1, v1, 0x2

    add-int v2, v9, v7

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, p1, v1, v2}, Lcom/miui/internal/widget/SlidingButtonHelper;->onDrawSliderShadow(Landroid/graphics/Canvas;II)V

    invoke-virtual {p0, p1, v1, v2}, Lcom/miui/internal/widget/SlidingButtonHelper;->scaleCanvasStart(Landroid/graphics/Canvas;II)V

    iget-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->XG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->XG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->XG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->ZG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->ZG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->ZG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_3
    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/miui/internal/widget/SlidingButtonHelper;->onDrawSliderStroke(Landroid/graphics/Canvas;FIIII)V

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/SlidingButtonHelper;->scaleCanvasEnd(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onDrawSlideBar(Landroid/graphics/Canvas;FLandroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object p3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->UH:Landroid/graphics/drawable/Drawable;

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v1, p2, v0

    float-to-int v1, v1

    invoke-virtual {p3, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->UH:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object p3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->VH:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->xH:F

    mul-float/2addr v1, v0

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-virtual {p3, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p3}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->VH:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object p3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->RH:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->zH:F

    mul-float/2addr v1, v0

    mul-float/2addr v1, p2

    float-to-int p2, v1

    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->RH:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onDrawSliderShadow(Landroid/graphics/Canvas;II)V
    .locals 5

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->OH:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->OH:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->OH:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->OH:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v0, v0, 0x2

    sub-int v3, p2, v0

    div-int/lit8 v1, v1, 0x2

    sub-int v4, p3, v1

    add-int/2addr p2, v0

    add-int/2addr p3, v1

    invoke-virtual {v2, v3, v4, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->OH:Landroid/graphics/drawable/Drawable;

    const/high16 p3, 0x437f0000    # 255.0f

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->HH:F

    mul-float/2addr v0, p3

    float-to-int p3, v0

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->OH:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onDrawSliderStroke(Landroid/graphics/Canvas;FIIII)V
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->QH:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->EH:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    mul-float/2addr v1, p2

    float-to-int p2, v1

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->QH:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->QH:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onPressedInner()V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->nH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->lH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->oH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->oH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->uH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->uH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->qH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->qH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {p0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget-object v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-static {v3}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mWidth:I

    iget v5, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->dH:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->_G:I

    sub-int/2addr v4, v5

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->dH:I

    :goto_0
    if-eqz v3, :cond_1

    iget v3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mWidth:I

    iget v5, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->dH:I

    sub-int/2addr v3, v5

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->dH:I

    iget v5, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->_G:I

    add-int/2addr v3, v5

    :goto_1
    const/4 v5, 0x0

    iget v6, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mHeight:I

    invoke-virtual {v2, v4, v5, v3, v6}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz v0, :cond_6

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_3

    goto :goto_2

    :cond_2
    invoke-direct {p0, v1}, Lcom/miui/internal/widget/SlidingButtonHelper;->ka(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->onUnPressedInner()V

    if-ne v0, v4, :cond_5

    iget v0, v2, Landroid/graphics/Rect;->left:I

    if-lt v1, v0, :cond_4

    iget v0, v2, Landroid/graphics/Rect;->right:I

    if-le v1, v0, :cond_5

    :cond_4
    iget v0, v2, Landroid/graphics/Rect;->top:I

    if-lt p1, v0, :cond_7

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    if-le p1, v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-direct {p0, v1, p1, v2}, Lcom/miui/internal/widget/SlidingButtonHelper;->b(IILandroid/graphics/Rect;)V

    goto :goto_2

    :cond_6
    invoke-direct {p0, v1, p1, v2}, Lcom/miui/internal/widget/SlidingButtonHelper;->a(IILandroid/graphics/Rect;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public onUnPressedInner()V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->lH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->lH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->nH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->nH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->oH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->oH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->pH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->pH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_3
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->qH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->qH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->cancel()V

    :cond_4
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->vH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->vH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_5
    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->rH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiui/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->rH:Lmiui/animation/physics/SpringAnimation;

    invoke-virtual {p0}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_6
    return-void
.end method

.method public scaleCanvasEnd(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public scaleCanvasStart(Landroid/graphics/Canvas;II)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->JH:F

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {p1, p0, p0, p2, p3}, Landroid/graphics/Canvas;->scale(FFFF)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->cH:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->bH:I

    :goto_0
    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->dH:I

    if-eqz p1, :cond_1

    const/16 v0, 0xff

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->YG:I

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/SlidingButtonHelper;->setCheckedInner(Z)V

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public setCheckedInner(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->ae()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->be()V

    :goto_0
    return-void
.end method

.method public setMaskCheckedSlideBarAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->zH:F

    return-void
.end method

.method public setMaskUnCheckedPressedSlideBarAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->xH:F

    return-void
.end method

.method public setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->iH:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setParentClipChildren()V
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_0
    return-void
.end method

.method public setSliderDrawState()V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->XG:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->Jr:Landroid/graphics/drawable/StateListDrawable;

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public setSliderOffset(I)V
    .locals 0

    iput p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->dH:I

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public setSliderOnAlpha(I)V
    .locals 0

    iput p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->YG:I

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public setSliderScale(F)V
    .locals 0

    iput p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->JH:F

    return-void
.end method

.method public setSliderShadowAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->HH:F

    return-void
.end method

.method public setStrokeAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->EH:F

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper;->Jr:Landroid/graphics/drawable/StateListDrawable;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
