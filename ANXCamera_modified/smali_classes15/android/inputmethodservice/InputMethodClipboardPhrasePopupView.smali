.class Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;
.super Landroid/widget/PopupWindow;
.source "InputMethodClipboardPhrasePopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "miui.phrase"

.field private static final KEY_SAVE_CLIPBOARD_STRING_URI:Ljava/lang/String; = "content://com.miui.input.provider"

.field private static final KEY_SET_CLIPBOARD_TIPS_NEED_SHOW_FLAG:Ljava/lang/String; = "setClipboardTipsNeedShowFlag"

.field private static final SETTINGS_URI:Ljava/lang/String; = "intent:#Intent;component=com.android.settings/.SubSettings;S.:settings:show_fragment=com.android.settings.inputmethod.InputMethodClipboardSettingsFragment;end"

.field private static final TAG:Ljava/lang/String; = "InputMethodClipboard"

.field private static final WORDS:Ljava/lang/String; = "words"

.field private static final WORDS_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private mClipboardLayout:Landroid/widget/RelativeLayout;

.field private mClipboardList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/inputmethodservice/ClipboardContentModel;",
            ">;"
        }
    .end annotation
.end field

.field private mClipboardText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mInputMethodClipboardAdapter:Landroid/inputmethodservice/InputMethodClipboardAdapter;

.field private mInputMethodPhraseAdapter:Landroid/inputmethodservice/InputMethodPhraseAdapter;

.field private mIsLeft:Z

.field private mListView:Landroid/widget/ListView;

.field private mMainHandler:Landroid/os/Handler;

.field private mParentView:Landroid/view/View;

.field private mPhraseLayout:Landroid/widget/LinearLayout;

.field private mPhraseList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhraseText:Landroid/widget/TextView;

.field private mSubHandler:Landroid/os/Handler;

.field private mTipsLayout:Landroid/widget/LinearLayout;

.field private mTipsNeedShow:Z

.field private mTransitionView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://miui.phrase/phrase/words"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->WORDS_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputConnection;ZLandroid/view/View;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mClipboardList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mPhraseList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mTipsNeedShow:Z

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    iput-boolean p3, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mIsLeft:Z

    iput-object p4, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mParentView:Landroid/view/View;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "query_phrase"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mSubHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mClipboardList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mClipboardList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mPhraseList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mPhraseList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->queryPhrase()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;)Landroid/inputmethodservice/InputMethodClipboardAdapter;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mInputMethodClipboardAdapter:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    return-object v0
.end method

.method static synthetic access$500(Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;)Landroid/inputmethodservice/InputMethodPhraseAdapter;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mInputMethodPhraseAdapter:Landroid/inputmethodservice/InputMethodPhraseAdapter;

    return-object v0
.end method

