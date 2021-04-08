.class public Lcom/miui/mishare/app/view/MiShareDeviceView;
.super Landroid/widget/LinearLayout;
.source "MiShareDeviceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition;
    }
.end annotation


# static fields
.field private static final ANIM_SHOW_HIDE:I = 0x1f4

.field public static final DEVICE_STATUS_FAILED:I = 0x3

.field public static final DEVICE_STATUS_IDLE:I = 0x1

.field public static final DEVICE_STATUS_SENDING:I = 0x2

.field public static final DEVICE_STATUS_SUCCESS:I = 0x4

.field public static final DEVICE_STATUS_WAITING:I = 0x5

.field public static final TYPE_OPPO:I = 0x3

.field public static final TYPE_REALME:I = 0x4

.field public static final TYPE_VIVO:I = 0x2

.field public static final TYPE_XIAOMI:I = 0x1


# instance fields
.field private mCurrentStatus:I

.field private mDeviceIcon:Landroid/view/View;

.field private mDeviceIconInner:Landroid/view/View;

.field private mDeviceModelNameTv:Landroid/widget/TextView;

.field private mDeviceNameTv:Landroid/widget/TextView;

.field private mLogoIv:Landroid/widget/ImageView;

.field private mLogoView:Landroid/view/View;

.field private mPcView:Landroid/view/View;

.field private mPhoneView:Landroid/view/View;

.field private mStatusIv:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->initView()V

    return-void
.end method

.method private animHide(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/mishare/app/view/MiShareDeviceView$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/mishare/app/view/MiShareDeviceView$2;-><init>(Lcom/miui/mishare/app/view/MiShareDeviceView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lcom/miui/mishare/app/view/MiShareDeviceView$3;

    invoke-direct {v1, p0, p1}, Lcom/miui/mishare/app/view/MiShareDeviceView$3;-><init>(Lcom/miui/mishare/app/view/MiShareDeviceView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private animShow(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/mishare/app/view/MiShareDeviceView$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/mishare/app/view/MiShareDeviceView$1;-><init>(Lcom/miui/mishare/app/view/MiShareDeviceView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initView()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x110b003f

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x110900a5

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    const v0, 0x1109007a

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIconInner:Landroid/view/View;

    const v0, 0x110900cd

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceNameTv:Landroid/widget/TextView;

    const v0, 0x110900cc

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    const v0, 0x1109006c

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mStatusIv:Landroid/widget/ImageView;

    const v0, 0x110900d6

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mPhoneView:Landroid/view/View;

    const v0, 0x1109006e

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mPcView:Landroid/view/View;

    const v0, 0x1109006d

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoIv:Landroid/widget/ImageView;

    const v0, 0x110900a6

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoView:Landroid/view/View;

    return-void
.end method

.method private setDeviceSending()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11070029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mStatusIv:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mStatusIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/miui/mishare/app/view/MiShareDeviceView$4;

    invoke-direct {v1, p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView$4;-><init>(Lcom/miui/mishare/app/view/MiShareDeviceView;Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void
.end method

.method private setDeviceStatusName(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    const/4 v2, 0x5

    if-eq p1, v2, :cond_2

    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/miui/mishare/app/view/MiShareDeviceView;->animShow(Landroid/view/View;)V

    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    if-eqz p4, :cond_0

    move-object v3, p3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x110e00dd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1105007d    # 1.0492E-28f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceNameTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceNameTv:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->animShow(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceNameTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110e0077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11050081

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->animShow(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceNameTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110e0076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11050080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->animShow(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceNameTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110e0074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1105007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->animShow(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceNameTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110e0075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceModelNameTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1105007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    nop

    :goto_1
    return-void
.end method

.method private setDeviceWaiting()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11070028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mStatusIv:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mStatusIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/miui/mishare/app/view/MiShareDeviceView$5;

    invoke-direct {v1, p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView$5;-><init>(Lcom/miui/mishare/app/view/MiShareDeviceView;Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void
.end method

.method private showFailureStatus()V
    .locals 3

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition;-><init>(Lcom/miui/mishare/app/view/MiShareDeviceView$1;)V

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mStatusIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mStatusIv:Landroid/widget/ImageView;

    const v2, 0x11070109

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private showIDLEStatus()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->stopAnimStatus()V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mStatusIv:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->animHide(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIconInner:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->animShow(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->animShow(Landroid/view/View;)V

    return-void
.end method

.method private showSendingStatus()V
    .locals 2

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIconInner:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->animHide(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->setDeviceSending()V

    return-void
.end method

.method private showSuccessStatus()V
    .locals 3

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition;-><init>(Lcom/miui/mishare/app/view/MiShareDeviceView$1;)V

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mStatusIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/view/MiShareDeviceView$DeviceStatusTransition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mStatusIv:Landroid/widget/ImageView;

    const v2, 0x1107010a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private showWaitingStatus()V
    .locals 2

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIconInner:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->setDeviceWaiting()V

    return-void
.end method

.method private stopAnimStatus()V
    .locals 2

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mStatusIv:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mStatusIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getIconView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    return-object v0
.end method

.method public setDeviceName(Ljava/lang/String;Z)V
    .locals 5

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceNameTv:Landroid/widget/TextView;

    if-nez p2, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110e0073

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDevicePhoneOrPc(Z)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mPhoneView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mPcView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mPhoneView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mPcView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setDeviceStatus(Lcom/miui/mishare/app/model/MiShareDevice;)V
    .locals 5

    iget v0, p1, Lcom/miui/mishare/app/model/MiShareDevice;->deviceStatus:I

    iget-object v1, p1, Lcom/miui/mishare/app/model/MiShareDevice;->deviceName:Ljava/lang/String;

    iget-object v2, p1, Lcom/miui/mishare/app/model/MiShareDevice;->deviceModelName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/mishare/app/model/MiShareDevice;->isPC()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/mishare/app/view/MiShareDeviceView;->setDeviceStatusName(ILjava/lang/String;Ljava/lang/String;Z)V

    iget v1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mCurrentStatus:I

    if-eq v1, v0, :cond_5

    iput v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mCurrentStatus:I

    if-eq v0, v4, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->showWaitingStatus()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->showSuccessStatus()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->showFailureStatus()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->showSendingStatus()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareDeviceView;->showIDLEStatus()V

    :cond_5
    :goto_0
    return-void
.end method

.method public setDeviceType(I)V
    .locals 2

    const/4 v0, 0x1

    const v1, 0x11070030

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoIv:Landroid/widget/ImageView;

    const v1, 0x110700cd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    const v1, 0x1107002e

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoIv:Landroid/widget/ImageView;

    const v1, 0x110700cf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    const v1, 0x1107002d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoIv:Landroid/widget/ImageView;

    const v1, 0x110700ce

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    const v1, 0x1107002f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoIv:Landroid/widget/ImageView;

    const v1, 0x110700d0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mDeviceIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView;->mLogoIv:Landroid/widget/ImageView;

    const v1, 0x110700cc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    nop

    :goto_0
    return-void
.end method
