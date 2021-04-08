.class public Lmiui/widget/DynamicListView;
.super Landroid/widget/ListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/DynamicListView$RearrangeListener;,
        Lmiui/widget/DynamicListView$OnItemRemoveListener;
    }
.end annotation


# static fields
.field private static final Bf:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static final Cf:I = 0x5

.field private static final Df:I = 0x32

.field private static final FULL_ALPHA:I = 0xff


# instance fields
.field private Af:Landroid/widget/AbsListView$OnScrollListener;

.field private Dc:Landroid/graphics/drawable/Drawable;

.field private final INVALID_ID:I

.field private final INVALID_POINTER_ID:I

.field private Xe:F

.field private Ye:I

.field private Ze:I

.field private _e:I

.field private af:Z

.field private bf:Z

.field private cf:I

.field private df:I

.field private ef:I

.field private ff:I

.field private gf:J

.field private hf:J

.field private if:J

.field private jf:Landroid/graphics/drawable/BitmapDrawable;

.field private kf:Landroid/graphics/Rect;

.field private lf:Landroid/graphics/Rect;

.field private mActivePointerId:I

.field private mDuration:J

.field private mPaint:Landroid/graphics/Paint;

.field private mf:Landroid/graphics/Rect;

.field private nf:Landroid/graphics/Rect;

.field private of:Z

.field private pf:I

.field private qf:I

.field private rf:Landroid/widget/AbsListView$OnScrollListener;

.field private sf:Landroid/animation/ObjectAnimator;

.field private tf:Landroid/animation/ObjectAnimator;

.field private uf:Lmiui/widget/DynamicListView$RearrangeListener;

.field private vf:Lmiui/widget/DynamicListView$OnItemRemoveListener;

.field private wf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private xf:Landroid/graphics/Bitmap;

.field private yf:Landroid/animation/AnimatorListenerAdapter;

