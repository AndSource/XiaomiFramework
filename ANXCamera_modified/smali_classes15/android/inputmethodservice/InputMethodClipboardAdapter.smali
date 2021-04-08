.class Landroid/inputmethodservice/InputMethodClipboardAdapter;
.super Landroid/widget/ArrayAdapter;
.source "InputMethodClipboardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Landroid/inputmethodservice/ClipboardContentModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InputClipboardAdapter"


# instance fields
.field private mClipClearBtn:Landroid/widget/LinearLayout;

.field private mClipboardList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/inputmethodservice/ClipboardContentModel;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mInputMethodClipboardPhrasePopupView:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

.field private mIsLeft:Z

.field private mParentView:Landroid/view/View;

.field private mResourceId:I

.field private mTipsNeedShow:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;ILjava/util/ArrayList;Landroid/view/inputmethod/InputConnection;Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;ZZLandroid/widget/LinearLayout;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/inputmethodservice/ClipboardContentModel;",
            ">;",
            "Landroid/view/inputmethod/InputConnection;",
            "Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;",
            "ZZ",
            "Landroid/widget/LinearLayout;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mTipsNeedShow:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mClipboardList:Ljava/util/ArrayList;

    iput-object p2, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mContext:Landroid/content/Context;

    iput p3, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mResourceId:I

    iput-object p5, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    iput-object p4, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mClipboardList:Ljava/util/ArrayList;

    iput-boolean p7, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mTipsNeedShow:Z

    iput-boolean p8, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mIsLeft:Z

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mParentView:Landroid/view/View;

    iput-object p9, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mClipClearBtn:Landroid/widget/LinearLayout;

    iput-object p6, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mInputMethodClipboardPhrasePopupView:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

    return-void
.end method

.method static synthetic access$000(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mIsLeft:Z

    return v0
.end method

.method static synthetic access$200(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mClipboardList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mInputMethodClipboardPhrasePopupView:Landroid/inputmethodservice/InputMethodClipboardPhrasePopupView;

    return-object v0
.end method

.method static synthetic access$500(Landroid/inputmethodservice/InputMethodClipboardAdapter;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 3

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mClipboardList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mClipClearBtn:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mResourceId:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;

    invoke-direct {v2, p0}, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;-><init>(Landroid/inputmethodservice/InputMethodClipboardAdapter;)V

    const v3, 0x11090047

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;->textItem:Landroid/widget/TextView;

    const v3, 0x11090039

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;->checkMoreBtn:Landroid/widget/LinearLayout;

    const v3, 0x1109003b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;->firstLineView:Landroid/widget/LinearLayout;

    const v3, 0x11090038

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;->checkMoreImage:Landroid/widget/ImageView;

    const v3, 0x110900d4

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;->typeIcon:Landroid/widget/ImageView;

    const v3, 0x11090036

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;->itemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object v1, p2

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;

    :goto_0
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mTipsNeedShow:Z

    const/16 v4, 0x8

    if-nez v3, :cond_2

    iget-object v3, v2, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;->firstLineView:Landroid/widget/LinearLayout;

    if-nez p1, :cond_1

    move v5, v0

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mClipboardList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/inputmethodservice/ClipboardContentModel;

    invoke-virtual {v3}, Landroid/inputmethodservice/ClipboardContentModel;->getType()I

    move-result v3

    iget-object v5, v2, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;->typeIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v0, v4

    :goto_2
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x1

    if-ne v3, v0, :cond_4

    iget-object v0, v2, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;->typeIcon:Landroid/widget/ImageView;

    const v4, 0x110700e2

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_4
    const/4 v0, 0x3

    if-ne v3, v0, :cond_5

    iget-object v0, v2, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;->typeIcon:Landroid/widget/ImageView;

    const v4, 0x110700f9

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_5
    const/4 v0, 0x2

    if-ne v3, v0, :cond_6

    iget-object v0, v2, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;->typeIcon:Landroid/widget/ImageView;

    const v4, 0x110700f7

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_6
    :goto_3
    iget-object v0, v2, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;->textItem:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mClipboardList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/inputmethodservice/ClipboardContentModel;

    invoke-virtual {v4}, Landroid/inputmethodservice/ClipboardContentModel;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;->checkMoreBtn:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/inputmethodservice/InputMethodClipboardAdapter$1;

    invoke-direct {v4, p0, v2, p1}, Landroid/inputmethodservice/InputMethodClipboardAdapter$1;-><init>(Landroid/inputmethodservice/InputMethodClipboardAdapter;Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;I)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v2, Landroid/inputmethodservice/InputMethodClipboardAdapter$ViewHolder;->itemLayout:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/inputmethodservice/InputMethodClipboardAdapter$2;

    invoke-direct {v4, p0, p1}, Landroid/inputmethodservice/InputMethodClipboardAdapter$2;-><init>(Landroid/inputmethodservice/InputMethodClipboardAdapter;I)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method public setClipboardList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/inputmethodservice/ClipboardContentModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mClipboardList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->clear()V

    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->addAll(Ljava/util/Collection;)V

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodClipboardAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setTipsNeedShowFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/inputmethodservice/InputMethodClipboardAdapter;->mTipsNeedShow:Z

    return-void
.end method
