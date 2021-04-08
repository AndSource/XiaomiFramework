.class public Lcom/miui/internal/app/ActionBarViewPagerController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/app/ActionBarViewPagerController$a;,
        Lcom/miui/internal/app/ActionBarViewPagerController$ScrollStatus;
    }
.end annotation


# instance fields
.field private mActionBar:Lcom/miui/internal/app/ActionBarImpl;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/app/ActionBar$FragmentViewPagerChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mw:Lmiui/view/ViewPager;

.field private nw:Landroid/view/View;

.field private ow:Lcom/miui/internal/app/q;

.field private pw:Landroid/app/ActionBar$TabListener;

.field private qw:Lcom/miui/internal/app/ActionBarViewPagerController$a;

.field private rw:Landroid/animation/ObjectAnimator;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/ActionBarImpl;Landroid/app/FragmentManager;Z)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/internal/app/g;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/g;-><init>(Lcom/miui/internal/app/ActionBarViewPagerController;)V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->pw:Landroid/app/ActionBar$TabListener;

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mActionBar:Lcom/miui/internal/app/ActionBarImpl;

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mActionBar:Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {p1}, Lcom/miui/internal/app/ActionBarImpl;->c()Lcom/miui/internal/widget/ActionBarOverlayLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lmiui/R$id;->view_pager:I

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lmiui/view/ViewPager;

    if-eqz v2, :cond_0

    check-cast v1, Lmiui/view/ViewPager;

    iput-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mw:Lmiui/view/ViewPager;

    goto :goto_0

    :cond_0
    new-instance v1, Lmiui/view/ViewPager;

    invoke-direct {v1, v0}, Lmiui/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mw:Lmiui/view/ViewPager;

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mw:Lmiui/view/ViewPager;

    sget v2, Lmiui/R$id;->view_pager:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setId(I)V

    new-instance v1, Lmiui/view/springback/SpringBackLayout;

    invoke-direct {v1, v0}, Lmiui/view/springback/SpringBackLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lmiui/view/springback/SpringBackLayout;->setScrollOrientation(I)V

    new-instance v2, Lmiui/view/ViewPager$LayoutParams;

    invoke-direct {v2}, Lmiui/view/ViewPager$LayoutParams;-><init>()V

    iget-object v3, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mw:Lmiui/view/ViewPager;

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mw:Lmiui/view/ViewPager;

    invoke-virtual {v1, v2}, Lmiui/view/springback/SpringBackLayout;->setTarget(Landroid/view/View;)V

    const v2, 0x1020002

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    new-instance p1, Lcom/miui/internal/app/q;

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mw:Lmiui/view/ViewPager;

    invoke-direct {p1, v0, p2, v1}, Lcom/miui/internal/app/q;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;Lmiui/view/ViewPager;)V

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->ow:Lcom/miui/internal/app/q;

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mw:Lmiui/view/ViewPager;

    new-instance p2, Lcom/miui/internal/app/h;

    invoke-direct {p2, p0}, Lcom/miui/internal/app/h;-><init>(Lcom/miui/internal/app/ActionBarViewPagerController;)V

    invoke-virtual {p1, p2}, Lmiui/view/ViewPager;->setInternalPageChangeListener(Lmiui/view/ViewPager$OnPageChangeListener;)Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz p3, :cond_1

    sget-boolean p1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz p1, :cond_1

    new-instance p1, Lcom/miui/internal/app/t;

    iget-object p2, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mw:Lmiui/view/ViewPager;

    iget-object p3, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->ow:Lcom/miui/internal/app/q;

    invoke-direct {p1, p2, p3}, Lcom/miui/internal/app/t;-><init>(Lmiui/view/ViewPager;Lcom/miui/internal/app/q;)V

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/q;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->ow:Lcom/miui/internal/app/q;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/internal/app/ActionBarViewPagerController;)Lmiui/view/ViewPager;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mw:Lmiui/view/ViewPager;

    return-object p0
.end method

.method static synthetic c(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic d(Lcom/miui/internal/app/ActionBarViewPagerController;)Lcom/miui/internal/app/ActionBarImpl;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mActionBar:Lcom/miui/internal/app/ActionBarImpl;

    return-object p0
.end method


# virtual methods
.method addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;ILjava/lang/Class;Landroid/os/Bundle;Z)I
    .locals 8
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

    move-object v0, p2

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->pw:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setInternalTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mActionBar:Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {v0, p2, p3}, Lcom/miui/internal/app/ActionBarImpl;->a(Landroid/app/ActionBar$Tab;I)V

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->ow:Lcom/miui/internal/app/q;

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p2

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/miui/internal/app/q;->a(Ljava/lang/String;ILjava/lang/Class;Landroid/os/Bundle;Landroid/app/ActionBar$Tab;Z)I

    move-result p0

    return p0
