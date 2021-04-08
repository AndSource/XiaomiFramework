.class public Lmiui/widget/BubbleBgView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/BubbleBgView$a;
    }
.end annotation


# static fields
.field private static final Vt:I = 0x8

.field private static final Wt:I = 0x0

.field private static final Xt:I = 0x1

.field private static final Yt:I = 0x2

.field private static final Zt:I = 0x3

.field private static final _t:I = 0x4

.field private static final au:I = 0x5

.field private static final bu:I = 0x6

.field private static final cu:I = 0x7

.field private static final du:[I

.field private static final eu:I = 0x1


# instance fields
.field private Ut:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/widget/BubbleBgView$a;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x28

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/widget/BubbleBgView;->du:[I

    goto :goto_0

    :cond_0
    const/16 v0, 0x30

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lmiui/widget/BubbleBgView;->du:[I

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x6e
        0xc5
        0xc6
        0x0
        0x1e
        -0x50
        0x14
        -0x25e7
        0xa0
        -0x20
        0xe6
        0x0
        0x1e
        0x0
        0x64
        0x33ff2200
        0x24f
        0x18
        0x16f
        0x0
        0x1e
        -0x32
        0x32
        -0x19000900
        0x325
        0x111
        0xad
        -0x1e
        0xa
        -0x50
        0x14
        0x7302c730
        0x146
        -0x44
        0x1a1
        0x0
        0x1e
        0x0
        0x32
        -0x2600a600
    .end array-data

    :array_1
    .array-data 4
        0x27
        0xa1
        0x67
        0x0
        0x1e
        -0x50
        0x14
        -0x25e7
        0x67
        0x27
        0x72
        0x0
        0x1e
        0x0
        0x64
        0x33ff2200
        0x12e
        0x29
        0xd3
        0x0
        0x1e
        -0x32
        0x32
        -0x19000900
        0x19b
        0xa6
        0x77
        -0x1e
        0xa
        -0x50
        0x14
        0x7302c730
        0xab
        0xe2
        0xb5
        -0xf
        0xf
        -0x14
        0x1e
        0x4cf8f8f8
        0x87
        0x21
        0xc3
        0x0
        0x1e
        0x0
        0x32
        -0x2600a600
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/BubbleBgView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/BubbleBgView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmiui/widget/BubbleBgView;->Ut:Ljava/util/ArrayList;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lmiui/widget/BubbleBgView;->mPaint:Landroid/graphics/Paint;

    new-instance p1, Lmiui/widget/f;

    invoke-direct {p1, p0}, Lmiui/widget/f;-><init>(Lmiui/widget/BubbleBgView;)V

    iput-object p1, p0, Lmiui/widget/BubbleBgView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lmiui/widget/BubbleBgView;->dd()V

    iget-object p0, p0, Lmiui/widget/BubbleBgView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic a(Lmiui/widget/BubbleBgView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lmiui/widget/BubbleBgView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private dd()V
    .locals 13

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lmiui/widget/BubbleBgView;->du:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v1, 0x0

    aget v3, v2, v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v5, v3

    add-int/lit8 v3, v1, 0x1

    aget v3, v2, v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v6, v3

    add-int/lit8 v3, v1, 0x2

    aget v3, v2, v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v7, v3

    add-int/lit8 v3, v1, 0x3

    aget v8, v2, v3

    add-int/lit8 v3, v1, 0x4

    aget v9, v2, v3

    add-int/lit8 v3, v1, 0x5

    aget v10, v2, v3

    add-int/lit8 v3, v1, 0x6

    aget v11, v2, v3

    add-int/lit8 v3, v1, 0x7

    aget v12, v2, v3

    iget-object v2, p0, Lmiui/widget/BubbleBgView;->Ut:Ljava/util/ArrayList;

    new-instance v3, Lmiui/widget/BubbleBgView$a;

    move-object v4, v3

    invoke-direct/range {v4 .. v12}, Lmiui/widget/BubbleBgView$a;-><init>(IIIIIIII)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x8

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lmiui/widget/BubbleBgView;->Ut:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/widget/BubbleBgView$a;

    iget-object v2, p0, Lmiui/widget/BubbleBgView;->mPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lmiui/widget/BubbleBgView$a;->a(Lmiui/widget/BubbleBgView$a;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {v1}, Lmiui/widget/BubbleBgView$a;->b(Lmiui/widget/BubbleBgView$a;)F

    move-result v2

    invoke-static {v1}, Lmiui/widget/BubbleBgView$a;->c(Lmiui/widget/BubbleBgView$a;)F

    move-result v3

    invoke-static {v1}, Lmiui/widget/BubbleBgView$a;->d(Lmiui/widget/BubbleBgView$a;)I

    move-result v1

    int-to-float v1, v1

    iget-object v4, p0, Lmiui/widget/BubbleBgView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    return-void
.end method
