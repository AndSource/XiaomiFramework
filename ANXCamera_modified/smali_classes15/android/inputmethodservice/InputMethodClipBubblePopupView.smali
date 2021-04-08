.class public Landroid/inputmethodservice/InputMethodClipBubblePopupView;
.super Landroid/widget/PopupWindow;
.source "InputMethodClipBubblePopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "InputMethodClipBubblePopupView"


# instance fields
.field private mContent:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDataContentType:I

.field private mInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mIsLeft:Z

.field private mTypeIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputConnection;ZLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-boolean p3, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mIsLeft:Z

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mContext:Landroid/content/Context;

    iput-object p4, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mContent:Ljava/lang/String;

    iput p5, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mDataContentType:I

    iput-object p2, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    return-void
.end method

.method private clickClipContent()V
    .locals 3

    iget v0, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mDataContentType:I

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "click clipboard content error. type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mDataContentType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodClipBubblePopupView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-boolean v0, Landroid/inputmethodservice/InputMethodUtil;->sQuickPasteUrlEnable:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->startBrowser()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mContent:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_0

    :cond_2
    sget-boolean v0, Landroid/inputmethodservice/InputMethodUtil;->sQuickPasteTaobaoEnable:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->startTaobao()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mContent:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mContent:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_0

    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mContent:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    nop

    :goto_0
    return-void
.end method

.method private showTypeIcon()V
    .locals 2

    iget v0, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mDataContentType:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "show clipboard content type icon error. type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mDataContentType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodClipBubblePopupView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mTypeIcon:Landroid/widget/ImageView;

    const v1, 0x110700f9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mTypeIcon:Landroid/widget/ImageView;

    const v1, 0x110700f7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mTypeIcon:Landroid/widget/ImageView;

    const v1, 0x110700e2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mTypeIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    nop

    :goto_0
    return-void
.end method

.method private startActivity(Landroid/content/Intent;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mContent:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start activity error."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputMethodClipBubblePopupView"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private startBrowser()V
    .locals 4

    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->getsClipboardUrlLink()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "InputMethodClipBubblePopupView"

    const-string v2, "get clipboard url is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {p0, v1}, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startTaobao()V
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.taobao.taobao"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public initPopupWindow()V
    .locals 11

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->setHeight(I)V

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->setWidth(I)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x110b0020

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x1109004e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x1109004d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x11090080

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mTypeIcon:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->showTypeIcon()V

    const v3, 0x1109004c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mContent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x1109004a

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-virtual {v4, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v6, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mIsLeft:Z

    if-eqz v6, :cond_0

    const v6, 0x800053

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v6, 0x110700df

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const v6, 0x110f0008

    invoke-virtual {p0, v6}, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->setAnimationStyle(I)V

    goto :goto_0

    :cond_0
    const v6, 0x800055

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v6, 0x110700e0

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const v6, 0x110f000b

    invoke-virtual {p0, v6}, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->setAnimationStyle(I)V

    :goto_0
    iget-object v6, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x11060068

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v7, p0, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/inputmethodservice/InputMethodUtil;->getPopupWindowBottomMargin(Landroid/content/Context;)I

    move-result v7

    sub-int/2addr v7, v6

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->setContentView(Landroid/view/View;)V

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    new-instance v8, Landroid/inputmethodservice/InputMethodClipBubblePopupView$1;

    invoke-direct {v8, p0}, Landroid/inputmethodservice/InputMethodClipBubblePopupView$1;-><init>(Landroid/inputmethodservice/InputMethodClipBubblePopupView;)V

    const-wide/16 v9, 0xbb8

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->clickClipContent()V

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->dismiss()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodClipBubblePopupView;->dismiss()V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1109004a
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
