.class public Lcom/miui/internal/app/ActionBarImpl;
.super Lmiui/app/ActionBar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/app/ActionBarImpl$TabImpl;
    }
.end annotation


# static fields
.field private static final Ba:I = 0x0

.field private static final Ca:I = 0x1

.field private static Da:Landroid/app/ActionBar$TabListener; = null

.field private static final INVALID_POSITION:I = -0x1


# instance fields
.field private Aa:Z

.field private B:Landroid/content/Context;

.field private G:Lcom/miui/internal/widget/ActionBarOverlayLayout;

.field private H:Lcom/miui/internal/widget/ActionBarContainer;

.field private J:Lcom/miui/internal/widget/ActionBarView;

.field private W:Lcom/miui/internal/widget/ActionBarContextView;

.field private aa:Lcom/miui/internal/view/menu/PhoneActionMenuView;

.field private ba:Landroid/view/View;

.field private ca:Landroid/view/View$OnClickListener;

.field private da:Lcom/miui/internal/app/ActionBarViewPagerController;

.field private ea:Lcom/miui/internal/widget/ScrollingTabContainerView;

.field private fa:Lcom/miui/internal/widget/ScrollingTabContainerView;

.field private ga:Lcom/miui/internal/widget/ScrollingTabContainerView;

.field private ha:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/internal/app/ActionBarImpl$TabImpl;",
            ">;"
        }
    .end annotation
.end field

.field private ia:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

.field private ja:I

.field private ka:Z

.field private la:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field mActionMode:Landroid/view/ActionMode;

.field private mActionModeView:Lcom/miui/internal/widget/ActionModeView;

.field private mContext:Landroid/content/Context;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

.field private ma:I

.field private na:I

.field private oa:Z

.field private pa:Z

.field private qa:Z

.field private ra:Z

.field private ta:Z

.field private ua:Lcom/miui/internal/widget/SearchActionModeView;

.field private va:Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;

.field private wa:Landroid/animation/Animator;

.field private ya:Landroid/animation/Animator;

