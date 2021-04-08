.class public Landroid/view/InsetsController;
.super Ljava/lang/Object;
.source "InsetsController.java"

# interfaces
.implements Landroid/view/WindowInsetsController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InsetsController$InsetsProperty;,
        Landroid/view/InsetsController$AnimationDirection;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION_HIDE_MS:I = 0x154

.field private static final ANIMATION_DURATION_SHOW_MS:I = 0x113

.field private static final DIRECTION_HIDE:I = 0x2

.field private static final DIRECTION_NONE:I = 0x0

.field private static final DIRECTION_SHOW:I = 0x1

.field private static final INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static sEvaluator:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Landroid/graphics/Insets;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mAnimCallback:Ljava/lang/Runnable;

.field private mAnimCallbackScheduled:Z

.field private final mAnimationControls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/InsetsAnimationControlImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationDirection:I
    .annotation build Landroid/view/InsetsController$AnimationDirection;
    .end annotation
.end field

.field private final mFrame:Landroid/graphics/Rect;

.field private mLastInsets:Landroid/view/WindowInsets;

.field private final mLastLegacyContentInsets:Landroid/graphics/Rect;

.field private mLastLegacySoftInputMode:I

.field private final mLastLegacyStableInsets:Landroid/graphics/Rect;

.field private mPendingTypesToShow:I

.field private final mSourceConsumers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private final mState:Landroid/view/InsetsState;

.field private final mTmpControlArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpFinishedControls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/InsetsAnimationControlImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpState:Landroid/view/InsetsState;

.field private final mViewRoot:Landroid/view/ViewRootImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/view/InsetsController;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    sget-object v0, Landroid/view/-$$Lambda$InsetsController$Cj7UJrCkdHvJAZ_cYKrXuTMsjz8;->INSTANCE:Landroid/view/-$$Lambda$InsetsController$Cj7UJrCkdHvJAZ_cYKrXuTMsjz8;

    sput-object v0, Landroid/view/InsetsController;->sEvaluator:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "InsetsControllerImpl"

    iput-object v0, p0, Landroid/view/InsetsController;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mTmpState:Landroid/view/InsetsState;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mAnimationControls:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mTmpFinishedControls:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mLastLegacyContentInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsController;->mLastLegacyStableInsets:Landroid/graphics/Rect;

    iput-object p1, p0, Landroid/view/InsetsController;->mViewRoot:Landroid/view/ViewRootImpl;

    new-instance v0, Landroid/view/-$$Lambda$InsetsController$HI9QZ2HvGm6iykc-WONz2KPG61Q;

    invoke-direct {v0, p0}, Landroid/view/-$$Lambda$InsetsController$HI9QZ2HvGm6iykc-WONz2KPG61Q;-><init>(Landroid/view/InsetsController;)V

    iput-object v0, p0, Landroid/view/InsetsController;->mAnimCallback:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Landroid/view/InsetsController;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/InsetsController;->showDirectly(I)V

    return-void
.end method

.method static synthetic access$100(Landroid/view/InsetsController;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/InsetsController;->hideDirectly(I)V

    return-void
.end method

.method static synthetic access$200()Landroid/animation/TypeEvaluator;
    .locals 1

    sget-object v0, Landroid/view/InsetsController;->sEvaluator:Landroid/animation/TypeEvaluator;

    return-object v0
.end method

.method static synthetic access$300()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Landroid/view/InsetsController;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$502(Landroid/view/InsetsController;I)I
    .locals 0

    iput p1, p0, Landroid/view/InsetsController;->mAnimationDirection:I

    return p1
.end method

.method private applyAnimation(IZZ)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/view/InsetsController$1;

    invoke-direct {v0, p0, p2, p1}, Landroid/view/InsetsController$1;-><init>(Landroid/view/InsetsController;ZI)V

    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p3}, Landroid/view/InsetsController;->controlAnimationUnchecked(ILandroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;Z)V

    return-void
.end method

