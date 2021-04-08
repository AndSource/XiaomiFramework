.class public Landroid/view/InsetsAnimationControlImpl;
.super Ljava/lang/Object;
.source "InsetsAnimationControlImpl.java"

# interfaces
.implements Landroid/view/WindowInsetsAnimationController;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# instance fields
.field private final mAnimation:Landroid/view/WindowInsetsAnimationListener$InsetsAnimation;

.field private mCancelled:Z

.field private final mConsumers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private final mController:Landroid/view/InsetsController;

.field private mCurrentInsets:Landroid/graphics/Insets;

.field private mFinished:Z

.field private mFinishedShownTypes:I

.field private final mFrame:Landroid/graphics/Rect;

.field private final mHiddenInsets:Landroid/graphics/Insets;

.field private final mInitialInsetsState:Landroid/view/InsetsState;

.field private final mListener:Landroid/view/WindowInsetsAnimationControlListener;

.field private mPendingInsets:Landroid/graphics/Insets;

.field private final mShownInsets:Landroid/graphics/Insets;

.field private final mSideSourceMap:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Landroid/view/InsetsSourceConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpFrame:Landroid/graphics/Rect;

.field private final mTmpMatrix:Landroid/graphics/Matrix;

.field private final mTransactionApplierSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SyncRtSurfaceTransactionApplier;",
            ">;"
        }
    .end annotation
.end field

.field private final mTypeSideMap:Landroid/util/SparseIntArray;

.field private final mTypes:I


# direct methods
.method public constructor <init>(Landroid/util/SparseArray;Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/WindowInsetsAnimationControlListener;ILjava/util/function/Supplier;Landroid/view/InsetsController;)V
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceConsumer;",
            ">;",
            "Landroid/graphics/Rect;",
            "Landroid/view/InsetsState;",
            "Landroid/view/WindowInsetsAnimationControlListener;",
            "I",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SyncRtSurfaceTransactionApplier;",
            ">;",
            "Landroid/view/InsetsController;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mTmpFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mTypeSideMap:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mSideSourceMap:Landroid/util/SparseSetArray;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mTmpMatrix:Landroid/graphics/Matrix;

    iput-object p1, p0, Landroid/view/InsetsAnimationControlImpl;->mConsumers:Landroid/util/SparseArray;

    iput-object p4, p0, Landroid/view/InsetsAnimationControlImpl;->mListener:Landroid/view/WindowInsetsAnimationControlListener;

    iput p5, p0, Landroid/view/InsetsAnimationControlImpl;->mTypes:I

    iput-object p6, p0, Landroid/view/InsetsAnimationControlImpl;->mTransactionApplierSupplier:Ljava/util/function/Supplier;

    iput-object p7, p0, Landroid/view/InsetsAnimationControlImpl;->mController:Landroid/view/InsetsController;

    new-instance v0, Landroid/view/InsetsState;

    const/4 v1, 0x1

    invoke-direct {v0, p3, v1}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    iput-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mInitialInsetsState:Landroid/view/InsetsState;

    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mInitialInsetsState:Landroid/view/InsetsState;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Landroid/view/InsetsAnimationControlImpl;->getInsetsFromState(Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/util/SparseIntArray;)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mCurrentInsets:Landroid/graphics/Insets;

    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mInitialInsetsState:Landroid/view/InsetsState;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Landroid/view/InsetsAnimationControlImpl;->calculateInsets(Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/util/SparseArray;ZLandroid/util/SparseIntArray;)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mInitialInsetsState:Landroid/view/InsetsState;

    iget-object v6, p0, Landroid/view/InsetsAnimationControlImpl;->mTypeSideMap:Landroid/util/SparseIntArray;

    const/4 v5, 0x1

    invoke-direct/range {v1 .. v6}, Landroid/view/InsetsAnimationControlImpl;->calculateInsets(Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/util/SparseArray;ZLandroid/util/SparseIntArray;)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mFrame:Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mTypeSideMap:Landroid/util/SparseIntArray;

    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mSideSourceMap:Landroid/util/SparseSetArray;

    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mConsumers:Landroid/util/SparseArray;

    invoke-static {v0, v1, v2}, Landroid/view/InsetsAnimationControlImpl;->buildTypeSourcesMap(Landroid/util/SparseIntArray;Landroid/util/SparseSetArray;Landroid/util/SparseArray;)V

    invoke-interface {p4, p0, p5}, Landroid/view/WindowInsetsAnimationControlListener;->onReady(Landroid/view/WindowInsetsAnimationController;I)V

    new-instance v0, Landroid/view/WindowInsetsAnimationListener$InsetsAnimation;

    iget v1, p0, Landroid/view/InsetsAnimationControlImpl;->mTypes:I

    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    iget-object v3, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowInsetsAnimationListener$InsetsAnimation;-><init>(ILandroid/graphics/Insets;Landroid/graphics/Insets;)V

    iput-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mAnimation:Landroid/view/WindowInsetsAnimationListener$InsetsAnimation;

    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mController:Landroid/view/InsetsController;

    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mAnimation:Landroid/view/WindowInsetsAnimationListener$InsetsAnimation;

    invoke-virtual {v0, v1}, Landroid/view/InsetsController;->dispatchAnimationStarted(Landroid/view/WindowInsetsAnimationListener$InsetsAnimation;)V

    return-void
