.class public Lmiui/widget/ScreenView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/ScreenView$d;,
        Lmiui/widget/ScreenView$h;,
        Lmiui/widget/ScreenView$g;,
        Lmiui/widget/ScreenView$f;,
        Lmiui/widget/ScreenView$a;,
        Lmiui/widget/ScreenView$e;,
        Lmiui/widget/ScreenView$b;,
        Lmiui/widget/ScreenView$SavedState;,
        Lmiui/widget/ScreenView$c;,
        Lmiui/widget/ScreenView$SnapScreenOnceNotification;
    }
.end annotation


# static fields
.field public static final FLING_ALIGN:I = 0x4

.field public static final FLING_CANCEL:I = 0x3

.field public static final FLING_LEFT:I = 0x1

.field public static final FLING_RIGHT:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field public static final SCREEN_ALIGN_CENTER:I = 0x2

.field public static final SCREEN_ALIGN_CUSTOMIZED:I = 0x0

.field public static final SCREEN_ALIGN_LEFT:I = 0x1

.field public static final SCREEN_ALIGN_RIGHT:I = 0x3

.field public static final SCREEN_TRANSITION_TYPE_CLASSIC:I = 0x0

.field public static final SCREEN_TRANSITION_TYPE_CLASSIC_NO_OVER_SHOOT:I = 0x1

.field public static final SCREEN_TRANSITION_TYPE_CROSSFADE:I = 0x2

.field public static final SCREEN_TRANSITION_TYPE_CUBE:I = 0x4

.field public static final SCREEN_TRANSITION_TYPE_CUSTOM:I = 0x9

.field public static final SCREEN_TRANSITION_TYPE_FALLDOWN:I = 0x3

.field public static final SCREEN_TRANSITION_TYPE_LEFTPAGE:I = 0x5

.field public static final SCREEN_TRANSITION_TYPE_RIGHTPAGE:I = 0x6

.field public static final SCREEN_TRANSITION_TYPE_ROTATE:I = 0x8

.field public static final SCREEN_TRANSITION_TYPE_STACK:I = 0x7

.field private static final TAG:Ljava/lang/String; = "ScreenView"

.field protected static final TOUCH_STATE_PINCHING:I = 0x4

.field protected static final TOUCH_STATE_REST:I = 0x0

.field protected static final TOUCH_STATE_SCROLLING:I = 0x1

.field protected static final TOUCH_STATE_SLIDING:I = 0x3

.field private static final ks:Lcom/miui/internal/variable/Android_View_View_class;

.field private static final ls:I = -0x1

.field private static final ms:I = 0x30

.field private static final ns:Landroid/widget/LinearLayout$LayoutParams;

.field private static final os:I = 0x3e8

.field private static final ps:I = 0x1f4

.field private static final qs:I = 0x12c

.field private static final rs:F = 1.0E9f

.field private static final ss:F = 0.75f

.field private static final us:F

.field private static final vs:I = 0x12c

.field private static final ws:F = 2500.0f

.field private static final xs:F = 0.4f

.field private static final ys:F = 1.3f


# instance fields
.field private final Br:F

.field private Cr:I

.field private Dr:I

.field private Er:I

.field private Fr:I

.field private Gr:I

.field private Hr:I

.field private Ir:Lmiui/widget/ScreenView$f;

.field private Jg:Lmiui/widget/ScreenView$a;

.field private Jr:Lmiui/widget/ScreenView$g;

.field private Kg:Lmiui/widget/ScreenView$a;

.field private Kr:Z

.field private Lr:Ljava/lang/Runnable;

.field private Mr:I

.field private Nr:I

.field private Oi:I

.field private Or:I

.field private Pr:I

.field private Qr:I

.field private Rr:I

.field private Sf:I

.field private Sr:I

.field private Tr:F

.field private Ur:Z

.field private Vr:F

.field private Wr:I

.field private Xr:Landroid/view/ScaleGestureDetector;

.field private Yr:I

.field private Zr:Z

.field private _r:Z

.field private ao:I

.field private as:Z

.field private bs:F

.field private cs:F

.field private ds:F

.field private es:I

.field private fs:Lmiui/widget/ScreenView$e;

.field private gs:I

.field private hs:F

.field private is:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

.field private js:Lmiui/widget/ScreenView$b;

.field private mActivePointerId:I

.field protected mChildScreenWidth:I

.field protected mCurrentScreen:I

.field private mHeightMeasureSpec:I

.field protected mLastMotionX:F

.field protected mLastMotionY:F

.field protected mScreenOffset:I

.field private mScreenWidth:I

.field private mScroller:Landroid/widget/Scroller;

.field protected mVisibleRange:I

.field private mWidthMeasureSpec:I

