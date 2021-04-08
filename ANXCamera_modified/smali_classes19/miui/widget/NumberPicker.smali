.class public Lmiui/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/NumberPicker$a;,
        Lmiui/widget/NumberPicker$b;,
        Lmiui/widget/NumberPicker$CustomEditText;,
        Lmiui/widget/NumberPicker$c;,
        Lmiui/widget/NumberPicker$f;,
        Lmiui/widget/NumberPicker$e;,
        Lmiui/widget/NumberPicker$d;,
        Lmiui/widget/NumberPicker$Formatter;,
        Lmiui/widget/NumberPicker$OnScrollListener;,
        Lmiui/widget/NumberPicker$OnValueChangeListener;,
        Lmiui/widget/NumberPicker$SoundPlayHandler;,
        Lmiui/widget/NumberPicker$NumberFormatter;
    }
.end annotation


# static fields
.field private static final MAX_HEIGHT:I = 0xca

.field private static final PRESSED_STATE_SET:[I

.field static final SELECTOR_WHEEL_ITEM_COUNT:I = 0x3

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final ln:Ljava/lang/String; = "NumberPicker_sound_play"

.field private static final mn:J = 0x12cL

.field private static final nn:I = 0x1

.field private static final pn:I = 0x8

.field private static final qn:I = 0x320

.field private static final rn:I = 0x12c

.field private static final sn:F = 0.9f

.field private static final tn:I = 0x2

.field private static final un:I = 0x30

.field private static final vn:I

.field private static final wn:Ljava/util/concurrent/atomic/AtomicInteger;

.field static final xn:Lmiui/widget/NumberPicker$Formatter;

.field private static final yn:F = 45.0f

.field private static final zn:[C


# instance fields
.field private Am:I

.field private Bm:I

.field private Cm:I

.field private final Dm:Landroid/widget/Scroller;

.field private final Em:Landroid/widget/Scroller;

.field private Fm:I

.field private Gm:Lmiui/widget/NumberPicker$f;

.field private Hm:Lmiui/widget/NumberPicker$c;

.field private Im:Lmiui/widget/NumberPicker$b;

.field private Jm:F

.field private Km:J

.field private Lm:F

.field private Mm:I

.field private Nm:I

.field private Om:Z

.field private final Pm:Z

.field private final Qm:I

.field private Rm:Z

.field private Sf:I

.field private Sm:Z

.field private Tm:I

.field private Um:I

.field private Vm:I

.field private Wm:Z

.field private Xm:Z

.field private Ym:Lmiui/widget/NumberPicker$a;

.field private final Zm:Lmiui/widget/NumberPicker$e;

.field private _m:I

.field private an:Landroid/graphics/Paint;

.field private bn:I

.field private cn:F

.field private dn:I

.field private en:I

.field private fn:I

.field private gn:I

.field private hn:I

.field private jn:F

.field private kn:Ljava/lang/String;

.field private mFormatter:Lmiui/widget/NumberPicker$Formatter;

.field private final mId:I

.field private mLabel:Ljava/lang/CharSequence;

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mTextColorHint:I

.field private final mTextSize:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mm:I

.field private nm:I

.field private om:Lmiui/widget/NumberPicker$SoundPlayHandler;

.field private pf:I

.field private final qm:Landroid/widget/EditText;

.field private rf:Lmiui/widget/NumberPicker$OnScrollListener;

.field private final rm:I

.field private final sm:Z

.field private tm:I

.field private um:[Ljava/lang/String;

.field private vm:Lmiui/widget/NumberPicker$OnValueChangeListener;

.field private wm:J

.field private final xm:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ym:[I

.field private final zm:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Lcom/miui/internal/R$layout;->numberpicker_layout:I

    sput v0, Lmiui/widget/NumberPicker;->vn:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lmiui/widget/NumberPicker;->wn:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lmiui/widget/NumberPicker$NumberFormatter;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lmiui/widget/NumberPicker$NumberFormatter;-><init>(I)V

    sput-object v0, Lmiui/widget/NumberPicker;->xn:Lmiui/widget/NumberPicker$Formatter;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v2, 0x10100a7

    aput v2, v0, v1

    sput-object v0, Lmiui/widget/NumberPicker;->PRESSED_STATE_SET:[I

    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/widget/NumberPicker;->zn:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/miui/internal/R$attr;->numberPickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lmiui/widget/NumberPicker;->wn:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lmiui/widget/NumberPicker;->mId:I

    const/4 v0, 0x1

    iput v0, p0, Lmiui/widget/NumberPicker;->mm:I

    const/4 v1, 0x2

    iput v1, p0, Lmiui/widget/NumberPicker;->nm:I

    const/16 v2, 0x190

    iput v2, p0, Lmiui/widget/NumberPicker;->mMaxWidth:I

    const-wide/16 v2, 0x12c

    iput-wide v2, p0, Lmiui/widget/NumberPicker;->wm:J

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lmiui/widget/NumberPicker;->xm:Landroid/util/SparseArray;

    const/4 v2, 0x3

    new-array v2, v2, [I

    iput-object v2, p0, Lmiui/widget/NumberPicker;->ym:[I

    const/high16 v2, -0x80000000

    iput v2, p0, Lmiui/widget/NumberPicker;->Bm:I

    const/4 v2, 0x0

    iput v2, p0, Lmiui/widget/NumberPicker;->pf:I

    const/4 v3, -0x1

    iput v3, p0, Lmiui/widget/NumberPicker;->_m:I

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lmiui/widget/NumberPicker;->jn:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    sget v6, Lcom/miui/internal/R$dimen;->number_picker_label_margin_left:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, p0, Lmiui/widget/NumberPicker;->mm:I

    sget v6, Lcom/miui/internal/R$dimen;->number_picker_label_margin_top:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, p0, Lmiui/widget/NumberPicker;->nm:I

    invoke-direct {p0, p2, p3}, Lmiui/widget/NumberPicker;->a(Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->Lb()V

    iput-boolean v0, p0, Lmiui/widget/NumberPicker;->Pm:Z

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 p3, 0x40000000    # 2.0f

    invoke-static {v0, p3, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lmiui/widget/NumberPicker;->Qm:I

    const/high16 p2, 0x42340000    # 45.0f

    mul-float/2addr p2, v5

    float-to-int p2, p2

    iput p2, p0, Lmiui/widget/NumberPicker;->rm:I

    iput v3, p0, Lmiui/widget/NumberPicker;->mMinHeight:I

    const/high16 p2, 0x434a0000    # 202.0f

    mul-float/2addr v5, p2

    float-to-int p2, v5

    iput p2, p0, Lmiui/widget/NumberPicker;->mMaxHeight:I

    iget p2, p0, Lmiui/widget/NumberPicker;->mMinHeight:I

    if-eq p2, v3, :cond_1

    iget p3, p0, Lmiui/widget/NumberPicker;->mMaxHeight:I

    if-eq p3, v3, :cond_1

    if-gt p2, p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minHeight > maxHeight"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput v3, p0, Lmiui/widget/NumberPicker;->mMinWidth:I

    iput v3, p0, Lmiui/widget/NumberPicker;->mMaxWidth:I

    iget p2, p0, Lmiui/widget/NumberPicker;->mMinWidth:I

    if-eq p2, v3, :cond_3

    iget p3, p0, Lmiui/widget/NumberPicker;->mMaxWidth:I

    if-eq p3, v3, :cond_3

    if-gt p2, p3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minWidth > maxWidth"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    iget p2, p0, Lmiui/widget/NumberPicker;->mMaxWidth:I

    if-ne p2, v3, :cond_4

    move p2, v0

    goto :goto_2

    :cond_4
    move p2, v2

    :goto_2
    iput-boolean p2, p0, Lmiui/widget/NumberPicker;->sm:Z

    new-instance p2, Lmiui/widget/NumberPicker$e;

    invoke-direct {p2, p0}, Lmiui/widget/NumberPicker$e;-><init>(Lmiui/widget/NumberPicker;)V

    iput-object p2, p0, Lmiui/widget/NumberPicker;->Zm:Lmiui/widget/NumberPicker$e;

    iget-boolean p2, p0, Lmiui/widget/NumberPicker;->Pm:Z

    xor-int/2addr p2, v0

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "layout_inflater"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    sget p3, Lcom/miui/internal/R$layout;->numberpicker_layout:I

    invoke-virtual {p2, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p2, Lcom/miui/internal/R$id;->numberpicker_input:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lmiui/widget/NumberPicker;->qm:Landroid/widget/EditText;

    iget-object p2, p0, Lmiui/widget/NumberPicker;->qm:Landroid/widget/EditText;

    new-instance p3, Lmiui/widget/X;

    invoke-direct {p3, p0}, Lmiui/widget/X;-><init>(Lmiui/widget/NumberPicker;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p2, p0, Lmiui/widget/NumberPicker;->qm:Landroid/widget/EditText;

    new-array p3, v0, [Landroid/text/InputFilter;

    new-instance v4, Lmiui/widget/NumberPicker$d;

    invoke-direct {v4, p0}, Lmiui/widget/NumberPicker$d;-><init>(Lmiui/widget/NumberPicker;)V

    aput-object v4, p3, v2

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object p2, p0, Lmiui/widget/NumberPicker;->qm:Landroid/widget/EditText;

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    iget-object p2, p0, Lmiui/widget/NumberPicker;->qm:Landroid/widget/EditText;

    const/4 p3, 0x6

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object p2, p0, Lmiui/widget/NumberPicker;->qm:Landroid/widget/EditText;

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object p2, p0, Lmiui/widget/NumberPicker;->qm:Landroid/widget/EditText;

    const p3, 0x800003

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setGravity(I)V

    iget-object p2, p0, Lmiui/widget/NumberPicker;->qm:Landroid/widget/EditText;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setScaleX(F)V

    iget-object p2, p0, Lmiui/widget/NumberPicker;->qm:Landroid/widget/EditText;

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setSaveEnabled(Z)V

    iget-object p2, p0, Lmiui/widget/NumberPicker;->qm:Landroid/widget/EditText;

    iget p3, p0, Lmiui/widget/NumberPicker;->bn:I

    invoke-virtual {p2}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lmiui/widget/NumberPicker;->bn:I

    iget-object v4, p0, Lmiui/widget/NumberPicker;->qm:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v4

    invoke-virtual {p2, p3, v1, v2, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lmiui/widget/NumberPicker;->Sf:I

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    iput p2, p0, Lmiui/widget/NumberPicker;->Mm:I

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lmiui/widget/NumberPicker;->Nm:I

    iget-object p1, p0, Lmiui/widget/NumberPicker;->qm:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getTextSize()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lmiui/widget/NumberPicker;->mTextSize:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget p2, p0, Lmiui/widget/NumberPicker;->dn:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p2, p0, Lmiui/widget/NumberPicker;->qm:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p2, p0, Lmiui/widget/NumberPicker;->qm:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    sget-object p3, Landroid/widget/LinearLayout;->ENABLED_STATE_SET:[I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iput-object p1, p0, Lmiui/widget/NumberPicker;->zm:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lmiui/widget/NumberPicker;->an:Landroid/graphics/Paint;

    iget-object p1, p0, Lmiui/widget/NumberPicker;->an:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lmiui/widget/NumberPicker;->an:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object p1, p0, Lmiui/widget/NumberPicker;->an:Landroid/graphics/Paint;

    iget p2, p0, Lmiui/widget/NumberPicker;->hn:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lmiui/widget/NumberPicker;->an:Landroid/graphics/Paint;

    iget p2, p0, Lmiui/widget/NumberPicker;->fn:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object p1, p0, Lmiui/widget/NumberPicker;->Dm:Landroid/widget/Scroller;

    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {p3, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {p1, p2, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lmiui/widget/NumberPicker;->Em:Landroid/widget/Scroller;

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->Yb()Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    :cond_5
    return-void
.end method

.method private D(I)V
    .locals 3

    iget-object v0, p0, Lmiui/widget/NumberPicker;->xm:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    if-lt p1, v1, :cond_3

    iget v2, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    if-le p1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lmiui/widget/NumberPicker;->um:[Ljava/lang/String;

    if-eqz v2, :cond_2

    sub-int p0, p1, v1

    aget-object p0, v2, p0

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->E(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    :goto_0
    const-string p0, ""

    :goto_1
    invoke-virtual {v0, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private E(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmiui/widget/NumberPicker;->mFormatter:Lmiui/widget/NumberPicker$Formatter;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lmiui/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/miui/internal/util/SimpleNumberFormatter;->format(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private F(I)I
    .locals 1

    iget v0, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_0

    iget p0, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    sub-int/2addr p1, v0

    sub-int/2addr v0, p0

    rem-int/2addr p1, v0

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    return p0

    :cond_0
    iget p0, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    if-ge p1, p0, :cond_1

    sub-int p1, p0, p1

    sub-int p0, v0, p0

    rem-int/2addr p1, p0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    return p1
.end method

.method private G(I)V
    .locals 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->Pb()V

    const v0, 0x10000005

    invoke-static {v0}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->performHapticFeedback(I)Z

    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->vm:Lmiui/widget/NumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_1

    iget v1, p0, Lmiui/widget/NumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Lmiui/widget/NumberPicker$OnValueChangeListener;->onValueChange(Lmiui/widget/NumberPicker;II)V

    :cond_1
    return-void
.end method

.method private H(I)V
    .locals 2

    iget v0, p0, Lmiui/widget/NumberPicker;->pf:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lmiui/widget/NumberPicker;->kn:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lmiui/widget/NumberPicker;->qm:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/widget/NumberPicker;->qm:Landroid/widget/EditText;

    iget-object v1, p0, Lmiui/widget/NumberPicker;->kn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/NumberPicker;->kn:Ljava/lang/String;

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->Wb()V

    :cond_2
    iput p1, p0, Lmiui/widget/NumberPicker;->pf:I

    iget-object v0, p0, Lmiui/widget/NumberPicker;->rf:Lmiui/widget/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_3

    invoke-interface {v0, p0, p1}, Lmiui/widget/NumberPicker$OnScrollListener;->onScrollStateChange(Lmiui/widget/NumberPicker;I)V

    :cond_3
    return-void
.end method

.method private Kb()Z
    .locals 7

    iget v0, p0, Lmiui/widget/NumberPicker;->Bm:I

    iget v1, p0, Lmiui/widget/NumberPicker;->Cm:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iput v1, p0, Lmiui/widget/NumberPicker;->Fm:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lmiui/widget/NumberPicker;->Am:I

    div-int/lit8 v3, v2, 0x2

    if-le v1, v3, :cond_1

    if-lez v0, :cond_0

    neg-int v2, v2

    :cond_0
    add-int/2addr v0, v2

    :cond_1
    move v5, v0

    iget-object v1, p0, Lmiui/widget/NumberPicker;->Em:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x320

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private Lb()V
    .locals 2

    iget-object v0, p0, Lmiui/widget/NumberPicker;->om:Lmiui/widget/NumberPicker$SoundPlayHandler;

    if-nez v0, :cond_0

    const-string v0, "NumberPicker_sound_play"

    invoke-static {v0}, Lcom/miui/internal/util/async/WorkerThreads;->aquireWorker(Ljava/lang/String;)Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lmiui/widget/NumberPicker$SoundPlayHandler;

    invoke-direct {v1, v0}, Lmiui/widget/NumberPicker$SoundPlayHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lmiui/widget/NumberPicker;->om:Lmiui/widget/NumberPicker$SoundPlayHandler;

    iget-object v0, p0, Lmiui/widget/NumberPicker;->om:Lmiui/widget/NumberPicker$SoundPlayHandler;

    iget p0, p0, Lmiui/widget/NumberPicker;->mId:I

    invoke-virtual {v0, p0}, Lmiui/widget/NumberPicker$SoundPlayHandler;->init(I)V

    :cond_0
    return-void
.end method

.method private Mb()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVerticalFadingEdgeEnabled(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/NumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setFadingEdgeLength(I)V

    return-void
.end method

.method private Nb()V
    .locals 4

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->Ob()V

    iget-object v0, p0, Lmiui/widget/NumberPicker;->ym:[I

    array-length v1, v0

    iget v2, p0, Lmiui/widget/NumberPicker;->mTextSize:I

    mul-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v1, v2

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-gez v3, :cond_0

    move v1, v2

    :cond_0
    array-length v0, v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lmiui/widget/NumberPicker;->tm:I

    iget v0, p0, Lmiui/widget/NumberPicker;->mTextSize:I

    iget v1, p0, Lmiui/widget/NumberPicker;->tm:I

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/NumberPicker;->Am:I

    iget-object v0, p0, Lmiui/widget/NumberPicker;->qm:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBaseline()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/NumberPicker;->qm:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/NumberPicker;->Am:I

    mul-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/NumberPicker;->Bm:I

    iget v0, p0, Lmiui/widget/NumberPicker;->Bm:I

    iput v0, p0, Lmiui/widget/NumberPicker;->Cm:I

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->Yb()Z

    return-void
.end method

.method private Ob()V
    .locals 5

    iget-object v0, p0, Lmiui/widget/NumberPicker;->xm:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lmiui/widget/NumberPicker;->ym:[I

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lmiui/widget/NumberPicker;->ym:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v2, -0x1

    add-int/2addr v3, v1

    iget-boolean v4, p0, Lmiui/widget/NumberPicker;->Om:Z

    if-eqz v4, :cond_0

    invoke-direct {p0, v3}, Lmiui/widget/NumberPicker;->F(I)I

    move-result v3

    :cond_0
    aput v3, v0, v2

    aget v3, v0, v2

    invoke-direct {p0, v3}, Lmiui/widget/NumberPicker;->D(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private Pb()V
    .locals 0

    iget-object p0, p0, Lmiui/widget/NumberPicker;->om:Lmiui/widget/NumberPicker$SoundPlayHandler;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmiui/widget/NumberPicker$SoundPlayHandler;->play()V

    :cond_0
    return-void
.end method

.method private Qb()V
    .locals 3

    iget-object v0, p0, Lmiui/widget/NumberPicker;->Im:Lmiui/widget/NumberPicker$b;

    if-nez v0, :cond_0

    new-instance v0, Lmiui/widget/NumberPicker$b;

    invoke-direct {v0, p0}, Lmiui/widget/NumberPicker$b;-><init>(Lmiui/widget/NumberPicker;)V

    iput-object v0, p0, Lmiui/widget/NumberPicker;->Im:Lmiui/widget/NumberPicker$b;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Im:Lmiui/widget/NumberPicker$b;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private Rb()V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->Ob()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private Sb()V
    .locals 2

    iget-object v0, p0, Lmiui/widget/NumberPicker;->om:Lmiui/widget/NumberPicker$SoundPlayHandler;

    if-eqz v0, :cond_0

    iget v1, p0, Lmiui/widget/NumberPicker;->mId:I

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker$SoundPlayHandler;->release(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/NumberPicker;->om:Lmiui/widget/NumberPicker$SoundPlayHandler;

    :cond_0
    return-void
.end method

.method private Tb()V
    .locals 1

    iget-object v0, p0, Lmiui/widget/NumberPicker;->Hm:Lmiui/widget/NumberPicker$c;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Gm:Lmiui/widget/NumberPicker$f;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Im:Lmiui/widget/NumberPicker$b;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object p0, p0, Lmiui/widget/NumberPicker;->Zm:Lmiui/widget/NumberPicker$e;

    invoke-virtual {p0}, Lmiui/widget/NumberPicker$e;->cancel()V

    return-void
.end method

.method private Ub()V
    .locals 1

    iget-object v0, p0, Lmiui/widget/NumberPicker;->Im:Lmiui/widget/NumberPicker$b;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private Vb()V
    .locals 1

    iget-object v0, p0, Lmiui/widget/NumberPicker;->Hm:Lmiui/widget/NumberPicker$c;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private Wb()V
    .locals 0

    iget-object p0, p0, Lmiui/widget/NumberPicker;->om:Lmiui/widget/NumberPicker$SoundPlayHandler;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmiui/widget/NumberPicker$SoundPlayHandler;->stop()V

    :cond_0
    return-void
.end method

.method private Xb()V
    .locals 5

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->sm:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    iget-object v1, p0, Lmiui/widget/NumberPicker;->zm:Landroid/graphics/Paint;

    iget v2, p0, Lmiui/widget/NumberPicker;->dn:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lmiui/widget/NumberPicker;->um:[Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v2, v1, :cond_2

    iget-object v1, p0, Lmiui/widget/NumberPicker;->zm:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    cmpl-float v3, v1, v0

    if-lez v3, :cond_1

    move v0, v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    invoke-direct {p0, v1}, Lmiui/widget/NumberPicker;->E(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    int-to-float v0, v0

    goto :goto_2

    :cond_3
    array-length v1, v1

    :goto_1
    if-ge v2, v1, :cond_5

    iget-object v3, p0, Lmiui/widget/NumberPicker;->um:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, p0, Lmiui/widget/NumberPicker;->zm:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    cmpl-float v4, v3, v0

    if-lez v4, :cond_4

    move v0, v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    iput v0, p0, Lmiui/widget/NumberPicker;->cn:F

    iget-object v1, p0, Lmiui/widget/NumberPicker;->qm:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lmiui/widget/NumberPicker;->qm:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lmiui/widget/NumberPicker;->mMaxWidth:I

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_7

    iget v1, p0, Lmiui/widget/NumberPicker;->mMinWidth:I

    int-to-float v2, v1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_6

    float-to-int v0, v0

    iput v0, p0, Lmiui/widget/NumberPicker;->mMaxWidth:I

    goto :goto_3

    :cond_6
    iput v1, p0, Lmiui/widget/NumberPicker;->mMaxWidth:I

    :cond_7
    :goto_3
    return-void
.end method

.method private Yb()Z
    .locals 3

    iget-object v0, p0, Lmiui/widget/NumberPicker;->um:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lmiui/widget/NumberPicker;->mValue:I

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->E(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v1, p0, Lmiui/widget/NumberPicker;->mValue:I

    iget v2, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lmiui/widget/NumberPicker;->pf:I

    if-eqz v1, :cond_1

    iput-object v0, p0, Lmiui/widget/NumberPicker;->kn:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lmiui/widget/NumberPicker;->qm:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lmiui/widget/NumberPicker;->qm:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private a(FII)F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    int-to-float p0, p3

    return p0

    :cond_0
    sub-int/2addr p3, p2

    int-to-float p0, p3

    mul-float/2addr p1, p0

    int-to-float p0, p2

    add-float/2addr p1, p0

    return p1
.end method

.method private a(FIZ)I
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    return p2

    :cond_0
    if-eqz p3, :cond_1

    neg-float p0, p1

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p0, p1

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p0, p1

    float-to-int p0, p0

    goto :goto_0

    :cond_1
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    float-to-int p0, p1

    :goto_0
    const p1, 0xffffff

    and-int/2addr p1, p2

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method static synthetic a(Lmiui/widget/NumberPicker;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->l(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lmiui/widget/NumberPicker;->qm:Landroid/widget/EditText;

    return-object p0
.end method

.method private a(Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/miui/internal/R$styleable;->NumberPicker:[I

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/miui/internal/R$styleable;->NumberPicker_android_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lmiui/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    sget p2, Lcom/miui/internal/R$styleable;->NumberPicker_textSizeHighlight:I

    sget v1, Lcom/miui/internal/R$dimen;->number_picker_text_size_highlight_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiui/widget/NumberPicker;->dn:I

    sget p2, Lcom/miui/internal/R$styleable;->NumberPicker_textSizeHint:I

    sget v1, Lcom/miui/internal/R$dimen;->number_picker_text_size_hint_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiui/widget/NumberPicker;->en:I

    sget p2, Lcom/miui/internal/R$styleable;->NumberPicker_android_labelTextSize:I

    sget v1, Lcom/miui/internal/R$dimen;->number_picker_label_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiui/widget/NumberPicker;->fn:I

    sget p2, Lcom/miui/internal/R$styleable;->NumberPicker_android_textColorHighlight:I

    sget v1, Lcom/miui/internal/R$color;->number_picker_highlight_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiui/widget/NumberPicker;->gn:I

    sget p2, Lcom/miui/internal/R$styleable;->NumberPicker_android_textColorHint:I

    sget v1, Lcom/miui/internal/R$color;->number_picker_hint_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiui/widget/NumberPicker;->mTextColorHint:I

    sget p2, Lcom/miui/internal/R$styleable;->NumberPicker_labelTextColor:I

    sget v1, Lcom/miui/internal/R$color;->number_picker_label_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiui/widget/NumberPicker;->hn:I

    sget p2, Lcom/miui/internal/R$styleable;->NumberPicker_labelPadding:I

    sget v1, Lcom/miui/internal/R$dimen;->number_picker_label_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiui/widget/NumberPicker;->bn:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic a(Lmiui/widget/NumberPicker;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiui/widget/NumberPicker;->m(II)V

    return-void
.end method

.method static synthetic a(Lmiui/widget/NumberPicker;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->i(Landroid/view/View;)V

    return-void
.end method

.method private a(ZJ)V
    .locals 1

    iget-object v0, p0, Lmiui/widget/NumberPicker;->Hm:Lmiui/widget/NumberPicker$c;

    if-nez v0, :cond_0

    new-instance v0, Lmiui/widget/NumberPicker$c;

    invoke-direct {v0, p0}, Lmiui/widget/NumberPicker$c;-><init>(Lmiui/widget/NumberPicker;)V

    iput-object v0, p0, Lmiui/widget/NumberPicker;->Hm:Lmiui/widget/NumberPicker$c;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Hm:Lmiui/widget/NumberPicker$c;

    invoke-static {v0, p1}, Lmiui/widget/NumberPicker$c;->a(Lmiui/widget/NumberPicker$c;Z)V

    iget-object p1, p0, Lmiui/widget/NumberPicker;->Hm:Lmiui/widget/NumberPicker$c;

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private a([I)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    aget v0, p1, v1

    sub-int/2addr v0, v1

    iget-boolean v1, p0, Lmiui/widget/NumberPicker;->Om:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    :cond_1
    const/4 v1, 0x0

    aput v0, p1, v1

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->D(I)V

    return-void
.end method

.method private a(Landroid/widget/Scroller;)Z
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result p1

    sub-int/2addr v1, p1

    iget p1, p0, Lmiui/widget/NumberPicker;->Cm:I

    add-int/2addr p1, v1

    iget v2, p0, Lmiui/widget/NumberPicker;->Am:I

    rem-int/2addr p1, v2

    iget v2, p0, Lmiui/widget/NumberPicker;->Bm:I

    sub-int/2addr v2, p1

    const/4 p1, 0x0

    if-eqz v2, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lmiui/widget/NumberPicker;->Am:I

    div-int/lit8 v5, v4, 0x2

    if-le v3, v5, :cond_1

    if-lez v2, :cond_0

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_0
    add-int/2addr v2, v4

    :cond_1
    :goto_0
    add-int/2addr v1, v2

    invoke-virtual {p0, p1, v1}, Lmiui/widget/NumberPicker;->scrollBy(II)V

    return v0

    :cond_2
    return p1
.end method

.method static synthetic a(Lmiui/widget/NumberPicker;I)Z
    .locals 1

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->Wm:Z

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    iput-boolean p1, p0, Lmiui/widget/NumberPicker;->Wm:Z

    return p1
.end method

.method static synthetic a(Lmiui/widget/NumberPicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/widget/NumberPicker;->Wm:Z

    return p1
.end method

.method private b(Landroid/widget/Scroller;)V
    .locals 1

    iget-object v0, p0, Lmiui/widget/NumberPicker;->Dm:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->Kb()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->Yb()Z

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->H(I)V

    goto :goto_0

    :cond_1
    iget p1, p0, Lmiui/widget/NumberPicker;->pf:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->Yb()Z

    :cond_2
    :goto_0
    return-void
.end method

.method private b([I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget v2, p1, v1

    aput v2, p1, v0

    move v0, v1

    goto :goto_0

    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    iget-boolean v1, p0, Lmiui/widget/NumberPicker;->Om:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    :cond_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aput v0, p1, v1

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->D(I)V

    return-void
.end method

.method static synthetic b(Lmiui/widget/NumberPicker;)Z
    .locals 0

    iget-boolean p0, p0, Lmiui/widget/NumberPicker;->Wm:Z

    return p0
.end method

.method static synthetic b(Lmiui/widget/NumberPicker;I)Z
    .locals 1

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->Xm:Z

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    iput-boolean p1, p0, Lmiui/widget/NumberPicker;->Xm:Z

    return p1
.end method

.method static synthetic b(Lmiui/widget/NumberPicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/widget/NumberPicker;->Xm:Z

    return p1
.end method

.method static synthetic c(Lmiui/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Lmiui/widget/NumberPicker;->Um:I

    return p0
.end method

.method static synthetic c(Lmiui/widget/NumberPicker;I)I
    .locals 0

    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->F(I)I

    move-result p0

    return p0
.end method

.method static synthetic c(Lmiui/widget/NumberPicker;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->n(Z)V

    return-void
.end method

.method static synthetic d(Lmiui/widget/NumberPicker;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->E(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lmiui/widget/NumberPicker;)Z
    .locals 0

    iget-boolean p0, p0, Lmiui/widget/NumberPicker;->Xm:Z

    return p0
.end method

.method static synthetic d(Lmiui/widget/NumberPicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/widget/NumberPicker;->Rm:Z

    return p1
.end method

.method private e(III)I
    .locals 0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p0, p3, p1}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method static synthetic e(Lmiui/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Lmiui/widget/NumberPicker;->Tm:I

    return p0
.end method

.method private e(IZ)V
    .locals 1

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->Om:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->F(I)I

    move-result p1

    goto :goto_0

    :cond_0
    iget v0, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    iget v0, p0, Lmiui/widget/NumberPicker;->mValue:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lmiui/widget/NumberPicker;->mValue:I

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->Yb()Z

    if-eqz p2, :cond_2

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->G(I)V

    :cond_2
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->Ob()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method static synthetic f(Lmiui/widget/NumberPicker;)J
    .locals 2

    iget-wide v0, p0, Lmiui/widget/NumberPicker;->wm:J

    return-wide v0
.end method

.method private fling(I)V
    .locals 10

    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/NumberPicker;->Fm:I

    if-lez p1, :cond_0

    iget-object v1, p0, Lmiui/widget/NumberPicker;->Dm:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmiui/widget/NumberPicker;->Dm:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method static synthetic g(Lmiui/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Lmiui/widget/NumberPicker;->Qm:I

    return p0
.end method

.method static synthetic h(Lmiui/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Lmiui/widget/NumberPicker;->mValue:I

    return p0
.end method

.method private i(Landroid/view/View;)V
    .locals 1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->Yb()Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->l(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lmiui/widget/NumberPicker;->e(IZ)V

    :goto_0
    return-void
.end method

.method static synthetic i(Lmiui/widget/NumberPicker;)Z
    .locals 0

    iget-boolean p0, p0, Lmiui/widget/NumberPicker;->Om:Z

    return p0
.end method

.method static synthetic j(Lmiui/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    return p0
.end method

.method static synthetic k(Lmiui/widget/NumberPicker;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmiui/widget/NumberPicker;->um:[Ljava/lang/String;

    return-object p0
.end method

.method private l(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lmiui/widget/NumberPicker;->um:[Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmiui/widget/NumberPicker;->um:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lmiui/widget/NumberPicker;->um:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget p0, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    add-int/2addr p0, v0

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return p0

    :catch_0
    iget p0, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    return p0
.end method

.method static synthetic l(Lmiui/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    return p0
.end method

.method private m(II)V
    .locals 1

    iget-object v0, p0, Lmiui/widget/NumberPicker;->Gm:Lmiui/widget/NumberPicker$f;

    if-nez v0, :cond_0

    new-instance v0, Lmiui/widget/NumberPicker$f;

    invoke-direct {v0, p0}, Lmiui/widget/NumberPicker$f;-><init>(Lmiui/widget/NumberPicker;)V

    iput-object v0, p0, Lmiui/widget/NumberPicker;->Gm:Lmiui/widget/NumberPicker$f;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Gm:Lmiui/widget/NumberPicker$f;

    invoke-static {v0, p1}, Lmiui/widget/NumberPicker$f;->a(Lmiui/widget/NumberPicker$f;I)I

    iget-object p1, p0, Lmiui/widget/NumberPicker;->Gm:Lmiui/widget/NumberPicker$f;

    invoke-static {p1, p2}, Lmiui/widget/NumberPicker$f;->b(Lmiui/widget/NumberPicker$f;I)I

    iget-object p1, p0, Lmiui/widget/NumberPicker;->Gm:Lmiui/widget/NumberPicker$f;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private makeMeasureSpec(II)I
    .locals 3

    const/4 p0, -0x1

    if-ne p2, p0, :cond_0

    return p1

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    return p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown measure mode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    :cond_3
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private n(Z)V
    .locals 13

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->Pm:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/widget/NumberPicker;->qm:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lmiui/widget/NumberPicker;->Dm:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->a(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/widget/NumberPicker;->Em:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->a(Landroid/widget/Scroller;)Z

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/NumberPicker;->Fm:I

    if-eqz p1, :cond_1

    iget-object v1, p0, Lmiui/widget/NumberPicker;->Dm:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget p1, p0, Lmiui/widget/NumberPicker;->Am:I

    neg-int v5, p1

    const/16 v6, 0x12c

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lmiui/widget/NumberPicker;->Dm:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lmiui/widget/NumberPicker;->Am:I

    const/16 v12, 0x12c

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iget p1, p0, Lmiui/widget/NumberPicker;->mValue:I

    add-int/2addr p1, v0

    invoke-direct {p0, p1, v0}, Lmiui/widget/NumberPicker;->e(IZ)V

    goto :goto_1

    :cond_3
    iget p1, p0, Lmiui/widget/NumberPicker;->mValue:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1, v0}, Lmiui/widget/NumberPicker;->e(IZ)V

    :goto_1
    return-void
.end method

.method static synthetic q()[C
    .locals 1

    sget-object v0, Lmiui/widget/NumberPicker;->zn:[C

    return-object v0
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    iget-object v0, p0, Lmiui/widget/NumberPicker;->Dm:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lmiui/widget/NumberPicker;->Em:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iget v2, p0, Lmiui/widget/NumberPicker;->Fm:I

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lmiui/widget/NumberPicker;->Fm:I

    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lmiui/widget/NumberPicker;->Fm:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lmiui/widget/NumberPicker;->scrollBy(II)V

    iput v1, p0, Lmiui/widget/NumberPicker;->Fm:I

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->b(Landroid/widget/Scroller;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :goto_0
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->Pm:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lmiui/widget/NumberPicker;->Tm:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    iget v1, p0, Lmiui/widget/NumberPicker;->Um:I

    if-le v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    check-cast v1, Lmiui/widget/NumberPicker$a;

    const/4 v2, 0x7

    const/4 v3, -0x1

    const/16 v4, 0x100

    const/4 v5, 0x0

    const/16 v6, 0x40

    const/16 v7, 0x80

    if-eq p1, v2, :cond_5

    const/16 v2, 0x9

    if-eq p1, v2, :cond_4

    const/16 v2, 0xa

    if-eq p1, v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v0, v4}, Lmiui/widget/NumberPicker$a;->sendAccessibilityEventForVirtualView(II)V

    iput v3, p0, Lmiui/widget/NumberPicker;->Vm:I

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v0, v7}, Lmiui/widget/NumberPicker$a;->sendAccessibilityEventForVirtualView(II)V

    iput v0, p0, Lmiui/widget/NumberPicker;->Vm:I

    invoke-virtual {v1, v0, v6, v5}, Lmiui/widget/NumberPicker$a;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_1

    :cond_5
    iget p1, p0, Lmiui/widget/NumberPicker;->Vm:I

    if-eq p1, v0, :cond_6

    if-eq p1, v3, :cond_6

    invoke-virtual {v1, p1, v4}, Lmiui/widget/NumberPicker$a;->sendAccessibilityEventForVirtualView(II)V

    invoke-virtual {v1, v0, v7}, Lmiui/widget/NumberPicker$a;->sendAccessibilityEventForVirtualView(II)V

    iput v0, p0, Lmiui/widget/NumberPicker;->Vm:I

    invoke-virtual {v1, v0, v6, v5}, Lmiui/widget/NumberPicker$a;->performAction(IILandroid/os/Bundle;)Z

    :cond_6
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    const/16 v2, 0x14

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->Tb()V

    goto :goto_3

    :cond_1
    iget-boolean v1, p0, Lmiui/widget/NumberPicker;->Pm:Z

    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_3

    goto :goto_3

    :cond_3
    iget v1, p0, Lmiui/widget/NumberPicker;->_m:I

    if-ne v1, v0, :cond_9

    const/4 p1, -0x1

    iput p1, p0, Lmiui/widget/NumberPicker;->_m:I

    return v3

    :cond_4
    iget-boolean v1, p0, Lmiui/widget/NumberPicker;->Om:Z

    if-nez v1, :cond_6

    if-ne v0, v2, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result v4

    if-le v1, v4, :cond_9

    goto :goto_1

    :cond_6
    :goto_0
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getMaxValue()I

    move-result v4

    if-ge v1, v4, :cond_9

    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestFocus()Z

    iput v0, p0, Lmiui/widget/NumberPicker;->_m:I

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->Tb()V

    iget-object p1, p0, Lmiui/widget/NumberPicker;->Dm:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_8

    if-ne v0, v2, :cond_7

    move p1, v3

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    :goto_2
    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->n(Z)V

    :cond_8
    return v3

    :cond_9
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lmiui/widget/NumberPicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->Tb()V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->Tb()V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->Xb()V

    return-void
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->Pm:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->Ym:Lmiui/widget/NumberPicker$a;

    if-nez v0, :cond_1

    new-instance v0, Lmiui/widget/NumberPicker$a;

    invoke-direct {v0, p0}, Lmiui/widget/NumberPicker$a;-><init>(Lmiui/widget/NumberPicker;)V

    iput-object v0, p0, Lmiui/widget/NumberPicker;->Ym:Lmiui/widget/NumberPicker$a;

    :cond_1
    iget-object p0, p0, Lmiui/widget/NumberPicker;->Ym:Lmiui/widget/NumberPicker$a;

    return-object p0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 0

    const p0, 0x3f666666    # 0.9f

    return p0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmiui/widget/NumberPicker;->um:[Ljava/lang/String;

    return-object p0
.end method

.method public getMaxValue()I
    .locals 0

    iget p0, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    return p0
.end method

.method public getMinValue()I
    .locals 0

    iget p0, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    return p0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 0

    const p0, 0x3f666666    # 0.9f

    return p0
.end method

.method public getValue()I
    .locals 0

    iget p0, p0, Lmiui/widget/NumberPicker;->mValue:I

    return p0
.end method

.method public getWrapSelectorWheel()Z
    .locals 0

    iget-boolean p0, p0, Lmiui/widget/NumberPicker;->Om:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->Lb()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->Sb()V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->Tb()V

    const-string p0, "NumberPicker_sound_play"

    invoke-static {p0}, Lcom/miui/internal/util/async/WorkerThreads;->releaseWorker(Ljava/lang/String;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->Pm:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v2, v0

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    iget v1, p0, Lmiui/widget/NumberPicker;->Cm:I

    int-to-float v1, v1

    iget v2, p0, Lmiui/widget/NumberPicker;->Bm:I

    iget v3, p0, Lmiui/widget/NumberPicker;->Am:I

    const/4 v4, 0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lmiui/widget/NumberPicker;->xm:Landroid/util/SparseArray;

    iget-object v5, p0, Lmiui/widget/NumberPicker;->ym:[I

    const/4 v6, 0x0

    move v7, v1

    move v1, v6

    :goto_0
    array-length v8, v5

    const/high16 v9, 0x40000000    # 2.0f

    if-ge v1, v8, :cond_2

    aget v8, v5, v1

    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sub-float v10, v2, v7

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v11, p0, Lmiui/widget/NumberPicker;->Am:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    iget v11, p0, Lmiui/widget/NumberPicker;->dn:I

    iget v12, p0, Lmiui/widget/NumberPicker;->en:I

    invoke-direct {p0, v10, v11, v12}, Lmiui/widget/NumberPicker;->a(FII)F

    move-result v11

    iget-object v12, p0, Lmiui/widget/NumberPicker;->zm:Landroid/graphics/Paint;

    invoke-virtual {v12, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v12, p0, Lmiui/widget/NumberPicker;->zm:Landroid/graphics/Paint;

    iget v13, p0, Lmiui/widget/NumberPicker;->mTextColorHint:I

    invoke-direct {p0, v10, v13, v6}, Lmiui/widget/NumberPicker;->a(FIZ)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    iget v12, p0, Lmiui/widget/NumberPicker;->en:I

    int-to-float v12, v12

    sub-float v12, v11, v12

    div-float/2addr v12, v9

    add-float/2addr v12, v7

    iget-object v13, p0, Lmiui/widget/NumberPicker;->zm:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v12, v10, v12

    if-gez v12, :cond_1

    iget-object v12, p0, Lmiui/widget/NumberPicker;->zm:Landroid/graphics/Paint;

    iget v13, p0, Lmiui/widget/NumberPicker;->gn:I

    invoke-direct {p0, v10, v13, v4}, Lmiui/widget/NumberPicker;->a(FIZ)I

    move-result v10

    invoke-virtual {v12, v10}, Landroid/graphics/Paint;->setColor(I)V

    iget v10, p0, Lmiui/widget/NumberPicker;->en:I

    int-to-float v10, v10

    sub-float/2addr v11, v10

    div-float/2addr v11, v9

    add-float/2addr v11, v7

    iget-object v9, p0, Lmiui/widget/NumberPicker;->zm:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0, v11, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    iget v8, p0, Lmiui/widget/NumberPicker;->Am:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lmiui/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_4

    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lmiui/widget/NumberPicker;->cn:F

    div-float/2addr v1, v9

    sub-float/2addr v0, v1

    iget v1, p0, Lmiui/widget/NumberPicker;->mm:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lmiui/widget/NumberPicker;->an:Landroid/graphics/Paint;

    iget-object v3, p0, Lmiui/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    sub-float/2addr v0, v1

    goto :goto_1

    :cond_3
    iget v1, p0, Lmiui/widget/NumberPicker;->cn:F

    div-float/2addr v1, v9

    add-float/2addr v0, v1

    iget v1, p0, Lmiui/widget/NumberPicker;->mm:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_1
    iget v1, p0, Lmiui/widget/NumberPicker;->dn:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v2, v1

    iget v1, p0, Lmiui/widget/NumberPicker;->fn:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v2, v1

    iget v1, p0, Lmiui/widget/NumberPicker;->nm:I

    int-to-float v1, v1

    add-float/2addr v2, v1

    iget-object v1, p0, Lmiui/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lmiui/widget/NumberPicker;->an:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    iget v0, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    iget v1, p0, Lmiui/widget/NumberPicker;->mValue:I

    add-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/NumberPicker;->Am:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    iget v0, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget p0, p0, Lmiui/widget/NumberPicker;->Am:I

    mul-int/2addr v0, p0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->Pm:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->Tb()V

    iget-object v0, p0, Lmiui/widget/NumberPicker;->qm:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lmiui/widget/NumberPicker;->Jm:F

    iput v0, p0, Lmiui/widget/NumberPicker;->Lm:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/widget/NumberPicker;->Km:J

    iput-boolean v1, p0, Lmiui/widget/NumberPicker;->Rm:Z

    iput-boolean v1, p0, Lmiui/widget/NumberPicker;->Sm:Z

    iget p1, p0, Lmiui/widget/NumberPicker;->Jm:F

    iget v0, p0, Lmiui/widget/NumberPicker;->Tm:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v2, 0x1

    if-gez v0, :cond_2

    iget p1, p0, Lmiui/widget/NumberPicker;->pf:I

    if-nez p1, :cond_3

    iget-object p1, p0, Lmiui/widget/NumberPicker;->Zm:Lmiui/widget/NumberPicker$e;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lmiui/widget/NumberPicker$e;->buttonPressDelayed(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lmiui/widget/NumberPicker;->Um:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    iget p1, p0, Lmiui/widget/NumberPicker;->pf:I

    if-nez p1, :cond_3

    iget-object p1, p0, Lmiui/widget/NumberPicker;->Zm:Lmiui/widget/NumberPicker$e;

    invoke-virtual {p1, v2}, Lmiui/widget/NumberPicker$e;->buttonPressDelayed(I)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lmiui/widget/NumberPicker;->Dm:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lmiui/widget/NumberPicker;->Dm:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object p1, p0, Lmiui/widget/NumberPicker;->Em:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    invoke-direct {p0, v1}, Lmiui/widget/NumberPicker;->H(I)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lmiui/widget/NumberPicker;->Em:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lmiui/widget/NumberPicker;->Dm:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object p0, p0, Lmiui/widget/NumberPicker;->Em:Landroid/widget/Scroller;

    invoke-virtual {p0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    :cond_5
    iget p1, p0, Lmiui/widget/NumberPicker;->Jm:F

    iget v0, p0, Lmiui/widget/NumberPicker;->Tm:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_6

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v3, p1

    invoke-direct {p0, v1, v3, v4}, Lmiui/widget/NumberPicker;->a(ZJ)V

    goto :goto_1

    :cond_6
    iget v0, p0, Lmiui/widget/NumberPicker;->Um:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_7

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v0, p1

    invoke-direct {p0, v2, v0, v1}, Lmiui/widget/NumberPicker;->a(ZJ)V

    goto :goto_1

    :cond_7
    iput-boolean v2, p0, Lmiui/widget/NumberPicker;->Sm:Z

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->Qb()V

    :goto_1
    return v2

    :cond_8
    :goto_2
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->Pm:Z

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p3

    iget-object p4, p0, Lmiui/widget/NumberPicker;->qm:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result p4

    iget-object p5, p0, Lmiui/widget/NumberPicker;->qm:Landroid/widget/EditText;

    invoke-virtual {p5}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result p5

    sub-int/2addr p2, p4

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p3, p5

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    iget-object v0, p0, Lmiui/widget/NumberPicker;->qm:Landroid/widget/EditText;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/widget/EditText;->layout(IIII)V

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->Nb()V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->Mb()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    iget p2, p0, Lmiui/widget/NumberPicker;->rm:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iget p3, p0, Lmiui/widget/NumberPicker;->Qm:I

    sub-int/2addr p1, p3

    iput p1, p0, Lmiui/widget/NumberPicker;->Tm:I

    iget p1, p0, Lmiui/widget/NumberPicker;->Tm:I

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p1, p3

    add-int/2addr p1, p2

    iput p1, p0, Lmiui/widget/NumberPicker;->Um:I

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->Pm:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    :cond_0
    iget v0, p0, Lmiui/widget/NumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v0}, Lmiui/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lmiui/widget/NumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v1}, Lmiui/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget v0, p0, Lmiui/widget/NumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lmiui/widget/NumberPicker;->e(III)I

    move-result p1

    iget v0, p0, Lmiui/widget/NumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lmiui/widget/NumberPicker;->e(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget v0, p0, Lmiui/widget/NumberPicker;->pf:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/NumberPicker;->kn:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->qm:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmiui/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->Pm:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->Rm:Z

    if-eqz v0, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lmiui/widget/NumberPicker;->pf:I

    if-eq v0, v3, :cond_4

    iget v0, p0, Lmiui/widget/NumberPicker;->Jm:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lmiui/widget/NumberPicker;->Sf:I

    if-le v0, v1, :cond_5

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->Tb()V

    invoke-direct {p0, v3}, Lmiui/widget/NumberPicker;->H(I)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lmiui/widget/NumberPicker;->Lm:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    invoke-virtual {p0, v1, v0}, Lmiui/widget/NumberPicker;->scrollBy(II)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_5
    :goto_0
    iput p1, p0, Lmiui/widget/NumberPicker;->Lm:F

    goto/16 :goto_3

    :cond_6
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->Ub()V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->Vb()V

    iget-object v0, p0, Lmiui/widget/NumberPicker;->Zm:Lmiui/widget/NumberPicker$e;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker$e;->cancel()V

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    iget v5, p0, Lmiui/widget/NumberPicker;->Nm:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lmiui/widget/NumberPicker;->Nm:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lt v4, v5, :cond_7

    int-to-float v0, v0

    iget v4, p0, Lmiui/widget/NumberPicker;->jn:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    :cond_7
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lmiui/widget/NumberPicker;->Mm:I

    if-le v4, v5, :cond_8

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->fling(I)V

    invoke-direct {p0, v2}, Lmiui/widget/NumberPicker;->H(I)V

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v4, v0

    iget v5, p0, Lmiui/widget/NumberPicker;->Jm:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iget-wide v7, p0, Lmiui/widget/NumberPicker;->Km:J

    sub-long/2addr v5, v7

    iget p1, p0, Lmiui/widget/NumberPicker;->Sf:I

    if-gt v4, p1, :cond_b

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    int-to-long v7, p1

    cmp-long p1, v5, v7

    if-gez p1, :cond_b

    iget-boolean p1, p0, Lmiui/widget/NumberPicker;->Sm:Z

    if-eqz p1, :cond_9

    iput-boolean v1, p0, Lmiui/widget/NumberPicker;->Sm:Z

    goto :goto_1

    :cond_9
    iget p1, p0, Lmiui/widget/NumberPicker;->Am:I

    div-int/2addr v0, p1

    sub-int/2addr v0, v3

    if-lez v0, :cond_a

    invoke-direct {p0, v3}, Lmiui/widget/NumberPicker;->n(Z)V

    iget-object p1, p0, Lmiui/widget/NumberPicker;->Zm:Lmiui/widget/NumberPicker$e;

    invoke-virtual {p1, v3}, Lmiui/widget/NumberPicker$e;->buttonTapped(I)V

    goto :goto_1

    :cond_a
    if-gez v0, :cond_c

    invoke-direct {p0, v1}, Lmiui/widget/NumberPicker;->n(Z)V

    iget-object p1, p0, Lmiui/widget/NumberPicker;->Zm:Lmiui/widget/NumberPicker$e;

    invoke-virtual {p1, v2}, Lmiui/widget/NumberPicker$e;->buttonTapped(I)V

    goto :goto_1

    :cond_b
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->Kb()Z

    :cond_c
    :goto_1
    invoke-direct {p0, v1}, Lmiui/widget/NumberPicker;->H(I)V

    :goto_2
    iget-object p1, p0, Lmiui/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_3
    return v3

    :cond_d
    :goto_4
    return v1
.end method

.method public scrollBy(II)V
    .locals 3

    iget-object p1, p0, Lmiui/widget/NumberPicker;->ym:[I

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->Om:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-lez p2, :cond_0

    aget v0, p1, v1

    iget v2, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    if-gt v0, v2, :cond_0

    iget p1, p0, Lmiui/widget/NumberPicker;->Bm:I

    iput p1, p0, Lmiui/widget/NumberPicker;->Cm:I

    return-void

    :cond_0
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->Om:Z

    if-nez v0, :cond_1

    if-gez p2, :cond_1

    aget v0, p1, v1

    iget v2, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    if-lt v0, v2, :cond_1

    iget p1, p0, Lmiui/widget/NumberPicker;->Bm:I

    iput p1, p0, Lmiui/widget/NumberPicker;->Cm:I

    return-void

    :cond_1
    iget v0, p0, Lmiui/widget/NumberPicker;->Cm:I

    add-int/2addr v0, p2

    iput v0, p0, Lmiui/widget/NumberPicker;->Cm:I

    :cond_2
    :goto_0
    iget p2, p0, Lmiui/widget/NumberPicker;->Cm:I

    iget v0, p0, Lmiui/widget/NumberPicker;->Bm:I

    sub-int v0, p2, v0

    iget v2, p0, Lmiui/widget/NumberPicker;->tm:I

    if-le v0, v2, :cond_3

    iget v0, p0, Lmiui/widget/NumberPicker;->Am:I

    sub-int/2addr p2, v0

    iput p2, p0, Lmiui/widget/NumberPicker;->Cm:I

    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->a([I)V

    aget p2, p1, v1

    invoke-direct {p0, p2, v1}, Lmiui/widget/NumberPicker;->e(IZ)V

    iget-boolean p2, p0, Lmiui/widget/NumberPicker;->Om:Z

    if-nez p2, :cond_2

    aget p2, p1, v1

    iget v0, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    if-gt p2, v0, :cond_2

    iget p2, p0, Lmiui/widget/NumberPicker;->Bm:I

    iput p2, p0, Lmiui/widget/NumberPicker;->Cm:I

    goto :goto_0

    :cond_3
    :goto_1
    iget p2, p0, Lmiui/widget/NumberPicker;->Cm:I

    iget v0, p0, Lmiui/widget/NumberPicker;->Bm:I

    sub-int v0, p2, v0

    iget v2, p0, Lmiui/widget/NumberPicker;->tm:I

    neg-int v2, v2

    if-ge v0, v2, :cond_4

    iget v0, p0, Lmiui/widget/NumberPicker;->Am:I

    add-int/2addr p2, v0

    iput p2, p0, Lmiui/widget/NumberPicker;->Cm:I

    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->b([I)V

    aget p2, p1, v1

    invoke-direct {p0, p2, v1}, Lmiui/widget/NumberPicker;->e(IZ)V

    iget-boolean p2, p0, Lmiui/widget/NumberPicker;->Om:Z

    if-nez p2, :cond_3

    aget p2, p1, v1

    iget v0, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    if-lt p2, v0, :cond_3

    iget p2, p0, Lmiui/widget/NumberPicker;->Bm:I

    iput p2, p0, Lmiui/widget/NumberPicker;->Cm:I

    goto :goto_1

    :cond_4
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lmiui/widget/NumberPicker;->um:[Ljava/lang/String;

    iget-object p1, p0, Lmiui/widget/NumberPicker;->um:[Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/widget/NumberPicker;->qm:Landroid/widget/EditText;

    const v0, 0x80001

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmiui/widget/NumberPicker;->qm:Landroid/widget/EditText;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    :goto_0
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->Yb()Z

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->Ob()V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->Xb()V

    return-void
.end method

.method public setFormatter(Lmiui/widget/NumberPicker$Formatter;)V
    .locals 1

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mFormatter:Lmiui/widget/NumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lmiui/widget/NumberPicker;->mFormatter:Lmiui/widget/NumberPicker$Formatter;

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->Ob()V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->Yb()Z

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iput-object p1, p0, Lmiui/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_2
    return-void
.end method

.method public setMaxFlingSpeedFactor(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iput p1, p0, Lmiui/widget/NumberPicker;->jn:F

    :cond_0
    return-void
.end method

.method public setMaxValue(I)V
    .locals 1

    iget v0, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    iput p1, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    iget p1, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    iget v0, p0, Lmiui/widget/NumberPicker;->mValue:I

    if-ge p1, v0, :cond_1

    iput p1, p0, Lmiui/widget/NumberPicker;->mValue:I

    :cond_1
    iget p1, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    iget v0, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lmiui/widget/NumberPicker;->ym:[I

    array-length v0, v0

    if-le p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->Ob()V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->Yb()Z

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->Xb()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxValue must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMinValue(I)V
    .locals 1

    iget v0, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    iput p1, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    iget p1, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    iget v0, p0, Lmiui/widget/NumberPicker;->mValue:I

    if-le p1, v0, :cond_1

    iput p1, p0, Lmiui/widget/NumberPicker;->mValue:I

    :cond_1
    iget p1, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    iget v0, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lmiui/widget/NumberPicker;->ym:[I

    array-length v0, v0

    if-le p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->Ob()V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->Yb()Z

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->Xb()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minValue must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0

    iput-wide p1, p0, Lmiui/widget/NumberPicker;->wm:J

    return-void
.end method

.method public setOnScrollListener(Lmiui/widget/NumberPicker$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/NumberPicker;->rf:Lmiui/widget/NumberPicker$OnScrollListener;

    return-void
.end method

.method public setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/NumberPicker;->vm:Lmiui/widget/NumberPicker$OnValueChangeListener;

    return-void
.end method

.method public setValue(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/NumberPicker;->e(IZ)V

    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 2

    iget v0, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lmiui/widget/NumberPicker;->ym:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->Om:Z

    if-eq p1, v0, :cond_2

    iput-boolean p1, p0, Lmiui/widget/NumberPicker;->Om:Z

    :cond_2
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->Rb()V

    return-void
.end method
