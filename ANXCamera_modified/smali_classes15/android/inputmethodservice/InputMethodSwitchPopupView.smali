.class Landroid/inputmethodservice/InputMethodSwitchPopupView;
.super Landroid/widget/PopupWindow;
.source "InputMethodSwitchPopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MAX_LIST_VIEW_ITEM_NUMBER:I = 0x4

.field private static final SETTINGS_URI:Ljava/lang/String; = "intent:#Intent;component=com.android.settings/.SubSettings;S.:settings:show_fragment=com.android.settings.language.MiuiLanguageAndInputSettings;end"

.field private static final TAG:Ljava/lang/String; = "InputMethodSwitchView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInputMethodList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInputMethodService:Landroid/inputmethodservice/InputMethodService;

.field private mInputMethodSwitchAdapter:Landroid/inputmethodservice/InputMethodSwitchAdapter;

.field private mIsLeft:Z

.field private mListView:Landroid/widget/ListView;

.field private mTransitionView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/inputmethodservice/InputMethodService;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Landroid/inputmethodservice/InputMethodService;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mInputMethodList:Ljava/util/List;

    iput-object p3, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    iput-boolean p4, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mIsLeft:Z

    return-void
.end method

.method static synthetic access$000(Landroid/inputmethodservice/InputMethodSwitchPopupView;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/inputmethodservice/InputMethodSwitchPopupView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mTransitionView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Landroid/inputmethodservice/InputMethodSwitchPopupView;)Landroid/inputmethodservice/InputMethodService;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    return-object v0
.end method

.method static synthetic access$300(Landroid/inputmethodservice/InputMethodSwitchPopupView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setListViewHeight()V
    .locals 6

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mInputMethodSwitchAdapter:Landroid/inputmethodservice/InputMethodSwitchAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodSwitchAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x4

    if-le v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    move v0, v2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mInputMethodSwitchAdapter:Landroid/inputmethodservice/InputMethodSwitchAdapter;

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2, v4, v5}, Landroid/inputmethodservice/InputMethodSwitchAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setListViewListener()V
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mInputMethodSwitchAdapter:Landroid/inputmethodservice/InputMethodSwitchAdapter;

    new-instance v1, Landroid/inputmethodservice/InputMethodSwitchPopupView$2;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/InputMethodSwitchPopupView$2;-><init>(Landroid/inputmethodservice/InputMethodSwitchPopupView;)V

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodSwitchAdapter;->setClickListener(Landroid/inputmethodservice/InputMethodSwitchAdapter$ClickListener;)V

    return-void
.end method

.method private setListViewOnScrollListener()V
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/inputmethodservice/InputMethodSwitchPopupView$1;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/InputMethodSwitchPopupView$1;-><init>(Landroid/inputmethodservice/InputMethodSwitchPopupView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method


# virtual methods
.method public initPopupWindow()V
    .locals 10

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodSwitchPopupView;->setHeight(I)V

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodSwitchPopupView;->setWidth(I)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodSwitchPopupView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v2, 0x0

    const v3, 0x110b0023

    invoke-virtual {v0, v3, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v3, 0x110900bb

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v4, 0x110900b7

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v6, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mIsLeft:Z

    if-eqz v6, :cond_0

    const v6, 0x800053

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v6, 0x110700f0

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const v6, 0x110f0008

    invoke-virtual {p0, v6}, Landroid/inputmethodservice/InputMethodSwitchPopupView;->setAnimationStyle(I)V

    goto :goto_0

    :cond_0
    const v6, 0x800055

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v6, 0x110700f2

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const v6, 0x110f000b

    invoke-virtual {p0, v6}, Landroid/inputmethodservice/InputMethodSwitchPopupView;->setAnimationStyle(I)V

    :goto_0
    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/inputmethodservice/InputMethodUtil;->getPopupWindowBottomMargin(Landroid/content/Context;)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v6, 0x110900ba

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x110900bc

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mTransitionView:Landroid/view/View;

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mTransitionView:Landroid/view/View;

    iget-object v7, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mInputMethodList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x4

    if-le v7, v8, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x110900b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mListView:Landroid/widget/ListView;

    const v1, 0x11090073

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/inputmethodservice/InputMethodSwitchAdapter;

    iget-object v7, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mContext:Landroid/content/Context;

    const v8, 0x110b0022

    iget-object v9, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mInputMethodList:Ljava/util/List;

    invoke-direct {v2, v7, v8, v9}, Landroid/inputmethodservice/InputMethodSwitchAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mInputMethodSwitchAdapter:Landroid/inputmethodservice/InputMethodSwitchAdapter;

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mInputMethodSwitchAdapter:Landroid/inputmethodservice/InputMethodSwitchAdapter;

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodSwitchPopupView;->setListViewOnScrollListener()V

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodSwitchPopupView;->setListViewHeight()V

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodSwitchPopupView;->setListViewListener()V

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodSwitchPopupView;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x11090073

    const-string v2, "InputMethodSwitchView"

    if-eq v0, v1, :cond_1

    const v1, 0x110900bb

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown view id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodSwitchPopupView;->dismiss()V

    goto :goto_1

    :cond_1
    :try_start_0
    const-string v0, "intent:#Intent;component=com.android.settings/.SubSettings;S.:settings:show_fragment=com.android.settings.language.MiuiLanguageAndInputSettings;end"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodSwitchPopupView;->mContext:Landroid/content/Context;

    const-string v3, "clipboard_settings"

    invoke-static {v1, v3}, Landroid/inputmethodservice/InputMethodAnalyticsUtil;->addHighKeyboardRecord(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "start settings error"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodSwitchPopupView;->dismiss()V

    nop

    :goto_1
    return-void
.end method
