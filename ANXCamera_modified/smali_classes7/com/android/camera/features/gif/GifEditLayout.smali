.class public Lcom/android/camera/features/gif/GifEditLayout;
.super Landroid/widget/FrameLayout;
.source "GifEditLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "gif"


# instance fields
.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private mEtFakeGifWords:Lcom/android/camera/features/gif/AdaptiveEditText;

.field private mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

.field private mGifTextWatcher:Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;

.field private mIsShowBorder:Z

.field private mIvBorder:Landroid/widget/FrameLayout;

.field private mIvClear:Landroid/widget/ImageView;

.field private mLastTextLength:I

.field private stringBuilder:Ljava/lang/StringBuilder;

.field private tf:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/features/gif/GifEditLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/android/camera/features/gif/GifEditLayout;->initVidew()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/features/gif/GifEditLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/android/camera/features/gif/GifEditLayout;->initVidew()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/android/camera/features/gif/GifEditLayout;->initVidew()V

    return-void
.end method

.method static synthetic a(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 p1, 0x42

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic access$000(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/AdaptiveEditText;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtFakeGifWords:Lcom/android/camera/features/gif/AdaptiveEditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/features/gif/GifEditLayout;)Lcom/android/camera/features/gif/LimitInputEditText;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/features/gif/GifEditLayout;)Ljava/lang/StringBuilder;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/gif/GifEditLayout;->stringBuilder:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/features/gif/GifEditLayout;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mLastTextLength:I

    return p0
.end method

.method static synthetic access$302(Lcom/android/camera/features/gif/GifEditLayout;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/features/gif/GifEditLayout;->mLastTextLength:I

    return p1
.end method

.method static synthetic access$310(Lcom/android/camera/features/gif/GifEditLayout;)I
    .locals 2

    iget v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mLastTextLength:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/camera/features/gif/GifEditLayout;->mLastTextLength:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/features/gif/GifEditLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/gif/GifEditLayout;->justShowBorder(Z)V

    return-void
.end method

.method private initEdit()V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06014c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    iget-object v2, p0, Lcom/android/camera/features/gif/GifEditLayout;->tf:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setMaxLines(I)V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVerticalFadingEdgeEnabled(Z)V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060160

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    const/high16 v4, 0x420c0000    # 35.0f

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mGifTextWatcher:Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;

    invoke-direct {v0, p0}, Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;-><init>(Lcom/android/camera/features/gif/GifEditLayout;)V

    iput-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mGifTextWatcher:Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    iget-object v5, p0, Lcom/android/camera/features/gif/GifEditLayout;->mGifTextWatcher:Lcom/android/camera/features/gif/GifEditLayout$GifTextWatcher;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    sget-object v5, Lcom/android/camera/features/gif/c;->INSTANCE:Lcom/android/camera/features/gif/c;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtFakeGifWords:Lcom/android/camera/features/gif/AdaptiveEditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtFakeGifWords:Lcom/android/camera/features/gif/AdaptiveEditText;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtFakeGifWords:Lcom/android/camera/features/gif/AdaptiveEditText;

    iget-object v3, p0, Lcom/android/camera/features/gif/GifEditLayout;->tf:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtFakeGifWords:Lcom/android/camera/features/gif/AdaptiveEditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setMaxLines(I)V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtFakeGifWords:Lcom/android/camera/features/gif/AdaptiveEditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtFakeGifWords:Lcom/android/camera/features/gif/AdaptiveEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtFakeGifWords:Lcom/android/camera/features/gif/AdaptiveEditText;

    const-string v2, "#1F1F1F"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtFakeGifWords:Lcom/android/camera/features/gif/AdaptiveEditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setTextSize(F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mIsShowBorder:Z

    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->stringBuilder:Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->stringBuilder:Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtFakeGifWords:Lcom/android/camera/features/gif/AdaptiveEditText;

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initVidew()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0051

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090101

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout;->mIvClear:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout;->mIvClear:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0900db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout;->mIvBorder:Landroid/widget/FrameLayout;

    const v1, 0x7f0900be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/gif/LimitInputEditText;

    iput-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    const v1, 0x7f0900bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/gif/AdaptiveEditText;

    iput-object v1, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtFakeGifWords:Lcom/android/camera/features/gif/AdaptiveEditText;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->getFZMiaoWuJWTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->tf:Landroid/graphics/Typeface;

    iput v3, p0, Lcom/android/camera/features/gif/GifEditLayout;->mLastTextLength:I

    invoke-direct {p0}, Lcom/android/camera/features/gif/GifEditLayout;->initEdit()V

    return-void
.end method

.method private isShowSoftButtonsBarHeight()Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ActivityBase;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iget p0, v1, Landroid/graphics/Rect;->bottom:I

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private justShowBorder(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mIsShowBorder:Z

    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mIvBorder:Landroid/widget/FrameLayout;

    const v1, 0x7f080492

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mIvClear:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    iget-boolean p0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mIsShowBorder:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtFakeGifWords:Lcom/android/camera/features/gif/AdaptiveEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideBorder(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/features/gif/GifEditLayout;->isShowSoftButtonsBarHeight()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/camera/features/gif/GifEditLayout;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/features/gif/GifEditLayout;->mIsShowBorder:Z

    iget-object p1, p0, Lcom/android/camera/features/gif/GifEditLayout;->mIvClear:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/features/gif/GifEditLayout;->mIvBorder:Landroid/widget/FrameLayout;

    const v0, 0x7f06014c

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->clearFocus()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090101

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtFakeGifWords:Lcom/android/camera/features/gif/AdaptiveEditText;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f0900be

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/features/gif/GifEditLayout;->showBorder()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public showBorder()Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mIsShowBorder:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/android/camera/features/gif/GifEditLayout;->mIsShowBorder:Z

    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mIvBorder:Landroid/widget/FrameLayout;

    const v3, 0x7f080492

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mIvClear:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return v2

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/features/gif/GifEditLayout;->isShowSoftButtonsBarHeight()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v4, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    iget-object v0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object p0, p0, Lcom/android/camera/features/gif/GifEditLayout;->mEtGifWords:Lcom/android/camera/features/gif/LimitInputEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    return v1
.end method
