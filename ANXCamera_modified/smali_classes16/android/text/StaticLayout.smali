.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/StaticLayout$LineBreaks;,
        Landroid/text/StaticLayout$Builder;
    }
.end annotation


# static fields
.field private static final CHAR_NEW_LINE:C = '\n'

.field private static final COLUMNS_ELLIPSIZE:I = 0x7

.field private static final COLUMNS_NORMAL:I = 0x5

.field private static final DEFAULT_MAX_LINE_HEIGHT:I = -0x1

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x6

.field private static final ELLIPSIS_START:I = 0x5
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private static final END_HYPHEN_MASK:I = 0x7

.field private static final EXTRA:I = 0x3

.field private static final EXTRA_ROUNDING:D = 0.5

.field private static final HYPHEN:I = 0x4

.field private static final HYPHEN_MASK:I = 0xff

.field private static final START:I = 0x0

.field private static final START_HYPHEN_BITS_SHIFT:I = 0x3

.field private static final START_HYPHEN_MASK:I = 0x18

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_INCREMENT:F = 20.0f

.field private static final TAB_MASK:I = 0x20000000

.field static final TAG:Ljava/lang/String; = "StaticLayout"

.field private static final TOP:I = 0x1


# instance fields
.field private mBottomPadding:I

.field private mColumns:I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mEllipsized:Z

.field private mEllipsizedWidth:I