.end method

.method private addTranslationToMatrix(IILandroid/graphics/Matrix;Landroid/graphics/Rect;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v2, p2

    invoke-virtual {p3, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p4, v0, p2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_1
    int-to-float v2, p2

    invoke-virtual {p3, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p4, p2, v0}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_2
    neg-int v2, p2

    int-to-float v2, v2

    invoke-virtual {p3, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    neg-int v1, p2

    invoke-virtual {p4, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_3
    neg-int v2, p2

    int-to-float v2, v2

    invoke-virtual {p3, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    neg-int v1, p2

    invoke-virtual {p4, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    nop

    :goto_0
    return-void
.end method

.method private static buildTypeSourcesMap(Landroid/util/SparseIntArray;Landroid/util/SparseSetArray;Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseIntArray;",
            "Landroid/util/SparseSetArray<",
            "Landroid/view/InsetsSourceConsumer;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceConsumer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsSourceConsumer;

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private calculateInsets(Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/util/SparseArray;ZLandroid/util/SparseIntArray;)Landroid/graphics/Insets;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/InsetsState;",
            "Landroid/graphics/Rect;",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceConsumer;",
            ">;Z",
            "Landroid/util/SparseIntArray;",
            ")",
            "Landroid/graphics/Insets;"
        }
    .end annotation

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v1}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/view/InsetsSource;->setVisible(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p5}, Landroid/view/InsetsAnimationControlImpl;->getInsetsFromState(Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/util/SparseIntArray;)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method private getInsetsFromState(Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/util/SparseIntArray;)Landroid/graphics/Insets;
    .locals 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x10

    move-object v0, p1

    move-object v1, p2

    move-object v8, p3

    invoke-virtual/range {v0 .. v8}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;ZZLandroid/view/DisplayCutout;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object v0

    iget v1, p0, Landroid/view/InsetsAnimationControlImpl;->mTypes:I

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method private sanitize(Landroid/graphics/Insets;)Landroid/graphics/Insets;
    .locals 2

    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    invoke-static {p1, v0}, Landroid/graphics/Insets;->min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    invoke-static {v0, v1}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method private updateLeashesForSide(IIILjava/util/ArrayList;Landroid/view/InsetsState;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/ArrayList<",
            "Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;",
            ">;",
            "Landroid/view/InsetsState;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Landroid/view/InsetsAnimationControlImpl;->mSideSourceMap:Landroid/util/SparseSetArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_0
    if-ltz v3, :cond_1

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/InsetsSourceConsumer;

    iget-object v6, v0, Landroid/view/InsetsAnimationControlImpl;->mInitialInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v5}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v6

    invoke-virtual {v5}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v7

    invoke-virtual {v5}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v8

    iget-object v9, v0, Landroid/view/InsetsAnimationControlImpl;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    invoke-virtual {v7}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Point;->y:I

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v9, v0, Landroid/view/InsetsAnimationControlImpl;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v9, v0, Landroid/view/InsetsAnimationControlImpl;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v10, v0, Landroid/view/InsetsAnimationControlImpl;->mTmpFrame:Landroid/graphics/Rect;

    move/from16 v15, p2

    invoke-direct {v0, v1, v15, v9, v10}, Landroid/view/InsetsAnimationControlImpl;->addTranslationToMatrix(IILandroid/graphics/Matrix;Landroid/graphics/Rect;)V

    invoke-virtual {v6}, Landroid/view/InsetsSource;->getType()I

    move-result v9

    move-object/from16 v14, p5

    invoke-virtual {v14, v9}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v9

    iget-object v10, v0, Landroid/view/InsetsAnimationControlImpl;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)V

    new-instance v13, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    const/high16 v11, 0x3f800000    # 1.0f

    iget-object v12, v0, Landroid/view/InsetsAnimationControlImpl;->mTmpMatrix:Landroid/graphics/Matrix;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    if-eqz p3, :cond_0

    move/from16 v19, v4

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    move/from16 v19, v9

    :goto_1
    move-object v9, v13

    move-object v10, v8

    move-object v4, v13

    move-object/from16 v13, v16

    move/from16 v14, v17

    move/from16 v15, v18

    move/from16 v16, v19

    invoke-direct/range {v9 .. v16}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;-><init>(Landroid/view/SurfaceControl;FLandroid/graphics/Matrix;Landroid/graphics/Rect;IFZ)V

    move-object/from16 v9, p4

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v9, p4

    return-void
.end method


# virtual methods
.method public applyChangeInsets(Landroid/view/InsetsState;)Z
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mCancelled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    invoke-static {v0, v1}, Landroid/graphics/Insets;->subtract(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, v0, Landroid/graphics/Insets;->left:I

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    iget v4, v0, Landroid/graphics/Insets;->left:I

    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    iget v5, v2, Landroid/graphics/Insets;->left:I

    move-object v2, p0

    move-object v6, v1

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Landroid/view/InsetsAnimationControlImpl;->updateLeashesForSide(IIILjava/util/ArrayList;Landroid/view/InsetsState;)V

    :cond_1
    iget v2, v0, Landroid/graphics/Insets;->top:I

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    iget v4, v0, Landroid/graphics/Insets;->top:I

    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    iget v5, v2, Landroid/graphics/Insets;->top:I

    move-object v2, p0

    move-object v6, v1

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Landroid/view/InsetsAnimationControlImpl;->updateLeashesForSide(IIILjava/util/ArrayList;Landroid/view/InsetsState;)V

    :cond_2
    iget v2, v0, Landroid/graphics/Insets;->right:I

    if-eqz v2, :cond_3

    const/4 v3, 0x2

    iget v4, v0, Landroid/graphics/Insets;->right:I

    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    iget v5, v2, Landroid/graphics/Insets;->right:I

    move-object v2, p0

    move-object v6, v1

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Landroid/view/InsetsAnimationControlImpl;->updateLeashesForSide(IIILjava/util/ArrayList;Landroid/view/InsetsState;)V

    :cond_3
    iget v2, v0, Landroid/graphics/Insets;->bottom:I

    if-eqz v2, :cond_4

    const/4 v3, 0x3

    iget v4, v0, Landroid/graphics/Insets;->bottom:I

    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    iget v5, v2, Landroid/graphics/Insets;->bottom:I

    move-object v2, p0

    move-object v6, v1

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Landroid/view/InsetsAnimationControlImpl;->updateLeashesForSide(IIILjava/util/ArrayList;Landroid/view/InsetsState;)V

    :cond_4
    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mTransactionApplierSupplier:Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SyncRtSurfaceTransactionApplier;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    invoke-virtual {v2, v3}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    iget-object v3, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    iput-object v3, p0, Landroid/view/InsetsAnimationControlImpl;->mCurrentInsets:Landroid/graphics/Insets;

    iget-boolean v3, p0, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/view/InsetsAnimationControlImpl;->mController:Landroid/view/InsetsController;

    iget v4, p0, Landroid/view/InsetsAnimationControlImpl;->mFinishedShownTypes:I

    invoke-virtual {v3, p0, v4}, Landroid/view/InsetsController;->notifyFinished(Landroid/view/InsetsAnimationControlImpl;I)V

    :cond_5
    iget-boolean v3, p0, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    return v3
.end method

.method public changeInsets(Landroid/graphics/Insets;)V
    .locals 2

    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mCancelled:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/view/InsetsAnimationControlImpl;->sanitize(Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->scheduleApplyChangeInsets()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t change insets on an animation that is cancelled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t change insets on an animation that is finished."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public finish(I)V
    .locals 6

    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mCancelled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/view/InsetsState;

    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mController:Landroid/view/InsetsController;

    invoke-virtual {v1}, Landroid/view/InsetsController;->getState()Landroid/view/InsetsState;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    iget-object v3, p0, Landroid/view/InsetsAnimationControlImpl;->mConsumers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsSourceConsumer;

    invoke-virtual {v3}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v4

    invoke-static {v4}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v4

    and-int/2addr v4, p1

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/InsetsSource;->setVisible(Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3}, Landroid/view/InsetsAnimationControlImpl;->getInsetsFromState(Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/util/SparseIntArray;)Landroid/graphics/Insets;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/InsetsAnimationControlImpl;->changeInsets(Landroid/graphics/Insets;)V

    iput-boolean v2, p0, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    iput p1, p0, Landroid/view/InsetsAnimationControlImpl;->mFinishedShownTypes:I

    return-void
.end method

.method getAnimation()Landroid/view/WindowInsetsAnimationListener$InsetsAnimation;
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mAnimation:Landroid/view/WindowInsetsAnimationListener$InsetsAnimation;

    return-object v0
.end method

.method public getCurrentInsets()Landroid/graphics/Insets;
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mCurrentInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public getHiddenStateInsets()Landroid/graphics/Insets;
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public getShownStateInsets()Landroid/graphics/Insets;
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public getTypes()I
    .locals 1

    iget v0, p0, Landroid/view/InsetsAnimationControlImpl;->mTypes:I

    return v0
.end method

.method public onCancelled()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mCancelled:Z

    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mListener:Landroid/view/WindowInsetsAnimationControlListener;

    invoke-interface {v0}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled()V

    return-void
.end method
