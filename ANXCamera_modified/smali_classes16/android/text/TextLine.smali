.class public Landroid/text/TextLine;
.super Ljava/lang/Object;
.source "TextLine.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextLine$DecorationInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAB_CHAR:C = '\t'

.field private static final TAB_INCREMENT:I = 0x14

.field private static final sCached:[Landroid/text/TextLine;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
    .end annotation
.end field


# instance fields
.field private final mActivePaint:Landroid/text/TextPaint;

.field private mAddedWidthForJustify:F

.field private final mCharacterStyleSpanSet:Landroid/text/SpanSet;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private mChars:[C

.field private mCharsValid:Z

.field private mComputed:Landroid/text/PrecomputedText;

.field private final mDecorationInfo:Landroid/text/TextLine$DecorationInfo;

.field private final mDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/text/TextLine$DecorationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDir:I

.field private mDirections:Landroid/text/Layout$Directions;

.field private mEllipsisEnd:I

.field private mEllipsisStart:I

.field private mHasTabs:Z

.field private mIsJustifying:Z

.field private mLen:I

.field private final mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/MetricAffectingSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/text/TextPaint;

.field private final mReplacementSpanSpanSet:Landroid/text/SpanSet;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/ReplacementSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mSpanned:Landroid/text/Spanned;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
        trackingBug = 0x6e40dbfL
    .end annotation
.end field

.field private mStart:I

.field private mTabs:Landroid/text/Layout$TabStops;

.field private mText:Ljava/lang/CharSequence;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private final mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/TextLine;

    sput-object v0, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mActivePaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/MetricAffectingSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/ReplacementSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    new-instance v0, Landroid/text/TextLine$DecorationInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/TextLine$DecorationInfo;-><init>(Landroid/text/TextLine$1;)V

    iput-object v0, p0, Landroid/text/TextLine;->mDecorationInfo:Landroid/text/TextLine$DecorationInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    return-void
.end method

.method private adjustEndHyphenEdit(II)I
    .locals 1

    iget v0, p0, Landroid/text/TextLine;->mLen:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    return v0
.end method

.method private adjustStartHyphenEdit(II)I
    .locals 1

    if-lez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    return v0
.end method

.method private charAt(I)C
    .locals 2

    iget-boolean v0, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/text/TextLine;->mChars:[C

    aget-char v0, v0, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    :goto_0
    return v0
.end method

.method private countStretchableSpaces(II)I
    .locals 4

    const/4 v0, 0x0

    move v1, p1

    :goto_0
    if-ge v1, p2, :cond_2

    iget-boolean v2, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/text/TextLine;->mChars:[C

    aget-char v2, v2, v1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    :goto_1
    invoke-direct {p0, v2}, Landroid/text/TextLine;->isStretchableWhitespace(I)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F
    .locals 15

    move-object v12, p0

    iget v0, v12, Landroid/text/TextLine;->mDir:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move/from16 v13, p4

    if-ne v1, v13, :cond_1

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    neg-float v14, v0

    add-float v6, p5, v14

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object/from16 v5, p1

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    return v14

    :cond_1
    const/4 v10, 0x0

    move-object v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p1

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v0

    return v0
.end method

.method private static drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V
    .locals 12

    move-object v6, p0

    iget v0, v6, Landroid/text/TextPaint;->baselineShift:I

    int-to-float v0, v0

    add-float v0, p7, v0

    add-float v7, v0, p3

    invoke-virtual {p0}, Landroid/text/TextPaint;->getColor()I

    move-result v8

    invoke-virtual {p0}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v9

    invoke-virtual {p0}, Landroid/text/TextPaint;->isAntiAlias()Z

    move-result v10

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    move v11, p2

    invoke-virtual {p0, p2}, Landroid/text/TextPaint;->setColor(I)V

    add-float v4, v7, p4

    move-object v0, p1

    move/from16 v1, p5

    move v2, v7

    move/from16 v3, p6

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p0, v9}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0, v8}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p0, v10}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    return-void
.end method

.method private drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v11, p9

    iget-boolean v1, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v1, :cond_0

    sub-int v12, p4, p3

    sub-int v13, p6, p5

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    int-to-float v8, v11

    move-object/from16 v1, p1

    move/from16 v3, p3

    move v4, v12

    move/from16 v5, p5

    move v6, v13

    move/from16 v7, p8

    move/from16 v9, p7

    move-object/from16 v10, p2

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/text/TextLine;->mStart:I

    iget-object v13, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    add-int v14, v1, p3

    add-int v15, v1, p4

    add-int v16, v1, p5

    add-int v17, v1, p6

    int-to-float v2, v11

    move-object/from16 v12, p1

    move/from16 v18, p8

    move/from16 v19, v2

    move/from16 v20, p7

    move-object/from16 v21, p2

    invoke-virtual/range {v12 .. v21}, Landroid/graphics/Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private static equalAttributes(Landroid/text/TextPaint;Landroid/text/TextPaint;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/text/TextPaint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getMaskFilter()Landroid/graphics/MaskFilter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getMaskFilter()Landroid/graphics/MaskFilter;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getShadowLayerRadius()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getShadowLayerRadius()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getShadowLayerDx()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getShadowLayerDx()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getShadowLayerDy()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getShadowLayerDy()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getShadowLayerColor()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getShadowLayerColor()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFlags()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getHinting()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getHinting()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getColor()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getStrokeMiter()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getStrokeMiter()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->isElegantTextHeight()Z

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->isElegantTextHeight()Z

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getTextSkewX()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextSkewX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getWordSpacing()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getWordSpacing()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getStartHyphenEdit()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getStartHyphenEdit()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getEndHyphenEdit()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getEndHyphenEdit()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/text/TextPaint;->bgColor:I

    iget v1, p1, Landroid/text/TextPaint;->bgColor:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/text/TextPaint;->baselineShift:I

    iget v1, p1, Landroid/text/TextPaint;->baselineShift:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/text/TextPaint;->linkColor:I

    iget v1, p1, Landroid/text/TextPaint;->linkColor:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/text/TextPaint;->drawableState:[I

    iget-object v1, p1, Landroid/text/TextPaint;->drawableState:[I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/text/TextPaint;->density:F

    iget v1, p1, Landroid/text/TextPaint;->density:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/text/TextPaint;->underlineColor:I

    iget v1, p1, Landroid/text/TextPaint;->underlineColor:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/text/TextPaint;->underlineThickness:F

    iget v1, p1, Landroid/text/TextPaint;->underlineThickness:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V
    .locals 11

    iget v6, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v7, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v8, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v9, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v10, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-object v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-static/range {v0 .. v5}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    return-void
.end method

.method private extractDecorationInfo(Landroid/text/TextPaint;Landroid/text/TextLine$DecorationInfo;)V
    .locals 2

    invoke-virtual {p1}, Landroid/text/TextPaint;->isStrikeThruText()Z

    move-result v0

    iput-boolean v0, p2, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    iget-boolean v0, p2, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setStrikeThruText(Z)V

    :cond_0
    invoke-virtual {p1}, Landroid/text/TextPaint;->isUnderlineText()Z

    move-result v0

    iput-boolean v0, p2, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    iget-boolean v0, p2, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    :cond_1
    iget v0, p1, Landroid/text/TextPaint;->underlineColor:I

    iput v0, p2, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    iget v0, p1, Landroid/text/TextPaint;->underlineThickness:F

    iput v0, p2, Landroid/text/TextLine$DecorationInfo;->underlineThickness:F

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    return-void
.end method

.method private getOffsetBeforeAfter(IIIZIZ)I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v8, p5

    if-ltz p1, :cond_c

    const/4 v1, 0x0

    if-eqz p6, :cond_0

    iget v2, v0, Landroid/text/TextLine;->mLen:I

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-ne v8, v2, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object v15, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v2, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v15, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iget-boolean v2, v0, Landroid/text/TextLine;->mIsJustifying:Z

    if-eqz v2, :cond_2

    iget v2, v0, Landroid/text/TextLine;->mAddedWidthForJustify:F

    invoke-virtual {v15, v2}, Landroid/text/TextPaint;->setWordSpacing(F)V

    :cond_2
    move/from16 v2, p2

    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    if-nez v3, :cond_3

    move/from16 v3, p3

    move/from16 v16, v2

    move/from16 v17, v3

    goto :goto_6

    :cond_3
    if-eqz p6, :cond_4

    add-int/lit8 v3, v8, 0x1

    goto :goto_1

    :cond_4
    move v3, v8

    :goto_1
    iget v4, v0, Landroid/text/TextLine;->mStart:I

    add-int v4, v4, p3

    :goto_2
    iget-object v5, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iget v6, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v6, v2

    const-class v7, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v5, v6, v4, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v5

    iget v6, v0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr v5, v6

    if-lt v5, v3, :cond_b

    nop

    iget-object v7, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    add-int v9, v6, v2

    add-int/2addr v6, v5

    const-class v10, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v7, v9, v6, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/MetricAffectingSpan;

    iget-object v7, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    const-class v9, Landroid/text/style/MetricAffectingSpan;

    invoke-static {v6, v7, v9}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    check-cast v6, [Landroid/text/style/MetricAffectingSpan;

    array-length v7, v6

    if-lez v7, :cond_8

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_3
    array-length v10, v6

    if-ge v9, v10, :cond_6

    aget-object v10, v6, v9

    instance-of v11, v10, Landroid/text/style/ReplacementSpan;

    if-eqz v11, :cond_5

    move-object v7, v10

    check-cast v7, Landroid/text/style/ReplacementSpan;

    goto :goto_4

    :cond_5
    invoke-virtual {v10, v15}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_6
    if-eqz v7, :cond_8

    if-eqz p6, :cond_7

    move v1, v5

    goto :goto_5

    :cond_7
    move v1, v2

    :goto_5
    return v1

    :cond_8
    move/from16 v16, v2

    move/from16 v17, v5

    :goto_6
    if-eqz p6, :cond_9

    goto :goto_7

    :cond_9
    const/4 v1, 0x2

    :goto_7
    move v7, v1

    iget-boolean v1, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v1, :cond_a

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    sub-int v4, v17, v16

    move-object v1, v15

    move/from16 v3, v16

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v7}, Landroid/text/TextPaint;->getTextRunCursor([CIIZII)I

    move-result v1

    return v1

    :cond_a
    iget-object v10, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v1, v0, Landroid/text/TextLine;->mStart:I

    add-int v11, v1, v16

    add-int v12, v1, v17

    add-int v14, v1, v8

    move-object v9, v15

    move/from16 v13, p4

    move-object v6, v15

    move v15, v7

    invoke-virtual/range {v9 .. v15}, Landroid/text/TextPaint;->getTextRunCursor(Ljava/lang/CharSequence;IIZII)I

    move-result v1

    iget v2, v0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr v1, v2

    return v1

    :cond_b
    move-object v6, v15

    move v2, v5

    goto :goto_2

    :cond_c
    :goto_8
    if-eqz p6, :cond_d

    iget-object v1, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v2, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, v8

    invoke-static {v1, v2}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v1

    iget v2, v0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr v1, v2

    return v1

    :cond_d
    iget-object v1, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v2, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, v8

    invoke-static {v1, v2}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    iget v2, v0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr v1, v2

    return v1
.end method

.method private getRunAdvance(Landroid/text/TextPaint;IIIIZI)F
    .locals 11

    move-object v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v1, :cond_0

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Landroid/text/TextPaint;->getRunAdvance([CIIIIZI)F

    move-result v1

    return v1

    :cond_0
    iget v1, v0, Landroid/text/TextLine;->mStart:I

    iget-object v2, v0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    if-nez v2, :cond_1

    iget-object v4, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    add-int v5, v1, p2

    add-int v6, v1, p3

    add-int v7, v1, p4

    add-int v8, v1, p5

    add-int v10, v1, p7

    move-object v3, p1

    move/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Landroid/text/TextPaint;->getRunAdvance(Ljava/lang/CharSequence;IIIIZI)F

    move-result v2

    return v2

    :cond_1
    add-int v3, p2, v1

    add-int v4, p3, v1

    invoke-virtual {v2, v3, v4}, Landroid/text/PrecomputedText;->getWidth(II)F

    move-result v2

    return v2
.end method

.method private handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v11, p11

    const/4 v7, 0x0

    iget v1, v0, Landroid/text/TextLine;->mStart:I

    add-int v12, v1, p3

    add-int v13, v1, p4

    if-nez p12, :cond_1

    if-eqz p6, :cond_0

    if-eqz p5, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move v14, v7

    goto :goto_4

    :cond_1
    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v11, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    move v8, v6

    if-eqz v8, :cond_3

    iget v1, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v2, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v3, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v4, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v5, v11, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    move v9, v1

    move v10, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    goto :goto_3

    :cond_3
    move v9, v1

    move v10, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    :goto_3
    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v4, v12

    move v5, v13

    move-object/from16 v6, p11

    invoke-virtual/range {v1 .. v6}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v1

    int-to-float v7, v1

    if-eqz v8, :cond_0

    move-object/from16 v1, p11

    move v2, v9

    move v3, v10

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    invoke-static/range {v1 .. v6}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    goto :goto_0

    :goto_4
    if-eqz p6, :cond_5

    if-eqz p5, :cond_4

    sub-float v1, p7, v14

    move v15, v1

    goto :goto_5

    :cond_4
    move/from16 v15, p7

    :goto_5
    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move v4, v12

    move v5, v13

    move v6, v15

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move-object/from16 v10, p2

    invoke-virtual/range {v1 .. v10}, Landroid/text/style/ReplacementSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    goto :goto_6

    :cond_5
    move/from16 v15, p7

    :goto_6
    if-eqz p5, :cond_6

    neg-float v1, v14

    goto :goto_7

    :cond_6
    move v1, v14

    :goto_7
    return v1
.end method

.method private handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .locals 35

    move-object/from16 v15, p0

    move/from16 v14, p1

    move/from16 v13, p2

    move/from16 v12, p3

    move-object/from16 v11, p10

    if-lt v13, v14, :cond_1b

    if-gt v13, v12, :cond_1b

    if-ne v14, v13, :cond_1

    iget-object v0, v15, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v1, v15, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    if-eqz v11, :cond_0

    invoke-static {v11, v0}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    iget-object v0, v15, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x0

    move/from16 v18, v0

    goto :goto_2

    :cond_2
    iget-object v1, v15, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v2, v15, Landroid/text/TextLine;->mStart:I

    add-int v3, v2, v14

    add-int/2addr v2, v12

    invoke-virtual {v1, v0, v3, v2}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    iget-object v0, v15, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v1, v15, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iget v2, v15, Landroid/text/TextLine;->mStart:I

    add-int v3, v2, v14

    add-int/2addr v2, v12

    invoke-virtual {v0, v1, v3, v2}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    iget-object v0, v15, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v0, v0, Landroid/text/SpanSet;->numberOfSpans:I

    if-nez v0, :cond_4

    iget-object v0, v15, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v0, v0, Landroid/text/SpanSet;->numberOfSpans:I

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move/from16 v0, v16

    goto :goto_1

    :cond_4
    :goto_0
    move/from16 v0, v17

    :goto_1
    move/from16 v18, v0

    :goto_2
    if-nez v18, :cond_5

    iget-object v10, v15, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v0, v15, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v10, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    invoke-virtual {v10}, Landroid/text/TextPaint;->getStartHyphenEdit()I

    move-result v0

    invoke-direct {v15, v14, v0}, Landroid/text/TextLine;->adjustStartHyphenEdit(II)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    invoke-virtual {v10}, Landroid/text/TextPaint;->getEndHyphenEdit()I

    move-result v0

    invoke-direct {v15, v12, v0}, Landroid/text/TextLine;->adjustEndHyphenEdit(II)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v17, v10

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p2

    move-object/from16 v15, v16

    invoke-direct/range {v0 .. v15}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;ZILjava/util/ArrayList;)F

    move-result v0

    return v0

    :cond_5
    move/from16 v19, p6

    move/from16 v0, p1

    move/from16 v13, p6

    move v15, v0

    :goto_3
    move/from16 v14, p2

    if-ge v15, v14, :cond_1a

    move-object/from16 v12, p0

    iget-object v11, v12, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v0, v12, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v11, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iget-object v0, v12, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v1, v12, Landroid/text/TextLine;->mStart:I

    add-int v2, v1, v15

    move/from16 v10, p3

    add-int/2addr v1, v10

    invoke-virtual {v0, v2, v1}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v0

    iget v1, v12, Landroid/text/TextLine;->mStart:I

    sub-int v9, v0, v1

    invoke-static {v9, v14}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object/from16 v20, v0

    :goto_4
    iget-object v0, v12, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v0, v0, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v1, v0, :cond_b

    iget-object v0, v12, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v0, v0, Landroid/text/SpanSet;->spanStarts:[I

    aget v0, v0, v1

    iget v2, v12, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, v8

    if-ge v0, v2, :cond_a

    iget-object v0, v12, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v0, v0, Landroid/text/SpanSet;->spanEnds:[I

    aget v0, v0, v1

    iget v2, v12, Landroid/text/TextLine;->mStart:I

    add-int v3, v2, v15

    if-gt v0, v3, :cond_6

    goto :goto_7

    :cond_6
    iget v0, v12, Landroid/text/TextLine;->mEllipsisStart:I

    add-int/2addr v2, v0

    iget-object v0, v12, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v0, v0, Landroid/text/SpanSet;->spanStarts:[I

    aget v0, v0, v1

    if-gt v2, v0, :cond_7

    iget-object v0, v12, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v0, v0, Landroid/text/SpanSet;->spanEnds:[I

    aget v0, v0, v1

    iget v2, v12, Landroid/text/TextLine;->mStart:I

    iget v3, v12, Landroid/text/TextLine;->mEllipsisEnd:I

    add-int/2addr v2, v3

    if-gt v0, v2, :cond_7

    move/from16 v0, v17

    goto :goto_5

    :cond_7
    move/from16 v0, v16

    :goto_5
    iget-object v2, v12, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v2, [Landroid/text/style/MetricAffectingSpan;

    aget-object v2, v2, v1

    instance-of v3, v2, Landroid/text/style/ReplacementSpan;

    if-eqz v3, :cond_9

    if-nez v0, :cond_8

    move-object v3, v2

    check-cast v3, Landroid/text/style/ReplacementSpan;

    goto :goto_6

    :cond_8
    const/4 v3, 0x0

    :goto_6
    move-object/from16 v20, v3

    goto :goto_7

    :cond_9
    invoke-virtual {v2, v11}, Landroid/text/style/MetricAffectingSpan;->updateDrawState(Landroid/text/TextPaint;)V

    :cond_a
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_b
    if-eqz v20, :cond_e

    if-nez p11, :cond_d

    if-ge v8, v14, :cond_c

    goto :goto_8

    :cond_c
    move/from16 v21, v16

    goto :goto_9

    :cond_d
    :goto_8
    move/from16 v21, v17

    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object v2, v11

    move v3, v15

    move v4, v8

    move/from16 v5, p4

    move-object/from16 v6, p5

    move v7, v13

    move/from16 p6, v8

    move/from16 v8, p7

    move/from16 v22, v9

    move/from16 v9, p8

    move/from16 v10, p9

    move-object v14, v11

    move-object/from16 v11, p10

    move-object/from16 v23, v14

    move-object v14, v12

    move/from16 v12, v21

    invoke-direct/range {v0 .. v12}, Landroid/text/TextLine;->handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v0

    add-float/2addr v13, v0

    move/from16 v23, v15

    goto/16 :goto_14

    :cond_e
    move/from16 p6, v8

    move/from16 v22, v9

    move-object/from16 v23, v11

    move-object v14, v12

    iget-object v12, v14, Landroid/text/TextLine;->mActivePaint:Landroid/text/TextPaint;

    iget-object v0, v14, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v12, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    move v0, v15

    move/from16 v1, p6

    iget-object v11, v14, Landroid/text/TextLine;->mDecorationInfo:Landroid/text/TextLine$DecorationInfo;

    iget-object v2, v14, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move v2, v15

    move v10, v0

    move v9, v1

    move/from16 v21, v13

    move v13, v2

    :goto_a
    move/from16 v8, p6

    if-ge v13, v8, :cond_17

    iget-object v0, v14, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v1, v14, Landroid/text/TextLine;->mStart:I

    add-int v2, v1, v13

    add-int v1, v1, v22

    invoke-virtual {v0, v2, v1}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v0

    iget v1, v14, Landroid/text/TextLine;->mStart:I

    sub-int v7, v0, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v24

    iget-object v0, v14, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v1, v23

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    :goto_b
    iget-object v2, v14, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v2, v2, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v0, v2, :cond_11

    iget-object v2, v14, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanStarts:[I

    aget v2, v2, v0

    iget v3, v14, Landroid/text/TextLine;->mStart:I

    add-int v3, v3, v24

    if-ge v2, v3, :cond_10

    iget-object v2, v14, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanEnds:[I

    aget v2, v2, v0

    iget v3, v14, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, v13

    if-gt v2, v3, :cond_f

    goto :goto_c

    :cond_f
    iget-object v2, v14, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v2, [Landroid/text/style/CharacterStyle;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    :cond_10
    :goto_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_11
    invoke-direct {v14, v1, v11}, Landroid/text/TextLine;->extractDecorationInfo(Landroid/text/TextPaint;Landroid/text/TextLine$DecorationInfo;)V

    if-ne v13, v15, :cond_12

    invoke-virtual {v12, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    move/from16 p6, v7

    move/from16 v28, v8

    move/from16 v29, v9

    move/from16 v30, v10

    move-object/from16 v31, v11

    move/from16 v33, v13

    move-object v13, v14

    move/from16 v23, v15

    move-object v15, v1

    move-object v14, v12

    goto/16 :goto_f

    :cond_12
    invoke-static {v1, v12}, Landroid/text/TextLine;->equalAttributes(Landroid/text/TextPaint;Landroid/text/TextPaint;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, v14, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getStartHyphenEdit()I

    move-result v0

    invoke-direct {v14, v10, v0}, Landroid/text/TextLine;->adjustStartHyphenEdit(II)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    iget-object v0, v14, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getEndHyphenEdit()I

    move-result v0

    invoke-direct {v14, v9, v0}, Landroid/text/TextLine;->adjustEndHyphenEdit(II)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    if-nez p11, :cond_14

    move/from16 v6, p2

    move-object v5, v1

    if-ge v9, v6, :cond_13

    goto :goto_d

    :cond_13
    move/from16 v23, v16

    goto :goto_e

    :cond_14
    move/from16 v6, p2

    move-object v5, v1

    :goto_d
    move/from16 v23, v17

    :goto_e
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v25

    iget-object v4, v14, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v10

    move v3, v9

    move-object/from16 v26, v4

    move v4, v15

    move-object/from16 v27, v5

    move/from16 v5, v22

    move/from16 v6, p4

    move/from16 p6, v7

    move-object/from16 v7, p5

    move/from16 v28, v8

    move/from16 v8, v21

    move/from16 v29, v9

    move/from16 v9, p7

    move/from16 v30, v10

    move/from16 v10, p8

    move-object/from16 v31, v11

    move/from16 v11, p9

    move-object/from16 v32, v12

    move-object/from16 v12, p10

    move/from16 v33, v13

    move/from16 v13, v23

    move/from16 v14, v25

    move/from16 v23, v15

    move-object/from16 v15, v26

    invoke-direct/range {v0 .. v15}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;ZILjava/util/ArrayList;)F

    move-result v0

    add-float v21, v21, v0

    move/from16 v10, v33

    move-object/from16 v15, v27

    move-object/from16 v14, v32

    invoke-virtual {v14, v15}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    move-object/from16 v13, p0

    iget-object v0, v13, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_10

    :cond_15
    move/from16 p6, v7

    move/from16 v28, v8

    move/from16 v29, v9

    move/from16 v30, v10

    move-object/from16 v31, v11

    move/from16 v33, v13

    move-object v13, v14

    move/from16 v23, v15

    move-object v15, v1

    move-object v14, v12

    :goto_f
    move/from16 v10, v30

    :goto_10
    move/from16 v9, p6

    invoke-virtual/range {v31 .. v31}, Landroid/text/TextLine$DecorationInfo;->hasDecoration()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual/range {v31 .. v31}, Landroid/text/TextLine$DecorationInfo;->copyInfo()Landroid/text/TextLine$DecorationInfo;

    move-result-object v0

    move/from16 v2, v33

    iput v2, v0, Landroid/text/TextLine$DecorationInfo;->start:I

    move/from16 v1, p6

    iput v1, v0, Landroid/text/TextLine$DecorationInfo;->end:I

    iget-object v3, v13, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_16
    move/from16 v1, p6

    move/from16 v2, v33

    :goto_11
    move v0, v1

    move-object v12, v14

    move/from16 p6, v28

    move-object/from16 v11, v31

    move-object v14, v13

    move v13, v0

    move/from16 v34, v23

    move-object/from16 v23, v15

    move/from16 v15, v34

    goto/16 :goto_a

    :cond_17
    move/from16 v28, v8

    move/from16 v29, v9

    move/from16 v30, v10

    move-object/from16 v31, v11

    move v2, v13

    move-object v13, v14

    move-object v14, v12

    move-object/from16 v34, v23

    move/from16 v23, v15

    move-object/from16 v15, v34

    iget-object v0, v13, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getStartHyphenEdit()I

    move-result v0

    move/from16 v12, v30

    invoke-direct {v13, v12, v0}, Landroid/text/TextLine;->adjustStartHyphenEdit(II)I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    iget-object v0, v13, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getEndHyphenEdit()I

    move-result v0

    move/from16 v11, v29

    invoke-direct {v13, v11, v0}, Landroid/text/TextLine;->adjustEndHyphenEdit(II)I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    if-nez p11, :cond_19

    move/from16 v10, p2

    if-ge v11, v10, :cond_18

    goto :goto_12

    :cond_18
    move/from16 v24, v16

    goto :goto_13

    :cond_19
    move/from16 v10, p2

    :goto_12
    move/from16 v24, v17

    :goto_13
    move/from16 v9, v28

    invoke-static {v11, v9}, Ljava/lang/Math;->min(II)I

    move-result v25

    iget-object v8, v13, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v12

    move v3, v11

    move/from16 v4, v23

    move/from16 v5, v22

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v26, v8

    move/from16 v8, v21

    move/from16 v27, v9

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v28, v11

    move/from16 v11, p9

    move/from16 v29, v12

    move-object/from16 v12, p10

    move/from16 v13, v24

    move-object/from16 v24, v14

    move/from16 v14, v25

    move-object/from16 v25, v15

    move-object/from16 v15, v26

    invoke-direct/range {v0 .. v15}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;ZILjava/util/ArrayList;)F

    move-result v0

    add-float v21, v21, v0

    move/from16 v13, v21

    :goto_14
    move/from16 v15, v22

    goto/16 :goto_3

    :cond_1a
    sub-float v0, v13, v19

    return v0

    :cond_1b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "measureLimit ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") is out of start ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") and limit ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") bounds"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;ZILjava/util/ArrayList;)F
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/TextPaint;",
            "IIIIZ",
            "Landroid/graphics/Canvas;",
            "FIII",
            "Landroid/graphics/Paint$FontMetricsInt;",
            "ZI",
            "Ljava/util/ArrayList<",
            "Landroid/text/TextLine$DecorationInfo;",
            ">;)F"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p10

    move-object/from16 v14, p12

    move-object/from16 v15, p15

    iget-boolean v0, v10, Landroid/text/TextLine;->mIsJustifying:Z

    if-eqz v0, :cond_0

    iget v0, v10, Landroid/text/TextLine;->mAddedWidthForJustify:F

    invoke-virtual {v11, v0}, Landroid/text/TextPaint;->setWordSpacing(F)V

    :cond_0
    if-eqz v14, :cond_1

    invoke-static {v14, v11}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    :cond_1
    move/from16 v9, p3

    if-ne v9, v12, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    const/4 v8, 0x0

    if-nez v15, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual/range {p15 .. p15}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    move v7, v0

    if-nez p13, :cond_5

    if-eqz p7, :cond_4

    iget v0, v11, Landroid/text/TextPaint;->bgColor:I

    if-nez v0, :cond_5

    if-nez v7, :cond_5

    if-eqz p6, :cond_4

    goto :goto_1

    :cond_4
    move v10, v7

    goto :goto_2

    :cond_5
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move v10, v7

    move/from16 v7, p14

    invoke-direct/range {v0 .. v7}, Landroid/text/TextLine;->getRunAdvance(Landroid/text/TextPaint;IIIIZI)F

    move-result v8

    :goto_2
    if-eqz p7, :cond_e

    if-eqz p6, :cond_6

    sub-float v0, p8, v8

    move/from16 v1, p8

    move/from16 v16, v0

    move/from16 v17, v1

    goto :goto_3

    :cond_6
    move/from16 v0, p8

    add-float v1, p8, v8

    move/from16 v16, v0

    move/from16 v17, v1

    :goto_3
    iget v0, v11, Landroid/text/TextPaint;->bgColor:I

    if-eqz v0, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v7

    iget v0, v11, Landroid/text/TextPaint;->bgColor:I

    invoke-virtual {v11, v0}, Landroid/text/TextPaint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v5, p9

    int-to-float v2, v5

    move/from16 v4, p11

    int-to-float v3, v4

    move-object/from16 v0, p7

    move/from16 v1, v16

    move/from16 v18, v3

    move/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {v11, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v11, v6}, Landroid/text/TextPaint;->setColor(I)V

    :cond_7
    iget v0, v11, Landroid/text/TextPaint;->baselineShift:I

    add-int v18, v13, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move v11, v8

    move/from16 v8, v16

    move/from16 v9, v18

    invoke-direct/range {v0 .. v9}, Landroid/text/TextLine;->drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V

    if-eqz v10, :cond_d

    const/4 v0, 0x0

    move v8, v0

    :goto_4
    if-ge v8, v10, :cond_c

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/text/TextLine$DecorationInfo;

    iget v0, v9, Landroid/text/TextLine$DecorationInfo;->start:I

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v18

    iget v0, v9, Landroid/text/TextLine$DecorationInfo;->end:I

    move/from16 v7, p14

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, v18

    invoke-direct/range {v0 .. v7}, Landroid/text/TextLine;->getRunAdvance(Landroid/text/TextPaint;IIIIZI)F

    move-result v20

    move/from16 v7, v19

    invoke-direct/range {v0 .. v7}, Landroid/text/TextLine;->getRunAdvance(Landroid/text/TextPaint;IIIIZI)F

    move-result v21

    if-eqz p6, :cond_8

    sub-float v0, v17, v21

    sub-float v1, v17, v20

    move/from16 v22, v0

    move/from16 v23, v1

    goto :goto_5

    :cond_8
    add-float v0, v16, v20

    add-float v1, v16, v21

    move/from16 v22, v0

    move/from16 v23, v1

    :goto_5
    iget v0, v9, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    if-eqz v0, :cond_9

    iget v2, v9, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getUnderlinePosition()F

    move-result v3

    iget v4, v9, Landroid/text/TextLine$DecorationInfo;->underlineThickness:F

    int-to-float v7, v13

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    move/from16 v5, v22

    move/from16 v6, v23

    invoke-static/range {v0 .. v7}, Landroid/text/TextLine;->drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V

    :cond_9
    iget-boolean v0, v9, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v0, :cond_a

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getUnderlineThickness()F

    move-result v0

    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    move-result v24

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getUnderlinePosition()F

    move-result v3

    int-to-float v6, v13

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    move/from16 v4, v24

    move/from16 v5, v22

    move/from16 v25, v6

    move/from16 v6, v23

    move/from16 v26, v10

    move v10, v7

    move/from16 v7, v25

    invoke-static/range {v0 .. v7}, Landroid/text/TextLine;->drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V

    goto :goto_6

    :cond_a
    move/from16 v26, v10

    move v10, v7

    :goto_6
    iget-boolean v0, v9, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    if-eqz v0, :cond_b

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStrikeThruThickness()F

    move-result v0

    invoke-static {v0, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStrikeThruPosition()F

    move-result v3

    int-to-float v7, v13

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    move v4, v10

    move/from16 v5, v22

    move/from16 v6, v23

    invoke-static/range {v0 .. v7}, Landroid/text/TextLine;->drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V

    :cond_b
    add-int/lit8 v8, v8, 0x1

    move/from16 v10, v26

    goto/16 :goto_4

    :cond_c
    move/from16 v26, v10

    goto :goto_7

    :cond_d
    move/from16 v26, v10

    goto :goto_7

    :cond_e
    move v11, v8

    move/from16 v26, v10

    :goto_7
    if-eqz p6, :cond_f

    neg-float v8, v11

    goto :goto_8

    :cond_f
    move v8, v11

    :goto_8
    return v8
.end method

.method public static isLineEndSpace(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1680

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2000

    if-gt v0, p0, :cond_0

    const/16 v0, 0x200a

    if-gt p0, v0, :cond_0

    const/16 v0, 0x2007

    if-ne p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x205f

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3000

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isStretchableWhitespace(I)Z
    .locals 1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F
    .locals 12

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v0

    return v0
.end method

.method public static obtain()Landroid/text/TextLine;
    .locals 5
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    sget-object v0, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    array-length v1, v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v2, v2, v1

    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    monitor-exit v0

    return-object v2

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroid/text/TextLine;

    invoke-direct {v0}, Landroid/text/TextLine;-><init>()V

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static recycle(Landroid/text/TextLine;)Landroid/text/TextLine;
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    iput-object v0, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iput-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    iput-object v0, p0, Landroid/text/TextLine;->mChars:[C

    iput-object v0, p0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    iget-object v1, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    iget-object v1, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    iget-object v1, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v3, v3, v2

    if-nez v3, :cond_0

    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aput-object p0, v3, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V
    .locals 1

    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    invoke-static {v0, p5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;FIII)V
    .locals 20

    move-object/from16 v10, p0

    const/4 v0, 0x0

    iget-object v1, v10, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1}, Landroid/text/Layout$Directions;->getRunCount()I

    move-result v11

    const/4 v1, 0x0

    move v12, v1

    :goto_0
    if-ge v12, v11, :cond_8

    iget-object v1, v10, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1, v12}, Landroid/text/Layout$Directions;->getRunStart(I)I

    move-result v13

    iget v1, v10, Landroid/text/TextLine;->mLen:I

    if-le v13, v1, :cond_0

    move/from16 v19, v11

    goto/16 :goto_7

    :cond_0
    iget-object v1, v10, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1, v12}, Landroid/text/Layout$Directions;->getRunLength(I)I

    move-result v1

    add-int/2addr v1, v13

    iget v2, v10, Landroid/text/TextLine;->mLen:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v14

    iget-object v1, v10, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1, v12}, Landroid/text/Layout$Directions;->isRunRtl(I)Z

    move-result v15

    move v1, v13

    iget-boolean v2, v10, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v2, :cond_1

    move v2, v13

    goto :goto_1

    :cond_1
    move v2, v14

    :goto_1
    move/from16 v17, v0

    move/from16 v16, v1

    move v9, v2

    :goto_2
    if-gt v9, v14, :cond_7

    if-eq v9, v14, :cond_3

    invoke-direct {v10, v9}, Landroid/text/TextLine;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    goto :goto_3

    :cond_2
    move/from16 v19, v11

    move v11, v9

    goto :goto_6

    :cond_3
    :goto_3
    add-float v5, p2, v17

    add-int/lit8 v0, v11, -0x1

    if-ne v12, v0, :cond_5

    iget v0, v10, Landroid/text/TextLine;->mLen:I

    if-eq v9, v0, :cond_4

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v0, 0x1

    :goto_5
    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    move v3, v9

    move v4, v15

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v19, v11

    move v11, v9

    move/from16 v9, v18

    invoke-direct/range {v0 .. v9}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    move-result v0

    add-float v17, v17, v0

    if-eq v11, v14, :cond_6

    iget v0, v10, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v0

    int-to-float v0, v0

    mul-float v0, v0, v17

    invoke-virtual {v10, v0}, Landroid/text/TextLine;->nextTab(F)F

    move-result v0

    mul-float/2addr v1, v0

    move/from16 v17, v1

    :cond_6
    add-int/lit8 v16, v11, 0x1

    :goto_6
    add-int/lit8 v9, v11, 0x1

    move/from16 v11, v19

    goto :goto_2

    :cond_7
    move/from16 v19, v11

    move v11, v9

    add-int/lit8 v12, v12, 0x1

    move/from16 v0, v17

    move/from16 v11, v19

    goto/16 :goto_0

    :cond_8
    move/from16 v19, v11

    :goto_7
    return-void
.end method

.method getOffsetToLeftRightOf(IZ)I
    .locals 28

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    iget v11, v7, Landroid/text/TextLine;->mLen:I

    iget v0, v7, Landroid/text/TextLine;->mDir:I

    const/4 v12, -0x1

    if-ne v0, v12, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v15, v0

    iget-object v0, v7, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v6, v0, Landroid/text/Layout$Directions;->mDirections:[I

    const/4 v0, 0x0

    move v1, v10

    move v2, v11

    const/16 v16, -0x1

    const/4 v3, 0x0

    const v17, 0x3ffffff

    if-ne v8, v10, :cond_1

    const/4 v4, -0x2

    move v14, v0

    move/from16 v19, v1

    move/from16 v22, v3

    move v12, v4

    move-object v8, v6

    move/from16 v13, v16

    move/from16 v16, v2

    goto/16 :goto_d

    :cond_1
    if-ne v8, v11, :cond_2

    array-length v4, v6

    move v14, v0

    move/from16 v19, v1

    move/from16 v22, v3

    move v12, v4

    move-object v8, v6

    move/from16 v13, v16

    move/from16 v16, v2

    goto/16 :goto_d

    :cond_2
    const/4 v4, 0x0

    :goto_1
    array-length v5, v6

    if-ge v4, v5, :cond_c

    aget v5, v6, v4

    add-int v1, v10, v5

    if-lt v8, v1, :cond_b

    add-int/lit8 v5, v4, 0x1

    aget v5, v6, v5

    and-int v5, v5, v17

    add-int/2addr v5, v1

    if-le v5, v11, :cond_3

    move v5, v11

    :cond_3
    if-ge v8, v5, :cond_a

    add-int/lit8 v2, v4, 0x1

    aget v2, v6, v2

    ushr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v0, v2, 0x3f

    if-ne v8, v1, :cond_9

    add-int/lit8 v2, v8, -0x1

    const/16 v18, 0x0

    move/from16 v13, v18

    :goto_2
    array-length v14, v6

    if-ge v13, v14, :cond_8

    aget v14, v6, v13

    add-int/2addr v14, v10

    if-lt v2, v14, :cond_6

    add-int/lit8 v19, v13, 0x1

    aget v19, v6, v19

    and-int v19, v19, v17

    add-int v12, v14, v19

    if-le v12, v11, :cond_4

    move v12, v11

    :cond_4
    if-ge v2, v12, :cond_5

    add-int/lit8 v19, v13, 0x1

    aget v19, v6, v19

    ushr-int/lit8 v19, v19, 0x1a

    move/from16 v20, v1

    and-int/lit8 v1, v19, 0x3f

    if-ge v1, v0, :cond_7

    move v4, v13

    move v0, v1

    move/from16 v19, v14

    move v5, v12

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    move/from16 v20, v1

    goto :goto_3

    :cond_6
    move/from16 v20, v1

    :cond_7
    :goto_3
    add-int/lit8 v13, v13, 0x2

    move/from16 v1, v20

    const/4 v12, -0x1

    goto :goto_2

    :cond_8
    move/from16 v20, v1

    move/from16 v19, v20

    :goto_4
    move v13, v0

    move v12, v4

    move v14, v5

    move v5, v3

    goto :goto_6

    :cond_9
    move/from16 v20, v1

    move v13, v0

    move v12, v4

    move v14, v5

    move/from16 v19, v20

    move v5, v3

    goto :goto_6

    :cond_a
    move/from16 v20, v1

    move v2, v5

    goto :goto_5

    :cond_b
    move/from16 v20, v1

    :goto_5
    add-int/lit8 v4, v4, 0x2

    move/from16 v1, v20

    const/4 v12, -0x1

    goto :goto_1

    :cond_c
    move v13, v0

    move/from16 v19, v1

    move v14, v2

    move v5, v3

    move v12, v4

    :goto_6
    array-length v0, v6

    if-eq v12, v0, :cond_14

    and-int/lit8 v0, v13, 0x1

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_7

    :cond_d
    const/4 v0, 0x0

    :goto_7
    move v4, v0

    if-ne v9, v4, :cond_e

    const/4 v0, 0x1

    goto :goto_8

    :cond_e
    const/4 v0, 0x0

    :goto_8
    move v3, v0

    if-eqz v3, :cond_f

    move v0, v14

    goto :goto_9

    :cond_f
    move/from16 v0, v19

    :goto_9
    if-ne v8, v0, :cond_11

    if-eq v3, v5, :cond_10

    goto :goto_a

    :cond_10
    move/from16 v22, v5

    move-object v8, v6

    goto :goto_c

    :cond_11
    :goto_a
    move-object/from16 v0, p0

    move v1, v12

    move/from16 v2, v19

    move/from16 v20, v3

    move v3, v14

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v5, p1

    move-object v8, v6

    move/from16 v6, v20

    invoke-direct/range {v0 .. v6}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    move-result v0

    if-eqz v20, :cond_12

    move v1, v14

    goto :goto_b

    :cond_12
    move/from16 v1, v19

    :goto_b
    if-eq v0, v1, :cond_13

    return v0

    :cond_13
    move/from16 v16, v14

    move v14, v13

    move v13, v0

    goto :goto_d

    :cond_14
    move/from16 v22, v5

    move-object v8, v6

    :goto_c
    move/from16 v27, v14

    move v14, v13

    move/from16 v13, v16

    move/from16 v16, v27

    :goto_d
    if-ne v9, v15, :cond_15

    const/4 v0, 0x1

    goto :goto_e

    :cond_15
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_16

    const/4 v1, 0x2

    goto :goto_f

    :cond_16
    const/4 v1, -0x2

    :goto_f
    add-int v6, v12, v1

    if-ltz v6, :cond_1e

    array-length v1, v8

    if-ge v6, v1, :cond_1e

    aget v1, v8, v6

    add-int v20, v10, v1

    add-int/lit8 v1, v6, 0x1

    aget v1, v8, v1

    and-int v1, v1, v17

    add-int v1, v20, v1

    if-le v1, v11, :cond_17

    move v1, v11

    move/from16 v21, v1

    goto :goto_10

    :cond_17
    move/from16 v21, v1

    :goto_10
    add-int/lit8 v1, v6, 0x1

    aget v1, v8, v1

    ushr-int/lit8 v1, v1, 0x1a

    and-int/lit8 v5, v1, 0x3f

    and-int/lit8 v1, v5, 0x1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_11

    :cond_18
    const/4 v1, 0x0

    :goto_11
    move v4, v1

    if-ne v9, v4, :cond_19

    const/4 v1, 0x1

    goto :goto_12

    :cond_19
    const/4 v1, 0x0

    :goto_12
    move/from16 v23, v1

    const/4 v0, -0x1

    if-ne v13, v0, :cond_1c

    nop

    if-eqz v23, :cond_1a

    move/from16 v24, v20

    goto :goto_13

    :cond_1a
    move/from16 v24, v21

    :goto_13
    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v25, v4

    move/from16 v26, v5

    move/from16 v5, v24

    move/from16 v24, v6

    move/from16 v6, v23

    invoke-direct/range {v0 .. v6}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    move-result v13

    if-eqz v23, :cond_1b

    move/from16 v0, v21

    goto :goto_14

    :cond_1b
    move/from16 v0, v20

    :goto_14
    if-ne v13, v0, :cond_22

    move/from16 v12, v24

    move/from16 v14, v26

    goto :goto_d

    :cond_1c
    move/from16 v25, v4

    move/from16 v26, v5

    move/from16 v24, v6

    move/from16 v0, v26

    if-ge v0, v14, :cond_22

    if-eqz v23, :cond_1d

    move/from16 v1, v20

    goto :goto_15

    :cond_1d
    move/from16 v1, v21

    :goto_15
    move v13, v1

    goto :goto_17

    :cond_1e
    move/from16 v24, v6

    const/4 v1, -0x1

    if-ne v13, v1, :cond_20

    if-eqz v0, :cond_1f

    iget v1, v7, Landroid/text/TextLine;->mLen:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    :cond_1f
    move v13, v1

    goto :goto_17

    :cond_20
    if-gt v13, v11, :cond_22

    if-eqz v0, :cond_21

    move v1, v11

    goto :goto_16

    :cond_21
    move v1, v10

    :goto_16
    move v13, v1

    :cond_22
    :goto_17
    return v13
.end method

.method public justify(F)V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    iget v0, p0, Landroid/text/TextLine;->mLen:I

    :goto_0
    const/4 v1, 0x1

    if-lez v0, :cond_0

    iget-object v2, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/text/TextLine;->isLineEndSpace(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Landroid/text/TextLine;->countStretchableSpaces(II)I

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v4}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v4, p1, v2

    int-to-float v5, v3

    div-float/2addr v4, v5

    iput v4, p0, Landroid/text/TextLine;->mAddedWidthForJustify:F

    iput-boolean v1, p0, Landroid/text/TextLine;->mIsJustifying:Z

    return-void
.end method

.method public measure(IZLandroid/graphics/Paint$FontMetricsInt;)F
    .locals 20

    move-object/from16 v6, p0

    move/from16 v7, p1

    iget v0, v6, Landroid/text/TextLine;->mLen:I

    if-gt v7, v0, :cond_11

    if-eqz p2, :cond_0

    add-int/lit8 v0, v7, -0x1

    goto :goto_0

    :cond_0
    move v0, v7

    :goto_0
    move v8, v0

    if-gez v8, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v9, v1

    :goto_1
    iget-object v1, v6, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1}, Landroid/text/Layout$Directions;->getRunCount()I

    move-result v1

    if-ge v9, v1, :cond_10

    iget-object v1, v6, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1, v9}, Landroid/text/Layout$Directions;->getRunStart(I)I

    move-result v10

    iget v1, v6, Landroid/text/TextLine;->mLen:I

    if-le v10, v1, :cond_2

    goto/16 :goto_7

    :cond_2
    iget-object v1, v6, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1, v9}, Landroid/text/Layout$Directions;->getRunLength(I)I

    move-result v1

    add-int/2addr v1, v10

    iget v2, v6, Landroid/text/TextLine;->mLen:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    iget-object v1, v6, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1, v9}, Landroid/text/Layout$Directions;->isRunRtl(I)Z

    move-result v12

    move v1, v10

    iget-boolean v2, v6, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v2, :cond_3

    move v2, v10

    goto :goto_2

    :cond_3
    move v2, v11

    :goto_2
    move v15, v0

    move v14, v1

    move v13, v2

    :goto_3
    if-gt v13, v11, :cond_f

    if-eq v13, v11, :cond_4

    invoke-direct {v6, v13}, Landroid/text/TextLine;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_e

    :cond_4
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt v8, v14, :cond_5

    if-ge v8, v13, :cond_5

    move v2, v1

    goto :goto_4

    :cond_5
    move v2, v0

    :goto_4
    move/from16 v16, v2

    iget v2, v6, Landroid/text/TextLine;->mDir:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    move v2, v1

    goto :goto_5

    :cond_6
    move v2, v0

    :goto_5
    if-ne v2, v12, :cond_7

    move v0, v1

    :cond_7
    move/from16 v17, v0

    if-eqz v16, :cond_8

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    move v1, v14

    move/from16 v2, p1

    move v3, v13

    move v4, v12

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    add-float/2addr v0, v15

    return v0

    :cond_8
    move-object/from16 v0, p0

    move v1, v14

    move v2, v13

    move v3, v13

    move v4, v12

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v5

    if-eqz v17, :cond_9

    move v0, v5

    goto :goto_6

    :cond_9
    neg-float v0, v5

    :goto_6
    add-float/2addr v15, v0

    if-eqz v16, :cond_a

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move v1, v14

    move/from16 v2, p1

    move v3, v13

    move v4, v12

    move/from16 v19, v5

    move-object/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    add-float/2addr v0, v15

    return v0

    :cond_a
    move/from16 v19, v5

    if-eq v13, v11, :cond_d

    if-ne v7, v13, :cond_b

    return v15

    :cond_b
    iget v0, v6, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v0

    int-to-float v0, v0

    mul-float/2addr v0, v15

    invoke-virtual {v6, v0}, Landroid/text/TextLine;->nextTab(F)F

    move-result v0

    mul-float/2addr v1, v0

    if-ne v8, v13, :cond_c

    return v1

    :cond_c
    move v15, v1

    :cond_d
    add-int/lit8 v14, v13, 0x1

    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_f
    add-int/lit8 v9, v9, 0x1

    move v0, v15

    goto/16 :goto_1

    :cond_10
    :goto_7
    return v0

    :cond_11
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "offset("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") should be less than line limit("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Landroid/text/TextLine;->mLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public measureAllOffsets([ZLandroid/graphics/Paint$FontMetricsInt;)[F
    .locals 23
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v6, p0

    iget v0, v6, Landroid/text/TextLine;->mLen:I

    add-int/lit8 v1, v0, 0x1

    new-array v7, v1, [F

    const/4 v8, 0x1

    add-int/2addr v0, v8

    new-array v9, v0, [I

    const/4 v0, 0x0

    :goto_0
    array-length v1, v9

    if-ge v0, v1, :cond_1

    aget-boolean v1, p1, v0

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    goto :goto_1

    :cond_0
    move v1, v0

    :goto_1
    aput v1, v9, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    aget v0, v9, v10

    if-gez v0, :cond_2

    const/4 v0, 0x0

    aput v0, v7, v10

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v11, v1

    :goto_2
    iget-object v1, v6, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1}, Landroid/text/Layout$Directions;->getRunCount()I

    move-result v1

    if-ge v11, v1, :cond_12

    iget-object v1, v6, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1, v11}, Landroid/text/Layout$Directions;->getRunStart(I)I

    move-result v12

    iget v1, v6, Landroid/text/TextLine;->mLen:I

    if-le v12, v1, :cond_3

    goto/16 :goto_c

    :cond_3
    iget-object v1, v6, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1, v11}, Landroid/text/Layout$Directions;->getRunLength(I)I

    move-result v1

    add-int/2addr v1, v12

    iget v2, v6, Landroid/text/TextLine;->mLen:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    iget-object v1, v6, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1, v11}, Landroid/text/Layout$Directions;->isRunRtl(I)Z

    move-result v14

    move v1, v12

    iget-boolean v2, v6, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v2, :cond_4

    move v2, v12

    goto :goto_3

    :cond_4
    move v2, v13

    :goto_3
    move/from16 v16, v0

    move v5, v1

    move v15, v2

    :goto_4
    if-gt v15, v13, :cond_11

    if-eq v15, v13, :cond_5

    invoke-direct {v6, v15}, Landroid/text/TextLine;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_10

    :cond_5
    move/from16 v17, v16

    iget v0, v6, Landroid/text/TextLine;->mDir:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    move v0, v8

    goto :goto_5

    :cond_6
    move v0, v10

    :goto_5
    if-ne v0, v14, :cond_7

    move v0, v8

    goto :goto_6

    :cond_7
    move v0, v10

    :goto_6
    move/from16 v18, v0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v15

    move v3, v15

    move v4, v14

    move/from16 v19, v5

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v4

    if-eqz v18, :cond_8

    move v0, v4

    goto :goto_7

    :cond_8
    neg-float v0, v4

    :goto_7
    add-float v16, v16, v0

    if-eqz v18, :cond_9

    move/from16 v0, v17

    goto :goto_8

    :cond_9
    move/from16 v0, v16

    :goto_8
    move/from16 v20, v0

    if-eqz v18, :cond_a

    move-object/from16 v5, p2

    goto :goto_9

    :cond_a
    const/4 v0, 0x0

    move-object v5, v0

    :goto_9
    move/from16 v0, v19

    move v3, v0

    :goto_a
    if-gt v3, v15, :cond_c

    iget v0, v6, Landroid/text/TextLine;->mLen:I

    if-gt v3, v0, :cond_c

    aget v0, v9, v3

    move/from16 v2, v19

    if-lt v0, v2, :cond_b

    aget v0, v9, v3

    if-ge v0, v15, :cond_b

    nop

    move-object/from16 v0, p0

    move v1, v2

    move/from16 v19, v2

    move v2, v3

    move/from16 v21, v3

    move v3, v15

    move/from16 v22, v4

    move v4, v14

    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    add-float v0, v20, v0

    aput v0, v7, v21

    goto :goto_b

    :cond_b
    move/from16 v19, v2

    move/from16 v21, v3

    move/from16 v22, v4

    :goto_b
    add-int/lit8 v3, v21, 0x1

    move/from16 v4, v22

    goto :goto_a

    :cond_c
    move/from16 v21, v3

    move/from16 v22, v4

    if-eq v15, v13, :cond_f

    aget v0, v9, v15

    if-ne v0, v15, :cond_d

    aput v16, v7, v15

    :cond_d
    iget v0, v6, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v0

    int-to-float v0, v0

    mul-float v0, v0, v16

    invoke-virtual {v6, v0}, Landroid/text/TextLine;->nextTab(F)F

    move-result v0

    mul-float/2addr v1, v0

    add-int/lit8 v0, v15, 0x1

    aget v0, v9, v0

    if-ne v0, v15, :cond_e

    add-int/lit8 v0, v15, 0x1

    aput v1, v7, v0

    :cond_e
    move/from16 v16, v1

    :cond_f
    add-int/lit8 v0, v15, 0x1

    move v5, v0

    :cond_10
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_4

    :cond_11
    move/from16 v19, v5

    add-int/lit8 v11, v11, 0x1

    move/from16 v0, v16

    goto/16 :goto_2

    :cond_12
    :goto_c
    iget v1, v6, Landroid/text/TextLine;->mLen:I

    aget v2, v9, v1

    if-ne v2, v1, :cond_13

    aput v0, v7, v1

    :cond_13
    return-object v7
.end method

.method public metrics(Landroid/graphics/Paint$FontMetricsInt;)F
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    iget v0, p0, Landroid/text/TextLine;->mLen:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    return v0
.end method

.method nextTab(F)F
    .locals 1

    iget-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {p1, v0}, Landroid/text/Layout$TabStops;->nextDefaultStop(FF)F

    move-result v0

    return v0
.end method

.method public set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;II)V
    .locals 18
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p9

    move/from16 v6, p10

    iput-object v1, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    iput-object v2, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iput v3, v0, Landroid/text/TextLine;->mStart:I

    sub-int v7, v4, v3

    iput v7, v0, Landroid/text/TextLine;->mLen:I

    move/from16 v7, p5

    iput v7, v0, Landroid/text/TextLine;->mDir:I

    move-object/from16 v8, p6

    iput-object v8, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v9, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    if-eqz v9, :cond_a

    move/from16 v9, p7

    iput-boolean v9, v0, Landroid/text/TextLine;->mHasTabs:Z

    const/4 v10, 0x0

    iput-object v10, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    const/4 v11, 0x0

    instance-of v12, v2, Landroid/text/Spanned;

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v12, :cond_1

    move-object v12, v2

    check-cast v12, Landroid/text/Spanned;

    iput-object v12, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iget-object v12, v0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    iget-object v15, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    invoke-virtual {v12, v15, v3, v4}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    iget-object v12, v0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    iget v12, v12, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez v12, :cond_0

    move v12, v13

    goto :goto_0

    :cond_0
    move v12, v14

    :goto_0
    move v11, v12

    :cond_1
    iput-object v10, v0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    instance-of v12, v2, Landroid/text/PrecomputedText;

    if-eqz v12, :cond_2

    move-object v12, v2

    check-cast v12, Landroid/text/PrecomputedText;

    iput-object v12, v0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    iget-object v12, v0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    invoke-virtual {v12}, Landroid/text/PrecomputedText;->getParams()Landroid/text/PrecomputedText$Params;

    move-result-object v12

    invoke-virtual {v12}, Landroid/text/PrecomputedText$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroid/text/TextPaint;->equalsForTextMeasurement(Landroid/graphics/Paint;)Z

    move-result v12

    if-nez v12, :cond_2

    iput-object v10, v0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    :cond_2
    iput-boolean v11, v0, Landroid/text/TextLine;->mCharsValid:Z

    iget-boolean v10, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v10, :cond_7

    iget-object v10, v0, Landroid/text/TextLine;->mChars:[C

    if-eqz v10, :cond_3

    array-length v10, v10

    iget v12, v0, Landroid/text/TextLine;->mLen:I

    if-ge v10, v12, :cond_4

    :cond_3
    iget v10, v0, Landroid/text/TextLine;->mLen:I

    invoke-static {v10}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v10

    iput-object v10, v0, Landroid/text/TextLine;->mChars:[C

    :cond_4
    iget-object v10, v0, Landroid/text/TextLine;->mChars:[C

    invoke-static {v2, v3, v4, v10, v14}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    if-eqz v11, :cond_7

    iget-object v10, v0, Landroid/text/TextLine;->mChars:[C

    move/from16 v12, p3

    :goto_1
    if-ge v12, v4, :cond_7

    iget-object v15, v0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v15, v12, v4}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v15

    iget-object v14, v0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v14, v12, v15}, Landroid/text/SpanSet;->hasSpansIntersecting(II)Z

    move-result v14

    if-eqz v14, :cond_6

    sub-int v14, v12, v3

    if-ge v14, v6, :cond_5

    sub-int v14, v15, v3

    if-gt v14, v5, :cond_6

    :cond_5
    sub-int v14, v12, v3

    const v16, 0xfffc

    aput-char v16, v10, v14

    sub-int v14, v12, v3

    add-int/2addr v14, v13

    sub-int v13, v15, v3

    :goto_2
    if-ge v14, v13, :cond_6

    const v17, 0xfeff

    aput-char v17, v10, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_6
    move v12, v15

    const/4 v13, 0x1

    const/4 v14, 0x0

    goto :goto_1

    :cond_7
    move-object/from16 v10, p8

    iput-object v10, v0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    const/4 v12, 0x0

    iput v12, v0, Landroid/text/TextLine;->mAddedWidthForJustify:F

    const/4 v12, 0x0

    iput-boolean v12, v0, Landroid/text/TextLine;->mIsJustifying:Z

    if-eq v5, v6, :cond_8

    move v13, v5

    goto :goto_3

    :cond_8
    move v13, v12

    :goto_3
    iput v13, v0, Landroid/text/TextLine;->mEllipsisStart:I

    if-eq v5, v6, :cond_9

    move v12, v6

    :cond_9
    iput v12, v0, Landroid/text/TextLine;->mEllipsisEnd:I

    return-void

    :cond_a
    move/from16 v9, p7

    move-object/from16 v10, p8

    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Directions cannot be null"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11
.end method
