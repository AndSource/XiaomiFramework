.class public abstract Lmiui/maml/elements/AnimatedScreenElement;
.super Lmiui/maml/elements/ScreenElement;
.source "AnimatedScreenElement.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "AnimatedScreenElement"

.field private static final sPaintColor:I = -0x4c06f6


# instance fields
.field private mActualXVar:Lmiui/maml/data/IndexedVariable;

.field private mActualYVar:Lmiui/maml/data/IndexedVariable;

.field protected mAlpha:I

.field public mAlphaProperty:Lmiui/maml/folme/PropertyWrapper;

.field private mAlphas:Lmiui/maml/animation/AlphaAnimation;

.field private mAnimTarget:Lmiui/maml/folme/AnimatedTarget;

.field private mBeginCallback:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lmiui/maml/elements/FunctionElement;",
            ">;"
        }
    .end annotation
.end field

.field private mCamera:Landroid/graphics/Camera;

.field private mCompleteCallback:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lmiui/maml/elements/FunctionElement;",
            ">;"
        }
    .end annotation
.end field

.field protected mContentDescription:Ljava/lang/String;

.field protected mContentDescriptionExp:Lmiui/maml/data/Expression;

.field private mFolmeMode:Z

.field protected mHasContentDescription:Z

.field public mHeightProperty:Lmiui/maml/folme/PropertyWrapper;

.field protected mInterceptTouch:Z

.field private mIsHaptic:Z

.field private mListener:Lmiui/animation/listener/TransitionListener;

.field private mMarginBottom:F

.field private mMarginLeft:F

.field private mMarginRight:F

.field private mMarginTop:F

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPaint:Landroid/graphics/Paint;

.field public mPivotXProperty:Lmiui/maml/folme/PropertyWrapper;

.field public mPivotYProperty:Lmiui/maml/folme/PropertyWrapper;

.field public mPivotZProperty:Lmiui/maml/folme/PropertyWrapper;

.field private mPositions:Lmiui/maml/animation/PositionAnimation;

.field protected mPressed:Z

.field public mRotationProperty:Lmiui/maml/folme/PropertyWrapper;

.field public mRotationXProperty:Lmiui/maml/folme/PropertyWrapper;

.field public mRotationYProperty:Lmiui/maml/folme/PropertyWrapper;

.field public mRotationZProperty:Lmiui/maml/folme/PropertyWrapper;

.field private mRotations:Lmiui/maml/animation/RotationAnimation;

.field private mScaleExpression:Lmiui/maml/data/Expression;

.field public mScaleXProperty:Lmiui/maml/folme/PropertyWrapper;

.field public mScaleYProperty:Lmiui/maml/folme/PropertyWrapper;

.field private mScales:Lmiui/maml/animation/ScaleAnimation;

.field private mSizes:Lmiui/maml/animation/SizeAnimation;

.field private mTickListener:Lmiui/maml/elements/FunctionElement;

.field protected mTintChanged:Z

.field protected mTintColor:I

.field protected mTintColorParser:Lmiui/maml/util/ColorParser;

.field public mTintColorProperty:Lmiui/maml/folme/PropertyWrapper;

.field protected mTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field protected mTintMode:Landroid/graphics/PorterDuff$Mode;

.field protected mTintModeExp:Lmiui/maml/data/Expression;

.field private mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lmiui/animation/property/FloatProperty;",
            ">;"
        }
    .end annotation
.end field

.field protected mTouchable:Z

.field private mUpdateCallback:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lmiui/maml/elements/FunctionElement;",
            ">;"
        }
    .end annotation
.end field

.field private mVirtualViewId:I

.field public mWidthProperty:Lmiui/maml/folme/PropertyWrapper;

.field public mXProperty:Lmiui/maml/folme/PropertyWrapper;

