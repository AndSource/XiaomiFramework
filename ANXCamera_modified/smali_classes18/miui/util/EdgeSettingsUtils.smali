.class public Lmiui/util/EdgeSettingsUtils;
.super Ljava/lang/Object;
.source "EdgeSettingsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/EdgeSettingsUtils$mode;
    }
.end annotation


# static fields
.field private static final ABSOLUTE_LEVEL_FIFTH:F = 1.0f

.field private static final ABSOLUTE_LEVEL_FIRST:F = 0.2f

.field private static final ABSOLUTE_LEVEL_FOURTH:F = 0.8f

.field private static final ABSOLUTE_LEVEL_SECOND:F = 0.4f

.field private static final ABSOLUTE_LEVEL_THIRD:F = 0.6f

.field private static final ALLOWED_MAX_VALUE:I = 0x32

.field private static final CORNER_HORIZONTAL_LENGTH:I = 0xaa

.field private static final CORNER_HORIZONTAL_WIDTH:I = 0xaa

.field private static final CORNER_PORTRAIT_LENGTH:I = 0x96

.field private static final CORNER_PORTRAIT_WIDTH:I = 0x12c

.field public static final DEFAULT_SIZE:F = 0.6f

.field private static final EMPTY_POINT:I = 0x0

.field private static final NUMBER_TOTAL_NUM:I = 0x60

.field private static final RECT_FIRST:I = 0x0

.field private static final RECT_FOURTH:I = 0x3

.field private static final RECT_SECOND:I = 0x1

.field private static final RECT_THIRD:I = 0x2

.field private static final RECT_TOTAL_NUM:I = 0xc

.field private static final TAG:Ljava/lang/String; = "EdgeSettingsUtils"

.field private static final UNABSOLUTE_LEVEL_FIFTH:I = 0x19

.field private static final UNABSOLUTE_LEVEL_FIRST:I = 0x0

.field private static final UNABSOLUTE_LEVEL_FOURTHT:I = 0x14

.field private static final UNABSOLUTE_LEVEL_SECOND:I = 0xa

.field private static final UNABSOLUTE_LEVEL_THIRD:I = 0xf

.field private static volatile sInstance:Lmiui/util/EdgeSettingsUtils;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIndex:I

.field private mIsHorizontal:Z

.field private mRectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/util/SuppressionRect;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenX:I

.field private mScreenY:I

.field private mSendList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lmiui/util/EdgeSettingsUtils;->mRectList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x60

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lmiui/util/EdgeSettingsUtils;->mSendList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/EdgeSettingsUtils;->mScreenX:I

    iput v0, p0, Lmiui/util/EdgeSettingsUtils;->mScreenY:I

    iput v0, p0, Lmiui/util/EdgeSettingsUtils;->mIndex:I

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmiui/util/EdgeSettingsUtils;->mScreenX:I

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmiui/util/EdgeSettingsUtils;->mScreenY:I

    return-void
.end method