.field private zf:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmiui/widget/DynamicListView$1;

    invoke-direct {v0}, Lmiui/widget/DynamicListView$1;-><init>()V

    sput-object v0, Lmiui/widget/DynamicListView;->Bf:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/DynamicListView;->INVALID_ID:I

    iput v0, p0, Lmiui/widget/DynamicListView;->INVALID_POINTER_ID:I

    const/4 v1, 0x0

    iput v1, p0, Lmiui/widget/DynamicListView;->Xe:F

    const-wide/16 v1, 0xc8

    iput-wide v1, p0, Lmiui/widget/DynamicListView;->mDuration:J

    iput v0, p0, Lmiui/widget/DynamicListView;->Ye:I

    iput v0, p0, Lmiui/widget/DynamicListView;->Ze:I

    const/4 v1, 0x0

    iput v1, p0, Lmiui/widget/DynamicListView;->_e:I

    iput-boolean v1, p0, Lmiui/widget/DynamicListView;->af:Z

    iput-boolean v1, p0, Lmiui/widget/DynamicListView;->bf:Z

    iput v1, p0, Lmiui/widget/DynamicListView;->cf:I

    iput v1, p0, Lmiui/widget/DynamicListView;->ff:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lmiui/widget/DynamicListView;->gf:J

    iput-wide v2, p0, Lmiui/widget/DynamicListView;->hf:J

    iput-wide v2, p0, Lmiui/widget/DynamicListView;->if:J

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lmiui/widget/DynamicListView;->mf:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lmiui/widget/DynamicListView;->nf:Landroid/graphics/Rect;

    iput v0, p0, Lmiui/widget/DynamicListView;->mActivePointerId:I

    iput-boolean v1, p0, Lmiui/widget/DynamicListView;->of:Z

    iput v1, p0, Lmiui/widget/DynamicListView;->pf:I

    new-instance v0, Lmiui/util/ArrayMap;

    invoke-direct {v0}, Lmiui/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->wf:Ljava/util/Map;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Lmiui/widget/A;

    invoke-direct {v0, p0}, Lmiui/widget/A;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->yf:Landroid/animation/AnimatorListenerAdapter;

    new-instance v0, Lmiui/widget/B;

    invoke-direct {v0, p0}, Lmiui/widget/B;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->zf:Ljava/lang/Runnable;

    new-instance v0, Lmiui/widget/C;

    invoke-direct {v0, p0}, Lmiui/widget/C;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->Af:Landroid/widget/AbsListView$OnScrollListener;

    invoke-direct {p0, p1}, Lmiui/widget/DynamicListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    iput p2, p0, Lmiui/widget/DynamicListView;->INVALID_ID:I

    iput p2, p0, Lmiui/widget/DynamicListView;->INVALID_POINTER_ID:I

    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/DynamicListView;->Xe:F

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lmiui/widget/DynamicListView;->mDuration:J

    iput p2, p0, Lmiui/widget/DynamicListView;->Ye:I

    iput p2, p0, Lmiui/widget/DynamicListView;->Ze:I

    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/DynamicListView;->_e:I

    iput-boolean v0, p0, Lmiui/widget/DynamicListView;->af:Z

    iput-boolean v0, p0, Lmiui/widget/DynamicListView;->bf:Z

    iput v0, p0, Lmiui/widget/DynamicListView;->cf:I

    iput v0, p0, Lmiui/widget/DynamicListView;->ff:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lmiui/widget/DynamicListView;->gf:J

    iput-wide v1, p0, Lmiui/widget/DynamicListView;->hf:J

    iput-wide v1, p0, Lmiui/widget/DynamicListView;->if:J

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lmiui/widget/DynamicListView;->mf:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lmiui/widget/DynamicListView;->nf:Landroid/graphics/Rect;

    iput p2, p0, Lmiui/widget/DynamicListView;->mActivePointerId:I

    iput-boolean v0, p0, Lmiui/widget/DynamicListView;->of:Z

    iput v0, p0, Lmiui/widget/DynamicListView;->pf:I

    new-instance p2, Lmiui/util/ArrayMap;

    invoke-direct {p2}, Lmiui/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lmiui/widget/DynamicListView;->wf:Ljava/util/Map;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lmiui/widget/DynamicListView;->mPaint:Landroid/graphics/Paint;

    new-instance p2, Lmiui/widget/A;

    invoke-direct {p2, p0}, Lmiui/widget/A;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object p2, p0, Lmiui/widget/DynamicListView;->yf:Landroid/animation/AnimatorListenerAdapter;

    new-instance p2, Lmiui/widget/B;

    invoke-direct {p2, p0}, Lmiui/widget/B;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object p2, p0, Lmiui/widget/DynamicListView;->zf:Ljava/lang/Runnable;

    new-instance p2, Lmiui/widget/C;

    invoke-direct {p2, p0}, Lmiui/widget/C;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object p2, p0, Lmiui/widget/DynamicListView;->Af:Landroid/widget/AbsListView$OnScrollListener;

    invoke-direct {p0, p1}, Lmiui/widget/DynamicListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    iput p2, p0, Lmiui/widget/DynamicListView;->INVALID_ID:I

    iput p2, p0, Lmiui/widget/DynamicListView;->INVALID_POINTER_ID:I

    const/4 p3, 0x0

    iput p3, p0, Lmiui/widget/DynamicListView;->Xe:F

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lmiui/widget/DynamicListView;->mDuration:J

    iput p2, p0, Lmiui/widget/DynamicListView;->Ye:I

    iput p2, p0, Lmiui/widget/DynamicListView;->Ze:I

    const/4 p3, 0x0

    iput p3, p0, Lmiui/widget/DynamicListView;->_e:I

    iput-boolean p3, p0, Lmiui/widget/DynamicListView;->af:Z

    iput-boolean p3, p0, Lmiui/widget/DynamicListView;->bf:Z

    iput p3, p0, Lmiui/widget/DynamicListView;->cf:I

    iput p3, p0, Lmiui/widget/DynamicListView;->ff:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/widget/DynamicListView;->gf:J

    iput-wide v0, p0, Lmiui/widget/DynamicListView;->hf:J

    iput-wide v0, p0, Lmiui/widget/DynamicListView;->if:J

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->mf:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->nf:Landroid/graphics/Rect;

    iput p2, p0, Lmiui/widget/DynamicListView;->mActivePointerId:I

    iput-boolean p3, p0, Lmiui/widget/DynamicListView;->of:Z

    iput p3, p0, Lmiui/widget/DynamicListView;->pf:I

    new-instance p2, Lmiui/util/ArrayMap;

    invoke-direct {p2}, Lmiui/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lmiui/widget/DynamicListView;->wf:Ljava/util/Map;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lmiui/widget/DynamicListView;->mPaint:Landroid/graphics/Paint;

    new-instance p2, Lmiui/widget/A;

    invoke-direct {p2, p0}, Lmiui/widget/A;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object p2, p0, Lmiui/widget/DynamicListView;->yf:Landroid/animation/AnimatorListenerAdapter;

    new-instance p2, Lmiui/widget/B;

    invoke-direct {p2, p0}, Lmiui/widget/B;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object p2, p0, Lmiui/widget/DynamicListView;->zf:Ljava/lang/Runnable;

    new-instance p2, Lmiui/widget/C;

    invoke-direct {p2, p0}, Lmiui/widget/C;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object p2, p0, Lmiui/widget/DynamicListView;->Af:Landroid/widget/AbsListView$OnScrollListener;

    invoke-direct {p0, p1}, Lmiui/widget/DynamicListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lmiui/widget/DynamicListView;I)I
    .locals 1

    iget v0, p0, Lmiui/widget/DynamicListView;->_e:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiui/widget/DynamicListView;->_e:I

    return v0