.end method

.method addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I
    .locals 7
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

    move-object v0, p2

    check-cast v0, Lcom/miui/internal/app/ActionBarImpl$TabImpl;

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->pw:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Lcom/miui/internal/app/ActionBarImpl$TabImpl;->setInternalTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mActionBar:Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {v0, p2}, Lcom/miui/internal/app/ActionBarImpl;->a(Landroid/app/ActionBar$Tab;)V

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->ow:Lcom/miui/internal/app/q;

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/miui/internal/app/q;->a(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroid/app/ActionBar$Tab;Z)I

    move-result p0

    return p0
.end method

.method addOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method d(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->ow:Lcom/miui/internal/app/q;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/q;->d(I)V

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mActionBar:Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->b(I)V

    return-void
.end method

.method getFragmentAt(I)Landroid/app/Fragment;
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->ow:Lcom/miui/internal/app/q;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/app/q;->c(IZ)Landroid/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method getFragmentTabCount()I
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->ow:Lcom/miui/internal/app/q;

    invoke-virtual {p0}, Lcom/miui/internal/app/q;->getCount()I

    move-result p0

    return p0
.end method

.method getViewPagerOffscreenPageLimit()I
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mw:Lmiui/view/ViewPager;

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getOffscreenPageLimit()I

    move-result p0

    return p0
.end method

.method removeAllFragmentTab()V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mActionBar:Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {v0}, Lcom/miui/internal/app/ActionBarImpl;->e()V

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->ow:Lcom/miui/internal/app/q;

    invoke-virtual {p0}, Lcom/miui/internal/app/q;->O()V

    return-void
.end method

.method removeFragment(Landroid/app/Fragment;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->ow:Lcom/miui/internal/app/q;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/q;->removeFragment(Landroid/app/Fragment;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mActionBar:Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarImpl;->b(I)V

    :cond_0
    return-void
.end method

.method removeFragmentTab(Landroid/app/ActionBar$Tab;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mActionBar:Lcom/miui/internal/app/ActionBarImpl;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/ActionBarImpl;->b(Landroid/app/ActionBar$Tab;)V

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->ow:Lcom/miui/internal/app/q;

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/q;->c(Landroid/app/ActionBar$Tab;)I

    return-void
.end method

.method removeFragmentTab(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->ow:Lcom/miui/internal/app/q;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/q;->g(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/internal/app/ActionBarViewPagerController;->d(I)V

    :cond_0
    return-void
.end method

.method removeOnFragmentViewPagerChangeListener(Lmiui/app/ActionBar$FragmentViewPagerChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mListeners:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method setFragmentActionMenuAt(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->ow:Lcom/miui/internal/app/q;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/app/q;->setFragmentActionMenuAt(IZ)V

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mw:Lmiui/view/ViewPager;

    invoke-virtual {v0}, Lmiui/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->qw:Lcom/miui/internal/app/ActionBarViewPagerController$a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/internal/app/ActionBarViewPagerController$a;

    invoke-direct {v0, p0}, Lcom/miui/internal/app/ActionBarViewPagerController$a;-><init>(Lcom/miui/internal/app/ActionBarViewPagerController;)V

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->qw:Lcom/miui/internal/app/ActionBarViewPagerController$a;

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->qw:Lcom/miui/internal/app/ActionBarViewPagerController$a;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "Value"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->rw:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->rw:Landroid/animation/ObjectAnimator;

    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mw:Lmiui/view/ViewPager;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->qw:Lcom/miui/internal/app/ActionBarViewPagerController$a;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/app/ActionBarViewPagerController$a;->a(IZ)V

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->rw:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method setViewPagerDecor(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->nw:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mw:Lmiui/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->nw:Landroid/view/View;

    new-instance p1, Lmiui/view/ViewPager$LayoutParams;

    invoke-direct {p1}, Lmiui/view/ViewPager$LayoutParams;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mw:Lmiui/view/ViewPager;

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->nw:Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1, p1}, Lmiui/view/ViewPager;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method setViewPagerOffscreenPageLimit(I)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarViewPagerController;->mw:Lmiui/view/ViewPager;

    invoke-virtual {p0, p1}, Lmiui/view/ViewPager;->setOffscreenPageLimit(I)V

    return-void
.end method