.method private applyLocalVisibilityOverride()V
    .locals 2

    iget-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v1}, Landroid/view/InsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private cancelAnimation(Landroid/view/InsetsAnimationControlImpl;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/InsetsAnimationControlImpl;->onCancelled()V

    iget-object v0, p0, Landroid/view/InsetsController;->mAnimationControls:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private cancelExistingControllers(I)V
    .locals 3

    iget-object v0, p0, Landroid/view/InsetsController;->mAnimationControls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/view/InsetsController;->mAnimationControls:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v1}, Landroid/view/InsetsAnimationControlImpl;->getTypes()I

    move-result v2

    and-int/2addr v2, p1

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlImpl;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private collectConsumers(ZLandroid/util/ArraySet;Landroid/util/SparseArray;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceConsumer;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_6

    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Landroid/view/InsetsSourceConsumer;->isVisible()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4, p1}, Landroid/view/InsetsSourceConsumer;->requestShow(Z)I

    move-result v5

    if-eqz v5, :cond_2

    if-eq v5, v3, :cond_1

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    iget v5, p0, Landroid/view/InsetsController;->mPendingTypesToShow:I

    if-eqz v5, :cond_3

    const/16 v6, 0xa

    invoke-static {v6}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v6

    not-int v6, v6

    and-int/2addr v5, v6

    iput v5, p0, Landroid/view/InsetsController;->mPendingTypesToShow:I

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v5

    invoke-static {v5}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v5

    or-int/2addr v0, v5

    nop

    :cond_3
    :goto_1
    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Landroid/view/InsetsSourceConsumer;->notifyHidden()V

    invoke-virtual {v4}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v5

    invoke-static {v5}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v5

    or-int/2addr v0, v5

    :goto_2
    invoke-virtual {v4}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v5

    invoke-virtual {p3, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_6
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private collectPendingConsumers(ILandroid/util/SparseArray;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceConsumer;",
            ">;)I"
        }
    .end annotation

    iget v0, p0, Landroid/view/InsetsController;->mPendingTypesToShow:I

    if-eqz v0, :cond_1

    or-int/2addr p1, v0

    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-static {v0}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v3

    invoke-virtual {p2, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/InsetsController;->mPendingTypesToShow:I

    :cond_1
    return p1
.end method

.method private controlAnimationUnchecked(ILandroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;Z)V
    .locals 16

    move-object/from16 v8, p0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct/range {p0 .. p1}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    iget-object v0, v8, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-static/range {p1 .. p1}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v9

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v10, v0

    move/from16 v11, p4

    invoke-direct {v8, v11, v9, v10}, Landroid/view/InsetsController;->collectConsumers(ZLandroid/util/ArraySet;Landroid/util/SparseArray;)Landroid/util/Pair;

    move-result-object v12

    iget-object v0, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_1

    iput v0, v8, Landroid/view/InsetsController;->mPendingTypesToShow:I

    return-void

    :cond_1
    invoke-direct {v8, v0, v10}, Landroid/view/InsetsController;->collectPendingConsumers(ILandroid/util/SparseArray;)I

    move-result v14

    if-nez v14, :cond_2

    invoke-interface/range {p2 .. p2}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled()V

    return-void

    :cond_2
    new-instance v15, Landroid/view/InsetsAnimationControlImpl;

    iget-object v3, v8, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    new-instance v6, Landroid/view/-$$Lambda$InsetsController$n9dGLDW5oKSxT73i9ZlnIPWSzms;

    invoke-direct {v6, v8}, Landroid/view/-$$Lambda$InsetsController$n9dGLDW5oKSxT73i9ZlnIPWSzms;-><init>(Landroid/view/InsetsController;)V

    move-object v0, v15

    move-object v1, v10

    move-object/from16 v2, p3

    move-object/from16 v4, p2

    move v5, v14

    move-object/from16 v7, p0

    invoke-direct/range {v0 .. v7}, Landroid/view/InsetsAnimationControlImpl;-><init>(Landroid/util/SparseArray;Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/WindowInsetsAnimationControlListener;ILjava/util/function/Supplier;Landroid/view/InsetsController;)V

    iget-object v1, v8, Landroid/view/InsetsController;->mAnimationControls:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private controlWindowInsetsAnimation(ILandroid/view/WindowInsetsAnimationControlListener;Z)V
    .locals 2

    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v0}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled()V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/view/InsetsController;->controlAnimationUnchecked(ILandroid/view/WindowInsetsAnimationControlListener;Landroid/graphics/Rect;Z)V

    return-void
.end method

.method private createConsumerOfType(I)Landroid/view/InsetsSourceConsumer;
    .locals 3

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/view/ImeInsetsSourceConsumer;

    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    sget-object v2, Landroid/view/-$$Lambda$9vBfnQOmNnsc9WU80IIatZHQGKc;->INSTANCE:Landroid/view/-$$Lambda$9vBfnQOmNnsc9WU80IIatZHQGKc;

    invoke-direct {v0, v1, v2, p0}, Landroid/view/ImeInsetsSourceConsumer;-><init>(Landroid/view/InsetsState;Ljava/util/function/Supplier;Landroid/view/InsetsController;)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/view/InsetsSourceConsumer;

    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    sget-object v2, Landroid/view/-$$Lambda$9vBfnQOmNnsc9WU80IIatZHQGKc;->INSTANCE:Landroid/view/-$$Lambda$9vBfnQOmNnsc9WU80IIatZHQGKc;

    invoke-direct {v0, p1, v1, v2, p0}, Landroid/view/InsetsSourceConsumer;-><init>(ILandroid/view/InsetsState;Ljava/util/function/Supplier;Landroid/view/InsetsController;)V

    return-object v0
.end method

.method private hideDirectly(I)V
    .locals 3

    invoke-static {p1}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->hide()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$static$0(FLandroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;
    .locals 4

    iget v0, p1, Landroid/graphics/Insets;->top:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Insets;->top:I

    iget v2, p1, Landroid/graphics/Insets;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/Insets;->bottom:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Insets;->bottom:I

    iget v3, p1, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-static {v2, v0, v2, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method private sendStateToWindowManager()V
    .locals 5

    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/view/InsetsController;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/InsetsController;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v2, v0}, Landroid/view/IWindowSession;->insetsModified(Landroid/view/IWindow;Landroid/view/InsetsState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "InsetsControllerImpl"

    const-string v3, "Failed to call insetsModified"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private show(IZ)V
    .locals 7

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_3

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v4

    iget v5, p0, Landroid/view/InsetsController;->mAnimationDirection:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    invoke-virtual {p0}, Landroid/view/InsetsController;->cancelExistingAnimation()V

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Landroid/view/InsetsSourceConsumer;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Landroid/view/InsetsController;->mAnimationDirection:I

    if-eqz v5, :cond_2

    if-ne v5, v6, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v4}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v5

    invoke-static {v5}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v5

    or-int/2addr v0, v5

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0, v3, p2}, Landroid/view/InsetsController;->applyAnimation(IZZ)V

    return-void
.end method

.method private showDirectly(I)V
    .locals 3

    invoke-static {p1}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InsetsSourceConsumer;->show()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public applyImeVisibility(Z)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/InsetsController;->show(IZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/InsetsController;->hide(I)V

    :goto_0
    return-void
.end method

.method public calculateInsets(ZZLandroid/view/DisplayCutout;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/WindowInsets;
    .locals 13
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Landroid/view/InsetsController;->mLastLegacyContentInsets:Landroid/graphics/Rect;

    move-object/from16 v11, p4

    invoke-virtual {v1, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v0, Landroid/view/InsetsController;->mLastLegacyStableInsets:Landroid/graphics/Rect;

    move-object/from16 v12, p5

    invoke-virtual {v1, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v1, p6

    iput v1, v0, Landroid/view/InsetsController;->mLastLegacySoftInputMode:I

    iget-object v2, v0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v3, v0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    const/4 v10, 0x0

    move v4, p1

    move v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v2 .. v10}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;ZZLandroid/view/DisplayCutout;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object v2

    iput-object v2, v0, Landroid/view/InsetsController;->mLastInsets:Landroid/view/WindowInsets;

    iget-object v2, v0, Landroid/view/InsetsController;->mLastInsets:Landroid/view/WindowInsets;

    return-object v2
.end method

.method public cancelExistingAnimation()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-static {}, Landroid/view/WindowInsets$Type;->all()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/InsetsController;->cancelExistingControllers(I)V

    return-void
.end method

.method public controlWindowInsetsAnimation(ILandroid/view/WindowInsetsAnimationControlListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/InsetsController;->controlWindowInsetsAnimation(ILandroid/view/WindowInsetsAnimationControlListener;Z)V

    return-void
.end method

.method public dispatchAnimationFinished(Landroid/view/WindowInsetsAnimationListener$InsetsAnimation;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Landroid/view/InsetsController;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowInsetsAnimationFinished(Landroid/view/WindowInsetsAnimationListener$InsetsAnimation;)V

    return-void
.end method

.method public dispatchAnimationStarted(Landroid/view/WindowInsetsAnimationListener$InsetsAnimation;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Landroid/view/InsetsController;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowInsetsAnimationStarted(Landroid/view/WindowInsetsAnimationListener$InsetsAnimation;)V

    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "InsetsController:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/view/InsetsState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsSourceConsumer;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/view/InsetsController;->createConsumerOfType(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public getState()Landroid/view/InsetsState;
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    return-object v0
.end method

.method getViewRoot()Landroid/view/ViewRootImpl;
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsController;->mViewRoot:Landroid/view/ViewRootImpl;

    return-object v0
.end method

.method public hide(I)V
    .locals 7

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_3

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v4

    iget v5, p0, Landroid/view/InsetsController;->mAnimationDirection:I

    if-ne v5, v3, :cond_0

    invoke-virtual {p0}, Landroid/view/InsetsController;->cancelExistingAnimation()V

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Landroid/view/InsetsSourceConsumer;->isVisible()Z

    move-result v5

    if-nez v5, :cond_1

    iget v5, p0, Landroid/view/InsetsController;->mAnimationDirection:I

    if-eqz v5, :cond_2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v4}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v5

    invoke-static {v5}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v5

    or-int/2addr v0, v5

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v2}, Landroid/view/InsetsController;->applyAnimation(IZZ)V

    return-void
.end method

.method public synthetic lambda$controlAnimationUnchecked$2$InsetsController()Landroid/view/SyncRtSurfaceTransactionApplier;
    .locals 2

    new-instance v0, Landroid/view/SyncRtSurfaceTransactionApplier;

    iget-object v1, p0, Landroid/view/InsetsController;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/view/SyncRtSurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public synthetic lambda$new$1$InsetsController()V
    .locals 12

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    iget-object v0, p0, Landroid/view/InsetsController;->mAnimationControls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/InsetsController;->mTmpFinishedControls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Landroid/view/InsetsState;

    iget-object v1, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    iget-object v1, p0, Landroid/view/InsetsController;->mAnimationControls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    iget-object v3, p0, Landroid/view/InsetsController;->mAnimationControls:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsAnimationControlImpl;

    iget-object v4, p0, Landroid/view/InsetsController;->mAnimationControls:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v4, v0}, Landroid/view/InsetsAnimationControlImpl;->applyChangeInsets(Landroid/view/InsetsState;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/view/InsetsController;->mTmpFinishedControls:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/InsetsController;->mLastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->isRound()Z

    move-result v5

    iget-object v1, p0, Landroid/view/InsetsController;->mLastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->shouldAlwaysConsumeSystemBars()Z

    move-result v6

    iget-object v1, p0, Landroid/view/InsetsController;->mLastInsets:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v7

    iget-object v8, p0, Landroid/view/InsetsController;->mLastLegacyContentInsets:Landroid/graphics/Rect;

    iget-object v9, p0, Landroid/view/InsetsController;->mLastLegacyStableInsets:Landroid/graphics/Rect;

    iget v10, p0, Landroid/view/InsetsController;->mLastLegacySoftInputMode:I

    const/4 v11, 0x0

    move-object v3, v0

    invoke-virtual/range {v3 .. v11}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;ZZLandroid/view/DisplayCutout;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object v1

    iget-object v3, p0, Landroid/view/InsetsController;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    iget-object v3, p0, Landroid/view/InsetsController;->mTmpFinishedControls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_1
    if-ltz v3, :cond_3

    iget-object v2, p0, Landroid/view/InsetsController;->mTmpFinishedControls:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v2}, Landroid/view/InsetsAnimationControlImpl;->getAnimation()Landroid/view/WindowInsetsAnimationListener$InsetsAnimation;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/InsetsController;->dispatchAnimationFinished(Landroid/view/WindowInsetsAnimationListener$InsetsAnimation;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method notifyControlRevoked(Landroid/view/InsetsSourceConsumer;)V
    .locals 4

    iget-object v0, p0, Landroid/view/InsetsController;->mAnimationControls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/view/InsetsController;->mAnimationControls:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v1}, Landroid/view/InsetsAnimationControlImpl;->getTypes()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v3

    invoke-static {v3}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Landroid/view/InsetsController;->cancelAnimation(Landroid/view/InsetsAnimationControlImpl;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyFinished(Landroid/view/InsetsAnimationControlImpl;I)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Landroid/view/InsetsController;->mAnimationControls:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/view/InsetsAnimationControlImpl;->getTypes()I

    move-result v0

    not-int v1, p2

    and-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroid/view/InsetsController;->hideDirectly(I)V

    invoke-virtual {p1}, Landroid/view/InsetsAnimationControlImpl;->getTypes()I

    move-result v0

    and-int/2addr v0, p2

    invoke-direct {p0, v0}, Landroid/view/InsetsController;->showDirectly(I)V

    return-void
.end method

.method public notifyVisibilityChanged()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Landroid/view/InsetsController;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->notifyInsetsChanged()V

    invoke-direct {p0}, Landroid/view/InsetsController;->sendStateToWindowManager()V

    return-void
.end method

.method public onControlsChanged([Landroid/view/InsetsSourceControl;)V
    .locals 5

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    iget-object v3, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    iget-object v1, p0, Landroid/view/InsetsController;->mSourceConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceConsumer;

    iget-object v2, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceControl;

    invoke-virtual {v1, v2}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_3

    iget-object v1, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceControl;

    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Landroid/view/InsetsController;->mTmpControlArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public onFrameChanged(Landroid/graphics/Rect;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/InsetsController;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->notifyInsetsChanged()V

    iget-object v0, p0, Landroid/view/InsetsController;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method onStateChanged(Landroid/view/InsetsState;)Z
    .locals 3

    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v0, p1}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v0, p1}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;)V

    iget-object v0, p0, Landroid/view/InsetsController;->mTmpState:Landroid/view/InsetsState;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    invoke-direct {p0}, Landroid/view/InsetsController;->applyLocalVisibilityOverride()V

    iget-object v0, p0, Landroid/view/InsetsController;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->notifyInsetsChanged()V

    iget-object v0, p0, Landroid/view/InsetsController;->mState:Landroid/view/InsetsState;

    iget-object v2, p0, Landroid/view/InsetsController;->mTmpState:Landroid/view/InsetsState;

    invoke-virtual {v0, v2}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/view/InsetsController;->sendStateToWindowManager()V

    :cond_1
    return v1
.end method

.method public onWindowFocusGained()V
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSourceConsumer;->onWindowFocusGained()V

    return-void
.end method

.method public onWindowFocusLost()V
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/view/InsetsController;->getSourceConsumer(I)Landroid/view/InsetsSourceConsumer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSourceConsumer;->onWindowFocusLost()V

    return-void
.end method

.method public scheduleApplyChangeInsets()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/InsetsController;->mViewRoot:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/view/InsetsController;->mAnimCallback:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InsetsController;->mAnimCallbackScheduled:Z

    :cond_0
    return-void
.end method

.method public show(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/InsetsController;->show(IZ)V

    return-void
.end method