.method static synthetic access$600(Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$800(Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mTransitionView:Landroid/view/View;

    return-object v0
.end method

.method private clipboardTipsNeedShow()Z
    .locals 3

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "clipboard_expired_tips_need_to_show"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isIntentAvailable(Landroid/content/Intent;)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v3, :cond_0

    return v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private queryPhrase()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->WORDS_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    if-eqz v0, :cond_1

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "words"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    const-string v2, "InputMethodClipboard"

    const-string v3, "fail to query Phrases.Phrase.WORDS_CONTENT_URI"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/provider/MiuiSettings$FrequentPhrases;->getFrequentPhrases(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    move-object v1, v2

    if-nez v1, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v1

    :catchall_0
    move-exception v2

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2
.end method

.method private setListViewOnScrollListener()V
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$4;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$4;-><init>(Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method


# virtual methods
.method public initPopupWindow()V
    .locals 25

    move-object/from16 v10, p0

    const/4 v0, -0x1

    invoke-virtual {v10, v0}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->setHeight(I)V

    invoke-virtual {v10, v0}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->setWidth(I)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v11, 0x0

    invoke-direct {v0, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v10, v0}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v10, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x110b0013

    invoke-virtual {v0, v2, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    const v0, 0x11090037

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/LinearLayout;

    const v0, 0x11090085

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/LinearLayout;

    invoke-virtual {v13, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v14, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x11090046

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v10, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mClipboardText:Landroid/widget/TextView;

    const v0, 0x1109008b

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v10, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mPhraseText:Landroid/widget/TextView;

    iget-object v0, v10, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mClipboardText:Landroid/widget/TextView;

    iget-object v2, v10, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11050050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v10, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mPhraseText:Landroid/widget/TextView;

    iget-object v2, v10, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11050084

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x1109003d

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v10, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mClipboardLayout:Landroid/widget/RelativeLayout;

    iget-object v0, v10, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mClipboardLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x11090045

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/LinearLayout;

    const v0, 0x1109003a

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/LinearLayout;

    invoke-virtual {v15, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x11090089

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v10, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mPhraseLayout:Landroid/widget/LinearLayout;

    iget-object v0, v10, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mPhraseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x11090086

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/LinearLayout;

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x11090084

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v7, v10}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x11090069

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v0, v10, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mIsLeft:Z

    if-eqz v0, :cond_0

    const v0, 0x800053

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v0, 0x110700f0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const v0, 0x110f0008

    invoke-virtual {v10, v0}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->setAnimationStyle(I)V

    goto :goto_0

    :cond_0
    const v0, 0x800055

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v0, 0x110700f2

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const v0, 0x110f000b

    invoke-virtual {v10, v0}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->setAnimationStyle(I)V

    :goto_0
    iget-object v0, v10, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/inputmethodservice/InputMethodUtil;->getPopupWindowBottomMargin(Landroid/content/Context;)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x11090079

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x11090049

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v10, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mTransitionView:Landroid/view/View;

    iget-object v0, v10, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1107017c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v0, v10, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mTransitionView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x11090078

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, v10, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mListView:Landroid/widget/ListView;

    const v0, 0x11090043

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/TextView;

    const v0, 0x110900c9

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v10, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mTipsLayout:Landroid/widget/LinearLayout;

    const v0, 0x11090054

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v11, v10, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mTipsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct/range {p0 .. p0}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->clipboardTipsNeedShow()Z

    move-result v1

    iput-boolean v1, v10, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mTipsNeedShow:Z

    new-instance v11, Landroid/inputmethodservice/InputMethodClipboardAdapter;

    iget-object v1, v10, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mParentView:Landroid/view/View;

    move-object/from16 v16, v2

    iget-object v2, v10, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mContext:Landroid/content/Context;

    const v17, 0x110b0012

    move-object/from16 v18, v3

    iget-object v3, v10, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mClipboardList:Ljava/util/ArrayList;

    move-object/from16 v19, v3

    iget-object v3, v10, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    move-object/from16 v20, v3

    iget-boolean v3, v10, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mTipsNeedShow:Z

    move/from16 v21, v3

    iget-boolean v3, v10, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mIsLeft:Z

    move-object/from16 v22, v0

    move-object v0, v11

    move-object/from16 v23, v13

    move-object/from16 v13, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v3

    move/from16 v3, v17

    move-object/from16 v17, v4

    move-object/from16 v4, v18

    move-object/from16 v18, v5

    move-object/from16 v5, v19

    move-object/from16 v19, v6

    move-object/from16 v6, p0

    move-object/from16 v24, v7

    move/from16 v7, v20

    move-object/from16 v20, v8

    move/from16 v8, v21

    move-object/from16 v21, v9

    invoke-direct/range {v0 .. v9}, Landroid/inputmethodservice/InputMethodClipboardAdapter;-><init>(Landroid/view/View;Landroid/content/Context;ILjava/util/ArrayList;Landroid/view/inputmethod/InputConnection;Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;ZZLandroid/widget/LinearLayout;)V

    iput-object v11, v10, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mInputMethodClipboardAdapter:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    new-instance v6, Landroid/inputmethodservice/InputMethodPhraseAdapter;

    iget-object v1, v10, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mContext:Landroid/content/Context;

    const v2, 0x110b0029

    iget-object v3, v10, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mPhraseList:Ljava/util/ArrayList;

    iget-object v4, v10, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    move-object v0, v6

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/InputMethodPhraseAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Landroid/view/inputmethod/InputConnection;Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;)V

    iput-object v6, v10, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mInputMethodPhraseAdapter:Landroid/inputmethodservice/InputMethodPhraseAdapter;

    iget-boolean v0, v10, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mTipsNeedShow:Z

    if-eqz v0, :cond_1

    iget-object v0, v10, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mTipsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    iget-object v0, v10, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mListView:Landroid/widget/ListView;

    iget-object v1, v10, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mInputMethodClipboardAdapter:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct/range {p0 .. p0}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->setListViewOnScrollListener()V

    iget-object v0, v10, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v13}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    invoke-virtual {v10, v12}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->setContentView(Landroid/view/View;)V

    iget-object v0, v10, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1, v1, v1}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, v10, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mSubHandler:Landroid/os/Handler;

    new-instance v1, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$1;

    invoke-direct {v1, v10}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$1;-><init>(Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/high16 v1, 0x10000000

    const v2, 0x11050050

    const v3, 0x11050084

    const/4 v4, 0x0

    const/16 v5, 0x8

    const-string v6, "InputMethodClipboard"

    const/4 v7, 0x0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown view id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :sswitch_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->dismiss()V

    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.miui.phrase"

    const-string v3, "com.miui.phrase.PhraseEditActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-direct {p0, v2}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->isIntentAvailable(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.miui.system"

    const-string v5, "miui.phrase.PhraseEditActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isIntentAvailable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v1, "start PhraseEditActivity error."

    invoke-static {v6, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :sswitch_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mTipsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mClipboardLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mTransitionView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mClipboardText:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mPhraseText:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mPhraseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mInputMethodPhraseAdapter:Landroid/inputmethodservice/InputMethodPhraseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_2

    :sswitch_2
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->dismiss()V

    goto/16 :goto_2

    :sswitch_3
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mTipsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput-boolean v7, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mTipsNeedShow:Z

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mInputMethodClipboardAdapter:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mTipsNeedShow:Z

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->setTipsNeedShowFlag(Z)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mInputMethodClipboardAdapter:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "tipsFlag"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.miui.input.provider"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "setClipboardTipsNeedShowFlag"

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    nop

    goto/16 :goto_2

    :catch_1
    move-exception v0

    const-string/jumbo v1, "save clipboard words error"

    invoke-static {v6, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :sswitch_4
    const-string v0, "clipboard_settings_button"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    const-string v0, "intent:#Intent;component=com.android.settings/.SubSettings;S.:settings:show_fragment=com.android.settings.inputmethod.InputMethodClipboardSettingsFragment;end"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v1, "start clipboard settings error"

    invoke-static {v6, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->dismiss()V

    goto :goto_2

    :sswitch_5
    new-instance v0, Landroid/inputmethodservice/InputMethodAlertDialog;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/inputmethodservice/InputMethodAlertDialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodAlertDialog;->initPopupWindow(Landroid/view/View;)V

    new-instance v1, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$2;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$2;-><init>(Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;)V

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodAlertDialog;->setConfirmListener(Landroid/inputmethodservice/InputMethodAlertDialog$ConfirmListener;)V

    new-instance v1, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$3;

    invoke-direct {v1, p0, v0}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView$3;-><init>(Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;Landroid/inputmethodservice/InputMethodAlertDialog;)V

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    goto :goto_2

    :sswitch_6
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mTipsNeedShow:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mTipsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mTipsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mTransitionView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mClipboardText:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mPhraseText:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mClipboardLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mPhraseLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;->mInputMethodClipboardAdapter:Landroid/inputmethodservice/InputMethodClipboardAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    nop

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x11090037 -> :sswitch_6
        0x1109003a -> :sswitch_5
        0x11090045 -> :sswitch_4
        0x11090046 -> :sswitch_6
        0x11090054 -> :sswitch_3
        0x11090084 -> :sswitch_2
        0x11090085 -> :sswitch_1
        0x11090086 -> :sswitch_0
        0x1109008b -> :sswitch_1
    .end sparse-switch
.end method