.method private getArrayList(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmiui/util/SuppressionRect;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/SuppressionRect;

    iget-object v2, p0, Lmiui/util/EdgeSettingsUtils;->mSendList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lmiui/util/SuppressionRect;->getList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lmiui/util/EdgeSettingsUtils;->resetIndex()V

    return-void
.end method

.method private getCornerRectPoint(I)V
    .locals 11

    sget-object v0, Lmiui/util/EdgeSettingsUtils$mode;->CORNER:Lmiui/util/EdgeSettingsUtils$mode;

    invoke-static {v0}, Lmiui/util/EdgeSettingsUtils$mode;->access$000(Lmiui/util/EdgeSettingsUtils$mode;)I

    move-result v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/util/EdgeSettingsUtils;->mIsHorizontal:Z

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    if-ne p1, v1, :cond_1

    :cond_0
    iput-boolean v2, p0, Lmiui/util/EdgeSettingsUtils;->mIsHorizontal:Z

    :cond_1
    iget-boolean v3, p0, Lmiui/util/EdgeSettingsUtils;->mIsHorizontal:Z

    if-eqz v3, :cond_2

    const/16 v3, 0xaa

    const/16 v4, 0xaa

    move v10, v3

    move v9, v4

    goto :goto_0

    :cond_2
    const/16 v3, 0x96

    const/16 v4, 0x12c

    move v10, v3

    move v9, v4

    :goto_0
    if-eqz p1, :cond_6

    if-eq p1, v2, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-direct {p0}, Lmiui/util/EdgeSettingsUtils;->getSuppressionRect()Lmiui/util/SuppressionRect;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move v3, v0

    invoke-direct/range {v1 .. v8}, Lmiui/util/EdgeSettingsUtils;->setRectValue(Lmiui/util/SuppressionRect;IIIIII)V

    invoke-direct {p0}, Lmiui/util/EdgeSettingsUtils;->getSuppressionRect()Lmiui/util/SuppressionRect;

    move-result-object v2

    const/4 v4, 0x1

    iget v7, p0, Lmiui/util/EdgeSettingsUtils;->mScreenX:I

    sub-int v5, v7, v10

    move v8, v9

    invoke-direct/range {v1 .. v8}, Lmiui/util/EdgeSettingsUtils;->setRectValue(Lmiui/util/SuppressionRect;IIIIII)V

    invoke-direct {p0}, Lmiui/util/EdgeSettingsUtils;->getSuppressionRect()Lmiui/util/SuppressionRect;

    move-result-object v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lmiui/util/EdgeSettingsUtils;->setRectValue(Lmiui/util/SuppressionRect;IIIIII)V

    invoke-direct {p0}, Lmiui/util/EdgeSettingsUtils;->getSuppressionRect()Lmiui/util/SuppressionRect;

    move-result-object v2

    const/4 v4, 0x3

    iget v7, p0, Lmiui/util/EdgeSettingsUtils;->mScreenX:I

    sub-int v5, v7, v10

    iget v8, p0, Lmiui/util/EdgeSettingsUtils;->mScreenY:I

    sub-int v6, v8, v9

    invoke-direct/range {v1 .. v8}, Lmiui/util/EdgeSettingsUtils;->setRectValue(Lmiui/util/SuppressionRect;IIIIII)V

    goto/16 :goto_1

    :cond_4
    invoke-direct {p0}, Lmiui/util/EdgeSettingsUtils;->getSuppressionRect()Lmiui/util/SuppressionRect;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v3, v0

    move v7, v10

    move v8, v9

    invoke-direct/range {v1 .. v8}, Lmiui/util/EdgeSettingsUtils;->setRectValue(Lmiui/util/SuppressionRect;IIIIII)V

    invoke-direct {p0}, Lmiui/util/EdgeSettingsUtils;->getSuppressionRect()Lmiui/util/SuppressionRect;

    move-result-object v2

    const/4 v4, 0x1

    iget v7, p0, Lmiui/util/EdgeSettingsUtils;->mScreenX:I

    sub-int v5, v7, v10

    invoke-direct/range {v1 .. v8}, Lmiui/util/EdgeSettingsUtils;->setRectValue(Lmiui/util/SuppressionRect;IIIIII)V

    invoke-direct {p0}, Lmiui/util/EdgeSettingsUtils;->getSuppressionRect()Lmiui/util/SuppressionRect;

    move-result-object v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lmiui/util/EdgeSettingsUtils;->setRectValue(Lmiui/util/SuppressionRect;IIIIII)V

    invoke-direct {p0}, Lmiui/util/EdgeSettingsUtils;->getSuppressionRect()Lmiui/util/SuppressionRect;

    move-result-object v2

    const/4 v4, 0x3

    invoke-direct/range {v1 .. v8}, Lmiui/util/EdgeSettingsUtils;->setRectValue(Lmiui/util/SuppressionRect;IIIIII)V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lmiui/util/EdgeSettingsUtils;->getSuppressionRect()Lmiui/util/SuppressionRect;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v3, v0

    move v7, v10

    move v8, v9

    invoke-direct/range {v1 .. v8}, Lmiui/util/EdgeSettingsUtils;->setRectValue(Lmiui/util/SuppressionRect;IIIIII)V

    invoke-direct {p0}, Lmiui/util/EdgeSettingsUtils;->getSuppressionRect()Lmiui/util/SuppressionRect;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lmiui/util/EdgeSettingsUtils;->setRectValue(Lmiui/util/SuppressionRect;IIIIII)V

    invoke-direct {p0}, Lmiui/util/EdgeSettingsUtils;->getSuppressionRect()Lmiui/util/SuppressionRect;

    move-result-object v2

    const/4 v4, 0x2

    iget v8, p0, Lmiui/util/EdgeSettingsUtils;->mScreenY:I

    sub-int v6, v8, v9

    move v7, v10

    invoke-direct/range {v1 .. v8}, Lmiui/util/EdgeSettingsUtils;->setRectValue(Lmiui/util/SuppressionRect;IIIIII)V

    invoke-direct {p0}, Lmiui/util/EdgeSettingsUtils;->getSuppressionRect()Lmiui/util/SuppressionRect;

    move-result-object v2

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lmiui/util/EdgeSettingsUtils;->setRectValue(Lmiui/util/SuppressionRect;IIIIII)V

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lmiui/util/EdgeSettingsUtils;->getSuppressionRect()Lmiui/util/SuppressionRect;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move v3, v0

    invoke-direct/range {v1 .. v8}, Lmiui/util/EdgeSettingsUtils;->setRectValue(Lmiui/util/SuppressionRect;IIIIII)V

    invoke-direct {p0}, Lmiui/util/EdgeSettingsUtils;->getSuppressionRect()Lmiui/util/SuppressionRect;

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct/range {v1 .. v8}, Lmiui/util/EdgeSettingsUtils;->setRectValue(Lmiui/util/SuppressionRect;IIIIII)V

    invoke-direct {p0}, Lmiui/util/EdgeSettingsUtils;->getSuppressionRect()Lmiui/util/SuppressionRect;

    move-result-object v2

    const/4 v4, 0x2

    iget v8, p0, Lmiui/util/EdgeSettingsUtils;->mScreenY:I

    sub-int v6, v8, v9

    move v7, v10

    invoke-direct/range {v1 .. v8}, Lmiui/util/EdgeSettingsUtils;->setRectValue(Lmiui/util/SuppressionRect;IIIIII)V

    invoke-direct {p0}, Lmiui/util/EdgeSettingsUtils;->getSuppressionRect()Lmiui/util/SuppressionRect;

    move-result-object v2

    const/4 v4, 0x3

    iget v7, p0, Lmiui/util/EdgeSettingsUtils;->mScreenX:I

    sub-int v5, v7, v10

    iget v8, p0, Lmiui/util/EdgeSettingsUtils;->mScreenY:I

    sub-int v6, v8, v9

    invoke-direct/range {v1 .. v8}, Lmiui/util/EdgeSettingsUtils;->setRectValue(Lmiui/util/SuppressionRect;IIIIII)V

    nop

    :goto_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lmiui/util/EdgeSettingsUtils;
    .locals 2

    sget-object v0, Lmiui/util/EdgeSettingsUtils;->sInstance:Lmiui/util/EdgeSettingsUtils;

    if-nez v0, :cond_1

    const-class v0, Lmiui/util/EdgeSettingsUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lmiui/util/EdgeSettingsUtils;->sInstance:Lmiui/util/EdgeSettingsUtils;

    if-nez v1, :cond_0

    new-instance v1, Lmiui/util/EdgeSettingsUtils;

    invoke-direct {v1, p0}, Lmiui/util/EdgeSettingsUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lmiui/util/EdgeSettingsUtils;->sInstance:Lmiui/util/EdgeSettingsUtils;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lmiui/util/EdgeSettingsUtils;->sInstance:Lmiui/util/EdgeSettingsUtils;

    return-object v0
.end method

.method private getRectPointForHorizontal(ZF)V
    .locals 10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/util/EdgeSettingsUtils;->mIsHorizontal:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0, v0, v1, p2}, Lmiui/util/EdgeSettingsUtils;->getSuppressionSize(ZZF)I

    move-result v0

    sget-object v1, Lmiui/util/EdgeSettingsUtils$mode;->ABSOLUTE:Lmiui/util/EdgeSettingsUtils$mode;

    invoke-static {v1}, Lmiui/util/EdgeSettingsUtils$mode;->access$000(Lmiui/util/EdgeSettingsUtils$mode;)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1, v1, p2}, Lmiui/util/EdgeSettingsUtils;->getSuppressionSize(ZZF)I

    move-result v0

    sget-object v1, Lmiui/util/EdgeSettingsUtils$mode;->CONDITION:Lmiui/util/EdgeSettingsUtils$mode;

    invoke-static {v1}, Lmiui/util/EdgeSettingsUtils$mode;->access$000(Lmiui/util/EdgeSettingsUtils$mode;)I

    move-result v1

    :goto_0
    invoke-direct {p0}, Lmiui/util/EdgeSettingsUtils;->getSuppressionRect()Lmiui/util/SuppressionRect;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lmiui/util/EdgeSettingsUtils;->mScreenX:I

    move-object v2, p0

    move v4, v1

    move v9, v0

    invoke-direct/range {v2 .. v9}, Lmiui/util/EdgeSettingsUtils;->setRectValue(Lmiui/util/SuppressionRect;IIIIII)V

    invoke-direct {p0}, Lmiui/util/EdgeSettingsUtils;->getSuppressionRect()Lmiui/util/SuppressionRect;

    move-result-object v3

    const/4 v5, 0x1

    iget v9, p0, Lmiui/util/EdgeSettingsUtils;->mScreenY:I

    sub-int v7, v9, v0

    iget v8, p0, Lmiui/util/EdgeSettingsUtils;->mScreenX:I

    invoke-direct/range {v2 .. v9}, Lmiui/util/EdgeSettingsUtils;->setRectValue(Lmiui/util/SuppressionRect;IIIIII)V

    invoke-direct {p0}, Lmiui/util/EdgeSettingsUtils;->getSuppressionRect()Lmiui/util/SuppressionRect;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v7, 0x0

    iget v9, p0, Lmiui/util/EdgeSettingsUtils;->mScreenY:I

    move v8, v0

    invoke-direct/range {v2 .. v9}, Lmiui/util/EdgeSettingsUtils;->setRectValue(Lmiui/util/SuppressionRect;IIIIII)V

    invoke-direct {p0}, Lmiui/util/EdgeSettingsUtils;->getSuppressionRect()Lmiui/util/SuppressionRect;

    move-result-object v3

    const/4 v5, 0x3

    iget v8, p0, Lmiui/util/EdgeSettingsUtils;->mScreenX:I

    sub-int v6, v8, v0

    iget v9, p0, Lmiui/util/EdgeSettingsUtils;->mScreenY:I

    invoke-direct/range {v2 .. v9}, Lmiui/util/EdgeSettingsUtils;->setRectValue(Lmiui/util/SuppressionRect;IIIIII)V

    return-void