.end method

.method static synthetic a(Lmiui/widget/DynamicListView;)J
    .locals 2

    iget-wide v0, p0, Lmiui/widget/DynamicListView;->hf:J

    return-wide v0
.end method

.method static synthetic a(Lmiui/widget/DynamicListView;J)J
    .locals 0

    iput-wide p1, p0, Lmiui/widget/DynamicListView;->hf:J

    return-wide p1
.end method

.method static synthetic a(Lmiui/widget/DynamicListView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lmiui/widget/DynamicListView;->sf:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic a(Lmiui/widget/DynamicListView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lmiui/widget/DynamicListView;->xf:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lmiui/widget/DynamicListView;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0

    iput-object p1, p0, Lmiui/widget/DynamicListView;->jf:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lmiui/widget/DynamicListView;->getViewForPosition(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private a(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lmiui/widget/DynamicListView;->getViewForPosition(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/DynamicListView;->wf:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationX(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    add-int v5, v2, v3

    invoke-virtual {v0, v5}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v5

    iget-object v7, p0, Lmiui/widget/DynamicListView;->wf:Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lmiui/widget/DynamicListView;->vf:Lmiui/widget/DynamicListView$OnItemRemoveListener;

    invoke-interface {v1, p1}, Lmiui/widget/DynamicListView$OnItemRemoveListener;->onItemRemove(Ljava/util/List;)V

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v1, Lmiui/widget/z;

    invoke-direct {v1, p0, v0, p2}, Lmiui/widget/z;-><init>(Lmiui/widget/DynamicListView;Landroid/widget/BaseAdapter;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method static synthetic a(Lmiui/widget/DynamicListView;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiui/widget/DynamicListView;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lmiui/widget/DynamicListView;I)I
    .locals 0

    iput p1, p0, Lmiui/widget/DynamicListView;->pf:I

    return p1
.end method

.method static synthetic b(Lmiui/widget/DynamicListView;J)J
    .locals 0

    iput-wide p1, p0, Lmiui/widget/DynamicListView;->gf:J

    return-wide p1
.end method

.method static synthetic b(Lmiui/widget/DynamicListView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lmiui/widget/DynamicListView;->tf:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic b(Lmiui/widget/DynamicListView;)Z
    .locals 0

    iget-boolean p0, p0, Lmiui/widget/DynamicListView;->af:Z

    return p0
.end method

.method private c(J)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lmiui/widget/DynamicListView;->getPositionForId(J)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    check-cast p2, Landroid/widget/BaseAdapter;

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p2, v0}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/widget/DynamicListView;->gf:J

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide p1

    iput-wide p1, p0, Lmiui/widget/DynamicListView;->if:J

    return-void
.end method

.method static synthetic c(Lmiui/widget/DynamicListView;)V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/DynamicListView;->va()V

    return-void
.end method

.method static synthetic c(Lmiui/widget/DynamicListView;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiui/widget/DynamicListView;->c(J)V

    return-void
.end method

.method static synthetic d(Lmiui/widget/DynamicListView;J)J
    .locals 0

    iput-wide p1, p0, Lmiui/widget/DynamicListView;->if:J

    return-wide p1
.end method

.method static synthetic d(Lmiui/widget/DynamicListView;)Z
    .locals 0

    iget-boolean p0, p0, Lmiui/widget/DynamicListView;->of:Z

    return p0
.end method

.method static synthetic e(Lmiui/widget/DynamicListView;)V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/DynamicListView;->ya()V

    return-void
.end method

.method private f(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-direct {p0, p1}, Lmiui/widget/DynamicListView;->g(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance p1, Landroid/graphics/Rect;

    add-int/2addr v0, v3

    add-int/2addr v1, v2

    invoke-direct {p1, v3, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lmiui/widget/DynamicListView;->lf:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lmiui/widget/DynamicListView;->lf:Landroid/graphics/Rect;

    invoke-direct {p1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lmiui/widget/DynamicListView;->kf:Landroid/graphics/Rect;

    iget-object p0, p0, Lmiui/widget/DynamicListView;->kf:Landroid/graphics/Rect;

    invoke-virtual {v4, p0}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    return-object v4
.end method

.method static synthetic f(Lmiui/widget/DynamicListView;)V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/DynamicListView;->ua()V

    return-void
.end method

.method private g(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object p0
.end method

.method static synthetic g(Lmiui/widget/DynamicListView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lmiui/widget/DynamicListView;->Dc:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private getViewForPosition(I)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    if-gt p1, v1, :cond_0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic h(Lmiui/widget/DynamicListView;)J
    .locals 2

    iget-wide v0, p0, Lmiui/widget/DynamicListView;->mDuration:J

    return-wide v0
.end method

.method static synthetic i(Lmiui/widget/DynamicListView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lmiui/widget/DynamicListView;->mPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lmiui/widget/DynamicListView;->Af:Landroid/widget/AbsListView$OnScrollListener;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {p0}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lmiui/widget/DynamicListView;->ef:I

    iget v2, p0, Lmiui/widget/DynamicListView;->ef:I

    int-to-float v2, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lmiui/widget/DynamicListView;->df:I

    const/high16 v2, 0x42480000    # 50.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lmiui/widget/DynamicListView;->ff:I

    sget v1, Lcom/miui/internal/R$attr;->dynamicListviewDraggingItemShadow:I

    invoke-static {p1, v1}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/DynamicListView;->Dc:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lmiui/widget/DynamicListView;->Dc:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    invoke-static {p1}, Lmiui/util/ViewUtils;->isNightMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/miui/internal/R$drawable;->dynamic_listview_dragging_item_shadow_dark:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiui/widget/DynamicListView;->Dc:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    sget p1, Lcom/miui/internal/R$drawable;->dynamic_listview_dragging_item_shadow_light:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiui/widget/DynamicListView;->Dc:Landroid/graphics/drawable/Drawable;

    :cond_1
    :goto_0
    iget-object p1, p0, Lmiui/widget/DynamicListView;->Dc:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lmiui/widget/DynamicListView;->qf:I

    return-void
.end method

.method static synthetic j(Lmiui/widget/DynamicListView;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lmiui/widget/DynamicListView;->wf:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic k(Lmiui/widget/DynamicListView;)Lmiui/widget/DynamicListView$RearrangeListener;
    .locals 0

    iget-object p0, p0, Lmiui/widget/DynamicListView;->uf:Lmiui/widget/DynamicListView$RearrangeListener;

    return-object p0
.end method

.method static synthetic l(Lmiui/widget/DynamicListView;)Z
    .locals 0

    iget-boolean p0, p0, Lmiui/widget/DynamicListView;->bf:Z

    return p0
.end method

.method static synthetic m(Lmiui/widget/DynamicListView;)I
    .locals 0

    iget p0, p0, Lmiui/widget/DynamicListView;->cf:I

    return p0
.end method

.method static synthetic n(Lmiui/widget/DynamicListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 0

    iget-object p0, p0, Lmiui/widget/DynamicListView;->rf:Landroid/widget/AbsListView$OnScrollListener;

    return-object p0
.end method

.method private ua()V
    .locals 11

    iget v0, p0, Lmiui/widget/DynamicListView;->Ye:I

    iget v1, p0, Lmiui/widget/DynamicListView;->Ze:I

    sub-int v7, v0, v1

    iget-object v0, p0, Lmiui/widget/DynamicListView;->lf:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lmiui/widget/DynamicListView;->_e:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    iget-object v1, p0, Lmiui/widget/DynamicListView;->kf:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-wide v2, p0, Lmiui/widget/DynamicListView;->if:J

    invoke-virtual {p0, v2, v3}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v2

    iget-wide v3, p0, Lmiui/widget/DynamicListView;->hf:J

    invoke-virtual {p0, v3, v4}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v3

    iget-wide v4, p0, Lmiui/widget/DynamicListView;->gf:J

    invoke-virtual {p0, v4, v5}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    add-int v8, v0, v1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v8, v9, :cond_0

    move v8, v5

    goto :goto_0

    :cond_0
    move v8, v6

    :goto_0
    if-eqz v4, :cond_1

    sub-int/2addr v0, v1

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v1

    if-ge v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    if-eqz v3, :cond_6

    if-nez v8, :cond_2

    if-eqz v5, :cond_6

    :cond_2
    if-eqz v8, :cond_3

    iget-wide v0, p0, Lmiui/widget/DynamicListView;->if:J

    goto :goto_2

    :cond_3
    iget-wide v0, p0, Lmiui/widget/DynamicListView;->gf:J

    :goto_2
    if-eqz v8, :cond_4

    goto :goto_3

    :cond_4
    move-object v2, v4

    :goto_3
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lmiui/widget/DynamicListView;->uf:Lmiui/widget/DynamicListView$RearrangeListener;

    if-eqz v5, :cond_5

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v8

    invoke-interface {v5, v4, v8}, Lmiui/widget/DynamicListView$RearrangeListener;->onOrderChanged(II)V

    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    check-cast v4, Landroid/widget/BaseAdapter;

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget v4, p0, Lmiui/widget/DynamicListView;->Ye:I

    iput v4, p0, Lmiui/widget/DynamicListView;->Ze:I

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-wide v2, p0, Lmiui/widget/DynamicListView;->hf:J

    invoke-direct {p0, v2, v3}, Lmiui/widget/DynamicListView;->c(J)V

    invoke-virtual {p0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v9

    new-instance v10, Lmiui/widget/F;

    move-object v2, v10

    move-object v3, p0

    move-object v4, v9

    move-wide v5, v0

    invoke-direct/range {v2 .. v8}, Lmiui/widget/F;-><init>(Lmiui/widget/DynamicListView;Landroid/view/ViewTreeObserver;JII)V

    invoke-virtual {v9, v10}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_6
    return-void
.end method

.method private va()V
    .locals 1

    iget-object v0, p0, Lmiui/widget/DynamicListView;->kf:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lmiui/widget/DynamicListView;->handleMobileCellScroll(Landroid/graphics/Rect;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/widget/DynamicListView;->bf:Z

    return-void
.end method

.method private wa()V
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lmiui/widget/DynamicListView;->lf:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lmiui/widget/DynamicListView;->Xe:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lmiui/widget/DynamicListView;->Xe:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v2

    float-to-int v2, v3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v5, v1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lmiui/widget/DynamicListView;->kf:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lmiui/widget/DynamicListView;->lf:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-object v1, Lmiui/widget/DynamicListView;->Bf:Landroid/animation/TypeEvaluator;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "HoverCellBounds"

    invoke-static {p0, v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/DynamicListView;->sf:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lmiui/widget/DynamicListView;->sf:Landroid/animation/ObjectAnimator;

    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lmiui/widget/DynamicListView;->mDuration:J

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lmiui/widget/DynamicListView;->sf:Landroid/animation/ObjectAnimator;

    new-instance v1, Lmiui/widget/D;

    invoke-direct {v1, p0}, Lmiui/widget/D;-><init>(Lmiui/widget/DynamicListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lmiui/widget/DynamicListView;->sf:Landroid/animation/ObjectAnimator;

    new-instance v1, Lmiui/widget/E;

    invoke-direct {v1, p0}, Lmiui/widget/E;-><init>(Lmiui/widget/DynamicListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lmiui/widget/DynamicListView;->sf:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private xa()V
    .locals 5

    iget-wide v0, p0, Lmiui/widget/DynamicListView;->hf:J

    invoke-virtual {p0, v0, v1}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lmiui/widget/DynamicListView;->af:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lmiui/widget/DynamicListView;->gf:J

    iput-wide v3, p0, Lmiui/widget/DynamicListView;->hf:J

    iput-wide v3, p0, Lmiui/widget/DynamicListView;->if:J

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/DynamicListView;->jf:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    :cond_0
    iput-boolean v2, p0, Lmiui/widget/DynamicListView;->af:Z

    iput-boolean v2, p0, Lmiui/widget/DynamicListView;->bf:Z

    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/DynamicListView;->mActivePointerId:I

    return-void
.end method

.method private ya()V
    .locals 8

    iget-wide v0, p0, Lmiui/widget/DynamicListView;->hf:J

    invoke-virtual {p0, v0, v1}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lmiui/widget/DynamicListView;->af:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lmiui/widget/DynamicListView;->of:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->xa()V

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/widget/DynamicListView;->af:Z

    iput-boolean v1, p0, Lmiui/widget/DynamicListView;->of:Z

    iput-boolean v1, p0, Lmiui/widget/DynamicListView;->bf:Z

    const/4 v2, -0x1

    iput v2, p0, Lmiui/widget/DynamicListView;->mActivePointerId:I

    iget v2, p0, Lmiui/widget/DynamicListView;->pf:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iput-boolean v3, p0, Lmiui/widget/DynamicListView;->of:Z

    return-void

    :cond_2
    iget-object v2, p0, Lmiui/widget/DynamicListView;->kf:Landroid/graphics/Rect;

    iget-object v4, p0, Lmiui/widget/DynamicListView;->lf:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v2, p0, Lmiui/widget/DynamicListView;->kf:Landroid/graphics/Rect;

    iget-object v4, p0, Lmiui/widget/DynamicListView;->lf:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Lmiui/widget/DynamicListView;->lf:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v7, v0

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v0, Lmiui/widget/DynamicListView;->Bf:Landroid/animation/TypeEvaluator;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lmiui/widget/DynamicListView;->kf:Landroid/graphics/Rect;

    aput-object v3, v2, v1

    const-string v1, "HoverCellBounds"

    invoke-static {p0, v1, v0, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/DynamicListView;->tf:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lmiui/widget/DynamicListView;->tf:Landroid/animation/ObjectAnimator;

    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v1, :cond_3

    iget-wide v1, p0, Lmiui/widget/DynamicListView;->mDuration:J

    goto :goto_1

    :cond_3
    const-wide/16 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lmiui/widget/DynamicListView;->tf:Landroid/animation/ObjectAnimator;

    new-instance v1, Lmiui/widget/G;

    invoke-direct {v1, p0}, Lmiui/widget/G;-><init>(Lmiui/widget/DynamicListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lmiui/widget/DynamicListView;->tf:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lmiui/widget/DynamicListView;->yf:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lmiui/widget/DynamicListView;->tf:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_2
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lmiui/widget/DynamicListView;->jf:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/DynamicListView;->Dc:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lmiui/widget/DynamicListView;->jf:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Lmiui/widget/DynamicListView;->xf:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lmiui/widget/DynamicListView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public getHoverCellBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lmiui/widget/DynamicListView;->jf:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getLastStateAlpha()I
    .locals 0

    iget-object p0, p0, Lmiui/widget/DynamicListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    return p0
.end method

.method public getPositionForId(J)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public getViewForId(J)Landroid/view/View;
    .locals 6

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/BaseAdapter;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    add-int v4, v0, v2

    invoke-virtual {v1, v4}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public handleMobileCellScroll(Landroid/graphics/Rect;)Z
    .locals 10

    invoke-virtual {p0}, Landroid/widget/ListView;->computeVerticalScrollOffset()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->computeVerticalScrollExtent()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ListView;->computeVerticalScrollRange()I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget v5, p0, Lmiui/widget/DynamicListView;->ff:I

    mul-int/lit8 v6, v5, 0x2

    const/4 v7, 0x1

    const-wide/16 v8, 0xa

    if-gt v4, v6, :cond_1

    if-lez v0, :cond_1

    iget p1, p0, Lmiui/widget/DynamicListView;->ef:I

    neg-int p1, p1

    iput p1, p0, Lmiui/widget/DynamicListView;->cf:I

    if-gt v4, v5, :cond_0

    iget p1, p0, Lmiui/widget/DynamicListView;->df:I

    neg-int p1, p1

    iput p1, p0, Lmiui/widget/DynamicListView;->cf:I

    :cond_0
    iget-object p1, p0, Lmiui/widget/DynamicListView;->zf:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v8, v9}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    return v7

    :cond_1
    add-int/2addr v4, p1

    iget p1, p0, Lmiui/widget/DynamicListView;->ff:I

    mul-int/lit8 v5, p1, 0x2

    sub-int v5, v1, v5

    if-lt v4, v5, :cond_3

    add-int/2addr v0, v2

    if-ge v0, v3, :cond_3

    iget v0, p0, Lmiui/widget/DynamicListView;->ef:I

    iput v0, p0, Lmiui/widget/DynamicListView;->cf:I

    sub-int/2addr v1, p1

    if-lt v4, v1, :cond_2

    iget p1, p0, Lmiui/widget/DynamicListView;->df:I

    iput p1, p0, Lmiui/widget/DynamicListView;->cf:I

    :cond_2
    iget-object p1, p0, Lmiui/widget/DynamicListView;->zf:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v8, v9}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    return v7

    :cond_3
    iget-object p1, p0, Lmiui/widget/DynamicListView;->zf:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v1, p0, Lmiui/widget/DynamicListView;->mActivePointerId:I

    if-ne v0, v1, :cond_9

    invoke-direct {p0}, Lmiui/widget/DynamicListView;->ya()V

    goto/16 :goto_1

    :cond_1
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->xa()V

    goto/16 :goto_1

    :cond_2
    iget v0, p0, Lmiui/widget/DynamicListView;->mActivePointerId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lmiui/widget/DynamicListView;->Ye:I

    iget v0, p0, Lmiui/widget/DynamicListView;->Ye:I

    iget v2, p0, Lmiui/widget/DynamicListView;->Ze:I

    sub-int/2addr v0, v2

    iget-boolean v2, p0, Lmiui/widget/DynamicListView;->af:Z

    if-eqz v2, :cond_9

    iget-object p1, p0, Lmiui/widget/DynamicListView;->sf:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lmiui/widget/DynamicListView;->sf:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->end()V

    :cond_4
    iget-object p1, p0, Lmiui/widget/DynamicListView;->lf:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v0

    iget v0, p0, Lmiui/widget/DynamicListView;->_e:I

    add-int/2addr p1, v0

    if-gez p1, :cond_5

    move p1, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    iget-object v2, p0, Lmiui/widget/DynamicListView;->kf:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v0, v2

    if-le p1, v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result p1

    iget-object v0, p0, Lmiui/widget/DynamicListView;->kf:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr p1, v0

    :cond_6
    :goto_0
    iget-object v0, p0, Lmiui/widget/DynamicListView;->kf:Landroid/graphics/Rect;

    iget-object v2, p0, Lmiui/widget/DynamicListView;->lf:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object p1, p0, Lmiui/widget/DynamicListView;->kf:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lmiui/widget/DynamicListView;->setHoverCellBounds(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lmiui/widget/DynamicListView;->ua()V

    iput-boolean v1, p0, Lmiui/widget/DynamicListView;->bf:Z

    invoke-direct {p0}, Lmiui/widget/DynamicListView;->va()V

    return v1

    :cond_7
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->ya()V

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lmiui/widget/DynamicListView;->Ze:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiui/widget/DynamicListView;->mActivePointerId:I

    :cond_9
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public removeItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiui/widget/DynamicListView;->removeItems(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public removeItems(Ljava/util/List;Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lmiui/widget/DynamicListView;->getPositionForId(J)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_0

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move v2, v8

    goto :goto_1

    :cond_2
    move v2, v9

    :goto_1
    if-eqz v2, :cond_3

    invoke-direct {v0, v0}, Lmiui/widget/DynamicListView;->g(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lmiui/widget/DynamicListView;->xf:Landroid/graphics/Bitmap;

    iget-object v2, v0, Lmiui/widget/DynamicListView;->vf:Lmiui/widget/DynamicListView$OnItemRemoveListener;

    invoke-interface {v2, v1}, Lmiui/widget/DynamicListView$OnItemRemoveListener;->onItemRemove(Ljava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    new-array v1, v8, [I

    aput v9, v1, v9

    const-string v2, "LastStateAlpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-wide v2, v0, Lmiui/widget/DynamicListView;->mDuration:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    new-instance v2, Lmiui/widget/H;

    invoke-direct {v2, v0}, Lmiui/widget/H;-><init>(Lmiui/widget/DynamicListView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :cond_3
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-direct {v0, v4}, Lmiui/widget/DynamicListView;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v5}, Lmiui/widget/DynamicListView;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setEnabled(Z)V

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    move v11, v9

    :goto_2
    if-ge v11, v10, :cond_5

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    invoke-interface {v2, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v13

    neg-int v13, v13

    goto :goto_3

    :cond_4
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v13

    :goto_3
    sget-object v14, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v15, v8, [F

    int-to-float v13, v13

    aput v13, v15, v9

    invoke-static {v12, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    new-instance v14, Lmiui/widget/v;

    invoke-direct {v14, v0, v12}, Lmiui/widget/v;-><init>(Lmiui/widget/DynamicListView;Landroid/view/View;)V

    invoke-virtual {v13, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v14, v0, Lmiui/widget/DynamicListView;->mDuration:J

    invoke-virtual {v13, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_0

    invoke-static {v12}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v12

    iget-wide v13, v0, Lmiui/widget/DynamicListView;->mDuration:J

    const-wide/16 v15, 0x3

    div-long/2addr v13, v15

    int-to-long v8, v11

    mul-long/2addr v13, v8

    invoke-virtual {v12, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v10, :cond_6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/Animator;

    invoke-virtual {v2, v8}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    new-instance v1, Lmiui/widget/w;

    invoke-direct {v1, v0, v3, v4}, Lmiui/widget/w;-><init>(Lmiui/widget/DynamicListView;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    :cond_7
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setDuration(J)V
    .locals 0

    iput-wide p1, p0, Lmiui/widget/DynamicListView;->mDuration:J

    return-void
.end method

.method public setHoverCellBounds(Landroid/graphics/Rect;)V
    .locals 5

    iget-object v0, p0, Lmiui/widget/DynamicListView;->nf:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiui/widget/DynamicListView;->mf:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lmiui/widget/DynamicListView;->jf:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lmiui/widget/DynamicListView;->mf:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lmiui/widget/DynamicListView;->qf:I

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr p1, v3

    invoke-virtual {v0, v1, v2, v4, p1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lmiui/widget/DynamicListView;->Dc:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lmiui/widget/DynamicListView;->mf:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lmiui/widget/DynamicListView;->nf:Landroid/graphics/Rect;

    iget-object v0, p0, Lmiui/widget/DynamicListView;->mf:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lmiui/widget/DynamicListView;->nf:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setLastStateAlpha(I)V
    .locals 1

    iget-object v0, p0, Lmiui/widget/DynamicListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method

.method public setOnItemRemoveListener(Lmiui/widget/DynamicListView$OnItemRemoveListener;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/DynamicListView;->vf:Lmiui/widget/DynamicListView$OnItemRemoveListener;

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/DynamicListView;->rf:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public setRearrangeListener(Lmiui/widget/DynamicListView$RearrangeListener;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/DynamicListView;->uf:Lmiui/widget/DynamicListView$RearrangeListener;

    return-void
.end method

.method public setScaleFactor(F)V
    .locals 0

    iput p1, p0, Lmiui/widget/DynamicListView;->Xe:F

    return-void
.end method

.method public startDragging(I)V
    .locals 3

    iget-object v0, p0, Lmiui/widget/DynamicListView;->tf:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/DynamicListView;->tf:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    iget-object v0, p0, Lmiui/widget/DynamicListView;->yf:Landroid/animation/AnimatorListenerAdapter;

    iget-object v1, p0, Lmiui/widget/DynamicListView;->tf:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/DynamicListView;->_e:I

    invoke-direct {p0, p1}, Lmiui/widget/DynamicListView;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    iput-wide v1, p0, Lmiui/widget/DynamicListView;->hf:J

    invoke-direct {p0, v0}, Lmiui/widget/DynamicListView;->f(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lmiui/widget/DynamicListView;->jf:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0}, Lmiui/widget/DynamicListView;->wa()V

    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiui/widget/DynamicListView;->af:Z

    iget-wide v0, p0, Lmiui/widget/DynamicListView;->hf:J

    invoke-direct {p0, v0, v1}, Lmiui/widget/DynamicListView;->c(J)V

    iget-object p0, p0, Lmiui/widget/DynamicListView;->uf:Lmiui/widget/DynamicListView$RearrangeListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lmiui/widget/DynamicListView$RearrangeListener;->onDragStart()V

    :cond_1
    return-void
.end method