.field private za:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/internal/app/ActionBarImpl$1;

    invoke-direct {v0}, Lcom/miui/internal/app/ActionBarImpl$1;-><init>()V

    sput-object v0, Lcom/miui/internal/app/ActionBarImpl;->Da:Landroid/app/ActionBar$TabListener;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Lmiui/app/ActionBar;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ha:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ja:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->la:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl;->na:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ra:Z

    new-instance v0, Lcom/miui/internal/app/b;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/b;-><init>(Lcom/miui/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->va:Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$id;->action_bar_overlay_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->init(Landroid/view/ViewGroup;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 1

    invoke-direct {p0}, Lmiui/app/ActionBar;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ha:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ja:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->la:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl;->na:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ra:Z

    new-instance v0, Lcom/miui/internal/app/b;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/b;-><init>(Lcom/miui/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->va:Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/miui/internal/R$id;->action_bar_overlay_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->init(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1

    invoke-direct {p0}, Lmiui/app/ActionBar;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ha:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ja:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->la:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl;->na:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ra:Z

    new-instance v0, Lcom/miui/internal/app/b;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/b;-><init>(Lcom/miui/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->va:Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;

    move-object v0, p1

    check-cast v0, Lmiui/app/IFragment;

    invoke-interface {v0}, Lmiui/app/IFragment;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->init(Landroid/view/ViewGroup;)V

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private S()V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ia:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ha:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ea:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->removeAllTabs()V

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->fa:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->removeAllTabs()V

    :cond_2
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ga:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->removeAllTabs()V

    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ja:I

    return-void
.end method

.method private T()V
    .locals 7

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ea:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/internal/widget/ScrollingTabContainerView;

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/miui/internal/widget/ScrollingTabContainerView;

    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;I)V

    new-instance v3, Lcom/miui/internal/widget/ScrollingTabContainerView;

    iget-object v5, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/miui/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    invoke-virtual {v3, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v2, v0, v1, v3}, Lcom/miui/internal/widget/ActionBarView;->setEmbeddedTabView(Lcom/miui/internal/widget/ScrollingTabContainerView;Lcom/miui/internal/widget/ScrollingTabContainerView;Lcom/miui/internal/widget/ScrollingTabContainerView;)V

    invoke-virtual {v0, v4}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setEmbeded(Z)V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ea:Lcom/miui/internal/widget/ScrollingTabContainerView;

    iput-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->fa:Lcom/miui/internal/widget/ScrollingTabContainerView;

    iput-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->ga:Lcom/miui/internal/widget/ScrollingTabContainerView;

    return-void
.end method

.method private U()I
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->isOverflowMenuShowing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getCollapsedHeight()I

    move-result v0

    :cond_0
    return v0
.end method

.method private a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    instance-of v0, p1, Lmiui/view/SearchActionMode$Callback;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/internal/view/SearchActionModeImpl;

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/view/SearchActionModeImpl;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/internal/view/EditActionModeImpl;

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/view/EditActionModeImpl;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    :goto_0
    return-object v0
.end method

.method static synthetic a(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/view/menu/PhoneActionMenuView;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->aa:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    return-object p0
.end method

.method private static a(ZZZ)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    if-nez p0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b()Landroid/app/ActionBar$TabListener;
    .locals 1

    sget-object v0, Lcom/miui/internal/app/ActionBarImpl;->Da:Landroid/app/ActionBar$TabListener;

    return-object v0
.end method

.method static synthetic b(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/widget/ActionBarContainer;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->H:Lcom/miui/internal/widget/ActionBarContainer;

    return-object p0
.end method

.method private b(Landroid/app/ActionBar$Tab;I)V
    .locals 1

    check-cast p1, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {p1}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ha:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->ha:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p1, :cond_0

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ha:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v0, p2}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Action Bar Tab must have a Callback"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic c(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/widget/ActionBarContainer;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    return-object p0
.end method

.method static synthetic d(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/widget/ScrollingTabContainerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->ea:Lcom/miui/internal/widget/ScrollingTabContainerView;

    return-object p0
.end method

.method static synthetic e(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/widget/ScrollingTabContainerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->fa:Lcom/miui/internal/widget/ScrollingTabContainerView;

    return-object p0
.end method

.method private f(Z)Landroid/animation/Animator;
    .locals 10

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->H:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "Alpha"

    const-string v4, "TranslationY"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->H:Lcom/miui/internal/widget/ActionBarContainer;

    new-array v1, v7, [F

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v8

    aput v8, v1, v6

    aput v2, v1, v5

    invoke-static {p1, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->H:Lcom/miui/internal/widget/ActionBarContainer;

    new-array v2, v7, [F

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v4

    aput v4, v2, v6

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v5

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v2, v7, [Landroid/animation/Animator;

    aput-object p1, v2, v6

    aput-object v1, v2, v5

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance p1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/miui/internal/R$integer;->action_bar_appear_duration:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {v0, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->H:Lcom/miui/internal/widget/ActionBarContainer;

    new-array v8, v7, [F

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v9

    aput v9, v8, v6

    neg-int v1, v1

    int-to-float v1, v1

    aput v1, v8, v5

    invoke-static {p1, v4, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->H:Lcom/miui/internal/widget/ActionBarContainer;

    new-array v4, v7, [F

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v8

    aput v8, v4, v6

    aput v2, v4, v5

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v2, v7, [Landroid/animation/Animator;

    aput-object p1, v2, v6

    aput-object v1, v2, v5

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance p1, Lmiui/view/animation/CubicEaseInInterpolator;

    invoke-direct {p1}, Lmiui/view/animation/CubicEaseInInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/miui/internal/R$integer;->action_bar_disappear_duration:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p1, Lcom/miui/internal/app/e;

    invoke-direct {p1, p0}, Lcom/miui/internal/app/e;-><init>(Lcom/miui/internal/app/ActionBarImpl;)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_0
    return-object v0
.end method

.method static synthetic f(Lcom/miui/internal/app/ActionBarImpl;)Lcom/miui/internal/widget/ScrollingTabContainerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->ga:Lcom/miui/internal/widget/ScrollingTabContainerView;

    return-object p0
.end method

.method private g(Z)Landroid/animation/Animator;
    .locals 10

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarImpl;->U()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "Alpha"

    const-string v4, "TranslationY"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    new-array v1, v7, [F

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v8

    aput v8, v1, v6

    aput v2, v1, v5

    invoke-static {p1, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    new-array v2, v7, [F

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v4

    aput v4, v2, v6

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v5

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v2, v7, [Landroid/animation/Animator;

    aput-object p1, v2, v6

    aput-object v1, v2, v5

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance p1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/miui/internal/R$integer;->action_bar_appear_duration:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {v0, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    new-array v8, v7, [F

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v9

    aput v9, v8, v6

    int-to-float v1, v1

    aput v1, v8, v5

    invoke-static {p1, v4, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    new-array v4, v7, [F

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v8

    aput v8, v4, v6

    aput v2, v4, v5

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v2, v7, [Landroid/animation/Animator;

    aput-object p1, v2, v6

    aput-object v1, v2, v5

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance p1, Lmiui/view/animation/CubicEaseInInterpolator;

    invoke-direct {p1}, Lmiui/view/animation/CubicEaseInInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/miui/internal/R$integer;->action_bar_disappear_duration:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p1, Lcom/miui/internal/app/f;

    invoke-direct {p1, p0}, Lcom/miui/internal/app/f;-><init>(Lcom/miui/internal/app/ActionBarImpl;)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_0
    return-object v0
.end method

.method static synthetic g(Lcom/miui/internal/app/ActionBarImpl;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static getActionBar(Landroid/view/View;)Lcom/miui/internal/app/ActionBarImpl;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    instance-of v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getActionBar()Lmiui/app/ActionBar;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object p0, v0

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private h(Z)V
    .locals 4

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->H:Lcom/miui/internal/widget/ActionBarContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setTabContainer(Lcom/miui/internal/widget/ScrollingTabContainerView;)V

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ea:Lcom/miui/internal/widget/ScrollingTabContainerView;

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->fa:Lcom/miui/internal/widget/ScrollingTabContainerView;

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->ga:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/internal/widget/ActionBarView;->setEmbeddedTabView(Lcom/miui/internal/widget/ScrollingTabContainerView;Lcom/miui/internal/widget/ScrollingTabContainerView;Lcom/miui/internal/widget/ScrollingTabContainerView;)V

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getNavigationMode()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->ea:Lcom/miui/internal/widget/ScrollingTabContainerView;

    const/16 v3, 0x8

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {v2, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v3}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :goto_1
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->ea:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v2, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setEmbeded(Z)V

    :cond_2
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->fa:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_4

    if-eqz p1, :cond_3

    invoke-virtual {v2, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v3}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :goto_2
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->fa:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v2, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setEmbeded(Z)V

    :cond_4
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->ga:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_6

    if-eqz p1, :cond_5

    invoke-virtual {v2, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto :goto_3

    :cond_5
    invoke-virtual {v2, v3}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :goto_3
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->ga:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setEmbeded(Z)V

    :cond_6
    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ActionBarView;->setCollapsable(Z)V

    return-void
.end method

.method private i(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->aa:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->aa:Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ba:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->G:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->ca:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getContentMaskAnimator(Landroid/view/View$OnClickListener;)Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->show()Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->G:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getContentMaskAnimator(Landroid/view/View$OnClickListener;)Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;->hide()Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method private j(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->oa:Z

    iget-boolean v1, p0, Lcom/miui/internal/app/ActionBarImpl;->pa:Z

    iget-boolean v2, p0, Lcom/miui/internal/app/ActionBarImpl;->qa:Z

    invoke-static {v0, v1, v2}, Lcom/miui/internal/app/ActionBarImpl;->a(ZZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ra:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ra:Z

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->doShow(Z)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ra:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ra:Z

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->doHide(Z)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method a(Landroid/app/ActionBar$Tab;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getTabCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/app/ActionBarImpl;->a(Landroid/app/ActionBar$Tab;Z)V

    return-void
.end method

.method a(Landroid/app/ActionBar$Tab;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getTabCount()I

    move-result v0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/internal/app/ActionBarImpl;->a(Landroid/app/ActionBar$Tab;IZ)V

    return-void
.end method

.method a(Landroid/app/ActionBar$Tab;IZ)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarImpl;->T()V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ea:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->fa:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ga:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/app/ActionBarImpl;->b(Landroid/app/ActionBar$Tab;I)V

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    :cond_0
    return-void
.end method

.method a(Landroid/app/ActionBar$Tab;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarImpl;->T()V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ea:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;Z)V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->fa:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;Z)V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ga:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;Z)V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ha:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/app/ActionBarImpl;->b(Landroid/app/ActionBar$Tab;I)V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    :cond_0
    return-void
.end method

.method public addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;ILjava/lang/Class;Landroid/os/Bundle;Z)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/ActionBar$Tab;",
            "I",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->da:Lcom/miui/internal/app/ActionBarViewPagerController;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/miui/internal/app/ActionBarViewPagerController;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;ILjava/lang/Class;Landroid/os/Bundle;Z)I

    move-result p0

    return p0
.end method

.method public addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/ActionBar$Tab;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->da:Lcom/miui/internal/app/ActionBarViewPagerController;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/app/ActionBarViewPagerController;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    move-result p0

    return p0
.end method

.method public addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->da:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V

    return-void
.end method

.method public addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->la:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ha:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/app/ActionBarImpl;->addTab(Landroid/app/ActionBar$Tab;Z)V

    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ha:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/internal/app/ActionBarImpl;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/app/ActionBarImpl;->a(Landroid/app/ActionBar$Tab;IZ)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot add tab directly in fragment view pager mode!\n Please using addFragmentTab()."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/app/ActionBarImpl;->a(Landroid/app/ActionBar$Tab;Z)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot add tab directly in fragment view pager mode!\n Please using addFragmentTab()."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method animateToMode(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->g()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->d()V

    :goto_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeView:Lcom/miui/internal/widget/ActionModeView;

    invoke-interface {v0, p1}, Lcom/miui/internal/widget/ActionModeView;->animateToVisibility(Z)V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ea:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->isTightTitleWithEmbeddedTabs()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ea:Lcom/miui/internal/widget/ScrollingTabContainerView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->fa:Lcom/miui/internal/widget/ScrollingTabContainerView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->ga:Lcom/miui/internal/widget/ScrollingTabContainerView;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method b(I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ea:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ia:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->getPosition()I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ja:I

    :goto_0
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->ea:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->removeTabAt(I)V

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->fa:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->removeTabAt(I)V

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->ga:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->removeTabAt(I)V

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->ha:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    if-eqz v1, :cond_2

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    :cond_2
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->ha:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, p1

    :goto_1
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->ha:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v3, v2}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-ne v0, p1, :cond_5

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ha:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ha:Ljava/util/ArrayList;

    const/4 v1, 0x0

    add-int/lit8 p1, p1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActionBar$Tab;

    :goto_2
    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    :cond_5
    return-void
.end method

.method b(Landroid/app/ActionBar$Tab;)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->b(I)V

    return-void
.end method

.method c()Lcom/miui/internal/widget/ActionBarOverlayLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->G:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    return-object p0
.end method

.method public createActionModeView(Landroid/view/ActionMode$Callback;)Lcom/miui/internal/widget/ActionModeView;
    .locals 1

    instance-of p1, p1, Lmiui/view/SearchActionMode$Callback;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->ua:Lcom/miui/internal/widget/SearchActionModeView;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->createSearchActionModeView()Lcom/miui/internal/widget/SearchActionModeView;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->ua:Lcom/miui/internal/widget/SearchActionModeView;

    :cond_0
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->H:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarContainer;->getPendingInsets()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ua:Lcom/miui/internal/widget/SearchActionModeView;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/SearchActionModeView;->setStatusBarPaddingTop(I)V

    :cond_1
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->G:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ua:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->G:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ua:Lcom/miui/internal/widget/SearchActionModeView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_2
    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->ua:Lcom/miui/internal/widget/SearchActionModeView;

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->W:Lcom/miui/internal/widget/ActionBarContextView;

    :goto_0
    return-object p0
.end method

.method public createSearchActionModeView()Lcom/miui/internal/widget/SearchActionModeView;
    .locals 4

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$layout;->search_action_mode_view:I

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->G:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/SearchActionModeView;

    new-instance v1, Lcom/miui/internal/app/d;

    invoke-direct {v1, p0}, Lcom/miui/internal/app/d;-><init>(Lcom/miui/internal/app/ActionBarImpl;)V

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/SearchActionModeView;->setOnBackClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method d()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->qa:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->qa:Z

    invoke-direct {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->j(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->setResizable(Z)V

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeView:Lcom/miui/internal/widget/ActionModeView;

    instance-of v2, v1, Lcom/miui/internal/widget/SearchActionModeView;

    if-eqz v2, :cond_0

    iget v1, p0, Lcom/miui/internal/app/ActionBarImpl;->za:I

    invoke-virtual {p0, v1, v0}, Lcom/miui/internal/app/ActionBarImpl;->setExpandState(IZ)V

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->Aa:Z

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->setResizable(Z)V

    goto :goto_0

    :cond_0
    check-cast v1, Lcom/miui/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarContextView;->getExpandState()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl;->za:I

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeView:Lcom/miui/internal/widget/ActionModeView;

    check-cast v0, Lcom/miui/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContextView;->isResizable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->Aa:Z

    iget v0, p0, Lcom/miui/internal/app/ActionBarImpl;->za:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->setExpandState(I)V

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->Aa:Z

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->setResizable(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public doHide(Z)V
    .locals 5

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->wa:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const/16 v0, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    invoke-direct {p0, v1}, Lcom/miui/internal/app/ActionBarImpl;->f(Z)Landroid/animation/Animator;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->wa:Landroid/animation/Animator;

    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->wa:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->H:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->H:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->H:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v3, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    :goto_2
    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/miui/internal/app/ActionBarImpl;->ya:Landroid/animation/Animator;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    :cond_4
    if-eqz p1, :cond_5

    invoke-direct {p0, v1}, Lcom/miui/internal/app/ActionBarImpl;->g(Z)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->ya:Landroid/animation/Animator;

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->ya:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarImpl;->U()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    :goto_3
    invoke-direct {p0, v1}, Lcom/miui/internal/app/ActionBarImpl;->i(Z)V

    :cond_6
    return-void
.end method

.method public doShow(Z)V
    .locals 5

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->wa:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->f()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v2

    :goto_1
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->H:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    invoke-direct {p0, v2}, Lcom/miui/internal/app/ActionBarImpl;->f(Z)Landroid/animation/Animator;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/app/ActionBarImpl;->wa:Landroid/animation/Animator;

    iget-object v4, p0, Lcom/miui/internal/app/ActionBarImpl;->wa:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/miui/internal/app/ActionBarImpl;->H:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object v4, p0, Lcom/miui/internal/app/ActionBarImpl;->H:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_2
    iget-object v4, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/miui/internal/app/ActionBarImpl;->ya:Landroid/animation/Animator;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    :cond_4
    iget-object v4, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v1}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    if-eqz p1, :cond_5

    invoke-direct {p0, v2}, Lcom/miui/internal/app/ActionBarImpl;->g(Z)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->ya:Landroid/animation/Animator;

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->ya:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarView;->isSplitActionBar()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    if-lez p1, :cond_6

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    instance-of v0, p1, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lcom/miui/internal/view/menu/PhoneActionMenuView;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->isOverflowMenuShowing()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_6

    check-cast p1, Lcom/miui/internal/view/menu/ActionMenuView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->startLayoutAnimation()V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_6
    :goto_3
    invoke-direct {p0, v2}, Lcom/miui/internal/app/ActionBarImpl;->i(Z)V

    :cond_7
    return-void
.end method

.method e()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarImpl;->S()V

    return-void
.end method

.method f()Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/internal/app/ActionBarImpl;->ta:Z

    return p0
.end method

.method g()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->qa:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->qa:Z

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/miui/internal/app/ActionBarImpl;->j(Z)V

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getExpandState()I

    move-result v2

    iput v2, p0, Lcom/miui/internal/app/ActionBarImpl;->za:I

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->isResizable()Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/internal/app/ActionBarImpl;->Aa:Z

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeView:Lcom/miui/internal/widget/ActionModeView;

    instance-of v3, v2, Lcom/miui/internal/widget/SearchActionModeView;

    if-eqz v3, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/miui/internal/app/ActionBarImpl;->setExpandState(IZ)V

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/ActionBarImpl;->setResizable(Z)V

    goto :goto_0

    :cond_0
    check-cast v2, Lcom/miui/internal/widget/ActionBarContextView;

    iget v0, p0, Lcom/miui/internal/app/ActionBarImpl;->za:I

    invoke-virtual {v2, v0}, Lcom/miui/internal/widget/ActionBarContextView;->setExpandState(I)V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeView:Lcom/miui/internal/widget/ActionModeView;

    check-cast v0, Lcom/miui/internal/widget/ActionBarContextView;

    iget-boolean p0, p0, Lcom/miui/internal/app/ActionBarImpl;->Aa:Z

    invoke-virtual {v0, p0}, Lcom/miui/internal/widget/ActionBarContextView;->setResizable(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getCustomNavigationView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayOptions()I
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result p0

    return p0
.end method

.method public getEndView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getEndView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getExpandState()I
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getExpandState()I

    move-result p0

    return p0
.end method

.method public getFragmentAt(I)Landroid/app/Fragment;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->da:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->getFragmentAt(I)Landroid/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public getFragmentTabCount()I
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->da:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarViewPagerController;->getFragmentTabCount()I

    move-result p0

    return p0
.end method

.method public getHeight()I
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->H:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public getNavigationItemCount()I
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->ha:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getDropdownAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    :cond_2
    return v2
.end method

.method public getNavigationMode()I
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getNavigationMode()I

    move-result p0

    return p0
.end method

.method public getSelectedNavigationIndex()I
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->ia:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->getPosition()I

    move-result v2

    :cond_1
    return v2

    :cond_2
    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getDropdownSelectedPosition()I

    move-result p0

    return p0
.end method

.method public getSelectedTab()Landroid/app/ActionBar$Tab;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->ia:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    return-object p0
.end method

.method public getStartView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getStartView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getTabAt(I)Landroid/app/ActionBar$Tab;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->ha:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActionBar$Tab;

    return-object p0
.end method

.method public getTabCount()I
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->ha:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 4

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->B:Landroid/content/Context;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010397

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->B:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->B:Landroid/content/Context;

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->B:Landroid/content/Context;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getViewPagerOffscreenPageLimit()I
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->da:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarViewPagerController;->getViewPagerOffscreenPageLimit()I

    move-result p0

    return p0
.end method

.method public hasNonEmbeddedTabs()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hide()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->oa:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->oa:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->j(Z)V

    :cond_0
    return-void
.end method

.method protected init(Landroid/view/ViewGroup;)V
    .locals 4

    move-object v0, p1

    check-cast v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->G:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->G:Lcom/miui/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setActionBar(Lmiui/app/ActionBar;)V

    sget v0, Lcom/miui/internal/R$id;->action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarView;

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    sget v0, Lcom/miui/internal/R$id;->action_context_bar:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarContextView;

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->W:Lcom/miui/internal/widget/ActionBarContextView;

    sget v0, Lcom/miui/internal/R$id;->action_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->H:Lcom/miui/internal/widget/ActionBarContainer;

    sget v0, Lcom/miui/internal/R$id;->split_action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    sget v0, Lcom/miui/internal/R$id;->content_mask:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->ba:Landroid/view/View;

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->ba:Landroid/view/View;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/miui/internal/app/c;

    invoke-direct {p1, p0}, Lcom/miui/internal/app/c;-><init>(Lcom/miui/internal/app/ActionBarImpl;)V

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->ca:Landroid/view/View$OnClickListener;

    :cond_0
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->W:Lcom/miui/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->H:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarView;->isSplitActionBar()Z

    move-result p1

    iput p1, p0, Lcom/miui/internal/app/ActionBarImpl;->ma:I

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    if-eqz p1, :cond_2

    iput-boolean v1, p0, Lcom/miui/internal/app/ActionBarImpl;->ka:Z

    :cond_2
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/miui/internal/view/ActionBarPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/internal/view/ActionBarPolicy;->enableHomeButtonByDefault()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->setHomeButtonEnabled(Z)V

    invoke-virtual {v2}, Lcom/miui/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->h(Z)V

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " can only be used with a compatible window decor layout"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isFragmentViewPagerMode()Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->da:Lcom/miui/internal/app/ActionBarViewPagerController;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isResizable()Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->isResizable()Z

    move-result p0

    return p0
.end method

.method public isShowing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/internal/app/ActionBarImpl;->ra:Z

    return p0
.end method

.method public newTab()Landroid/app/ActionBar$Tab;
    .locals 1

    new-instance v0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;-><init>(Lcom/miui/internal/app/ActionBarImpl;)V

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/miui/internal/view/ActionBarPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->h(Z)V

    return-void
.end method

.method public removeAllFragmentTab()V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->da:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarViewPagerController;->removeAllFragmentTab()V

    return-void
.end method

.method public removeAllTabs()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->e()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot add tab directly in fragment view pager mode!\n Please using addFragmentTab()."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeFragmentTab(Landroid/app/ActionBar$Tab;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->da:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->removeFragmentTab(Landroid/app/ActionBar$Tab;)V

    return-void
.end method

.method public removeFragmentTab(Landroid/app/Fragment;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->da:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->removeFragment(Landroid/app/Fragment;)V

    return-void
.end method

.method public removeFragmentTab(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->da:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->removeFragmentTab(Ljava/lang/String;)V

    return-void
.end method

.method public removeFragmentTabAt(I)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->da:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->d(I)V

    return-void
.end method

.method public removeOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->da:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->removeOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V

    return-void
.end method

.method public removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->la:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTab(Landroid/app/ActionBar$Tab;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->b(Landroid/app/ActionBar$Tab;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot add tab directly in fragment view pager mode!\n Please using addFragmentTab()."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeTabAt(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->b(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot add tab directly in fragment view pager mode!\n Please using addFragmentTab()."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public selectTab(Landroid/app/ActionBar$Tab;)V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getNavigationMode()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    :cond_0
    iput v1, p0, Lcom/miui/internal/app/ActionBarImpl;->ja:I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->ia:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    if-ne v2, p1, :cond_2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->ia:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-interface {v1, v2, v0}, Landroid/app/ActionBar$TabListener;->onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->ea:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->fa:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->ga:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->ea:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v3

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    invoke-virtual {v2, v3}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->fa:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v3

    goto :goto_1

    :cond_4
    move v3, v1

    :goto_1
    invoke-virtual {v2, v3}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->ga:Lcom/miui/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    :cond_5
    invoke-virtual {v2, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->ia:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->ia:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-interface {v1, v2, v0}, Landroid/app/ActionBar$TabListener;->onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    :cond_6
    check-cast p1, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->ia:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->ia:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->ia:Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    invoke-interface {p1, p0, v0}, Landroid/app/ActionBar$TabListener;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    :cond_7
    :goto_2
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_8

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_8
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->H:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCustomView(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->setCustomNavigationView(Landroid/view/View;)V

    return-void
.end method

.method public setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->setCustomNavigationView(Landroid/view/View;)V

    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 1

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ka:Z

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->setDisplayOptions(I)V

    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/internal/app/ActionBarImpl;->ka:Z

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    and-int/2addr p1, p2

    not-int p2, p2

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->setDisplayOptions(I)V

    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 1

    const/16 v0, 0x10

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    return-void
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    return-void
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 1

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    return-void
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    return-void
.end method

.method public setEndView(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->setEndView(Landroid/view/View;)V

    return-void
.end method

.method public setExpandState(I)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->setExpandState(I)V

    return-void
.end method

.method public setExpandState(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/widget/ActionBarView;->setExpandState(IZ)V

    return-void
.end method

.method public setExpandTabTextAppearance(II)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->fa:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setTextAppearance(II)V

    return-void
.end method

.method public setFragmentActionMenuAt(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->da:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/app/ActionBarViewPagerController;->setFragmentActionMenuAt(IZ)V

    return-void
.end method

.method public setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/internal/app/ActionBarImpl;->setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;Z)V

    return-void
.end method

.method public setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->removeAllTabs()V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->setNavigationMode(I)V

    new-instance p1, Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-direct {p1, p0, p2, p3}, Lcom/miui/internal/app/ActionBarViewPagerController;-><init>(Lcom/miui/internal/app/ActionBarImpl;Landroid/app/FragmentManager;Z)V

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->da:Lcom/miui/internal/app/ActionBarViewPagerController;

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->ea:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->fa:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->ga:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarContainer;->setFragmentViewPagerMode(Z)V

    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    return-void
.end method

.method public setIcon(I)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->setIcon(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0, p2}, Lcom/miui/internal/widget/ActionBarView;->setCallback(Landroid/app/ActionBar$OnNavigationListener;)V

    return-void
.end method

.method public setLogo(I)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->setLogo(I)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNavigationMode(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->getSelectedNavigationIndex()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ja:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ea:Lcom/miui/internal/widget/ScrollingTabContainerView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->fa:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ga:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ActionBarView;->setNavigationMode(I)V

    const/4 v0, 0x0

    if-eq p1, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/miui/internal/app/ActionBarImpl;->T()V

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->ea:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->fa:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->ga:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    iget p1, p0, Lcom/miui/internal/app/ActionBarImpl;->ja:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->setSelectedNavigationItem(I)V

    iput v1, p0, Lcom/miui/internal/app/ActionBarImpl;->ja:I

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->setCollapsable(Z)V

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->setProgress(I)V

    return-void
.end method

.method public setProgressBarIndeterminate(Z)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->setProgressBarIndeterminate(Z)V

    return-void
.end method

.method public setProgressBarIndeterminateVisibility(Z)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->setProgressBarIndeterminateVisibility(Z)V

    return-void
.end method

.method public setProgressBarVisibility(Z)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->setProgressBarVisibility(Z)V

    return-void
.end method

.method public setResizable(Z)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->setResizable(Z)V

    return-void
.end method

.method public setSecondaryTabTextAppearance(II)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->ga:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setTextAppearance(II)V

    return-void
.end method

.method public setSelectedNavigationItem(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ha:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActionBar$Tab;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->setDropdownSelectedPosition(I)V

    :goto_0
    return-void
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/miui/internal/app/ActionBarImpl;->ta:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/internal/app/ActionBarImpl;->isShowing()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->doShow(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->doHide(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/internal/view/menu/ActionMenuView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setStartView(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->setStartView(Landroid/view/View;)V

    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTabBadgeVisibility(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ea:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setBadgeVisibility(IZ)V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->fa:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setBadgeVisibility(IZ)V

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->ga:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setBadgeVisibility(IZ)V

    return-void
.end method

.method public setTabIconWithPosition(IIIIII)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    move-object v4, p3

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    if-eqz p4, :cond_1

    iget-object p3, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    move-object v5, p3

    goto :goto_1

    :cond_1
    move-object v5, v0

    :goto_1
    if-eqz p5, :cond_2

    iget-object p3, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    move-object v6, p3

    goto :goto_2

    :cond_2
    move-object v6, v0

    :goto_2
    if-eqz p6, :cond_3

    iget-object p3, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3
    move-object v7, v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/miui/internal/app/ActionBarImpl;->setTabIconWithPosition(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTabIconWithPosition(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 9

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->ea:Lcom/miui/internal/widget/ScrollingTabContainerView;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setTabIconWithPosition(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->fa:Lcom/miui/internal/widget/ScrollingTabContainerView;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setTabIconWithPosition(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarImpl;->ga:Lcom/miui/internal/widget/ScrollingTabContainerView;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setTabIconWithPosition(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTabTextAppearance(II)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->ea:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setTextAppearance(II)V

    return-void
.end method

.method public setTabsMode(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->h(Z)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ActionBarView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setViewPagerDecor(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->da:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->setViewPagerDecor(Landroid/view/View;)V

    return-void
.end method

.method public setViewPagerOffscreenPageLimit(I)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->da:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->setViewPagerOffscreenPageLimit(I)V

    return-void
.end method

.method public show()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->oa:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/app/ActionBarImpl;->oa:Z

    invoke-direct {p0, v0}, Lcom/miui/internal/app/ActionBarImpl;->j(Z)V

    :cond_0
    return-void
.end method

.method public showActionBarShadow(Z)V
    .locals 0

    return-void
.end method

.method public showSplitActionBar(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->J:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->isSplitActionBar()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {p0, p2}, Lcom/miui/internal/widget/ActionBarContainer;->show(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {p0, p2}, Lcom/miui/internal/widget/ActionBarContainer;->hide(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeView:Lcom/miui/internal/widget/ActionModeView;

    instance-of v1, v1, Lcom/miui/internal/widget/SearchActionModeView;

    if-eqz v1, :cond_1

    instance-of v1, v0, Lcom/miui/internal/view/SearchActionModeImpl;

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeView:Lcom/miui/internal/widget/ActionModeView;

    instance-of v1, v1, Lcom/miui/internal/widget/ActionBarContextView;

    if-eqz v1, :cond_3

    instance-of v1, v0, Lcom/miui/internal/view/EditActionModeImpl;

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeView:Lcom/miui/internal/widget/ActionModeView;

    invoke-interface {v1}, Lcom/miui/internal/widget/ActionModeView;->closeMode()V

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeView:Lcom/miui/internal/widget/ActionModeView;

    invoke-interface {v1}, Lcom/miui/internal/widget/ActionModeView;->killMode()V

    :cond_3
    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->createActionModeView(Landroid/view/ActionMode$Callback;)Lcom/miui/internal/widget/ActionModeView;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeView:Lcom/miui/internal/widget/ActionModeView;

    instance-of p1, v0, Lcom/miui/internal/view/ActionModeImpl;

    if-eqz p1, :cond_6

    move-object p1, v0

    check-cast p1, Lcom/miui/internal/view/ActionModeImpl;

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeView:Lcom/miui/internal/widget/ActionModeView;

    invoke-virtual {p1, v1}, Lcom/miui/internal/view/ActionModeImpl;->setActionModeView(Lcom/miui/internal/widget/ActionModeView;)V

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->va:Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;

    invoke-virtual {p1, v1}, Lcom/miui/internal/view/ActionModeImpl;->setActionModeCallback(Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;)V

    invoke-virtual {p1}, Lcom/miui/internal/view/ActionModeImpl;->dispatchOnCreate()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeView:Lcom/miui/internal/widget/ActionModeView;

    invoke-interface {p1, v0}, Lcom/miui/internal/widget/ActionModeView;->initForMode(Landroid/view/ActionMode;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->animateToMode(Z)V

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_4

    iget v2, p0, Lcom/miui/internal/app/ActionBarImpl;->ma:I

    if-ne v2, p1, :cond_4

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mSplitView:Lcom/miui/internal/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/miui/internal/widget/ActionBarContainer;->setVisibility(I)V

    :cond_4
    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionModeView:Lcom/miui/internal/widget/ActionModeView;

    instance-of v1, p1, Lcom/miui/internal/widget/ActionBarContextView;

    if-eqz v1, :cond_5

    check-cast p1, Lcom/miui/internal/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    :cond_5
    iput-object v0, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionMode:Landroid/view/ActionMode;

    return-object v0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method