.field public mYProperty:Lmiui/maml/folme/PropertyWrapper;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    const/high16 v0, -0x80000000

    iput v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mVirtualViewId:I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mUpdateCallback:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mBeginCallback:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mCompleteCallback:Landroid/util/ArraySet;

    new-instance v0, Lmiui/maml/elements/AnimatedScreenElement$1;

    invoke-direct {v0, p0}, Lmiui/maml/elements/AnimatedScreenElement$1;-><init>(Lmiui/maml/elements/AnimatedScreenElement;)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mListener:Lmiui/animation/listener/TransitionListener;

    invoke-direct {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->load(Lorg/w3c/dom/Element;)V

    iget-boolean v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHasContentDescription:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p0}, Lmiui/maml/ScreenElementRoot;->addAccessibleElements(Lmiui/maml/elements/AnimatedScreenElement;)V

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    const v1, -0x4c06f6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method static synthetic access$000(Lmiui/maml/elements/AnimatedScreenElement;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 1

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/maml/elements/AnimatedScreenElement;)Landroid/util/ArraySet;
    .locals 1

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mUpdateCallback:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/maml/elements/AnimatedScreenElement;)Landroid/util/ArraySet;
    .locals 1

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mBeginCallback:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/maml/elements/AnimatedScreenElement;)Landroid/util/ArraySet;
    .locals 1

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mCompleteCallback:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/maml/elements/AnimatedScreenElement;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->folmeToImpl(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lmiui/maml/elements/AnimatedScreenElement;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->folmeSetToImpl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lmiui/maml/elements/AnimatedScreenElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmiui/maml/elements/AnimatedScreenElement;->folmeFromToImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;
    .locals 2

    invoke-virtual {p0, p2, p3}, Lmiui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p2, p4}, Lmiui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private folmeFromToImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v1

    invoke-virtual {v1, p2}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v2

    invoke-virtual {v2, p3}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v2

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    instance-of v3, v0, Lmiui/maml/elements/FolmeStateScreenElement;

    if-eqz v3, :cond_2

    instance-of v3, v1, Lmiui/maml/elements/FolmeStateScreenElement;

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    if-eqz v2, :cond_1

    :try_start_0
    move-object v3, v2

    check-cast v3, Lmiui/maml/elements/FolmeConfigScreenElement;

    invoke-virtual {p0, v3}, Lmiui/maml/elements/AnimatedScreenElement;->createAnimConfig(Lmiui/maml/elements/FolmeConfigScreenElement;)[Lmiui/animation/base/AnimConfig;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    new-array v3, v3, [Lmiui/animation/base/AnimConfig;

    :goto_0
    const-string v4, "from"

    move-object v5, v0

    check-cast v5, Lmiui/maml/elements/FolmeStateScreenElement;

    invoke-virtual {p0, v4, v5}, Lmiui/maml/elements/AnimatedScreenElement;->createAnimState(Ljava/lang/String;Lmiui/maml/elements/FolmeStateScreenElement;)Lmiui/animation/controller/AnimState;

    move-result-object v4

    const-string/jumbo v5, "to"

    move-object v6, v1

    check-cast v6, Lmiui/maml/elements/FolmeStateScreenElement;

    invoke-virtual {p0, v5, v6}, Lmiui/maml/elements/AnimatedScreenElement;->createAnimState(Ljava/lang/String;Lmiui/maml/elements/FolmeStateScreenElement;)Lmiui/animation/controller/AnimState;

    move-result-object v5

    move-object v6, v1

    check-cast v6, Lmiui/maml/elements/FolmeStateScreenElement;

    invoke-direct {p0, v6}, Lmiui/maml/elements/AnimatedScreenElement;->setupToProperties(Lmiui/maml/elements/FolmeStateScreenElement;)V

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getAnimTarget()Lmiui/maml/folme/AnimatedTarget;

    move-result-object v6

    invoke-static {v6}, Lmiui/animation/Folme;->useAt(Lmiui/animation/IAnimTarget;)Lmiui/animation/IFolme;

    move-result-object v6

    invoke-interface {v6}, Lmiui/animation/IFolme;->state()Lmiui/animation/IStateStyle;

    move-result-object v6

    invoke-interface {v6, v4, v5, v3}, Lmiui/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    :cond_2
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "folmeFromTo: wrong state name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AnimatedScreenElement"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private folmeSetToImpl(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/maml/elements/FolmeStateScreenElement;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string/jumbo v1, "setTo"

    move-object v2, v0

    check-cast v2, Lmiui/maml/elements/FolmeStateScreenElement;

    invoke-virtual {p0, v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->createAnimState(Ljava/lang/String;Lmiui/maml/elements/FolmeStateScreenElement;)Lmiui/animation/controller/AnimState;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getAnimTarget()Lmiui/maml/folme/AnimatedTarget;

    move-result-object v2

    invoke-static {v2}, Lmiui/animation/Folme;->useAt(Lmiui/animation/IAnimTarget;)Lmiui/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiui/animation/IFolme;->state()Lmiui/animation/IStateStyle;

    move-result-object v2

    invoke-interface {v2, v1}, Lmiui/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiui/animation/IStateStyle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "folmeSetTo: wrong state name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AnimatedScreenElement"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private folmeToImpl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v1

    invoke-virtual {v1, p2}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    if-eqz v0, :cond_2

    instance-of v2, v0, Lmiui/maml/elements/FolmeStateScreenElement;

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    if-eqz v1, :cond_1

    :try_start_0
    move-object v2, v1

    check-cast v2, Lmiui/maml/elements/FolmeConfigScreenElement;

    invoke-virtual {p0, v2}, Lmiui/maml/elements/AnimatedScreenElement;->createAnimConfig(Lmiui/maml/elements/FolmeConfigScreenElement;)[Lmiui/animation/base/AnimConfig;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    new-array v2, v2, [Lmiui/animation/base/AnimConfig;

    :goto_0
    const-string/jumbo v3, "to"

    move-object v4, v0

    check-cast v4, Lmiui/maml/elements/FolmeStateScreenElement;

    invoke-virtual {p0, v3, v4}, Lmiui/maml/elements/AnimatedScreenElement;->createAnimState(Ljava/lang/String;Lmiui/maml/elements/FolmeStateScreenElement;)Lmiui/animation/controller/AnimState;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Lmiui/maml/elements/FolmeStateScreenElement;

    invoke-direct {p0, v4}, Lmiui/maml/elements/AnimatedScreenElement;->setupToProperties(Lmiui/maml/elements/FolmeStateScreenElement;)V

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getAnimTarget()Lmiui/maml/folme/AnimatedTarget;

    move-result-object v4

    invoke-static {v4}, Lmiui/animation/Folme;->useAt(Lmiui/animation/IAnimTarget;)Lmiui/animation/IFolme;

    move-result-object v4

    invoke-interface {v4}, Lmiui/animation/IFolme;->state()Lmiui/animation/IStateStyle;

    move-result-object v4

    invoke-interface {v4, v3, v2}, Lmiui/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    :cond_2
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "folmeTo: wrong state name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AnimatedScreenElement"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleCancel()V
    .locals 1

    iget-boolean v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTouchable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPressed:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPressed:Z

    const-string v0, "cancel"

    invoke-virtual {p0, v0}, Lmiui/maml/elements/AnimatedScreenElement;->performAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->onActionCancel()V

    :cond_1
    return-void
.end method

.method private isInMainThread()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    if-eqz v1, :cond_5

    move-object/from16 v17, v2

    const/4 v2, 0x0

    move-object/from16 v18, v3

    const-string/jumbo v3, "scale"

    invoke-direct {v0, v9, v1, v3, v2}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v3

    iput-object v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleExpression:Lmiui/maml/data/Expression;

    const-string/jumbo v3, "x"

    const-string v2, "left"

    invoke-direct {v0, v9, v1, v3, v2}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    const-string/jumbo v3, "y"

    move-object/from16 v17, v2

    const-string/jumbo v2, "top"

    invoke-direct {v0, v9, v1, v3, v2}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    const-string/jumbo v3, "w"

    move-object/from16 v18, v2

    const-string/jumbo v2, "width"

    invoke-direct {v0, v9, v1, v3, v2}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    const-string v3, "h"

    const-string v4, "height"

    invoke-direct {v0, v9, v1, v3, v4}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v3

    const-string v4, "angle"

    const-string/jumbo v5, "rotation"

    invoke-direct {v0, v9, v1, v4, v5}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v4

    const-string v5, "centerX"

    const-string/jumbo v6, "pivotX"

    invoke-direct {v0, v9, v1, v5, v6}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v5

    const-string v6, "centerY"

    const-string/jumbo v7, "pivotY"

    invoke-direct {v0, v9, v1, v6, v7}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v6

    const-string v7, "alpha"

    const/4 v8, 0x0

    invoke-direct {v0, v9, v1, v7, v8}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v7

    const-string/jumbo v10, "scaleX"

    invoke-direct {v0, v9, v1, v10, v8}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v10

    const-string/jumbo v11, "scaleY"

    invoke-direct {v0, v9, v1, v11, v8}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v8

    const-string v11, "angleX"

    const-string/jumbo v12, "rotationX"

    invoke-direct {v0, v9, v1, v11, v12}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v11

    const-string v12, "angleY"

    const-string/jumbo v13, "rotationY"

    invoke-direct {v0, v9, v1, v12, v13}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v12

    const-string v13, "angleZ"

    const-string/jumbo v14, "rotationZ"

    invoke-direct {v0, v9, v1, v13, v14}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v13

    const-string v14, "centerZ"

    const-string/jumbo v15, "pivotZ"

    invoke-direct {v0, v9, v1, v14, v15}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v14

    iget-boolean v15, v0, Lmiui/maml/elements/AnimatedScreenElement;->mHasName:Z

    move-object/from16 v19, v2

    if-eqz v15, :cond_0

    new-instance v15, Lmiui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v3

    iget-object v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v21, v4

    const-string v4, "actual_x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct {v15, v2, v9, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v15, v0, Lmiui/maml/elements/AnimatedScreenElement;->mActualXVar:Lmiui/maml/data/IndexedVariable;

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "actual_y"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v9, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mActualYVar:Lmiui/maml/data/IndexedVariable;

    goto :goto_0

    :cond_0
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    const/4 v4, 0x1

    :goto_0
    const-string/jumbo v2, "touchable"

    invoke-virtual {v0, v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mTouchable:Z

    const-string v2, "interceptTouch"

    invoke-virtual {v0, v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mInterceptTouch:Z

    const-string v2, "haptic"

    invoke-virtual {v0, v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mIsHaptic:Z

    const-string v2, "contentDescription"

    invoke-virtual {v0, v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mContentDescription:Ljava/lang/String;

    const-string v2, "contentDescriptionExp"

    invoke-virtual {v0, v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mContentDescriptionExp:Lmiui/maml/data/Expression;

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mContentDescription:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mContentDescriptionExp:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    :cond_2
    :goto_1
    iput-boolean v4, v0, Lmiui/maml/elements/AnimatedScreenElement;->mHasContentDescription:Z

    const/4 v2, 0x0

    const-string/jumbo v4, "marginLeft"

    invoke-static {v1, v4, v2}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v4

    iput v4, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMarginLeft:F

    const-string/jumbo v4, "marginRight"

    invoke-static {v1, v4, v2}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v4

    iput v4, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMarginRight:F

    const-string/jumbo v4, "marginTop"

    invoke-static {v1, v4, v2}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v4

    iput v4, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMarginTop:F

    const-string/jumbo v4, "marginBottom"

    invoke-static {v1, v4, v2}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v2

    iput v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMarginBottom:F

    const-string/jumbo v2, "tint"

    invoke-virtual {v0, v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Lmiui/maml/util/ColorParser;

    invoke-direct {v4, v9, v2}, Lmiui/maml/util/ColorParser;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;)V

    iput-object v4, v0, Lmiui/maml/elements/AnimatedScreenElement;->mTintColorParser:Lmiui/maml/util/ColorParser;

    :cond_3
    const-string/jumbo v4, "tintmode"

    invoke-virtual {v0, v1, v4}, Lmiui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v4

    iput-object v4, v0, Lmiui/maml/elements/AnimatedScreenElement;->mTintModeExp:Lmiui/maml/data/Expression;

    iget-object v4, v0, Lmiui/maml/elements/AnimatedScreenElement;->mTintColorParser:Lmiui/maml/util/ColorParser;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lmiui/maml/util/ColorParser;->getColor()I

    move-result v3

    :cond_4
    iput v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mTintColor:I

    const-string v3, "folmeMode"

    invoke-virtual {v0, v1, v3}, Lmiui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mFolmeMode:Z

    move-object/from16 v16, v5

    move-object/from16 v22, v6

    move-object v15, v13

    move-object/from16 v23, v14

    move-object v13, v8

    move-object v14, v12

    move-object v12, v10

    move-object v10, v7

    goto :goto_2

    :cond_5
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v8

    move-object/from16 v23, v16

    move-object/from16 v16, v7

    move-object/from16 v26, v12

    move-object v12, v11

    move-object v11, v13

    move-object/from16 v13, v26

    :goto_2
    new-instance v7, Lmiui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v6

    const-wide/16 v24, 0x0

    move-object v2, v7

    move-object v4, v9

    move-object/from16 v5, v17

    move-object v1, v7

    move-wide/from16 v7, v24

    invoke-direct/range {v2 .. v8}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lmiui/maml/elements/AnimatedScreenElement;->mXProperty:Lmiui/maml/folme/PropertyWrapper;

    new-instance v1, Lmiui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".y"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v6

    const-wide/16 v7, 0x0

    move-object v2, v1

    move-object/from16 v5, v18

    invoke-direct/range {v2 .. v8}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lmiui/maml/elements/AnimatedScreenElement;->mYProperty:Lmiui/maml/folme/PropertyWrapper;

    new-instance v1, Lmiui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".w"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v6

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    move-object v2, v1

    move-object/from16 v5, v19

    invoke-direct/range {v2 .. v8}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lmiui/maml/elements/AnimatedScreenElement;->mWidthProperty:Lmiui/maml/folme/PropertyWrapper;

    new-instance v1, Lmiui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".h"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v6

    move-object v2, v1

    move-object/from16 v5, v20

    invoke-direct/range {v2 .. v8}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lmiui/maml/elements/AnimatedScreenElement;->mHeightProperty:Lmiui/maml/folme/PropertyWrapper;

    new-instance v1, Lmiui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".rotation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v6

    const-wide/16 v7, 0x0

    move-object v2, v1

    move-object/from16 v5, v21

    invoke-direct/range {v2 .. v8}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationProperty:Lmiui/maml/folme/PropertyWrapper;

    new-instance v1, Lmiui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".alpha"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v6

    const-wide v7, 0x406fe00000000000L    # 255.0

    move-object v2, v1

    move-object v5, v10

    invoke-direct/range {v2 .. v8}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lmiui/maml/elements/AnimatedScreenElement;->mAlphaProperty:Lmiui/maml/folme/PropertyWrapper;

    new-instance v1, Lmiui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".rotationX"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v6

    const-wide/16 v7, 0x0

    move-object v2, v1

    move-object v5, v11

    invoke-direct/range {v2 .. v8}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationXProperty:Lmiui/maml/folme/PropertyWrapper;

    new-instance v1, Lmiui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".rotationY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v6

    move-object v2, v1

    move-object v5, v14

    invoke-direct/range {v2 .. v8}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationYProperty:Lmiui/maml/folme/PropertyWrapper;

    new-instance v1, Lmiui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".rotationZ"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v6

    move-object v2, v1

    move-object v5, v15

    invoke-direct/range {v2 .. v8}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationZProperty:Lmiui/maml/folme/PropertyWrapper;

    new-instance v1, Lmiui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".scaleX"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v6

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-object v2, v1

    move-object v5, v12

    invoke-direct/range {v2 .. v8}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleXProperty:Lmiui/maml/folme/PropertyWrapper;

    new-instance v1, Lmiui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".scaleY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v6

    move-object v2, v1

    move-object v5, v13

    invoke-direct/range {v2 .. v8}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleYProperty:Lmiui/maml/folme/PropertyWrapper;

    new-instance v1, Lmiui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".tintColor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v6

    iget v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mTintColor:I

    int-to-double v7, v2

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lmiui/maml/elements/AnimatedScreenElement;->mTintColorProperty:Lmiui/maml/folme/PropertyWrapper;

    new-instance v1, Lmiui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".pivotX"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v6

    const-wide/16 v7, 0x0

    move-object v2, v1

    move-object/from16 v5, v16

    invoke-direct/range {v2 .. v8}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotXProperty:Lmiui/maml/folme/PropertyWrapper;

    new-instance v1, Lmiui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".pivotY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v6

    move-object v2, v1

    move-object/from16 v5, v22

    invoke-direct/range {v2 .. v8}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotYProperty:Lmiui/maml/folme/PropertyWrapper;

    new-instance v1, Lmiui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".pivotZ"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v6

    move-object v2, v1

    move-object/from16 v5, v23

    invoke-direct/range {v2 .. v8}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotZProperty:Lmiui/maml/folme/PropertyWrapper;

    return-void
.end method

.method private setupCallbacks(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lmiui/maml/elements/FunctionElement;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v2

    instance-of v3, v2, Lmiui/maml/elements/FunctionElement;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lmiui/maml/elements/FunctionElement;

    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method private setupToProperties(Lmiui/maml/elements/FolmeStateScreenElement;)V
    .locals 5

    invoke-virtual {p1}, Lmiui/maml/elements/FolmeStateScreenElement;->getAttrs()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lmiui/maml/folme/AnimatedProperty;->getPropertyByName(Ljava/lang/String;)Lmiui/animation/property/FloatProperty;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lmiui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected createAnimConfig(Lmiui/maml/elements/FolmeConfigScreenElement;)[Lmiui/animation/base/AnimConfig;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lmiui/maml/elements/FolmeConfigScreenElement;->getConfig()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mUpdateCallback:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mBeginCallback:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mCompleteCallback:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/folme/FolmeConfigValue;

    const/4 v4, 0x0

    iget-object v5, v3, Lmiui/maml/folme/FolmeConfigValue;->relatedProperty:Landroid/util/ArraySet;

    if-eqz v5, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v3, Lmiui/maml/folme/FolmeConfigValue;->relatedProperty:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lmiui/maml/folme/AnimatedProperty;->getPropertyByName(Ljava/lang/String;)Lmiui/animation/property/FloatProperty;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_1

    :cond_1
    new-instance v6, Lmiui/animation/base/AnimConfig;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lmiui/animation/property/FloatProperty;

    invoke-direct {v6, v7}, Lmiui/animation/base/AnimConfig;-><init>([Lmiui/animation/property/FloatProperty;)V

    move-object v4, v6

    :cond_2
    if-nez v4, :cond_3

    new-instance v5, Lmiui/animation/base/AnimConfig;

    invoke-direct {v5}, Lmiui/animation/base/AnimConfig;-><init>()V

    move-object v4, v5

    :cond_3
    iget-object v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mBeginCallback:Landroid/util/ArraySet;

    iget-object v6, v3, Lmiui/maml/folme/FolmeConfigValue;->onBeginCallback:Landroid/util/ArraySet;

    invoke-direct {p0, v5, v6}, Lmiui/maml/elements/AnimatedScreenElement;->setupCallbacks(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    iget-object v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mUpdateCallback:Landroid/util/ArraySet;

    iget-object v6, v3, Lmiui/maml/folme/FolmeConfigValue;->onUpdateCallback:Landroid/util/ArraySet;

    invoke-direct {p0, v5, v6}, Lmiui/maml/elements/AnimatedScreenElement;->setupCallbacks(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    iget-object v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mCompleteCallback:Landroid/util/ArraySet;

    iget-object v6, v3, Lmiui/maml/folme/FolmeConfigValue;->onCompleteCallback:Landroid/util/ArraySet;

    invoke-direct {p0, v5, v6}, Lmiui/maml/elements/AnimatedScreenElement;->setupCallbacks(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    iget-boolean v5, v3, Lmiui/maml/folme/FolmeConfigValue;->hasFromSpeed:Z

    if-eqz v5, :cond_4

    iget v5, v3, Lmiui/maml/folme/FolmeConfigValue;->fromSpeed:F

    invoke-virtual {v4, v5}, Lmiui/animation/base/AnimConfig;->setFromSpeed(F)Lmiui/animation/base/AnimConfig;

    :cond_4
    iget-object v5, v3, Lmiui/maml/folme/FolmeConfigValue;->ease:Lmiui/animation/utils/EaseManager$EaseStyle;

    invoke-virtual {v4, v5}, Lmiui/animation/base/AnimConfig;->setEase(Lmiui/animation/utils/EaseManager$EaseStyle;)Lmiui/animation/base/AnimConfig;

    iget-wide v5, v3, Lmiui/maml/folme/FolmeConfigValue;->delay:J

    invoke-virtual {v4, v5, v6}, Lmiui/animation/base/AnimConfig;->setDelay(J)Lmiui/animation/base/AnimConfig;

    const/4 v5, 0x1

    new-array v5, v5, [Lmiui/animation/listener/TransitionListener;

    const/4 v6, 0x0

    iget-object v7, p0, Lmiui/maml/elements/AnimatedScreenElement;->mListener:Lmiui/animation/listener/TransitionListener;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lmiui/animation/base/AnimConfig;->addListeners([Lmiui/animation/listener/TransitionListener;)Lmiui/animation/base/AnimConfig;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lmiui/animation/base/AnimConfig;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lmiui/animation/base/AnimConfig;

    return-object v2
.end method

.method protected createAnimState(Ljava/lang/String;Lmiui/maml/elements/FolmeStateScreenElement;)Lmiui/animation/controller/AnimState;
    .locals 12

    new-instance v0, Lmiui/animation/controller/AnimState;

    invoke-direct {v0, p1}, Lmiui/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lmiui/maml/elements/FolmeStateScreenElement;->getAttrs()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lmiui/maml/folme/AnimatedProperty;->getPropertyByName(Ljava/lang/String;)Lmiui/animation/property/FloatProperty;

    move-result-object v4

    if-eqz v4, :cond_1

    instance-of v5, v4, Lmiui/animation/property/ColorProperty;

    const-wide/16 v6, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/maml/data/Expression;

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v10

    double-to-long v10, v10

    long-to-int v5, v10

    new-array v9, v9, [J

    aput-wide v6, v9, v8

    invoke-virtual {v0, v4, v5, v9}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;I[J)Lmiui/animation/controller/AnimState;

    goto :goto_1

    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/maml/data/Expression;

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v10

    double-to-float v5, v10

    new-array v9, v9, [J

    aput-wide v6, v9, v8

    invoke-virtual {v0, v4, v5, v9}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;F[J)Lmiui/animation/controller/AnimState;

    :cond_1
    :goto_1
    goto :goto_0

    :cond_2
    return-object v0
.end method

.method protected doRenderWithTranslation(Landroid/graphics/Canvas;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    iget-object v1, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getRotationX()F

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getRotationY()F

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getRotationZ()F

    move-result v11

    const/4 v1, 0x0

    cmpl-float v2, v9, v1

    if-nez v2, :cond_0

    cmpl-float v2, v10, v1

    if-nez v2, :cond_0

    cmpl-float v2, v11, v1

    if-eqz v2, :cond_3

    :cond_0
    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    if-nez v2, :cond_1

    new-instance v2, Landroid/graphics/Camera;

    invoke-direct {v2}, Landroid/graphics/Camera;-><init>()V

    iput-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    :cond_1
    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v2}, Landroid/graphics/Camera;->save()V

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v2, v9, v10, v11}, Landroid/graphics/Camera;->rotate(FFF)V

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getPivotZ()F

    move-result v2

    cmpl-float v3, v2, v1

    if-eqz v3, :cond_2

    iget-object v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3, v1, v1, v2}, Landroid/graphics/Camera;->translate(FFF)V

    :cond_2
    iget-object v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    iget-object v4, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v3, v0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getRotation()F

    move-result v12

    cmpl-float v2, v12, v1

    if-eqz v2, :cond_4

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v12}, Landroid/graphics/Matrix;->preRotate(F)Z

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getScaleX()F

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getScaleY()F

    move-result v14

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v13, v2

    if-nez v3, :cond_5

    cmpl-float v2, v14, v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v13, v14}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getX()F

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getY()F

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getPivotX()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getLeft()F

    move-result v3

    sub-float v3, v15, v3

    sub-float v6, v2, v3

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getPivotY()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getTop()F

    move-result v3

    sub-float v3, v16, v3

    sub-float v5, v2, v3

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    neg-float v3, v6

    neg-float v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    add-float v3, v6, v15

    add-float v4, v5, v16

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-virtual/range {p0 .. p1}, Lmiui/maml/elements/AnimatedScreenElement;->doRender(Landroid/graphics/Canvas;)V

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-boolean v2, v2, Lmiui/maml/ScreenElementRoot;->mShowDebugLayout:Z

    if-eqz v2, :cond_8

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v3

    cmpl-float v2, v4, v1

    if-lez v2, :cond_7

    cmpl-float v2, v3, v1

    if-lez v2, :cond_7

    invoke-virtual {v0, v1, v4}, Lmiui/maml/elements/AnimatedScreenElement;->getLeft(FF)F

    move-result v17

    invoke-virtual {v0, v1, v3}, Lmiui/maml/elements/AnimatedScreenElement;->getTop(FF)F

    move-result v18

    add-float v19, v17, v4

    add-float v20, v18, v3

    iget-object v2, v0, Lmiui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v21, v2

    move/from16 v2, v17

    move/from16 v22, v3

    move/from16 v3, v18

    move/from16 v23, v4

    move/from16 v4, v19

    move/from16 v24, v5

    move/from16 v5, v20

    move/from16 v25, v6

    move-object/from16 v6, v21

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_7
    move/from16 v22, v3

    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v6

    goto :goto_0

    :cond_8
    move/from16 v24, v5

    move/from16 v25, v6

    :goto_0
    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected doTick(J)V
    .locals 5

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->doTick(J)V

    iget-boolean v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHasName:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mActualXVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getX()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p0, v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->descale(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mActualYVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getY()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p0, v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->descale(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_0
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->evaluateAlpha()I

    move-result v0

    iput v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlpha:I

    iget v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlpha:I

    const/4 v1, 0x0

    if-gez v0, :cond_1

    move v0, v1

    :cond_1
    iput v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlpha:I

    iput-boolean v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getTintColor()I

    move-result v0

    iget v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintColor:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    iput-boolean v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    iput v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintColor:I

    :cond_2
    iget v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintColor:I

    if-eqz v1, :cond_7

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v3, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintModeExp:Lmiui/maml/data/Expression;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-int v3, v3

    iget-object v4, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v3, v4}, Lmiui/maml/util/Utils;->getPorterDuffMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    :cond_3
    iget-object v3, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v3, v1, :cond_4

    iput-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    :cond_4
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    if-eqz v2, :cond_6

    :cond_5
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget v3, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintColor:I

    invoke-direct {v2, v3, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    :cond_6
    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    :goto_0
    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTickListener:Lmiui/maml/elements/FunctionElement;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lmiui/maml/elements/FunctionElement;->perform()V

    :cond_8
    return-void
.end method

.method protected evaluateAlpha()I
    .locals 2

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlphaProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-long v0, v0

    long-to-int v0, v0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlphas:Lmiui/maml/animation/AlphaAnimation;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lmiui/maml/animation/AlphaAnimation;->getAlpha()I

    move-result v1

    goto :goto_0

    :cond_0
    const/16 v1, 0xff

    :goto_0
    invoke-static {v0, v1}, Lmiui/maml/util/Utils;->mixAlpha(II)I

    move-result v0

    :cond_1
    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    instance-of v1, v1, Lmiui/maml/elements/LayerScreenElement;

    if-nez v1, :cond_3

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    instance-of v1, v1, Lmiui/maml/elements/ElementGroup;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lmiui/maml/elements/ElementGroup;->isLayered()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lmiui/maml/elements/ElementGroup;->getAlpha()I

    move-result v1

    invoke-static {v0, v1}, Lmiui/maml/util/Utils;->mixAlpha(II)I

    move-result v1

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v0

    :goto_2
    return v1
.end method

.method public finish()V
    .locals 2

    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->finish()V

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAnimTarget:Lmiui/maml/folme/AnimatedTarget;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lmiui/maml/elements/AnimatedScreenElement;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lmiui/animation/Folme;->clean([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public folmeCancel([Lmiui/maml/data/Expression;)V
    .locals 6

    if-eqz p1, :cond_2

    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmiui/maml/folme/AnimatedProperty;->getPropertyByName(Ljava/lang/String;)Lmiui/animation/property/FloatProperty;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getAnimTarget()Lmiui/maml/folme/AnimatedTarget;

    move-result-object v1

    invoke-static {v1}, Lmiui/animation/Folme;->useAt(Lmiui/animation/IAnimTarget;)Lmiui/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiui/animation/IFolme;->state()Lmiui/animation/IStateStyle;

    move-result-object v1

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v2, v2, [Lmiui/animation/property/FloatProperty;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lmiui/animation/property/FloatProperty;

    invoke-interface {v1, v2}, Lmiui/animation/IStateStyle;->cancel([Lmiui/animation/property/FloatProperty;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getAnimTarget()Lmiui/maml/folme/AnimatedTarget;

    move-result-object v0

    invoke-static {v0}, Lmiui/animation/Folme;->useAt(Lmiui/animation/IAnimTarget;)Lmiui/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiui/animation/IFolme;->state()Lmiui/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiui/animation/IStateStyle;->cancel()V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public folmeFromTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lmiui/maml/elements/AnimatedScreenElement;->folmeFromToImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmiui/maml/elements/AnimatedScreenElement$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lmiui/maml/elements/AnimatedScreenElement$4;-><init>(Lmiui/maml/elements/AnimatedScreenElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :goto_0
    return-void
.end method

.method public folmeSetTo(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->folmeSetToImpl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmiui/maml/elements/AnimatedScreenElement$3;

    invoke-direct {v1, p0, p1}, Lmiui/maml/elements/AnimatedScreenElement$3;-><init>(Lmiui/maml/elements/AnimatedScreenElement;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :goto_0
    return-void
.end method

.method public folmeTo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->folmeToImpl(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmiui/maml/elements/AnimatedScreenElement$2;

    invoke-direct {v1, p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement$2;-><init>(Lmiui/maml/elements/AnimatedScreenElement;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :goto_0
    return-void
.end method

.method public getAbsoluteLeft()F
    .locals 2

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getLeft()F

    move-result v0

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lmiui/maml/elements/ElementGroup;->getParentLeft()F

    move-result v1

    :goto_0
    add-float/2addr v0, v1

    return v0
.end method

.method public getAbsoluteTop()F
    .locals 2

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getTop()F

    move-result v0

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lmiui/maml/elements/ElementGroup;->getParentTop()F

    move-result v1

    :goto_0
    add-float/2addr v0, v1

    return v0
.end method

.method public getAlpha()I
    .locals 1

    iget v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlpha:I

    return v0
.end method

.method protected getAnimTarget()Lmiui/maml/folme/AnimatedTarget;
    .locals 1

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAnimTarget:Lmiui/maml/folme/AnimatedTarget;

    if-nez v0, :cond_0

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sCreator:Lmiui/animation/ITargetCreator;

    invoke-static {p0, v0}, Lmiui/animation/Folme;->getTarget(Ljava/lang/Object;Lmiui/animation/ITargetCreator;)Lmiui/animation/IAnimTarget;

    move-result-object v0

    check-cast v0, Lmiui/maml/folme/AnimatedTarget;

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAnimTarget:Lmiui/maml/folme/AnimatedTarget;

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAnimTarget:Lmiui/maml/folme/AnimatedTarget;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mContentDescriptionExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "element.getContentDescription() == null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AnimatedScreenElement"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()F
    .locals 2

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getHeightRaw()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getHeightRaw()F
    .locals 3

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHeightProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lmiui/maml/animation/SizeAnimation;->getHeight()D

    move-result-wide v1

    double-to-float v0, v1

    :cond_0
    return v0
.end method

.method protected getLeft()F
    .locals 2

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getX()F

    move-result v0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->getLeft(FF)F

    move-result v0

    return v0
.end method

.method public final getMarginBottom()F
    .locals 2

    iget v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMarginBottom:F

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public final getMarginLeft()F
    .locals 2

    iget v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMarginLeft:F

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public final getMarginRight()F
    .locals 2

    iget v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMarginRight:F

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public final getMarginTop()F
    .locals 2

    iget v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMarginTop:F

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method protected getMatrix()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected getPivotX()F
    .locals 2

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotXProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method protected getPivotY()F
    .locals 2

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotYProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method protected getPivotZ()F
    .locals 2

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotZProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getRotation()F
    .locals 2

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotations:Lmiui/maml/animation/RotationAnimation;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lmiui/maml/animation/RotationAnimation;->getAngle()F

    move-result v1

    add-float/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getRotationX()F
    .locals 2

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationXProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getRotationY()F
    .locals 2

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationYProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getRotationZ()F
    .locals 2

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationZProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getScaleX()F
    .locals 6

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleXProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleExpression:Lmiui/maml/data/Expression;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-float v0, v1

    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScales:Lmiui/maml/animation/ScaleAnimation;

    if-eqz v1, :cond_1

    float-to-double v2, v0

    invoke-virtual {v1}, Lmiui/maml/animation/ScaleAnimation;->getScaleX()D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v0, v2

    :cond_1
    return v0
.end method

.method public getScaleY()F
    .locals 6

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleYProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleExpression:Lmiui/maml/data/Expression;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-float v0, v1

    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScales:Lmiui/maml/animation/ScaleAnimation;

    if-eqz v1, :cond_1

    float-to-double v2, v0

    invoke-virtual {v1}, Lmiui/maml/animation/ScaleAnimation;->getScaleY()D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v0, v2

    :cond_1
    return v0
.end method

.method protected getTintColor()I
    .locals 2

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintColorProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-long v0, v0

    long-to-int v0, v0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintColorParser:Lmiui/maml/util/ColorParser;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lmiui/maml/util/ColorParser;->getColor()I

    move-result v0

    :cond_0
    return v0
.end method

.method protected getTop()F
    .locals 2

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getY()F

    move-result v0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->getTop(FF)F

    move-result v0

    return v0
.end method

.method public getWidth()F
    .locals 2

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getWidthRaw()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getWidthRaw()F
    .locals 3

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mWidthProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lmiui/maml/animation/SizeAnimation;->getWidth()D

    move-result-wide v1

    double-to-float v0, v1

    :cond_0
    return v0
.end method

.method protected getX()F
    .locals 6

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mXProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPositions:Lmiui/maml/animation/PositionAnimation;

    if-eqz v1, :cond_0

    float-to-double v2, v0

    invoke-virtual {v1}, Lmiui/maml/animation/PositionAnimation;->getX()D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-float v0, v2

    :cond_0
    float-to-double v1, v0

    invoke-virtual {p0, v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v1

    return v1
.end method

.method protected getY()F
    .locals 6

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mYProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPositions:Lmiui/maml/animation/PositionAnimation;

    if-eqz v1, :cond_0

    float-to-double v2, v0

    invoke-virtual {v1}, Lmiui/maml/animation/PositionAnimation;->getY()D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-float v0, v2

    :cond_0
    float-to-double v1, v0

    invoke-virtual {p0, v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v1

    return v1
.end method

.method public init()V
    .locals 1

    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->init()V

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->initProperties()V

    :cond_0
    return-void
.end method

.method protected initProperties()V
    .locals 1

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mXProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->init()V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mYProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->init()V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mWidthProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->init()V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHeightProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->init()V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->init()V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlphaProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->init()V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationXProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->init()V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationYProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->init()V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationZProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->init()V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleXProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->init()V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleYProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->init()V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTintColorProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->init()V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotXProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->init()V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotYProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->init()V

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotZProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->init()V

    return-void
.end method

.method protected isInFolmeMode()Z
    .locals 1

    iget-boolean v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mFolmeMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHasName:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onActionCancel()V
    .locals 0

    return-void
.end method

.method protected onActionDown(FF)V
    .locals 2

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    const-string v1, "down"

    invoke-virtual {v0, p0, v1}, Lmiui/maml/ScreenElementRoot;->onUIInteractive(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V

    return-void
.end method

.method protected onActionMove(FF)V
    .locals 2

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    const-string/jumbo v1, "move"

    invoke-virtual {v0, p0, v1}, Lmiui/maml/ScreenElementRoot;->onUIInteractive(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V

    return-void
.end method

.method protected onActionUp()V
    .locals 2

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    const-string/jumbo v1, "up"

    invoke-virtual {v0, p0, v1}, Lmiui/maml/ScreenElementRoot;->onUIInteractive(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lmiui/maml/animation/BaseAnimation;
    .locals 1

    const-string v0, "AlphaAnimation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lmiui/maml/animation/AlphaAnimation;

    invoke-direct {v0, p2, p0}, Lmiui/maml/animation/AlphaAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlphas:Lmiui/maml/animation/AlphaAnimation;

    return-object v0

    :cond_0
    const-string v0, "PositionAnimation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lmiui/maml/animation/PositionAnimation;

    invoke-direct {v0, p2, p0}, Lmiui/maml/animation/PositionAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPositions:Lmiui/maml/animation/PositionAnimation;

    return-object v0

    :cond_1
    const-string v0, "RotationAnimation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lmiui/maml/animation/RotationAnimation;

    invoke-direct {v0, p2, p0}, Lmiui/maml/animation/RotationAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotations:Lmiui/maml/animation/RotationAnimation;

    return-object v0

    :cond_2
    const-string v0, "SizeAnimation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lmiui/maml/animation/SizeAnimation;

    invoke-direct {v0, p2, p0}, Lmiui/maml/animation/SizeAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    return-object v0

    :cond_3
    const-string v0, "ScaleAnimation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lmiui/maml/animation/ScaleAnimation;

    invoke-direct {v0, p2, p0}, Lmiui/maml/animation/ScaleAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScales:Lmiui/maml/animation/ScaleAnimation;

    return-object v0

    :cond_4
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lmiui/maml/animation/BaseAnimation;

    move-result-object v0

    return-object v0
.end method

.method public onHover(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHasContentDescription:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getContentDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-super {p0, p1}, Lmiui/maml/elements/ScreenElement;->onHover(Landroid/view/MotionEvent;)Z

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const/4 v6, 0x7

    if-eq v5, v6, :cond_2

    const/16 v6, 0x9

    if-eq v5, v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v5, p0, v0}, Lmiui/maml/ScreenElementRoot;->onHoverChange(Lmiui/maml/elements/AnimatedScreenElement;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v5}, Lmiui/maml/ScreenElementRoot;->getHoverElement()Lmiui/maml/elements/AnimatedScreenElement;

    move-result-object v5

    if-eq v5, p0, :cond_3

    iget-object v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v5, p0, v0}, Lmiui/maml/ScreenElementRoot;->onHoverChange(Lmiui/maml/elements/AnimatedScreenElement;Ljava/lang/String;)V

    :cond_3
    const/4 v4, 0x1

    :cond_4
    :goto_0
    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->requestUpdate()V

    :cond_5
    if-eqz v4, :cond_6

    iget-boolean v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mInterceptTouch:Z

    if-eqz v5, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1

    :cond_7
    :goto_1
    return v1
.end method

.method protected onSetAnimBefore()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlphas:Lmiui/maml/animation/AlphaAnimation;

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPositions:Lmiui/maml/animation/PositionAnimation;

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotations:Lmiui/maml/animation/RotationAnimation;

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScales:Lmiui/maml/animation/ScaleAnimation;

    return-void
.end method

.method protected onSetAnimEnable(Lmiui/maml/animation/BaseAnimation;)V
    .locals 1

    instance-of v0, p1, Lmiui/maml/animation/AlphaAnimation;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lmiui/maml/animation/AlphaAnimation;

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAlphas:Lmiui/maml/animation/AlphaAnimation;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lmiui/maml/animation/PositionAnimation;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lmiui/maml/animation/PositionAnimation;

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPositions:Lmiui/maml/animation/PositionAnimation;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lmiui/maml/animation/RotationAnimation;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lmiui/maml/animation/RotationAnimation;

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotations:Lmiui/maml/animation/RotationAnimation;

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lmiui/maml/animation/SizeAnimation;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lmiui/maml/animation/SizeAnimation;

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mSizes:Lmiui/maml/animation/SizeAnimation;

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lmiui/maml/animation/ScaleAnimation;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lmiui/maml/animation/ScaleAnimation;

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScales:Lmiui/maml/animation/ScaleAnimation;

    :cond_4
    :goto_0
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTouchable:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-super {p0, p1}, Lmiui/maml/elements/ScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    if-eq v4, v5, :cond_3

    const/4 v6, 0x2

    if-eq v4, v6, :cond_2

    const/4 v6, 0x3

    if-eq v4, v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lmiui/maml/elements/AnimatedScreenElement;->handleCancel()V

    goto :goto_1

    :cond_2
    iget-boolean v4, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPressed:Z

    if-eqz v4, :cond_8

    invoke-virtual {p0, v0, v2}, Lmiui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    move-result v3

    const-string/jumbo v4, "move"

    invoke-virtual {p0, v4}, Lmiui/maml/elements/AnimatedScreenElement;->performAction(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lmiui/maml/elements/AnimatedScreenElement;->onActionMove(FF)V

    goto :goto_1

    :cond_3
    iget-boolean v4, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPressed:Z

    if-eqz v4, :cond_8

    iput-boolean v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPressed:Z

    invoke-virtual {p0, v0, v2}, Lmiui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lmiui/maml/elements/AnimatedScreenElement;->mIsHaptic:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v4, v5}, Lmiui/maml/ScreenElementRoot;->haptic(I)V

    :cond_4
    const-string/jumbo v4, "up"

    invoke-virtual {p0, v4}, Lmiui/maml/elements/AnimatedScreenElement;->performAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->onActionUp()V

    goto :goto_0

    :cond_5
    const-string v4, "cancel"

    invoke-virtual {p0, v4}, Lmiui/maml/elements/AnimatedScreenElement;->performAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->onActionCancel()V

    :goto_0
    const/4 v3, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v0, v2}, Lmiui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    move-result v4

    if-eqz v4, :cond_8

    iput-boolean v5, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPressed:Z

    iget-boolean v4, p0, Lmiui/maml/elements/AnimatedScreenElement;->mIsHaptic:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v4, v5}, Lmiui/maml/ScreenElementRoot;->haptic(I)V

    :cond_7
    const-string v4, "down"

    invoke-virtual {p0, v4}, Lmiui/maml/elements/AnimatedScreenElement;->performAction(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lmiui/maml/elements/AnimatedScreenElement;->onActionDown(FF)V

    const/4 v3, 0x1

    :cond_8
    :goto_1
    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->requestUpdate()V

    :cond_9
    if-eqz v3, :cond_a

    iget-boolean v4, p0, Lmiui/maml/elements/AnimatedScreenElement;->mInterceptTouch:Z

    if-eqz v4, :cond_a

    move v1, v5

    :cond_a
    return v1

    :cond_b
    :goto_2
    return v1
.end method

.method protected onVisibilityChange(Z)V
    .locals 3

    invoke-super {p0, p1}, Lmiui/maml/elements/ScreenElement;->onVisibilityChange(Z)V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lmiui/maml/elements/AnimatedScreenElement;->handleCancel()V

    iget v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mVirtualViewId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getMamlAccessHelper()Lmiui/maml/util/MamlAccessHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getMamlAccessHelper()Lmiui/maml/util/MamlAccessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/util/MamlAccessHelper;->getFocusedVirtualView()I

    move-result v0

    iget v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mVirtualViewId:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getMamlAccessHelper()Lmiui/maml/util/MamlAccessHelper;

    move-result-object v0

    iget v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mVirtualViewId:I

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Lmiui/maml/util/MamlAccessHelper;->performAccessibilityAction(II)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->pause()V

    invoke-direct {p0}, Lmiui/maml/elements/AnimatedScreenElement;->handleCancel()V

    :try_start_0
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAnimTarget:Lmiui/maml/folme/AnimatedTarget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAnimTarget:Lmiui/maml/folme/AnimatedTarget;

    invoke-static {v0}, Lmiui/animation/Folme;->useAt(Lmiui/animation/IAnimTarget;)Lmiui/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiui/animation/IFolme;->state()Lmiui/animation/IStateStyle;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v2

    new-array v2, v2, [Lmiui/animation/property/FloatProperty;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiui/animation/IStateStyle;->end([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->updateVisibility()V

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->doRenderWithTranslation(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_0
    return-void
.end method

.method public setHeight(D)V
    .locals 3

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHeightProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->descale(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/folme/PropertyWrapper;->setValue(D)V

    return-void
.end method

.method public setOnTickListener(Lmiui/maml/elements/FunctionElement;)V
    .locals 0

    iput-object p1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTickListener:Lmiui/maml/elements/FunctionElement;

    return-void
.end method

.method public setVirtualViewId(I)V
    .locals 0

    iput p1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mVirtualViewId:I

    return-void
.end method

.method public setWidth(D)V
    .locals 3

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mWidthProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->descale(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/folme/PropertyWrapper;->setValue(D)V

    return-void
.end method

.method public setX(D)V
    .locals 3

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mXProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->descale(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/folme/PropertyWrapper;->setValue(D)V

    return-void
.end method

.method public setY(D)V
    .locals 3

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mYProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->descale(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/folme/PropertyWrapper;->setValue(D)V

    return-void
.end method

.method public touched(FF)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lmiui/maml/elements/AnimatedScreenElement;->touched(FFZ)Z

    move-result v0

    return v0
.end method

.method public touched(FFZ)Z
    .locals 5

    if-eqz p3, :cond_2

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->getParentLeft()F

    move-result v0

    :goto_0
    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lmiui/maml/elements/ElementGroup;->getParentTop()F

    move-result v1

    :goto_1
    sub-float/2addr p1, v0

    sub-float/2addr p2, v1

    :cond_2
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getLeft()F

    move-result v0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getTop()F

    move-result v1

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v2

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v3

    cmpl-float v4, p1, v0

    if-ltz v4, :cond_3

    add-float v4, v0, v2

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_3

    cmpl-float v4, p2, v1

    if-ltz v4, :cond_3

    add-float v4, v1, v3

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    return v4
.end method

.method public unsetOnTickListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mTickListener:Lmiui/maml/elements/FunctionElement;

    return-void
.end method