.field private yq:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_View_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->get()Lcom/miui/internal/variable/Android_View_View_class;

    move-result-object v0

    sput-object v0, Lmiui/widget/ScreenView;->ks:Lcom/miui/internal/variable/Android_View_View_class;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lmiui/widget/ScreenView;->ns:Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3f90624dd2f1a9fcL    # 0.016

    div-double/2addr v2, v0

    double-to-float v0, v2

    sput v0, Lmiui/widget/ScreenView;->us:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x44a00000    # 1280.0f

    mul-float/2addr p1, v0

    iput p1, p0, Lmiui/widget/ScreenView;->Br:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiui/widget/ScreenView;->yq:Z

    sget v0, Lcom/miui/internal/R$drawable;->screen_view_arrow_left:I

    iput v0, p0, Lmiui/widget/ScreenView;->Dr:I

    sget v0, Lcom/miui/internal/R$drawable;->screen_view_arrow_left_gray:I

    iput v0, p0, Lmiui/widget/ScreenView;->Er:I

    sget v0, Lcom/miui/internal/R$drawable;->screen_view_arrow_right:I

    iput v0, p0, Lmiui/widget/ScreenView;->Fr:I

    sget v0, Lcom/miui/internal/R$drawable;->screen_view_arrow_right_gray:I

    iput v0, p0, Lmiui/widget/ScreenView;->Gr:I

    sget v0, Lcom/miui/internal/R$drawable;->screen_view_seek_point_selector:I

    iput v0, p0, Lmiui/widget/ScreenView;->Hr:I

    new-instance v0, Lmiui/widget/ga;

    invoke-direct {v0, p0}, Lmiui/widget/ga;-><init>(Lmiui/widget/ScreenView;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->Lr:Ljava/lang/Runnable;

    iput p1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/ScreenView;->Pr:I

    iput v0, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    const/4 v1, -0x1

    iput v1, p0, Lmiui/widget/ScreenView;->Qr:I

    const v2, 0x3eaaaaab

    iput v2, p0, Lmiui/widget/ScreenView;->Tr:F

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Lmiui/widget/ScreenView;->Vr:F

    iput v0, p0, Lmiui/widget/ScreenView;->Wr:I

    iput v0, p0, Lmiui/widget/ScreenView;->Yr:I

    iput-boolean p1, p0, Lmiui/widget/ScreenView;->as:Z

    iput v1, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    iput v2, p0, Lmiui/widget/ScreenView;->ds:F

    const/16 p1, 0x12c

    iput p1, p0, Lmiui/widget/ScreenView;->es:I

    iput v0, p0, Lmiui/widget/ScreenView;->gs:I

    const p1, 0x3fa66666    # 1.3f

    iput p1, p0, Lmiui/widget/ScreenView;->hs:F

    new-instance p1, Lmiui/widget/ScreenView$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lmiui/widget/ScreenView$b;-><init>(Lmiui/widget/ScreenView;Lmiui/widget/ga;)V

    iput-object p1, p0, Lmiui/widget/ScreenView;->js:Lmiui/widget/ScreenView$b;

    invoke-direct {p0}, Lmiui/widget/ScreenView;->Kc()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x44a00000    # 1280.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lmiui/widget/ScreenView;->Br:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiui/widget/ScreenView;->yq:Z

    sget p2, Lcom/miui/internal/R$drawable;->screen_view_arrow_left:I

    iput p2, p0, Lmiui/widget/ScreenView;->Dr:I

    sget p2, Lcom/miui/internal/R$drawable;->screen_view_arrow_left_gray:I

    iput p2, p0, Lmiui/widget/ScreenView;->Er:I

    sget p2, Lcom/miui/internal/R$drawable;->screen_view_arrow_right:I

    iput p2, p0, Lmiui/widget/ScreenView;->Fr:I

    sget p2, Lcom/miui/internal/R$drawable;->screen_view_arrow_right_gray:I

    iput p2, p0, Lmiui/widget/ScreenView;->Gr:I

    sget p2, Lcom/miui/internal/R$drawable;->screen_view_seek_point_selector:I

    iput p2, p0, Lmiui/widget/ScreenView;->Hr:I

    new-instance p2, Lmiui/widget/ga;

    invoke-direct {p2, p0}, Lmiui/widget/ga;-><init>(Lmiui/widget/ScreenView;)V

    iput-object p2, p0, Lmiui/widget/ScreenView;->Lr:Ljava/lang/Runnable;

    iput p1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    const/4 p2, 0x0

    iput p2, p0, Lmiui/widget/ScreenView;->Pr:I

    iput p2, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    const/4 p3, -0x1

    iput p3, p0, Lmiui/widget/ScreenView;->Qr:I

    const v0, 0x3eaaaaab

    iput v0, p0, Lmiui/widget/ScreenView;->Tr:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lmiui/widget/ScreenView;->Vr:F

    iput p2, p0, Lmiui/widget/ScreenView;->Wr:I

    iput p2, p0, Lmiui/widget/ScreenView;->Yr:I

    iput-boolean p1, p0, Lmiui/widget/ScreenView;->as:Z

    iput p3, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    iput v0, p0, Lmiui/widget/ScreenView;->ds:F

    const/16 p1, 0x12c

    iput p1, p0, Lmiui/widget/ScreenView;->es:I

    iput p2, p0, Lmiui/widget/ScreenView;->gs:I

    const p1, 0x3fa66666    # 1.3f

    iput p1, p0, Lmiui/widget/ScreenView;->hs:F

    new-instance p1, Lmiui/widget/ScreenView$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lmiui/widget/ScreenView$b;-><init>(Lmiui/widget/ScreenView;Lmiui/widget/ga;)V

    iput-object p1, p0, Lmiui/widget/ScreenView;->js:Lmiui/widget/ScreenView$b;

    invoke-direct {p0}, Lmiui/widget/ScreenView;->Kc()V

    return-void
.end method

.method private Jc()Landroid/widget/ImageView;
    .locals 2

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget p0, p0, Lmiui/widget/ScreenView;->Hr:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v0
.end method

.method private Kc()V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    new-instance v0, Lmiui/widget/ScreenView$e;

    invoke-direct {v0, p0}, Lmiui/widget/ScreenView$e;-><init>(Lmiui/widget/ScreenView;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->fs:Lmiui/widget/ScreenView$e;

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmiui/widget/ScreenView;->fs:Lmiui/widget/ScreenView$e;

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/widget/ScreenView;->R(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lmiui/widget/ScreenView;->Sf:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->setMaximumSnapVelocity(I)V

    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lmiui/widget/ScreenView$d;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lmiui/widget/ScreenView$d;-><init>(Lmiui/widget/ScreenView;Lmiui/widget/ga;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->Xr:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method private Lc()V
    .locals 3

    iget v0, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    neg-int v1, v0

    int-to-float v1, v1

    iget v2, p0, Lmiui/widget/ScreenView;->Tr:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lmiui/widget/ScreenView;->ao:I

    sub-int/2addr v1, v2

    iput v1, p0, Lmiui/widget/ScreenView;->Sr:I

    iget-boolean v1, p0, Lmiui/widget/ScreenView;->Ur:Z

    if-nez v1, :cond_0

    int-to-float v0, v0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lmiui/widget/ScreenView;->Tr:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lmiui/widget/ScreenView;->ao:I

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->Rr:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    div-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    int-to-float v1, v1

    iget v2, p0, Lmiui/widget/ScreenView;->Tr:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lmiui/widget/ScreenView;->Rr:I

    :goto_0
    return-void
.end method

.method private Mc()V
    .locals 3

    iget-object v0, p0, Lmiui/widget/ScreenView;->Jr:Lmiui/widget/ScreenView$g;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lmiui/widget/ScreenView;->Kr:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/widget/ScreenView;->Lr:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lmiui/widget/ScreenView;->Jr:Lmiui/widget/ScreenView$g;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lmiui/widget/ScreenView;->Jr:Lmiui/widget/ScreenView$g;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lmiui/widget/ScreenView;->Jr:Lmiui/widget/ScreenView$g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget v0, p0, Lmiui/widget/ScreenView;->Yr:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/widget/ScreenView;->Lr:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private N()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private Nc()V
    .locals 3

    iget-boolean v0, p0, Lmiui/widget/ScreenView;->Kr:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiui/widget/ScreenView;->Jr:Lmiui/widget/ScreenView$g;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x1f4

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmiui/widget/ha;

    invoke-direct {v1, p0}, Lmiui/widget/ha;-><init>(Lmiui/widget/ScreenView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private Oc()V
    .locals 3

    iget v0, p0, Lmiui/widget/ScreenView;->Or:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    iget v1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->ao:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    iget v2, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    sub-int/2addr v0, v2

    div-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->ao:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/ScreenView;->ao:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenOffset:I

    iput v0, p0, Lmiui/widget/ScreenView;->ao:I

    :goto_0
    iget v0, p0, Lmiui/widget/ScreenView;->ao:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->ao:I

    return-void
.end method

.method private Q(I)I
    .locals 0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    sub-int/2addr p0, p1

    return p0
.end method

.method private R(I)V
    .locals 1

    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-direct {p0, v0, p1}, Lmiui/widget/ScreenView;->q(II)V

    iput p1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    const/4 p1, -0x1

    iput p1, p0, Lmiui/widget/ScreenView;->Qr:I

    return-void
.end method

.method private S(I)V
    .locals 3

    iget v0, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/widget/ScreenView;->js:Lmiui/widget/ScreenView$b;

    const/16 v1, 0x3e8

    iget v2, p0, Lmiui/widget/ScreenView;->Oi:I

    invoke-virtual {v0, v1, v2, p1}, Lmiui/widget/ScreenView$b;->a(III)F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lmiui/widget/ScreenView;->js:Lmiui/widget/ScreenView$b;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView$b;->a(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/widget/ScreenView;->snapByVelocity(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private T(I)I
    .locals 1

    invoke-direct {p0}, Lmiui/widget/ScreenView;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->Q(I)I

    move-result p1

    :cond_0
    return p1
.end method

.method private U(I)V
    .locals 3

    iget-object v0, p0, Lmiui/widget/ScreenView;->Kg:Lmiui/widget/ScreenView$a;

    if-eqz v0, :cond_2

    if-gtz p1, :cond_0

    iget v1, p0, Lmiui/widget/ScreenView;->Er:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lmiui/widget/ScreenView;->Dr:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lmiui/widget/ScreenView;->Jg:Lmiui/widget/ScreenView$a;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    iget v2, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    sub-int/2addr v1, v2

    iget v2, p0, Lmiui/widget/ScreenView;->ao:I

    sub-int/2addr v1, v2

    if-lt p1, v1, :cond_1

    iget p0, p0, Lmiui/widget/ScreenView;->Gr:I

    goto :goto_1

    :cond_1
    iget p0, p0, Lmiui/widget/ScreenView;->Fr:I

    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    return-void
.end method

.method private V(I)V
    .locals 4

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/ScreenView;->Jr:Lmiui/widget/ScreenView$g;

    if-eqz v1, :cond_1

    if-lez v0, :cond_1

    invoke-virtual {v1}, Lmiui/widget/ScreenView$g;->o()I

    move-result v1

    div-int v2, v1, v0

    iget v3, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    mul-int/2addr v2, v3

    const/16 v3, 0x30

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v3, v0

    if-gt v3, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sub-int v0, v1, v2

    mul-int/2addr v0, p1

    sub-int/2addr v3, v1

    div-int p1, v0, v3

    :goto_0
    iget-object v0, p0, Lmiui/widget/ScreenView;->Jr:Lmiui/widget/ScreenView$g;

    add-int/2addr v2, p1

    invoke-virtual {v0, p1, v2}, Lmiui/widget/ScreenView$g;->a(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isHardwareAccelerated()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lmiui/widget/ScreenView;->Jr:Lmiui/widget/ScreenView$g;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_1
    return-void
.end method

.method private a(Landroid/view/MotionEvent;I)V
    .locals 3

    iput p2, p0, Lmiui/widget/ScreenView;->Yr:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    iget v0, p0, Lmiui/widget/ScreenView;->Yr:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-interface {p2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget p2, p0, Lmiui/widget/ScreenView;->Yr:I

    if-nez p2, :cond_1

    const/4 p1, -0x1

    iput p1, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    iput-boolean v2, p0, Lmiui/widget/ScreenView;->as:Z

    iget-object p1, p0, Lmiui/widget/ScreenView;->js:Lmiui/widget/ScreenView$b;

    invoke-virtual {p1}, Lmiui/widget/ScreenView$b;->recycle()V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p2

    iput p2, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    iget p2, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    :cond_2
    iget-boolean p1, p0, Lmiui/widget/ScreenView;->as:Z

    if-eqz p1, :cond_3

    iput-boolean v2, p0, Lmiui/widget/ScreenView;->as:Z

    iget p1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    :cond_3
    iget p1, p0, Lmiui/widget/ScreenView;->Yr:I

    if-ne p1, v1, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lmiui/widget/ScreenView;->cs:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    long-to-float p1, p1

    const p2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr p1, p2

    iput p1, p0, Lmiui/widget/ScreenView;->bs:F

    :cond_4
    :goto_1
    invoke-direct {p0}, Lmiui/widget/ScreenView;->Mc()V

    return-void
.end method

.method private a(Landroid/view/View;F)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getCameraDistance()F

    move-result p0

    cmpl-float p0, p0, p2

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setCameraDistance(F)V

    return-void
.end method

.method static synthetic a(Lmiui/widget/ScreenView;)V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/ScreenView;->Nc()V

    return-void
.end method

.method static synthetic a(Lmiui/widget/ScreenView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->R(I)V

    return-void
.end method

.method static synthetic a(Lmiui/widget/ScreenView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiui/widget/ScreenView;->q(II)V

    return-void
.end method

.method static synthetic a(Lmiui/widget/ScreenView;Landroid/view/MotionEvent;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiui/widget/ScreenView;->a(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic b(Lmiui/widget/ScreenView;)Landroid/widget/Scroller;
    .locals 0

    iget-object p0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic c(Lmiui/widget/ScreenView;)I
    .locals 0

    iget p0, p0, Lmiui/widget/ScreenView;->Qr:I

    return p0
.end method

.method static synthetic d(Lmiui/widget/ScreenView;)I
    .locals 0

    iget p0, p0, Lmiui/widget/ScreenView;->Yr:I

    return p0
.end method

.method static synthetic e(Lmiui/widget/ScreenView;)Lmiui/widget/ScreenView$g;
    .locals 0

    iget-object p0, p0, Lmiui/widget/ScreenView;->Jr:Lmiui/widget/ScreenView$g;

    return-object p0
.end method

.method static synthetic f(Lmiui/widget/ScreenView;)I
    .locals 0

    iget p0, p0, Lmiui/widget/ScreenView;->Sf:I

    return p0
.end method

.method static synthetic g(Lmiui/widget/ScreenView;)F
    .locals 0

    iget p0, p0, Lmiui/widget/ScreenView;->hs:F

    return p0
.end method

.method private h(IZ)Landroid/view/View;
    .locals 1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lmiui/widget/ScreenView;->k(IZ)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private i(IZ)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lmiui/widget/ScreenView;->k(IZ)I

    move-result p1

    iget-boolean p2, p0, Lmiui/widget/ScreenView;->Ur:Z

    if-eqz p2, :cond_0

    iget p2, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    rem-int p2, p1, p2

    sub-int/2addr p1, p2

    :cond_0
    iget p2, p0, Lmiui/widget/ScreenView;->mWidthMeasureSpec:I

    iget v0, p0, Lmiui/widget/ScreenView;->mHeightMeasureSpec:I

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->measure(II)V

    iget p2, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr p2, p1

    iget p1, p0, Lmiui/widget/ScreenView;->ao:I

    sub-int/2addr p2, p1

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lmiui/widget/ScreenView;->scrollTo(II)V

    return-void
.end method

.method private i(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lmiui/widget/ScreenView;->js:Lmiui/widget/ScreenView$b;

    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$b;->addMovement(Landroid/view/MotionEvent;)V

    iget v0, p0, Lmiui/widget/ScreenView;->Yr:I

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    if-ne v1, v0, :cond_1

    :cond_0
    iget-object p0, p0, Lmiui/widget/ScreenView;->Xr:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    return-void
.end method

.method private j(IZ)V
    .locals 4

    iget-boolean v0, p0, Lmiui/widget/ScreenView;->Ur:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    rem-int v0, p1, v0

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    iget v3, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v0, v3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    invoke-direct {p0, p1, p2}, Lmiui/widget/ScreenView;->k(IZ)I

    move-result p1

    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->R(I)V

    iget-boolean p1, p0, Lmiui/widget/ScreenView;->yq:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_1
    iget p1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-direct {p0, p1, v1}, Lmiui/widget/ScreenView;->i(IZ)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_2
    return-void
.end method

.method private j(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget v2, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget v3, p0, Lmiui/widget/ScreenView;->mLastMotionY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lmiui/widget/ScreenView;->ds:F

    mul-float/2addr v2, v3

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    iget p0, p0, Lmiui/widget/ScreenView;->Sf:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    mul-int/2addr p0, p1

    int-to-float p0, p0

    cmpl-float p0, v1, p0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private k(IZ)I
    .locals 0

    if-nez p2, :cond_1

    invoke-direct {p0}, Lmiui/widget/ScreenView;->N()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->Q(I)I

    move-result p1

    :cond_1
    :goto_0
    return p1
.end method

.method private l(IZ)V
    .locals 12

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget v5, p0, Lmiui/widget/ScreenView;->Cr:I

    if-ge v4, v5, :cond_8

    add-int v5, v4, v0

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v10

    invoke-static {v9, v10}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v10

    and-int/lit8 v10, v10, 0x7

    and-int/lit8 v9, v9, 0x70

    const/4 v11, 0x1

    if-eq v10, v11, :cond_2

    const/4 v11, 0x3

    if-eq v10, v11, :cond_1

    const/4 v11, 0x5

    if-eq v10, v11, :cond_0

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    :cond_0
    sub-int v10, v1, v7

    iget v11, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    :cond_1
    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    :cond_2
    sub-int v10, v1, v7

    div-int/lit8 v10, v10, 0x2

    iget v11, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v10, v11

    iget v11, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_1
    sub-int/2addr v10, v11

    :goto_2
    const/16 v11, 0x10

    if-eq v9, v11, :cond_5

    const/16 v11, 0x30

    if-eq v9, v11, :cond_4

    const/16 v11, 0x50

    if-eq v9, v11, :cond_3

    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_4

    :cond_3
    sub-int v9, v2, v8

    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_3

    :cond_4
    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_4

    :cond_5
    sub-int v9, v2, v8

    div-int/lit8 v9, v9, 0x2

    iget v11, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v11

    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_3
    sub-int v6, v9, v6

    goto :goto_4

    :cond_6
    move v6, v3

    move v10, v6

    :goto_4
    if-nez p2, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v9

    if-lez v9, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v9

    if-lez v9, :cond_7

    int-to-float v6, p1

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_5

    :cond_7
    add-int/2addr v7, v10

    add-int/2addr v8, v6

    invoke-virtual {v5, v10, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private l(Landroid/view/View;)V
    .locals 10

    instance-of v0, p1, Lmiui/widget/ScreenView$c;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    div-float v4, v0, v3

    div-float v3, v1, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v5, v2

    sub-float/2addr v5, v4

    div-float/2addr v5, v0

    iget v2, p0, Lmiui/widget/ScreenView;->gs:I

    const v6, 0x459c4000    # 5000.0f

    const v7, 0x3e99999a    # 0.3f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    invoke-virtual {p0, p1, v5}, Lmiui/widget/ScreenView;->updateChildStaticTransformationByScreen(Landroid/view/View;F)V

    goto/16 :goto_5

    :pswitch_1
    cmpl-float v1, v5, v9

    if-eqz v1, :cond_2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v8

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v1, v8, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    mul-float/2addr v0, v5

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationX(F)V

    const/high16 v0, 0x42b40000    # 90.0f

    neg-float v1, v5

    mul-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationY(F)V

    invoke-direct {p0, p1, v6}, Lmiui/widget/ScreenView;->a(Landroid/view/View;F)V

    goto/16 :goto_5

    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_5

    :pswitch_2
    cmpg-float v2, v5, v9

    if-gtz v2, :cond_3

    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_5

    :cond_3
    sub-float v2, v8, v5

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    const v3, 0x3f19999a    # 0.6f

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    sub-float/2addr v8, v2

    mul-float/2addr v0, v8

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    mul-float/2addr v1, v8

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationX(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationY(F)V

    iget v0, p0, Lmiui/widget/ScreenView;->Br:F

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->a(Landroid/view/View;F)V

    goto/16 :goto_5

    :pswitch_3
    cmpl-float v1, v5, v9

    if-eqz v1, :cond_5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v8

    if-lez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v1, v8, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationY(F)V

    mul-float v1, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v0, v2

    mul-float/2addr v0, v7

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    mul-float/2addr v7, v5

    add-float/2addr v7, v8

    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationX(F)V

    const/high16 v0, 0x42340000    # 45.0f

    neg-float v1, v5

    mul-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationY(F)V

    invoke-direct {p0, p1, v6}, Lmiui/widget/ScreenView;->a(Landroid/view/View;F)V

    goto/16 :goto_5

    :cond_5
    :goto_1
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_5

    :pswitch_4
    cmpl-float v1, v5, v9

    if-eqz v1, :cond_8

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v8

    if-lez v1, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p1, v8}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleY(F)V

    cmpg-float v1, v5, v9

    if-gez v1, :cond_7

    move v0, v9

    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationX(F)V

    const/high16 v0, -0x3d4c0000    # -90.0f

    mul-float/2addr v5, v0

    invoke-virtual {p1, v5}, Landroid/view/View;->setRotationY(F)V

    invoke-direct {p0, p1, v6}, Lmiui/widget/ScreenView;->a(Landroid/view/View;F)V

    goto/16 :goto_5

    :cond_8
    :goto_2
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_5

    :pswitch_5
    cmpl-float v0, v5, v9

    if-eqz v0, :cond_a

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v8

    if-lez v0, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {p1, v8}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    neg-float v0, v5

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationX(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationY(F)V

    iget v0, p0, Lmiui/widget/ScreenView;->Br:F

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->a(Landroid/view/View;F)V

    goto :goto_5

    :cond_a
    :goto_3
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_5

    :pswitch_6
    cmpl-float v0, v5, v9

    if-eqz v0, :cond_c

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v8

    if-lez v0, :cond_b

    goto :goto_4

    :cond_b
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v0, v8, v0

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    add-float/2addr v0, v7

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationX(F)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setRotationY(F)V

    iget v0, p0, Lmiui/widget/ScreenView;->Br:F

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->a(Landroid/view/View;F)V

    goto :goto_5

    :cond_c
    :goto_4
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_5

    :pswitch_7
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_5

    :pswitch_8
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->resetTransformation(Landroid/view/View;)V

    :goto_5
    :pswitch_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private q(II)V
    .locals 5

    iget-object v0, p0, Lmiui/widget/ScreenView;->Ir:Lmiui/widget/ScreenView$f;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v1

    :goto_0
    iget v3, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    if-ge v2, v3, :cond_0

    add-int v3, p1, v2

    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lmiui/widget/ScreenView;->Ir:Lmiui/widget/ScreenView$f;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget p1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    if-ge v1, p1, :cond_1

    add-int p1, p2, v1

    if-ge p1, v0, :cond_1

    iget-object v2, p0, Lmiui/widget/ScreenView;->Ir:Lmiui/widget/ScreenView$f;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic u()Lcom/miui/internal/variable/Android_View_View_class;
    .locals 1

    sget-object v0, Lmiui/widget/ScreenView;->ks:Lcom/miui/internal/variable/Android_View_View_class;

    return-object v0
.end method


# virtual methods
.method protected addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1

    iget v0, p0, Lmiui/widget/ScreenView;->Cr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/widget/ScreenView;->Cr:I

    const/4 v0, -0x1

    invoke-super {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected addIndicatorAt(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;I)V
    .locals 1

    iget v0, p0, Lmiui/widget/ScreenView;->Cr:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v0, -0x1

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    if-ltz p3, :cond_0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    add-int/2addr p3, v0

    :cond_0
    iget v0, p0, Lmiui/widget/ScreenView;->Cr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/widget/ScreenView;->Cr:I

    invoke-super {p0, p1, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    invoke-direct {p0}, Lmiui/widget/ScreenView;->N()Z

    move-result v1

    const/4 v2, 0x0

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    sub-int v2, v0, p2

    :cond_1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    if-eqz v1, :cond_2

    move v0, v2

    :cond_2
    iget-object p2, p0, Lmiui/widget/ScreenView;->Ir:Lmiui/widget/ScreenView$f;

    if-eqz p2, :cond_3

    invoke-direct {p0}, Lmiui/widget/ScreenView;->Jc()Landroid/widget/ImageView;

    move-result-object v1

    sget-object v2, Lmiui/widget/ScreenView;->ns:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p2, v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget p2, p0, Lmiui/widget/ScreenView;->Wr:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lmiui/widget/ScreenView;->Wr:I

    invoke-direct {p0}, Lmiui/widget/ScreenView;->Lc()V

    invoke-super {p0, p1, v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public allowLongPress()Z
    .locals 0

    iget-boolean p0, p0, Lmiui/widget/ScreenView;->as:Z

    return p0
.end method

.method public computeScroll()V
    .locals 6

    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x4e6e6b28    # 1.0E9f

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmiui/widget/ScreenView;->cs:F

    sget-object v0, Lmiui/widget/ScreenView;->ks:Lcom/miui/internal/variable/Android_View_View_class;

    iget v3, p0, Lmiui/widget/ScreenView;->cs:F

    float-to-int v3, v3

    invoke-virtual {v0, p0, v3}, Lcom/miui/internal/variable/Android_View_View_class;->setScrollXDirectly(Landroid/view/View;I)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    long-to-float v0, v3

    div-float/2addr v0, v2

    iput v0, p0, Lmiui/widget/ScreenView;->bs:F

    sget-object v0, Lmiui/widget/ScreenView;->ks:Lcom/miui/internal/variable/Android_View_View_class;

    iget-object v2, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-virtual {v0, p0, v2}, Lcom/miui/internal/variable/Android_View_View_class;->setScrollYDirectly(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    goto :goto_0

    :cond_0
    iget v0, p0, Lmiui/widget/ScreenView;->Qr:I

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lmiui/widget/ScreenView;->R(I)V

    iput v4, p0, Lmiui/widget/ScreenView;->Qr:I

    iget-object v0, p0, Lmiui/widget/ScreenView;->is:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    if-eqz v0, :cond_3

    invoke-interface {v0, p0}, Lmiui/widget/ScreenView$SnapScreenOnceNotification;->onSnapEnd(Lmiui/widget/ScreenView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/ScreenView;->is:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    goto :goto_0

    :cond_1
    iget v0, p0, Lmiui/widget/ScreenView;->Yr:I

    if-ne v0, v3, :cond_3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    long-to-float v0, v3

    div-float/2addr v0, v2

    iget v2, p0, Lmiui/widget/ScreenView;->bs:F

    sub-float v2, v0, v2

    sget v3, Lmiui/widget/ScreenView;->us:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget v3, p0, Lmiui/widget/ScreenView;->cs:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sget-object v4, Lmiui/widget/ScreenView;->ks:Lcom/miui/internal/variable/Android_View_View_class;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v2, v3

    add-float/2addr v5, v2

    float-to-int v2, v5

    invoke-virtual {v4, p0, v2}, Lcom/miui/internal/variable/Android_View_View_class;->setScrollXDirectly(Landroid/view/View;I)V

    iput v0, p0, Lmiui/widget/ScreenView;->bs:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v3, v0

    if-gtz v0, :cond_2

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, v3, v0

    if-gez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidate()V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lmiui/widget/ScreenView;->l(IZ)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lmiui/widget/ScreenView;->V(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lmiui/widget/ScreenView;->U(I)V

    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x11

    if-ne p2, v2, :cond_0

    iget v2, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    if-lez v2, :cond_1

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2, v0, v0}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    return v1

    :cond_0
    const/16 v2, 0x42

    if-ne p2, v2, :cond_1

    iget v2, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_1

    iget p1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    add-int/2addr p1, v1

    invoke-virtual {p0, p1, v0, v0}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    invoke-direct {p0, p2}, Lmiui/widget/ScreenView;->l(Landroid/view/View;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method protected finishCurrentGesture()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/ScreenView;->_r:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lmiui/widget/ScreenView;->a(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public getCurrentScreen()Landroid/view/View;
    .locals 2

    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lmiui/widget/ScreenView;->h(IZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentScreenIndex()I
    .locals 2

    iget v0, p0, Lmiui/widget/ScreenView;->Qr:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    :goto_0
    invoke-direct {p0, v0}, Lmiui/widget/ScreenView;->T(I)I

    move-result p0

    return p0
.end method

.method public getScreen(I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->h(IZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getScreenCount()I
    .locals 0

    iget p0, p0, Lmiui/widget/ScreenView;->Wr:I

    return p0
.end method

.method public getScreenTransitionType()I
    .locals 0

    iget p0, p0, Lmiui/widget/ScreenView;->gs:I

    return p0
.end method

.method public getSeekPointView(I)Landroid/widget/ImageView;
    .locals 2

    iget-object v0, p0, Lmiui/widget/ScreenView;->Ir:Lmiui/widget/ScreenView$f;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lmiui/widget/ScreenView;->k(IZ)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0
.end method

.method protected getTouchState()I
    .locals 0

    iget p0, p0, Lmiui/widget/ScreenView;->Yr:I

    return p0
.end method

.method public getVisibleRange()I
    .locals 0

    iget p0, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->computeScroll()V

    invoke-direct {p0}, Lmiui/widget/ScreenView;->Mc()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v4, :cond_1

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->i(Landroid/view/MotionEvent;)V

    iget v0, p0, Lmiui/widget/ScreenView;->Yr:I

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->j(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, v4}, Lmiui/widget/ScreenView;->a(Landroid/view/MotionEvent;I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v3}, Lmiui/widget/ScreenView;->a(Landroid/view/MotionEvent;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v0, p0, Lmiui/widget/ScreenView;->Xr:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    iput-boolean v3, p0, Lmiui/widget/ScreenView;->_r:Z

    iput-boolean v3, p0, Lmiui/widget/ScreenView;->Zr:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lmiui/widget/ScreenView;->mLastMotionY:F

    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v4, p0, Lmiui/widget/ScreenView;->as:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-direct {p0, p1, v4}, Lmiui/widget/ScreenView;->a(Landroid/view/MotionEvent;I)V

    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eq v1, v0, :cond_5

    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->i(Landroid/view/MotionEvent;)V

    :cond_5
    iget-boolean p1, p0, Lmiui/widget/ScreenView;->_r:Z

    if-nez p1, :cond_6

    iget p0, p0, Lmiui/widget/ScreenView;->Yr:I

    if-eqz p0, :cond_7

    if-eq p0, v2, :cond_7

    :cond_6
    move v3, v4

    :cond_7
    return v3
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lmiui/widget/ScreenView;->l(IZ)V

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result p1

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    if-ge p3, p1, :cond_1

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lmiui/widget/ScreenView;->Mr:I

    add-int/2addr v0, v1

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lmiui/widget/ScreenView;->Mr:I

    add-int/2addr v2, v3

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p5, p4, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p4, p5

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lmiui/widget/ScreenView;->Ur:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iget p3, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    rem-int p4, p1, p3

    if-lez p4, :cond_2

    rem-int p3, p1, p3

    sub-int/2addr p1, p3

    invoke-direct {p0, p1, p2}, Lmiui/widget/ScreenView;->j(IZ)V

    goto :goto_1

    :cond_2
    iget p1, p0, Lmiui/widget/ScreenView;->Pr:I

    if-lez p1, :cond_3

    iget p3, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    if-eq p1, p3, :cond_3

    iget p1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-direct {p0, p1, p2}, Lmiui/widget/ScreenView;->j(IZ)V

    :cond_3
    :goto_1
    iget p1, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    iput p1, p0, Lmiui/widget/ScreenView;->Pr:I

    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    iput p1, p0, Lmiui/widget/ScreenView;->mWidthMeasureSpec:I

    iput p2, p0, Lmiui/widget/ScreenView;->mHeightMeasureSpec:I

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    iget v5, p0, Lmiui/widget/ScreenView;->Cr:I

    if-ge v2, v5, :cond_0

    add-int v5, v2, v0

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v7, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v8

    iget v9, p0, Lmiui/widget/ScreenView;->Mr:I

    add-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Lmiui/widget/ScreenView;->Nr:I

    add-int/2addr v8, v9

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v8, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    invoke-virtual {v5, v7, v6}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    move v5, v2

    move v6, v5

    :goto_1
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v10

    iget v11, p0, Lmiui/widget/ScreenView;->Mr:I

    add-int/2addr v10, v11

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, p0, Lmiui/widget/ScreenView;->Nr:I

    add-int/2addr v10, v11

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v10, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    invoke-virtual {v7, v9, v8}, Landroid/view/View;->measure(II)V

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    add-int/2addr v4, v6

    add-int/2addr v2, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    iget v6, p0, Lmiui/widget/ScreenView;->Mr:I

    add-int/2addr v4, v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v6

    add-int/2addr v4, v6

    iget v6, p0, Lmiui/widget/ScreenView;->Nr:I

    add-int/2addr v4, v6

    add-int/2addr v3, v4

    invoke-static {v2, p1}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result v2

    invoke-static {v3, p2}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, v2, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    const/4 p2, 0x1

    if-lez v0, :cond_3

    iput v5, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    invoke-direct {p0}, Lmiui/widget/ScreenView;->Oc()V

    iget p1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    if-lez p1, :cond_2

    iget v0, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    int-to-float v2, p1

    iget v3, p0, Lmiui/widget/ScreenView;->Vr:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    div-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    :cond_2
    iget p1, p0, Lmiui/widget/ScreenView;->Tr:F

    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->setOverScrollRatio(F)V

    :cond_3
    iget-boolean p1, p0, Lmiui/widget/ScreenView;->yq:Z

    if-eqz p1, :cond_4

    iget p1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    if-lez p1, :cond_4

    iput-boolean v1, p0, Lmiui/widget/ScreenView;->yq:Z

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    iget p1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->setCurrentScreen(I)V

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    :cond_4
    return-void
.end method

.method public onPause()V
    .locals 3

    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget v1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    div-int/lit8 v2, v1, 0x2

    add-int/2addr v0, v2

    div-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lmiui/widget/ScreenView;->j(IZ)V

    iget-object p0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_0
    return-void
.end method

.method protected onPinchIn(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method

.method protected onPinchOut(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lmiui/widget/ScreenView$SavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget p1, p1, Lmiui/widget/ScreenView$SavedState;->Ge:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->j(IZ)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Lmiui/widget/ScreenView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/widget/ScreenView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget p0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iput p0, v0, Lmiui/widget/ScreenView$SavedState;->Ge:I

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-boolean v0, p0, Lmiui/widget/ScreenView;->_r:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->Zr:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->i(Landroid/view/MotionEvent;)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_a

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_8

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v3, 0xff00

    and-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget v4, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    if-ne v3, v4, :cond_a

    if-nez v0, :cond_3

    move v2, v1

    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    iget-object p1, p0, Lmiui/widget/ScreenView;->js:Lmiui/widget/ScreenView$b;

    iget v0, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Lmiui/widget/ScreenView$b;->init(I)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lmiui/widget/ScreenView;->Yr:I

    if-nez v0, :cond_5

    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->j(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1, v1}, Lmiui/widget/ScreenView;->a(Landroid/view/MotionEvent;I)V

    :cond_5
    iget v0, p0, Lmiui/widget/ScreenView;->Yr:I

    if-ne v0, v1, :cond_a

    iget v0, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_6

    invoke-direct {p0, p1, v1}, Lmiui/widget/ScreenView;->a(Landroid/view/MotionEvent;I)V

    iget v0, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iget v0, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    sub-float/2addr v0, p1

    iput p1, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_7

    iget p1, p0, Lmiui/widget/ScreenView;->cs:F

    add-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p1, v2}, Lmiui/widget/ScreenView;->scrollTo(II)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    goto :goto_0

    :cond_8
    iget v0, p0, Lmiui/widget/ScreenView;->Yr:I

    if-ne v0, v1, :cond_9

    iget v0, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    invoke-direct {p0, v0}, Lmiui/widget/ScreenView;->S(I)V

    :cond_9
    invoke-direct {p0, p1, v2}, Lmiui/widget/ScreenView;->a(Landroid/view/MotionEvent;I)V

    :cond_a
    :goto_0
    iput-boolean v1, p0, Lmiui/widget/ScreenView;->Zr:Z

    return v1
.end method

.method public removeAllScreens()V
    .locals 2

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lmiui/widget/ScreenView;->removeScreensInLayout(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/ScreenView;->Cr:I

    iput v0, p0, Lmiui/widget/ScreenView;->Wr:I

    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    return-void
.end method

.method protected removeIndicator(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget v0, p0, Lmiui/widget/ScreenView;->Cr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiui/widget/ScreenView;->Cr:I

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "The view passed through the parameter must be indicator."

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeScreen(I)V
    .locals 4

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    if-ge p1, v0, :cond_3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->k(IZ)I

    move-result v1

    iget v2, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    iget-boolean v2, p0, Lmiui/widget/ScreenView;->Ur:Z

    if-nez v2, :cond_0

    const/4 p1, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p1, v3}, Lmiui/widget/ScreenView;->j(IZ)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, v3

    if-ne p1, v0, :cond_1

    sub-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->snapToScreen(I)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lmiui/widget/ScreenView;->Ir:Lmiui/widget/ScreenView$f;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    :cond_2
    iget p1, p0, Lmiui/widget/ScreenView;->Wr:I

    sub-int/2addr p1, v3

    iput p1, p0, Lmiui/widget/ScreenView;->Wr:I

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void

    :cond_3
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "The view specified by the index must be a screen."

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeScreensInLayout(II)V
    .locals 2

    invoke-direct {p0}, Lmiui/widget/ScreenView;->N()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v1}, Lmiui/widget/ScreenView;->k(IZ)I

    move-result p1

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x1

    :cond_0
    if-ltz p1, :cond_3

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v0, p0, Lmiui/widget/ScreenView;->Ir:Lmiui/widget/ScreenView$f;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->removeViewsInLayout(II)V

    :cond_2
    iput v1, p0, Lmiui/widget/ScreenView;->Wr:I

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeViewAt(I)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeViews(II)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeViewsInLayout(II)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget p1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->snapToScreen(I)V

    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p0

    return p0
.end method

.method protected resetTransformation(Landroid/view/View;)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationX(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationY(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    iget v0, p0, Lmiui/widget/ScreenView;->Br:F

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->a(Landroid/view/View;F)V

    return-void
.end method

.method public scrollTo(II)V
    .locals 2

    iget v0, p0, Lmiui/widget/ScreenView;->Sr:I

    iget v1, p0, Lmiui/widget/ScreenView;->Rr:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lmiui/widget/ScreenView;->cs:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float p1, v0

    const v0, 0x4e6e6b28    # 1.0E9f

    div-float/2addr p1, v0

    iput p1, p0, Lmiui/widget/ScreenView;->bs:F

    iget p1, p0, Lmiui/widget/ScreenView;->cs:F

    float-to-int p1, p1

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    return-void
.end method

.method public scrollToScreen(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->i(IZ)V

    return-void
.end method

.method public setAllowLongPress(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiui/widget/ScreenView;->as:Z

    return-void
.end method

.method public setArrowIndicatorMarginRect(Landroid/graphics/Rect;)V
    .locals 5

    if-eqz p1, :cond_1

    iget-object v0, p0, Lmiui/widget/ScreenView;->Kg:Lmiui/widget/ScreenView$a;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x13

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    new-instance v1, Lmiui/widget/ScreenView$a;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lmiui/widget/ScreenView$a;-><init>(Lmiui/widget/ScreenView;Landroid/content/Context;)V

    iput-object v1, p0, Lmiui/widget/ScreenView;->Kg:Lmiui/widget/ScreenView$a;

    iget-object v1, p0, Lmiui/widget/ScreenView;->Kg:Lmiui/widget/ScreenView$a;

    iget v3, p0, Lmiui/widget/ScreenView;->Dr:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lmiui/widget/ScreenView;->Kg:Lmiui/widget/ScreenView$a;

    invoke-virtual {p0, v1, v0}, Lmiui/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    new-instance v2, Lmiui/widget/ScreenView$a;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lmiui/widget/ScreenView$a;-><init>(Lmiui/widget/ScreenView;Landroid/content/Context;)V

    iput-object v2, p0, Lmiui/widget/ScreenView;->Jg:Lmiui/widget/ScreenView$a;

    iget-object v2, p0, Lmiui/widget/ScreenView;->Jg:Lmiui/widget/ScreenView$a;

    iget v3, p0, Lmiui/widget/ScreenView;->Fr:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lmiui/widget/ScreenView;->Jg:Lmiui/widget/ScreenView$a;

    invoke-virtual {p0, v2, v1}, Lmiui/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object p0, p0, Lmiui/widget/ScreenView;->Jg:Lmiui/widget/ScreenView$a;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    :goto_0
    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    const/4 v4, 0x0

    invoke-virtual {v0, p0, v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget p0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v4, p0, v0, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lmiui/widget/ScreenView;->Kg:Lmiui/widget/ScreenView$a;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    iget-object p1, p0, Lmiui/widget/ScreenView;->Jg:Lmiui/widget/ScreenView$a;

    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/widget/ScreenView;->Kg:Lmiui/widget/ScreenView$a;

    iput-object p1, p0, Lmiui/widget/ScreenView;->Jg:Lmiui/widget/ScreenView$a;

    :cond_2
    :goto_1
    return-void
.end method

.method public setArrowIndicatorResource(IIII)V
    .locals 0

    iput p1, p0, Lmiui/widget/ScreenView;->Dr:I

    iput p2, p0, Lmiui/widget/ScreenView;->Er:I

    iput p3, p0, Lmiui/widget/ScreenView;->Fr:I

    iput p4, p0, Lmiui/widget/ScreenView;->Gr:I

    return-void
.end method

.method public setConfirmHorizontalScrollRatio(F)V
    .locals 0

    iput p1, p0, Lmiui/widget/ScreenView;->ds:F

    return-void
.end method

.method public setCurrentScreen(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->j(IZ)V

    return-void
.end method

.method public setIndicatorBarVisibility(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->setSeekBarVisibility(I)V

    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->setSlideBarVisibility(I)V

    return-void
.end method

.method public setMaximumSnapVelocity(I)V
    .locals 0

    iput p1, p0, Lmiui/widget/ScreenView;->Oi:I

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOverScrollRatio(F)V
    .locals 0

    iput p1, p0, Lmiui/widget/ScreenView;->Tr:F

    invoke-direct {p0}, Lmiui/widget/ScreenView;->Lc()V

    return-void
.end method

.method public setOvershootTension(F)V
    .locals 0

    iput p1, p0, Lmiui/widget/ScreenView;->hs:F

    iget-object p0, p0, Lmiui/widget/ScreenView;->fs:Lmiui/widget/ScreenView$e;

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lmiui/widget/ScreenView$e;->a(Lmiui/widget/ScreenView$e;F)F

    :cond_0
    return-void
.end method

.method public setScreenAlignment(I)V
    .locals 0

    iput p1, p0, Lmiui/widget/ScreenView;->Or:I

    return-void
.end method

.method public setScreenOffset(I)V
    .locals 0

    iput p1, p0, Lmiui/widget/ScreenView;->mScreenOffset:I

    const/4 p1, 0x0

    iput p1, p0, Lmiui/widget/ScreenView;->Or:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setScreenPadding(Landroid/graphics/Rect;)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lmiui/widget/ScreenView;->Mr:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lmiui/widget/ScreenView;->Nr:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void

    :cond_0
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "The padding parameter can not be null."

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setScreenSnapDuration(I)V
    .locals 0

    iput p1, p0, Lmiui/widget/ScreenView;->es:I

    return-void
.end method

.method public setScreenTransitionType(I)V
    .locals 5

    iget v0, p0, Lmiui/widget/ScreenView;->gs:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lmiui/widget/ScreenView;->gs:I

    iget p1, p0, Lmiui/widget/ScreenView;->gs:I

    const/16 v0, 0x10e

    const/16 v1, 0x12c

    const/16 v2, 0x14a

    const v3, 0x3fa66666    # 1.3f

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v3}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    invoke-virtual {p0, v2}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v4}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v4}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    invoke-virtual {p0, v2}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v4}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    invoke-virtual {p0, v2}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, v3}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, v4}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0, v3}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    :cond_0
    :goto_0
    :pswitch_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setScrollWholeScreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiui/widget/ScreenView;->Ur:Z

    return-void
.end method

.method public setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 4

    if-eqz p1, :cond_3

    iget-object v0, p0, Lmiui/widget/ScreenView;->Ir:Lmiui/widget/ScreenView$f;

    if-nez v0, :cond_1

    new-instance v0, Lmiui/widget/ScreenView$f;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmiui/widget/ScreenView$f;-><init>(Lmiui/widget/ScreenView;Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->Ir:Lmiui/widget/ScreenView$f;

    iget-object v0, p0, Lmiui/widget/ScreenView;->Ir:Lmiui/widget/ScreenView$f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    iget-object v0, p0, Lmiui/widget/ScreenView;->Ir:Lmiui/widget/ScreenView$f;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lmiui/widget/ScreenView;->Ir:Lmiui/widget/ScreenView$f;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAnimationCacheEnabled(Z)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lmiui/widget/ScreenView;->Ir:Lmiui/widget/ScreenView$f;

    invoke-direct {p0}, Lmiui/widget/ScreenView;->Jc()Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Lmiui/widget/ScreenView;->ns:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/widget/ScreenView;->Ir:Lmiui/widget/ScreenView$f;

    invoke-virtual {p0, v0, p1}, Lmiui/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lmiui/widget/ScreenView;->Ir:Lmiui/widget/ScreenView$f;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lmiui/widget/ScreenView;->Ir:Lmiui/widget/ScreenView$f;

    invoke-virtual {p0, v0, p1}, Lmiui/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lmiui/widget/ScreenView;->Ir:Lmiui/widget/ScreenView$f;

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/widget/ScreenView;->Ir:Lmiui/widget/ScreenView$f;

    :cond_4
    :goto_1
    return-void
.end method

.method public setSeekBarVisibility(I)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/ScreenView;->Ir:Lmiui/widget/ScreenView$f;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public setSeekPointResource(I)V
    .locals 0

    iput p1, p0, Lmiui/widget/ScreenView;->Hr:I

    return-void
.end method

.method public setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 3

    sget v0, Lcom/miui/internal/R$drawable;->screen_view_slide_bar:I

    sget v1, Lcom/miui/internal/R$drawable;->screen_view_slide_bar_bg:I

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lmiui/widget/ScreenView;->setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;IIZ)V

    return-void
.end method

.method public setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;IIZ)V
    .locals 2

    iput-boolean p4, p0, Lmiui/widget/ScreenView;->Kr:Z

    const/4 p4, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lmiui/widget/ScreenView;->Jr:Lmiui/widget/ScreenView$g;

    if-nez v0, :cond_0

    new-instance v0, Lmiui/widget/ScreenView$g;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2, p3}, Lmiui/widget/ScreenView$g;-><init>(Lmiui/widget/ScreenView;Landroid/content/Context;II)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->Jr:Lmiui/widget/ScreenView$g;

    iget-object p2, p0, Lmiui/widget/ScreenView;->Jr:Lmiui/widget/ScreenView$g;

    new-instance p3, Lmiui/widget/ScreenView$h;

    invoke-direct {p3, p0, p4}, Lmiui/widget/ScreenView$h;-><init>(Lmiui/widget/ScreenView;Lmiui/widget/ga;)V

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p2, p0, Lmiui/widget/ScreenView;->Jr:Lmiui/widget/ScreenView$g;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setAnimationCacheEnabled(Z)V

    iget-object p2, p0, Lmiui/widget/ScreenView;->Jr:Lmiui/widget/ScreenView$g;

    invoke-virtual {p0, p2, p1}, Lmiui/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lmiui/widget/ScreenView;->Jr:Lmiui/widget/ScreenView$g;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    iput-object p4, p0, Lmiui/widget/ScreenView;->Jr:Lmiui/widget/ScreenView$g;

    :cond_2
    :goto_0
    return-void
.end method

.method public setSlideBarVisibility(I)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/ScreenView;->Jr:Lmiui/widget/ScreenView$g;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public setTouchSlop(I)V
    .locals 0

    iput p1, p0, Lmiui/widget/ScreenView;->Sf:I

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lmiui/widget/ScreenView;->Mc()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public setVisibleExtentionRatio(F)V
    .locals 0

    iput p1, p0, Lmiui/widget/ScreenView;->Vr:F

    return-void
.end method

.method protected snapByVelocity(II)V
    .locals 3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    if-lez v1, :cond_0

    iget p2, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v1, p2

    invoke-virtual {p0, v1, p1, v0}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v2

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_1

    iget p2, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iget v1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    add-int/2addr p2, v1

    invoke-virtual {p0, p2, p1, v0}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    iget p2, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, p2, p1, v0}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    goto :goto_1

    :cond_2
    iget p1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    iget-boolean p2, p0, Lmiui/widget/ScreenView;->Ur:Z

    if-eqz p2, :cond_3

    iget p2, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    goto :goto_0

    :cond_3
    move p2, v0

    :goto_0
    mul-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p2

    shr-int/2addr p1, v0

    add-int/2addr p2, p1

    iget p1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    div-int/2addr p2, p1

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    :goto_1
    return-void
.end method

.method public snapToScreen(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->k(IZ)I

    move-result p1

    invoke-virtual {p0, p1, v0, v0}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    return-void
.end method

.method protected snapToScreen(IIZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiui/widget/ScreenView;->snapToScreen(IIZLmiui/widget/ScreenView$SnapScreenOnceNotification;)V

    return-void
.end method

.method protected snapToScreen(IIZLmiui/widget/ScreenView$SnapScreenOnceNotification;)V
    .locals 9

    iget v0, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->Ur:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lmiui/widget/ScreenView;->Qr:I

    iget p1, p0, Lmiui/widget/ScreenView;->Qr:I

    iget v0, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    rem-int v0, p1, v0

    sub-int/2addr p1, v0

    iput p1, p0, Lmiui/widget/ScreenView;->Qr:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    iget v3, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v0, v3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lmiui/widget/ScreenView;->Qr:I

    :goto_0
    iget p1, p0, Lmiui/widget/ScreenView;->Qr:I

    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lmiui/widget/ScreenView;->is:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lmiui/widget/ScreenView$SnapScreenOnceNotification;->onSnapCancelled(Lmiui/widget/ScreenView;)V

    :cond_2
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_3
    iput-object p4, p0, Lmiui/widget/ScreenView;->is:Lmiui/widget/ScreenView$SnapScreenOnceNotification;

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-eqz p3, :cond_4

    iget-object p3, p0, Lmiui/widget/ScreenView;->fs:Lmiui/widget/ScreenView$e;

    invoke-virtual {p3, p1, p2}, Lmiui/widget/ScreenView$e;->e(II)V

    goto :goto_1

    :cond_4
    iget-object p3, p0, Lmiui/widget/ScreenView;->fs:Lmiui/widget/ScreenView$e;

    invoke-virtual {p3}, Lmiui/widget/ScreenView$e;->R()V

    :goto_1
    iget p3, p0, Lmiui/widget/ScreenView;->Qr:I

    iget p4, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr p3, p4

    iget p4, p0, Lmiui/widget/ScreenView;->ao:I

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p4

    sub-int v6, p3, p4

    if-nez v6, :cond_5

    return-void

    :cond_5
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget p4, p0, Lmiui/widget/ScreenView;->es:I

    mul-int/2addr p3, p4

    iget p4, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    div-int/2addr p3, p4

    if-lez p2, :cond_6

    int-to-float p4, p3

    int-to-float p2, p2

    const v0, 0x451c4000    # 2500.0f

    div-float/2addr p2, v0

    div-float/2addr p4, p2

    const p2, 0x3ecccccd    # 0.4f

    mul-float/2addr p4, p2

    float-to-int p2, p4

    add-int/2addr p3, p2

    :cond_6
    iget p2, p0, Lmiui/widget/ScreenView;->es:I

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-gt p1, v2, :cond_7

    iget p1, p0, Lmiui/widget/ScreenView;->es:I

    mul-int/lit8 p1, p1, 0x2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    move v8, p1

    goto :goto_2

    :cond_7
    move v8, p2

    :goto_2
    iget-object v3, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public snapToScreen(ILmiui/widget/ScreenView$SnapScreenOnceNotification;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/ScreenView;->k(IZ)I

    move-result p1

    invoke-virtual {p0, p1, v0, v0, p2}, Lmiui/widget/ScreenView;->snapToScreen(IIZLmiui/widget/ScreenView$SnapScreenOnceNotification;)V

    return-void
.end method

.method protected updateChildStaticTransformationByScreen(Landroid/view/View;F)V
    .locals 0

    return-void
.end method