.field private mLeftIndents:[I

.field private mLineCount:I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mLineDirections:[Landroid/text/Layout$Directions;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mLines:[I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mMaxLineHeight:I

.field private mMaximumVisibleLineCount:I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mRightIndents:[I

.field private mTopPadding:I


# direct methods
.method private constructor <init>(Landroid/text/StaticLayout$Builder;)V
    .locals 10

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$300(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$400(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$400(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/text/Layout$SpannedEllipsizer;

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$400(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    move-object v3, v0

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/text/Layout$Ellipsizer;

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$400(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    move-object v3, v0

    :goto_0
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$500(Landroid/text/StaticLayout$Builder;)Landroid/text/TextPaint;

    move-result-object v4

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$600(Landroid/text/StaticLayout$Builder;)I

    move-result v5

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$700(Landroid/text/StaticLayout$Builder;)Landroid/text/Layout$Alignment;

    move-result-object v6

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$800(Landroid/text/StaticLayout$Builder;)Landroid/text/TextDirectionHeuristic;

    move-result-object v7

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$900(Landroid/text/StaticLayout$Builder;)F

    move-result v8

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1000(Landroid/text/StaticLayout$Builder;)F

    move-result v9

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$300(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Ellipsizer;

    iput-object p0, v0, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1100(Landroid/text/StaticLayout$Builder;)I

    move-result v1

    iput v1, v0, Landroid/text/Layout$Ellipsizer;->mWidth:I

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$300(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    iput-object v1, v0, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1100(Landroid/text/StaticLayout$Builder;)I

    move-result v1

    iput v1, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    const/4 v1, 0x7

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x5

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$600(Landroid/text/StaticLayout$Builder;)I

    move-result v0

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    :goto_1
    const-class v0, Landroid/text/Layout$Directions;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1200(Landroid/text/StaticLayout$Builder;)I

    move-result v0

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1300(Landroid/text/StaticLayout$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1400(Landroid/text/StaticLayout$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1500(Landroid/text/StaticLayout$Builder;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/StaticLayout;->setJustificationMode(I)V

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$100(Landroid/text/StaticLayout$Builder;)Z

    move-result v0

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$100(Landroid/text/StaticLayout$Builder;)Z

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/text/StaticLayout$Builder;Landroid/text/StaticLayout$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/text/StaticLayout;-><init>(Landroid/text/StaticLayout$Builder;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v0, 0x7

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const-class v0, Landroid/text/Layout$Directions;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .locals 14
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
        trackingBug = 0x7013c16L
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v8, p0

    move-object v9, p1

    move-object/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    if-nez v10, :cond_0

    move-object v1, v9

    goto :goto_0

    :cond_0
    instance-of v0, v9, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/text/Layout$SpannedEllipsizer;

    invoke-direct {v0, p1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    move-object v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/text/Layout$Ellipsizer;

    invoke-direct {v0, p1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    move-object v1, v0

    :goto_0
    move-object v0, p0

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    const/4 v0, -0x1

    iput v0, v8, Landroid/text/StaticLayout;->mMaxLineHeight:I

    const v0, 0x7fffffff

    iput v0, v8, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    invoke-static/range {p1 .. p5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    move-object/from16 v2, p7

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    move/from16 v3, p8

    move/from16 v4, p9

    invoke-virtual {v0, v4, v3}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    move/from16 v5, p10

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    if-eqz v10, :cond_2

    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Layout$Ellipsizer;

    iput-object v8, v6, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    iput v11, v6, Landroid/text/Layout$Ellipsizer;->mWidth:I

    iput-object v10, v6, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    iput v11, v8, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    const/4 v7, 0x7

    iput v7, v8, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v6, p5

    goto :goto_1

    :cond_2
    const/4 v6, 0x5

    iput v6, v8, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v6, p5

    iput v6, v8, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    :goto_1
    const-class v7, Landroid/text/Layout$Directions;

    const/4 v13, 0x2

    invoke-static {v7, v13}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/Layout$Directions;

    iput-object v7, v8, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    iget v7, v8, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v7, v13

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v7

    iput-object v7, v8, Landroid/text/StaticLayout;->mLines:[I

    iput v12, v8, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    invoke-static {v0}, Landroid/text/StaticLayout$Builder;->access$100(Landroid/text/StaticLayout$Builder;)Z

    move-result v7

    invoke-static {v0}, Landroid/text/StaticLayout$Builder;->access$100(Landroid/text/StaticLayout$Builder;)Z

    move-result v13

    invoke-virtual {p0, v0, v7, v13}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    invoke-static {v0}, Landroid/text/StaticLayout$Builder;->access$200(Landroid/text/StaticLayout$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-void
.end method

.method private calculateEllipsis(IILandroid/text/MeasuredParagraph;IFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    move/from16 v3, p7

    invoke-direct {v0, v3}, Landroid/text/StaticLayout;->getTotalInsets(I)F

    move-result v4

    sub-float v4, p5, v4

    cmpg-float v5, p8, v4

    const/4 v6, 0x5

    if-gtz v5, :cond_0

    if-nez p10, :cond_0

    iget-object v5, v0, Landroid/text/StaticLayout;->mLines:[I

    iget v7, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v8, v7, v3

    add-int/2addr v8, v6

    const/4 v6, 0x0

    aput v6, v5, v8

    mul-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x6

    aput v6, v5, v7

    return-void

    :cond_0
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->getEllipsisString(Landroid/text/TextUtils$TruncateAt;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v7, p9

    invoke-virtual {v7, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    sub-int v10, p2, p1

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    const/4 v12, 0x0

    const-string v13, "StaticLayout"

    const/4 v14, 0x1

    if-ne v2, v11, :cond_4

    iget v11, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v11, v14, :cond_3

    const/4 v11, 0x0

    move v13, v10

    :goto_0
    if-lez v13, :cond_2

    add-int/lit8 v15, v13, -0x1

    add-int v15, v15, p1

    sub-int v15, v15, p4

    invoke-virtual {v1, v15}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v15

    add-float v16, v15, v11

    add-float v16, v16, v5

    cmpl-float v16, v16, v4

    if-lez v16, :cond_1

    :goto_1
    if-ge v13, v10, :cond_2

    add-int v16, v13, p1

    sub-int v14, v16, p4

    invoke-virtual {v1, v14}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v14

    cmpl-float v14, v14, v12

    if-nez v14, :cond_2

    add-int/lit8 v13, v13, 0x1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    add-float/2addr v11, v15

    add-int/lit8 v13, v13, -0x1

    const/4 v14, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    move v9, v13

    goto/16 :goto_9

    :cond_3
    invoke-static {v13, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_f

    const-string v11, "Start Ellipsis only supported with one line"

    invoke-static {v13, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_4
    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-eq v2, v11, :cond_b

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v2, v11, :cond_b

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v11, :cond_5

    goto/16 :goto_6

    :cond_5
    iget v11, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v14, 0x1

    if-ne v11, v14, :cond_a

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v15, v10

    sub-float v16, v4, v5

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    nop

    :goto_2
    if-lez v15, :cond_7

    add-int/lit8 v17, v15, -0x1

    add-int v17, v17, p1

    sub-int v6, v17, p4

    invoke-virtual {v1, v6}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v6

    add-float v17, v6, v13

    cmpl-float v17, v17, v16

    if-lez v17, :cond_6

    :goto_3
    if-ge v15, v10, :cond_7

    add-int v17, v15, p1

    sub-int v12, v17, p4

    invoke-virtual {v1, v12}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v12

    const/16 v17, 0x0

    cmpl-float v12, v12, v17

    if-nez v12, :cond_7

    add-int/lit8 v15, v15, 0x1

    move/from16 v12, v17

    goto :goto_3

    :cond_6
    move/from16 v17, v12

    add-float/2addr v13, v6

    add-int/lit8 v15, v15, -0x1

    const/4 v6, 0x5

    goto :goto_2

    :cond_7
    sub-float v6, v4, v5

    sub-float/2addr v6, v13

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v15, :cond_9

    add-int v14, v12, p1

    sub-int v14, v14, p4

    invoke-virtual {v1, v14}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v14

    add-float v17, v14, v11

    cmpl-float v17, v17, v6

    if-lez v17, :cond_8

    goto :goto_5

    :cond_8
    add-float/2addr v11, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_9
    :goto_5
    move v8, v12

    sub-int v9, v15, v12

    goto :goto_9

    :cond_a
    const/4 v6, 0x5

    invoke-static {v13, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_f

    const-string v6, "Middle Ellipsis only supported with one line"

    invoke-static {v13, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_b
    :goto_6
    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v10, :cond_d

    add-int v12, v11, p1

    sub-int v12, v12, p4

    invoke-virtual {v1, v12}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v12

    add-float v13, v12, v6

    add-float/2addr v13, v5

    cmpl-float v13, v13, v4

    if-lez v13, :cond_c

    goto :goto_8

    :cond_c
    add-float/2addr v6, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_d
    :goto_8
    move v8, v11

    sub-int v9, v10, v11

    if-eqz p10, :cond_e

    if-nez v9, :cond_e

    if-lez v10, :cond_e

    add-int/lit8 v8, v10, -0x1

    const/4 v9, 0x1

    :cond_e
    nop

    :cond_f
    :goto_9
    const/4 v6, 0x1

    iput-boolean v6, v0, Landroid/text/StaticLayout;->mEllipsized:Z

    iget-object v6, v0, Landroid/text/StaticLayout;->mLines:[I

    iget v11, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v12, v11, v3

    const/4 v13, 0x5

    add-int/2addr v12, v13

    aput v8, v6, v12

    mul-int/2addr v11, v3

    add-int/lit8 v11, v11, 0x6

    aput v9, v6, v11

    return-void
.end method

.method private getTotalInsets(I)F
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-eqz v1, :cond_0

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v0, v1, v2

    :cond_0
    iget-object v1, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v1, :cond_1

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v1, v1, v2

    add-int/2addr v0, v1

    :cond_1
    int-to-float v1, v0

    return v1
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZIZLandroid/text/MeasuredParagraph;IZZZ[CILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .locals 29

    move-object/from16 v11, p0

    move/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v14, p11

    move-object/from16 v15, p13

    move/from16 v9, p18

    move/from16 v8, p23

    move-object/from16 v10, p24

    iget v7, v11, Landroid/text/StaticLayout;->mLineCount:I

    iget v0, v11, Landroid/text/StaticLayout;->mColumns:I

    mul-int v16, v7, v0

    add-int v0, v16, v0

    const/4 v6, 0x1

    add-int/lit8 v5, v0, 0x1

    iget-object v0, v11, Landroid/text/StaticLayout;->mLines:[I

    invoke-virtual/range {p17 .. p17}, Landroid/text/MeasuredParagraph;->getParagraphDir()I

    move-result v17

    array-length v1, v0

    const/4 v4, 0x0

    if-lt v5, v1, :cond_0

    invoke-static {v5}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v1

    array-length v2, v0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, v11, Landroid/text/StaticLayout;->mLines:[I

    move-object v0, v1

    move-object/from16 v18, v0

    goto :goto_0

    :cond_0
    move-object/from16 v18, v0

    :goto_0
    iget-object v0, v11, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v0, v0

    if-lt v7, v0, :cond_1

    const-class v0, Landroid/text/Layout$Directions;

    invoke-static {v7}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iget-object v1, v11, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v2, v1

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, v11, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    :cond_1
    if-eqz v14, :cond_4

    move/from16 v3, p4

    iput v3, v15, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v2, p5

    iput v2, v15, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v1, p6

    iput v1, v15, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v0, p7

    iput v0, v15, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    const/16 v19, 0x0

    move/from16 v8, v19

    :goto_1
    array-length v4, v14

    if-ge v8, v4, :cond_3

    aget-object v4, v14, v8

    instance-of v4, v4, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v4, :cond_2

    aget-object v4, v14, v8

    check-cast v4, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v20, p12, v8

    move-object v0, v4

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/16 v19, 0x0

    move/from16 v4, v20

    move/from16 v20, v5

    move/from16 v5, p8

    move v12, v6

    move-object/from16 v6, p13

    move/from16 v21, v7

    move-object/from16 v7, p27

    invoke-interface/range {v0 .. v7}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    goto :goto_2

    :cond_2
    move/from16 v20, v5

    move v12, v6

    move/from16 v21, v7

    const/16 v19, 0x0

    aget-object v0, v14, v8

    aget v4, p12, v8

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p8

    move-object/from16 v6, p13

    invoke-interface/range {v0 .. v6}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    :goto_2
    add-int/lit8 v8, v8, 0x1

    move/from16 v3, p4

    move/from16 v2, p5

    move/from16 v1, p6

    move/from16 v0, p7

    move v6, v12

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v7, v21

    move/from16 v12, p2

    goto :goto_1

    :cond_3
    move/from16 v20, v5

    move v12, v6

    move/from16 v21, v7

    const/16 v19, 0x0

    iget v0, v15, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v1, v15, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v2, v15, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v3, v15, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v22, v0

    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, v3

    goto :goto_3

    :cond_4
    move/from16 v19, v4

    move/from16 v20, v5

    move v12, v6

    move/from16 v21, v7

    move/from16 v22, p4

    move/from16 v23, p5

    move/from16 v24, p6

    move/from16 v25, p7

    :goto_3
    if-nez v21, :cond_5

    move v0, v12

    goto :goto_4

    :cond_5
    move/from16 v0, v19

    :goto_4
    move/from16 v26, v0

    add-int/lit8 v7, v21, 0x1

    iget v0, v11, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v7, v0, :cond_6

    move v0, v12

    goto :goto_5

    :cond_6
    move/from16 v0, v19

    :goto_5
    move/from16 v27, v0

    if-eqz v10, :cond_f

    if-eqz p28, :cond_7

    iget v0, v11, Landroid/text/StaticLayout;->mLineCount:I

    add-int/2addr v0, v12

    iget v1, v11, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v0, v1, :cond_7

    move v0, v12

    goto :goto_6

    :cond_7
    move/from16 v0, v19

    :goto_6
    move-object v8, v10

    move v10, v0

    iget v0, v11, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v0, v12, :cond_8

    if-nez p28, :cond_9

    :cond_8
    if-eqz v26, :cond_a

    if-nez p28, :cond_a

    :cond_9
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v8, v0, :cond_c

    :cond_a
    if-nez v26, :cond_d

    if-nez v27, :cond_b

    if-nez p28, :cond_d

    :cond_b
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne v8, v0, :cond_d

    :cond_c
    move v0, v12

    goto :goto_7

    :cond_d
    move/from16 v0, v19

    :goto_7
    move/from16 v28, v0

    if-eqz v28, :cond_e

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p17

    move/from16 v4, p23

    move/from16 v5, p25

    move-object/from16 v6, p24

    move/from16 v7, v21

    move/from16 v12, p23

    move/from16 v8, p26

    move v14, v9

    move-object/from16 v9, p27

    invoke-direct/range {v0 .. v10}, Landroid/text/StaticLayout;->calculateEllipsis(IILandroid/text/MeasuredParagraph;IFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    goto :goto_8

    :cond_e
    move/from16 v12, p23

    move v14, v9

    goto :goto_8

    :cond_f
    move/from16 v12, p23

    move v14, v9

    :goto_8
    iget-boolean v0, v11, Landroid/text/StaticLayout;->mEllipsized:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x1

    goto :goto_a

    :cond_10
    if-eq v12, v14, :cond_11

    if-lez v14, :cond_11

    add-int/lit8 v0, v14, -0x1

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_12

    const/4 v0, 0x1

    goto :goto_9

    :cond_11
    move-object/from16 v1, p1

    :cond_12
    move/from16 v0, v19

    :goto_9
    if-ne v13, v14, :cond_13

    if-nez v0, :cond_13

    const/4 v2, 0x1

    move v0, v2

    const/4 v3, 0x1

    move/from16 v2, p2

    goto :goto_a

    :cond_13
    move/from16 v2, p2

    const/4 v3, 0x1

    if-ne v2, v14, :cond_14

    if-eqz v0, :cond_14

    const/4 v4, 0x1

    move v0, v4

    goto :goto_a

    :cond_14
    const/4 v0, 0x0

    :goto_a
    if-eqz v26, :cond_16

    if-eqz p20, :cond_15

    sub-int v4, v24, v22

    iput v4, v11, Landroid/text/StaticLayout;->mTopPadding:I

    :cond_15
    if-eqz p19, :cond_16

    move/from16 v22, v24

    :cond_16
    if-eqz v0, :cond_18

    if-eqz p20, :cond_17

    sub-int v4, v25, v23

    iput v4, v11, Landroid/text/StaticLayout;->mBottomPadding:I

    :cond_17
    if-eqz p19, :cond_18

    move/from16 v23, v25

    :cond_18
    if-eqz p16, :cond_1b

    if-nez p21, :cond_19

    if-nez v0, :cond_1b

    :cond_19
    sub-int v4, v23, v22

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v5, p9, v5

    mul-float/2addr v4, v5

    add-float v4, v4, p10

    float-to-double v4, v4

    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    if-ltz v6, :cond_1a

    add-double/2addr v7, v4

    double-to-int v6, v7

    goto :goto_b

    :cond_1a
    neg-double v9, v4

    add-double/2addr v9, v7

    double-to-int v6, v9

    neg-int v6, v6

    :goto_b
    goto :goto_c

    :cond_1b
    const/4 v6, 0x0

    :goto_c
    add-int/lit8 v4, v16, 0x0

    aput v2, v18, v4

    add-int/lit8 v4, v16, 0x1

    aput p8, v18, v4

    add-int/lit8 v4, v16, 0x2

    add-int v5, v23, v6

    aput v5, v18, v4

    add-int/lit8 v4, v16, 0x3

    aput v6, v18, v4

    iget-boolean v4, v11, Landroid/text/StaticLayout;->mEllipsized:Z

    if-nez v4, :cond_1d

    if-eqz v27, :cond_1d

    if-eqz p19, :cond_1c

    move/from16 v4, v25

    goto :goto_d

    :cond_1c
    move/from16 v4, v23

    :goto_d
    sub-int v5, v4, v22

    add-int v5, p8, v5

    iput v5, v11, Landroid/text/StaticLayout;->mMaxLineHeight:I

    :cond_1d
    sub-int v4, v23, v22

    add-int/2addr v4, v6

    add-int v4, p8, v4

    iget v5, v11, Landroid/text/StaticLayout;->mColumns:I

    add-int v7, v16, v5

    add-int/lit8 v7, v7, 0x0

    aput v13, v18, v7

    add-int v5, v16, v5

    add-int/2addr v5, v3

    aput v4, v18, v5

    add-int/lit8 v5, v16, 0x0

    aget v7, v18, v5

    if-eqz p14, :cond_1e

    const/high16 v8, 0x20000000

    move/from16 v19, v8

    :cond_1e
    or-int v7, v7, v19

    aput v7, v18, v5

    add-int/lit8 v5, v16, 0x4

    aput p15, v18, v5

    add-int/lit8 v5, v16, 0x0

    aget v7, v18, v5

    shl-int/lit8 v8, v17, 0x1e

    or-int/2addr v7, v8

    aput v7, v18, v5

    iget-object v5, v11, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int v7, v2, v12

    sub-int v8, v13, v12

    move-object/from16 v9, p17

    invoke-virtual {v9, v7, v8}, Landroid/text/MeasuredParagraph;->getDirections(II)Landroid/text/Layout$Directions;

    move-result-object v7

    aput-object v7, v5, v21

    iget v5, v11, Landroid/text/StaticLayout;->mLineCount:I

    add-int/2addr v5, v3

    iput v5, v11, Landroid/text/StaticLayout;->mLineCount:I

    return v4
.end method

.method static packHyphenEdit(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method static unpackEndHyphenEdit(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method static unpackStartHyphenEdit(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x18

    shr-int/lit8 v0, v0, 0x3

    return v0
.end method


# virtual methods
.method generate(Landroid/text/StaticLayout$Builder;ZZ)V
    .locals 89

    move-object/from16 v13, p0

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$400(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$1600(Landroid/text/StaticLayout$Builder;)I

    move-result v11

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$1700(Landroid/text/StaticLayout$Builder;)I

    move-result v10

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$500(Landroid/text/StaticLayout$Builder;)Landroid/text/TextPaint;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$600(Landroid/text/StaticLayout$Builder;)I

    move-result v46

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$800(Landroid/text/StaticLayout$Builder;)Landroid/text/TextDirectionHeuristic;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$1800(Landroid/text/StaticLayout$Builder;)Z

    move-result v47

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$900(Landroid/text/StaticLayout$Builder;)F

    move-result v48

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$1000(Landroid/text/StaticLayout$Builder;)F

    move-result v49

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$1100(Landroid/text/StaticLayout$Builder;)I

    move-result v0

    int-to-float v7, v0

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$300(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$1900(Landroid/text/StaticLayout$Builder;)Z

    move-result v50

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/4 v6, 0x0

    iput v6, v13, Landroid/text/StaticLayout;->mLineCount:I

    iput-boolean v6, v13, Landroid/text/StaticLayout;->mEllipsized:Z

    iget v0, v13, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v5, 0x1

    if-ge v0, v5, :cond_0

    move v0, v6

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iput v0, v13, Landroid/text/StaticLayout;->mMaxLineHeight:I

    const/16 v23, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v48, v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v0, v49, v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v16, v6

    goto :goto_2

    :cond_2
    :goto_1
    move/from16 v16, v5

    :goto_2
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2000(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    const/16 v24, 0x0

    iget-object v0, v13, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v0, :cond_4

    iget-object v0, v13, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_8

    :cond_4
    :goto_3
    iget-object v0, v13, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v0, :cond_5

    move v0, v6

    goto :goto_4

    :cond_5
    array-length v0, v0

    :goto_4
    iget-object v1, v13, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v1, :cond_6

    move v1, v6

    goto :goto_5

    :cond_6
    array-length v1, v1

    :goto_5
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v3, v2, [I

    const/16 v25, 0x0

    move/from16 v5, v25

    :goto_6
    if-ge v5, v0, :cond_7

    iget-object v6, v13, Landroid/text/StaticLayout;->mLeftIndents:[I

    aget v6, v6, v5

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    goto :goto_6

    :cond_7
    const/4 v5, 0x0

    :goto_7
    if-ge v5, v1, :cond_8

    aget v6, v3, v5

    move/from16 v27, v0

    iget-object v0, v13, Landroid/text/StaticLayout;->mRightIndents:[I

    aget v0, v0, v5

    add-int/2addr v6, v0

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v27

    goto :goto_7

    :cond_8
    move/from16 v27, v0

    move-object v6, v3

    :goto_8
    new-instance v0, Landroid/graphics/text/LineBreaker$Builder;

    invoke-direct {v0}, Landroid/graphics/text/LineBreaker$Builder;-><init>()V

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2200(Landroid/text/StaticLayout$Builder;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/text/LineBreaker$Builder;->setBreakStrategy(I)Landroid/graphics/text/LineBreaker$Builder;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2100(Landroid/text/StaticLayout$Builder;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/text/LineBreaker$Builder;->setHyphenationFrequency(I)Landroid/graphics/text/LineBreaker$Builder;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$1500(Landroid/text/StaticLayout$Builder;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/text/LineBreaker$Builder;->setJustificationMode(I)Landroid/graphics/text/LineBreaker$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/graphics/text/LineBreaker$Builder;->setIndents([I)Landroid/graphics/text/LineBreaker$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/text/LineBreaker$Builder;->build()Landroid/graphics/text/LineBreaker;

    move-result-object v5

    new-instance v0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;

    invoke-direct {v0}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;-><init>()V

    move-object v3, v0

    const/16 v27, 0x0

    instance-of v0, v12, Landroid/text/Spanned;

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    move-object v0, v12

    check-cast v0, Landroid/text/Spanned;

    goto :goto_9

    :cond_9
    move-object v0, v2

    :goto_9
    move-object v1, v0

    instance-of v0, v12, Landroid/text/PrecomputedText;

    move/from16 v29, v7

    if-eqz v0, :cond_d

    move-object v0, v12

    check-cast v0, Landroid/text/PrecomputedText;

    nop

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2200(Landroid/text/StaticLayout$Builder;)I

    move-result v28

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2100(Landroid/text/StaticLayout$Builder;)I

    move-result v30

    move-object/from16 v31, v0

    move-object/from16 v51, v1

    move v1, v11

    move v2, v10

    move-object/from16 v53, v3

    move-object v3, v8

    move-object/from16 v54, v4

    move-object v4, v9

    move-object/from16 v55, v5

    const/4 v7, 0x1

    move/from16 v5, v28

    move-object/from16 v56, v6

    move/from16 v6, v30

    invoke-virtual/range {v0 .. v6}, Landroid/text/PrecomputedText;->checkResultUsable(IILandroid/text/TextDirectionHeuristic;Landroid/text/TextPaint;II)I

    move-result v0

    if-eqz v0, :cond_c

    if-eq v0, v7, :cond_b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    goto :goto_a

    :cond_a
    invoke-virtual/range {v31 .. v31}, Landroid/text/PrecomputedText;->getParagraphInfo()[Landroid/text/PrecomputedText$ParagraphInfo;

    move-result-object v27

    goto :goto_a

    :cond_b
    new-instance v1, Landroid/text/PrecomputedText$Params$Builder;

    invoke-direct {v1, v9}, Landroid/text/PrecomputedText$Params$Builder;-><init>(Landroid/text/TextPaint;)V

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2200(Landroid/text/StaticLayout$Builder;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/PrecomputedText$Params$Builder;->setBreakStrategy(I)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2100(Landroid/text/StaticLayout$Builder;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/PrecomputedText$Params$Builder;->setHyphenationFrequency(I)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/text/PrecomputedText$Params$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/PrecomputedText$Params$Builder;->build()Landroid/text/PrecomputedText$Params;

    move-result-object v1

    move-object/from16 v2, v31

    invoke-static {v2, v1}, Landroid/text/PrecomputedText;->create(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;)Landroid/text/PrecomputedText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/PrecomputedText;->getParagraphInfo()[Landroid/text/PrecomputedText$ParagraphInfo;

    move-result-object v27

    goto :goto_a

    :cond_c
    move-object/from16 v2, v31

    goto :goto_a

    :cond_d
    move-object/from16 v51, v1

    move-object/from16 v53, v3

    move-object/from16 v54, v4

    move-object/from16 v55, v5

    move-object/from16 v56, v6

    const/4 v7, 0x1

    :goto_a
    if-nez v27, :cond_e

    new-instance v0, Landroid/text/PrecomputedText$Params;

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2200(Landroid/text/StaticLayout$Builder;)I

    move-result v1

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2100(Landroid/text/StaticLayout$Builder;)I

    move-result v2

    invoke-direct {v0, v9, v8, v1, v2}, Landroid/text/PrecomputedText$Params;-><init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)V

    const/4 v6, 0x0

    invoke-static {v12, v0, v11, v10, v6}, Landroid/text/PrecomputedText;->createMeasuredParagraphs(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;IIZ)[Landroid/text/PrecomputedText$ParagraphInfo;

    move-result-object v27

    move-object/from16 v3, v27

    goto :goto_b

    :cond_e
    const/4 v6, 0x0

    move-object/from16 v3, v27

    :goto_b
    const/4 v0, 0x0

    move v2, v0

    move-object/from16 v0, v24

    :goto_c
    array-length v1, v3

    if-ge v2, v1, :cond_32

    if-nez v2, :cond_f

    move v1, v11

    goto :goto_d

    :cond_f
    add-int/lit8 v1, v2, -0x1

    aget-object v1, v3, v1

    iget v1, v1, Landroid/text/PrecomputedText$ParagraphInfo;->paragraphEnd:I

    :goto_d
    aget-object v4, v3, v2

    iget v5, v4, Landroid/text/PrecomputedText$ParagraphInfo;->paragraphEnd:I

    const/4 v4, 0x1

    move/from16 v24, v46

    move/from16 v25, v46

    const/16 v26, 0x0

    move-object/from16 v6, v51

    if-eqz v6, :cond_17

    const-class v7, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v6, v1, v5, v7}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/LeadingMarginSpan;

    const/16 v28, 0x0

    move-object/from16 v30, v8

    move v8, v4

    move/from16 v4, v28

    :goto_e
    move-object/from16 v31, v9

    array-length v9, v7

    if-ge v4, v9, :cond_11

    aget-object v9, v7, v4

    move/from16 v33, v11

    aget-object v11, v7, v4

    move-object/from16 v34, v12

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v11

    sub-int v24, v24, v11

    aget-object v11, v7, v4

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v11

    sub-int v25, v25, v11

    instance-of v11, v9, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v11, :cond_10

    move-object v11, v9

    check-cast v11, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    nop

    invoke-interface {v11}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v12

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    :cond_10
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v9, v31

    move/from16 v11, v33

    move-object/from16 v12, v34

    goto :goto_e

    :cond_11
    move/from16 v33, v11

    move-object/from16 v34, v12

    const-class v4, Landroid/text/style/LineHeightSpan;

    invoke-static {v6, v1, v5, v4}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/LineHeightSpan;

    array-length v9, v4

    if-nez v9, :cond_12

    const/4 v4, 0x0

    move-object/from16 v35, v0

    move-object/from16 v36, v4

    move v12, v8

    move/from16 v11, v24

    move/from16 v9, v25

    goto :goto_11

    :cond_12
    if-eqz v0, :cond_13

    array-length v9, v0

    array-length v11, v4

    if-ge v9, v11, :cond_14

    :cond_13
    array-length v9, v4

    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    :cond_14
    const/4 v9, 0x0

    :goto_f
    array-length v11, v4

    if-ge v9, v11, :cond_16

    aget-object v11, v4, v9

    invoke-interface {v6, v11}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    if-ge v11, v1, :cond_15

    invoke-virtual {v13, v11}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v12

    invoke-virtual {v13, v12}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v12

    aput v12, v0, v9

    goto :goto_10

    :cond_15
    aput v23, v0, v9

    :goto_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    :cond_16
    move-object/from16 v35, v0

    move-object/from16 v36, v4

    move v12, v8

    move/from16 v11, v24

    move/from16 v9, v25

    goto :goto_11

    :cond_17
    move-object/from16 v30, v8

    move-object/from16 v31, v9

    move/from16 v33, v11

    move-object/from16 v34, v12

    move-object/from16 v35, v0

    move v12, v4

    move/from16 v11, v24

    move/from16 v9, v25

    move-object/from16 v36, v26

    :goto_11
    const/4 v0, 0x0

    if-eqz v6, :cond_1a

    const-class v4, Landroid/text/style/TabStopSpan;

    invoke-static {v6, v1, v5, v4}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/TabStopSpan;

    array-length v7, v4

    if-lez v7, :cond_19

    array-length v7, v4

    new-array v7, v7, [F

    const/4 v8, 0x0

    :goto_12
    move-object/from16 v24, v0

    array-length v0, v4

    if-ge v8, v0, :cond_18

    aget-object v0, v4, v8

    invoke-interface {v0}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v0

    int-to-float v0, v0

    aput v0, v7, v8

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v24

    goto :goto_12

    :cond_18
    array-length v0, v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v0}, Ljava/util/Arrays;->sort([FII)V

    move-object v0, v7

    move-object v8, v0

    goto :goto_14

    :cond_19
    move-object/from16 v24, v0

    goto :goto_13

    :cond_1a
    move-object/from16 v24, v0

    :goto_13
    move-object/from16 v8, v24

    :goto_14
    aget-object v0, v3, v2

    iget-object v7, v0, Landroid/text/PrecomputedText$ParagraphInfo;->measured:Landroid/text/MeasuredParagraph;

    invoke-virtual {v7}, Landroid/text/MeasuredParagraph;->getChars()[C

    move-result-object v37

    invoke-virtual {v7}, Landroid/text/MeasuredParagraph;->getSpanEndCache()Landroid/text/AutoGrowArray$IntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$IntArray;->getRawArray()[I

    move-result-object v38

    invoke-virtual {v7}, Landroid/text/MeasuredParagraph;->getFontMetrics()Landroid/text/AutoGrowArray$IntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$IntArray;->getRawArray()[I

    move-result-object v39

    int-to-float v0, v9

    move-object/from16 v4, v53

    invoke-virtual {v4, v0}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->setWidth(F)V

    int-to-float v0, v11

    invoke-virtual {v4, v0, v12}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->setIndent(FI)V

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {v4, v8, v0}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->setTabStops([FF)V

    nop

    invoke-virtual {v7}, Landroid/text/MeasuredParagraph;->getMeasuredText()Landroid/graphics/text/MeasuredText;

    move-result-object v0

    move/from16 v24, v2

    iget v2, v13, Landroid/text/StaticLayout;->mLineCount:I

    move/from16 v25, v12

    move-object/from16 v12, v55

    invoke-virtual {v12, v0, v4, v2}, Landroid/graphics/text/LineBreaker;->computeLineBreaks(Landroid/graphics/text/MeasuredText;Landroid/graphics/text/LineBreaker$ParagraphConstraints;I)Landroid/graphics/text/LineBreaker$Result;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/text/LineBreaker$Result;->getLineCount()I

    move-result v0

    if-ge v14, v0, :cond_1b

    move v14, v0

    move-object/from16 v40, v3

    new-array v3, v14, [I

    move-object/from16 v17, v3

    new-array v3, v14, [F

    move-object/from16 v18, v3

    new-array v3, v14, [F

    move-object/from16 v19, v3

    new-array v3, v14, [F

    move-object/from16 v20, v3

    new-array v3, v14, [Z

    move-object/from16 v21, v3

    new-array v3, v14, [I

    move-object/from16 v51, v3

    move/from16 v53, v14

    move-object/from16 v41, v17

    move-object/from16 v42, v18

    move-object/from16 v43, v19

    move-object/from16 v44, v20

    move-object/from16 v45, v21

    goto :goto_15

    :cond_1b
    move-object/from16 v40, v3

    move/from16 v53, v14

    move-object/from16 v41, v17

    move-object/from16 v42, v18

    move-object/from16 v43, v19

    move-object/from16 v44, v20

    move-object/from16 v45, v21

    move-object/from16 v51, v22

    :goto_15
    const/4 v3, 0x0

    :goto_16
    if-ge v3, v0, :cond_1c

    invoke-virtual {v2, v3}, Landroid/graphics/text/LineBreaker$Result;->getLineBreakOffset(I)I

    move-result v14

    aput v14, v41, v3

    invoke-virtual {v2, v3}, Landroid/graphics/text/LineBreaker$Result;->getLineWidth(I)F

    move-result v14

    aput v14, v42, v3

    invoke-virtual {v2, v3}, Landroid/graphics/text/LineBreaker$Result;->getLineAscent(I)F

    move-result v14

    aput v14, v43, v3

    invoke-virtual {v2, v3}, Landroid/graphics/text/LineBreaker$Result;->getLineDescent(I)F

    move-result v14

    aput v14, v44, v3

    invoke-virtual {v2, v3}, Landroid/graphics/text/LineBreaker$Result;->hasLineTab(I)Z

    move-result v14

    aput-boolean v14, v45, v3

    nop

    invoke-virtual {v2, v3}, Landroid/graphics/text/LineBreaker$Result;->getStartLineHyphenEdit(I)I

    move-result v14

    move-object/from16 v26, v4

    invoke-virtual {v2, v3}, Landroid/graphics/text/LineBreaker$Result;->getEndLineHyphenEdit(I)I

    move-result v4

    invoke-static {v14, v4}, Landroid/text/StaticLayout;->packHyphenEdit(II)I

    move-result v4

    aput v4, v51, v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v4, v26

    goto :goto_16

    :cond_1c
    move-object/from16 v26, v4

    iget v3, v13, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    iget v4, v13, Landroid/text/StaticLayout;->mLineCount:I

    sub-int/2addr v3, v4

    if-eqz v15, :cond_1e

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-eq v15, v4, :cond_1d

    iget v4, v13, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v14, 0x1

    if-ne v4, v14, :cond_1e

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v15, v4, :cond_1e

    :cond_1d
    const/4 v4, 0x1

    goto :goto_17

    :cond_1e
    const/4 v4, 0x0

    :goto_17
    move/from16 v55, v4

    if-lez v3, :cond_23

    if-ge v3, v0, :cond_23

    if-eqz v55, :cond_23

    const/4 v4, 0x0

    const/4 v14, 0x0

    add-int/lit8 v17, v3, -0x1

    move/from16 v87, v14

    move v14, v4

    move/from16 v4, v17

    move/from16 v17, v87

    :goto_18
    if-ge v4, v0, :cond_22

    move-object/from16 v58, v2

    add-int/lit8 v2, v0, -0x1

    if-ne v4, v2, :cond_1f

    aget v2, v42, v4

    add-float/2addr v14, v2

    move-object/from16 v59, v6

    goto :goto_1a

    :cond_1f
    if-nez v4, :cond_20

    const/4 v2, 0x0

    goto :goto_19

    :cond_20
    add-int/lit8 v2, v4, -0x1

    aget v2, v41, v2

    :goto_19
    move-object/from16 v59, v6

    aget v6, v41, v4

    if-ge v2, v6, :cond_21

    invoke-virtual {v7, v2}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v6

    add-float/2addr v14, v6

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v6, v59

    goto :goto_19

    :cond_21
    :goto_1a
    aget-boolean v2, v45, v4

    or-int v17, v17, v2

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v58

    move-object/from16 v6, v59

    goto :goto_18

    :cond_22
    move-object/from16 v58, v2

    move-object/from16 v59, v6

    add-int/lit8 v2, v3, -0x1

    add-int/lit8 v4, v0, -0x1

    aget v4, v41, v4

    aput v4, v41, v2

    add-int/lit8 v2, v3, -0x1

    aput v14, v42, v2

    add-int/lit8 v2, v3, -0x1

    aput-boolean v17, v45, v2

    move v0, v3

    move v6, v0

    goto :goto_1b

    :cond_23
    move-object/from16 v58, v2

    move-object/from16 v59, v6

    move v6, v0

    :goto_1b
    move v0, v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v21, v1

    move/from16 v87, v20

    move/from16 v20, v0

    move v0, v2

    move/from16 v2, v21

    move/from16 v21, v87

    move/from16 v88, v17

    move/from16 v17, v3

    move v3, v14

    move v14, v4

    move/from16 v4, v88

    :goto_1c
    if-ge v2, v5, :cond_30

    add-int/lit8 v60, v19, 0x1

    aget v13, v38, v19

    mul-int/lit8 v19, v18, 0x4

    const/16 v22, 0x0

    add-int/lit8 v19, v19, 0x0

    move/from16 v57, v5

    aget v5, v39, v19

    move-object/from16 v61, v12

    move-object/from16 v12, v54

    iput v5, v12, Landroid/graphics/Paint$FontMetricsInt;->top:I

    mul-int/lit8 v5, v18, 0x4

    const/16 v19, 0x1

    add-int/lit8 v5, v5, 0x1

    aget v5, v39, v5

    iput v5, v12, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    mul-int/lit8 v5, v18, 0x4

    const/16 v27, 0x2

    add-int/lit8 v5, v5, 0x2

    aget v5, v39, v5

    iput v5, v12, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    mul-int/lit8 v5, v18, 0x4

    add-int/lit8 v5, v5, 0x3

    aget v5, v39, v5

    iput v5, v12, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/lit8 v32, v18, 0x1

    iget v5, v12, Landroid/graphics/Paint$FontMetricsInt;->top:I

    if-ge v5, v0, :cond_24

    iget v0, v12, Landroid/graphics/Paint$FontMetricsInt;->top:I

    :cond_24
    iget v5, v12, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    if-ge v5, v3, :cond_25

    iget v3, v12, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    :cond_25
    iget v5, v12, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    if-le v5, v4, :cond_26

    iget v4, v12, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    :cond_26
    iget v5, v12, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    if-le v5, v14, :cond_27

    iget v14, v12, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v5, v21

    goto :goto_1d

    :cond_27
    move/from16 v5, v21

    :goto_1d
    if-ge v5, v6, :cond_28

    aget v18, v41, v5

    move/from16 v28, v0

    add-int v0, v1, v18

    if-ge v0, v2, :cond_29

    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v28

    goto :goto_1d

    :cond_28
    move/from16 v28, v0

    :cond_29
    move v0, v3

    move v3, v5

    move/from16 v64, v14

    move/from16 v62, v20

    move/from16 v54, v23

    move/from16 v63, v28

    move v14, v4

    :goto_1e
    if-ge v3, v6, :cond_2f

    aget v4, v41, v3

    add-int/2addr v4, v1

    if-gt v4, v13, :cond_2f

    aget v4, v41, v3

    add-int v5, v1, v4

    if-ge v5, v10, :cond_2a

    move/from16 v28, v19

    goto :goto_1f

    :cond_2a
    move/from16 v28, v22

    :goto_1f
    if-eqz v47, :cond_2b

    aget v4, v43, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_20

    :cond_2b
    move v4, v0

    :goto_20
    move-object/from16 v65, v26

    if-eqz v47, :cond_2c

    aget v18, v44, v3

    move/from16 v20, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_21

    :cond_2c
    move/from16 v20, v0

    move v0, v14

    :goto_21
    move/from16 v66, v57

    move/from16 v57, v5

    move v5, v0

    aget-boolean v0, v45, v3

    move/from16 v67, v14

    move v14, v0

    aget v0, v51, v3

    move-object/from16 v68, v15

    move v15, v0

    aget v26, v42, v3

    move/from16 v69, v20

    move-object/from16 v0, p0

    move/from16 v70, v1

    move-object/from16 v1, v34

    move/from16 v72, v2

    move-object/from16 v71, v58

    move/from16 v58, v24

    move/from16 v2, v62

    move/from16 v74, v3

    move-object/from16 v73, v40

    move/from16 v40, v17

    move/from16 v3, v57

    move/from16 v75, v6

    move/from16 v76, v22

    move/from16 v6, v63

    move/from16 v79, v19

    move/from16 v78, v27

    move/from16 v77, v29

    move-object/from16 v29, v7

    move/from16 v7, v64

    move-object/from16 v80, v30

    move-object/from16 v30, v8

    move/from16 v8, v54

    move-object/from16 v81, v31

    move/from16 v31, v9

    move/from16 v9, v48

    move/from16 v82, v10

    move/from16 v10, v49

    move/from16 v83, v33

    move/from16 v33, v11

    move-object/from16 v11, v36

    move-object/from16 v84, v34

    move-object/from16 v85, v61

    move-object/from16 v61, v12

    move/from16 v34, v25

    move-object/from16 v12, v35

    move/from16 v86, v13

    move-object/from16 v13, v61

    move-object/from16 v17, v29

    move/from16 v18, v82

    move/from16 v19, p2

    move/from16 v20, p3

    move/from16 v21, v50

    move-object/from16 v22, v37

    move/from16 v23, v70

    move-object/from16 v24, v68

    move/from16 v25, v77

    move-object/from16 v27, v81

    invoke-direct/range {v0 .. v28}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZIZLandroid/text/MeasuredParagraph;IZZZ[CILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v54

    move/from16 v1, v57

    move/from16 v0, v86

    if-ge v1, v0, :cond_2d

    move-object/from16 v2, v61

    iget v3, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v6, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v7, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v8, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v63, v3

    move/from16 v64, v6

    move v6, v7

    move v14, v8

    goto :goto_22

    :cond_2d
    move-object/from16 v2, v61

    move/from16 v3, v76

    move/from16 v6, v76

    move/from16 v7, v76

    move/from16 v8, v76

    move v14, v3

    move/from16 v64, v7

    move/from16 v63, v8

    :goto_22
    move/from16 v62, v1

    add-int/lit8 v3, v74, 0x1

    move-object/from16 v7, p0

    iget v8, v7, Landroid/text/StaticLayout;->mLineCount:I

    iget v9, v7, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v8, v9, :cond_2e

    iget-boolean v8, v7, Landroid/text/StaticLayout;->mEllipsized:Z

    if-eqz v8, :cond_2e

    return-void

    :cond_2e
    move v13, v0

    move-object v12, v2

    move v0, v6

    move-object/from16 v7, v29

    move-object/from16 v8, v30

    move/from16 v9, v31

    move/from16 v11, v33

    move/from16 v25, v34

    move/from16 v17, v40

    move/from16 v24, v58

    move-object/from16 v26, v65

    move/from16 v57, v66

    move-object/from16 v15, v68

    move/from16 v1, v70

    move-object/from16 v58, v71

    move/from16 v2, v72

    move-object/from16 v40, v73

    move/from16 v6, v75

    move/from16 v22, v76

    move/from16 v29, v77

    move/from16 v27, v78

    move/from16 v19, v79

    move-object/from16 v30, v80

    move-object/from16 v31, v81

    move/from16 v10, v82

    move/from16 v33, v83

    move-object/from16 v34, v84

    move-object/from16 v61, v85

    goto/16 :goto_1e

    :cond_2f
    move/from16 v69, v0

    move/from16 v70, v1

    move/from16 v72, v2

    move/from16 v74, v3

    move/from16 v75, v6

    move/from16 v82, v10

    move-object v2, v12

    move v0, v13

    move/from16 v67, v14

    move-object/from16 v68, v15

    move/from16 v79, v19

    move/from16 v76, v22

    move-object/from16 v65, v26

    move/from16 v78, v27

    move/from16 v77, v29

    move-object/from16 v80, v30

    move-object/from16 v81, v31

    move/from16 v83, v33

    move-object/from16 v84, v34

    move-object/from16 v73, v40

    move/from16 v66, v57

    move-object/from16 v71, v58

    move-object/from16 v85, v61

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    move/from16 v31, v9

    move/from16 v33, v11

    move/from16 v40, v17

    move/from16 v58, v24

    move/from16 v34, v25

    move-object/from16 v7, p0

    move v1, v0

    move-object v13, v7

    move-object/from16 v7, v29

    move-object/from16 v8, v30

    move/from16 v9, v31

    move/from16 v18, v32

    move/from16 v11, v33

    move/from16 v25, v34

    move/from16 v17, v40

    move/from16 v23, v54

    move/from16 v24, v58

    move/from16 v19, v60

    move/from16 v20, v62

    move/from16 v0, v63

    move/from16 v14, v64

    move-object/from16 v26, v65

    move/from16 v5, v66

    move/from16 v4, v67

    move-object/from16 v15, v68

    move/from16 v3, v69

    move-object/from16 v58, v71

    move-object/from16 v40, v73

    move/from16 v21, v74

    move/from16 v6, v75

    move/from16 v29, v77

    move-object/from16 v30, v80

    move-object/from16 v31, v81

    move/from16 v10, v82

    move/from16 v33, v83

    move-object/from16 v34, v84

    move-object/from16 v12, v85

    move-object/from16 v54, v2

    move v2, v1

    move/from16 v1, v70

    goto/16 :goto_1c

    :cond_30
    move/from16 v70, v1

    move/from16 v72, v2

    move/from16 v66, v5

    move/from16 v75, v6

    move/from16 v82, v10

    move-object/from16 v85, v12

    move-object/from16 v68, v15

    move-object/from16 v65, v26

    move/from16 v77, v29

    move-object/from16 v80, v30

    move-object/from16 v81, v31

    move/from16 v83, v33

    move-object/from16 v84, v34

    move-object/from16 v73, v40

    move-object/from16 v2, v54

    move-object/from16 v71, v58

    const/16 v76, 0x0

    const/16 v78, 0x2

    const/16 v79, 0x1

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    move/from16 v31, v9

    move/from16 v33, v11

    move-object v7, v13

    move/from16 v40, v17

    move/from16 v58, v24

    move/from16 v34, v25

    move/from16 v1, v82

    if-ne v5, v1, :cond_31

    move/from16 v8, v23

    move-object/from16 v9, v35

    move-object/from16 v0, v41

    move-object/from16 v3, v42

    move-object/from16 v4, v43

    move-object/from16 v5, v44

    move-object/from16 v6, v45

    move/from16 v14, v53

    goto/16 :goto_23

    :cond_31
    add-int/lit8 v0, v58, 0x1

    move v10, v1

    move-object/from16 v54, v2

    move-object v13, v7

    move-object/from16 v17, v41

    move-object/from16 v18, v42

    move-object/from16 v19, v43

    move-object/from16 v20, v44

    move-object/from16 v21, v45

    move-object/from16 v22, v51

    move/from16 v14, v53

    move-object/from16 v51, v59

    move-object/from16 v53, v65

    move-object/from16 v15, v68

    move-object/from16 v3, v73

    move/from16 v6, v76

    move/from16 v29, v77

    move/from16 v7, v79

    move-object/from16 v8, v80

    move-object/from16 v9, v81

    move/from16 v11, v83

    move-object/from16 v12, v84

    move-object/from16 v55, v85

    move v2, v0

    move-object/from16 v0, v35

    goto/16 :goto_c

    :cond_32
    move/from16 v58, v2

    move-object/from16 v73, v3

    move-object/from16 v80, v8

    move-object/from16 v81, v9

    move v1, v10

    move/from16 v83, v11

    move-object/from16 v84, v12

    move-object v7, v13

    move-object/from16 v68, v15

    move/from16 v77, v29

    move-object/from16 v59, v51

    move-object/from16 v65, v53

    move-object/from16 v2, v54

    move-object/from16 v85, v55

    move-object v9, v0

    move-object/from16 v0, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v51, v22

    move/from16 v8, v23

    :goto_23
    move/from16 v10, v83

    if-eq v1, v10, :cond_34

    add-int/lit8 v11, v1, -0x1

    move-object/from16 v12, v84

    invoke-interface {v12, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    const/16 v13, 0xa

    if-ne v11, v13, :cond_33

    goto :goto_24

    :cond_33
    move-object/from16 v52, v0

    move-object/from16 v11, v80

    move-object/from16 v15, v81

    goto/16 :goto_25

    :cond_34
    move-object/from16 v12, v84

    :goto_24
    iget v11, v7, Landroid/text/StaticLayout;->mLineCount:I

    iget v13, v7, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v11, v13, :cond_35

    nop

    move-object/from16 v11, v80

    const/4 v13, 0x0

    invoke-static {v12, v1, v1, v11, v13}, Landroid/text/MeasuredParagraph;->buildForBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v13

    move-object/from16 v34, v13

    move-object/from16 v15, v81

    invoke-virtual {v15, v2}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-object/from16 v52, v0

    iget v0, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v21, v0

    iget v0, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v22, v0

    iget v0, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v23, v0

    iget v0, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v24, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v39, 0x0

    const/16 v43, 0x0

    const/16 v45, 0x0

    move-object/from16 v17, p0

    move-object/from16 v18, v12

    move/from16 v19, v1

    move/from16 v20, v1

    move/from16 v25, v8

    move/from16 v26, v48

    move/from16 v27, v49

    move-object/from16 v30, v2

    move/from16 v33, v16

    move/from16 v35, v1

    move/from16 v36, p2

    move/from16 v37, p3

    move/from16 v38, v50

    move/from16 v40, v10

    move-object/from16 v41, v68

    move/from16 v42, v77

    move-object/from16 v44, v15

    invoke-direct/range {v17 .. v45}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZIZLandroid/text/MeasuredParagraph;IZZZ[CILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v8

    goto :goto_25

    :cond_35
    move-object/from16 v52, v0

    move-object/from16 v11, v80

    move-object/from16 v15, v81

    :goto_25
    return-void
.end method

.method public getBottomPadding()I
    .locals 1

    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2

    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    mul-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x6

    aget v0, v1, v0

    return v0
.end method

.method public getEllipsisStart(I)I
    .locals 2

    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    mul-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x5

    aget v0, v1, v0

    return v0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getEndHyphenEdit(I)I
    .locals 2

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Landroid/text/StaticLayout;->unpackEndHyphenEdit(I)I

    move-result v0

    return v0
.end method

.method public getHeight(Z)I
    .locals 4
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
        trackingBug = 0x6e40dbfL
    .end annotation

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    iget v2, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-le v1, v2, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    if-ne v1, v0, :cond_0

    const/4 v1, 0x5

    const-string v2, "StaticLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "maxLineHeight should not be -1.  maxLines:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " lineCount:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/text/StaticLayout;->mLineCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    iget v2, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-le v1, v2, :cond_1

    iget v1, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    if-eq v1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/text/Layout;->getHeight()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getIndentAdjust(ILandroid/text/Layout$Alignment;)I
    .locals 4

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v0, :cond_0

    return v1

    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v0, v0, v1

    return v0

    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v0, :cond_2

    return v1

    :cond_2
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v0, v0, v1

    neg-int v0, v0

    return v0

    :cond_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne p2, v0, :cond_6

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-eqz v1, :cond_4

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v0, v1, v2

    :cond_4
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v2, :cond_5

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v1, v2, v3

    :cond_5
    sub-int v2, v0, v1

    shr-int/lit8 v2, v2, 0x1

    return v2

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unhandled alignment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public getLineContainsTab(I)Z
    .locals 3

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    const/4 v2, 0x0

    add-int/2addr v1, v2

    aget v0, v0, v1

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public getLineCount()I
    .locals 1

    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .locals 2

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1

    invoke-virtual {p0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getLineExtra(I)I
    .locals 2

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public getLineForVertical(I)I
    .locals 6

    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    const/4 v1, -0x1

    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    :goto_0
    sub-int v3, v0, v1

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    add-int v3, v0, v1

    shr-int/2addr v3, v4

    iget v5, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    aget v4, v2, v5

    if-le v4, p1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    if-gez v1, :cond_2

    const/4 v3, 0x0

    return v3

    :cond_2
    return v1
.end method

.method public getLineStart(I)I
    .locals 2

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .locals 2

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getStartHyphenEdit(I)I
    .locals 2

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Landroid/text/StaticLayout;->unpackStartHyphenEdit(I)I

    move-result v0

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method