.end method

.method private getSuppressionRect()Lmiui/util/SuppressionRect;
    .locals 3

    iget-object v0, p0, Lmiui/util/EdgeSettingsUtils;->mRectList:Ljava/util/ArrayList;

    iget v1, p0, Lmiui/util/EdgeSettingsUtils;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmiui/util/EdgeSettingsUtils;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/SuppressionRect;

    return-object v0
.end method

.method private getSuppressionSize(ZZF)I
    .locals 4

    invoke-direct {p0}, Lmiui/util/EdgeSettingsUtils;->setScreenSize()V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const v1, 0x3e4ccccd    # 0.2f

    invoke-static {p3, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    const v2, 0x3ecccccd    # 0.4f

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-static {p3, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eq v1, v3, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    invoke-static {p3, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    const v2, 0x3f19999a    # 0.6f

    if-ne v1, v3, :cond_1

    invoke-static {p3, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eq v1, v3, :cond_1

    const/16 v0, 0xf

    goto :goto_0

    :cond_1
    invoke-static {p3, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    const v2, 0x3f4ccccd    # 0.8f

    if-ne v1, v3, :cond_2

    invoke-static {p3, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eq v1, v3, :cond_2

    const/16 v0, 0x14

    goto :goto_0

    :cond_2
    invoke-static {p3, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-ne v1, v3, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p3, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eq v1, v3, :cond_4

    const/16 v0, 0x19

    goto :goto_0

    :cond_3
    const/high16 v1, 0x42480000    # 50.0f

    mul-float/2addr v1, p3

    float-to-int v0, v1

    :cond_4
    :goto_0
    return v0
.end method

.method private initArrayList()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lmiui/util/EdgeSettingsUtils;->mRectList:Ljava/util/ArrayList;

    new-instance v2, Lmiui/util/SuppressionRect;

    invoke-direct {v2}, Lmiui/util/SuppressionRect;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resetIndex()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/EdgeSettingsUtils;->mIndex:I

    return-void
.end method

.method private setRectValue(Lmiui/util/SuppressionRect;IIIIII)V
    .locals 0

    invoke-virtual/range {p1 .. p7}, Lmiui/util/SuppressionRect;->setValue(IIIIII)V

    return-void
.end method

.method private setScreenSize()V
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lmiui/util/EdgeSettingsUtils;->mScreenX:I

    iget v2, p0, Lmiui/util/EdgeSettingsUtils;->mScreenY:I

    if-le v1, v2, :cond_0

    iget v0, p0, Lmiui/util/EdgeSettingsUtils;->mScreenX:I

    iput v2, p0, Lmiui/util/EdgeSettingsUtils;->mScreenX:I

    iput v0, p0, Lmiui/util/EdgeSettingsUtils;->mScreenY:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getRectPointForPortrait(ZF)V
    .locals 10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/util/EdgeSettingsUtils;->mIsHorizontal:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-direct {p0, v1, v1, p2}, Lmiui/util/EdgeSettingsUtils;->getSuppressionSize(ZZF)I

    move-result v0

    sget-object v1, Lmiui/util/EdgeSettingsUtils$mode;->ABSOLUTE:Lmiui/util/EdgeSettingsUtils$mode;

    invoke-static {v1}, Lmiui/util/EdgeSettingsUtils$mode;->access$000(Lmiui/util/EdgeSettingsUtils$mode;)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, v1, p2}, Lmiui/util/EdgeSettingsUtils;->getSuppressionSize(ZZF)I

    move-result v0

    sget-object v1, Lmiui/util/EdgeSettingsUtils$mode;->CONDITION:Lmiui/util/EdgeSettingsUtils$mode;

    invoke-static {v1}, Lmiui/util/EdgeSettingsUtils$mode;->access$000(Lmiui/util/EdgeSettingsUtils$mode;)I

    move-result v1

    :goto_0
    invoke-direct {p0}, Lmiui/util/EdgeSettingsUtils;->getSuppressionRect()Lmiui/util/SuppressionRect;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move v4, v1

    invoke-direct/range {v2 .. v9}, Lmiui/util/EdgeSettingsUtils;->setRectValue(Lmiui/util/SuppressionRect;IIIIII)V

    invoke-direct {p0}, Lmiui/util/EdgeSettingsUtils;->getSuppressionRect()Lmiui/util/SuppressionRect;

    move-result-object v3

    const/4 v5, 0x1

    invoke-direct/range {v2 .. v9}, Lmiui/util/EdgeSettingsUtils;->setRectValue(Lmiui/util/SuppressionRect;IIIIII)V

    invoke-direct {p0}, Lmiui/util/EdgeSettingsUtils;->getSuppressionRect()Lmiui/util/SuppressionRect;

    move-result-object v3

    const/4 v5, 0x2

    iget v9, p0, Lmiui/util/EdgeSettingsUtils;->mScreenY:I

    move v8, v0

    invoke-direct/range {v2 .. v9}, Lmiui/util/EdgeSettingsUtils;->setRectValue(Lmiui/util/SuppressionRect;IIIIII)V

    invoke-direct {p0}, Lmiui/util/EdgeSettingsUtils;->getSuppressionRect()Lmiui/util/SuppressionRect;

    move-result-object v3

    const/4 v5, 0x3

    iget v8, p0, Lmiui/util/EdgeSettingsUtils;->mScreenX:I

    sub-int v6, v8, v0

    iget v9, p0, Lmiui/util/EdgeSettingsUtils;->mScreenY:I

    invoke-direct/range {v2 .. v9}, Lmiui/util/EdgeSettingsUtils;->setRectValue(Lmiui/util/SuppressionRect;IIIIII)V

    return-void
.end method

.method public getSuppressionRect(IF)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/util/EdgeSettingsUtils;->mSendList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/util/EdgeSettingsUtils;->mSendList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lmiui/util/EdgeSettingsUtils;->mRectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lmiui/util/EdgeSettingsUtils;->initArrayList()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/util/EdgeSettingsUtils;->mIsHorizontal:Z

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    :cond_2
    iput-boolean v1, p0, Lmiui/util/EdgeSettingsUtils;->mIsHorizontal:Z

    :cond_3
    iget-boolean v2, p0, Lmiui/util/EdgeSettingsUtils;->mIsHorizontal:Z

    if-eqz v2, :cond_4

    invoke-direct {p0, v0, p2}, Lmiui/util/EdgeSettingsUtils;->getRectPointForHorizontal(ZF)V

    invoke-direct {p0, v1, p2}, Lmiui/util/EdgeSettingsUtils;->getRectPointForHorizontal(ZF)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1, p2}, Lmiui/util/EdgeSettingsUtils;->getRectPointForPortrait(ZF)V

    invoke-virtual {p0, v0, p2}, Lmiui/util/EdgeSettingsUtils;->getRectPointForPortrait(ZF)V

    :goto_0
    invoke-direct {p0, p1}, Lmiui/util/EdgeSettingsUtils;->getCornerRectPoint(I)V

    iget-object v0, p0, Lmiui/util/EdgeSettingsUtils;->mRectList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lmiui/util/EdgeSettingsUtils;->getArrayList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lmiui/util/EdgeSettingsUtils;->mSendList:Ljava/util/ArrayList;

    return-object v0
.end method
