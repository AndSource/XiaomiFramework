.class public Landroid/app/admin/PasswordMetrics;
.super Ljava/lang/Object;
.source "PasswordMetrics.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;,
        Landroid/app/admin/PasswordMetrics$CharacterCatagory;
    }
.end annotation


# static fields
.field private static final CHAR_DIGIT:I = 0x2

.field private static final CHAR_LOWER_CASE:I = 0x0

.field private static final CHAR_SYMBOL:I = 0x3

.field private static final CHAR_UPPER_CASE:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/PasswordMetrics;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_ALLOWED_SEQUENCE:I = 0x3


# instance fields
.field public length:I

.field public letters:I

.field public lowerCase:I

.field public nonLetter:I

.field public numeric:I

.field public quality:I

.field public symbols:I

.field public upperCase:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/admin/PasswordMetrics$1;

    invoke-direct {v0}, Landroid/app/admin/PasswordMetrics$1;-><init>()V

    sput-object v0, Landroid/app/admin/PasswordMetrics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->quality:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->quality:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    iput p1, p0, Landroid/app/admin/PasswordMetrics;->quality:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->quality:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    iput p1, p0, Landroid/app/admin/PasswordMetrics;->quality:I

    iput p2, p0, Landroid/app/admin/PasswordMetrics;->length:I

    return-void
.end method

.method public constructor <init>(IIIIIIII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/admin/PasswordMetrics;-><init>(II)V

    iput p3, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    iput p4, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iput p5, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iput p6, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    iput p7, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    iput p8, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->quality:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->quality:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/admin/PasswordMetrics$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/admin/PasswordMetrics;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static categoryChar(C)I
    .locals 1

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/16 v0, 0x30

    if-gt v0, p0, :cond_2

    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    const/4 v0, 0x3

    return v0
.end method

.method public static complexityLevelToMinQuality(I)I
    .locals 2

    nop

    invoke-static {p0}, Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;->access$000(I)Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;->access$100(Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;)[Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, Landroid/app/admin/PasswordMetrics;->quality:I

    return v0
.end method

.method public static computeForCredential(I[B)Landroid/app/admin/PasswordMetrics;
    .locals 2

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string v0, "credential cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->computeForPassword([B)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    new-instance v0, Landroid/app/admin/PasswordMetrics;

    const/high16 v1, 0x10000

    invoke-direct {v0, v1}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    return-object v0

    :cond_1
    new-instance v0, Landroid/app/admin/PasswordMetrics;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    return-object v0
.end method

.method public static computeForPassword([B)Landroid/app/admin/PasswordMetrics;
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v15, v0

    array-length v7, v0

    const/4 v8, 0x0

    move/from16 v16, v5

    move v5, v2

    move v2, v1

    move v1, v8

    :goto_0
    const/4 v9, 0x3

    const/4 v10, 0x1

    if-ge v1, v7, :cond_4

    aget-byte v11, v0, v1

    int-to-char v12, v11

    invoke-static {v12}, Landroid/app/admin/PasswordMetrics;->categoryChar(C)I

    move-result v12

    if-eqz v12, :cond_3

    if-eq v12, v10, :cond_2

    const/4 v10, 0x2

    if-eq v12, v10, :cond_1

    if-eq v12, v9, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    nop

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-lez v4, :cond_5

    move v1, v10

    goto :goto_2

    :cond_5
    move v1, v8

    :goto_2
    add-int v7, v2, v16

    if-lez v7, :cond_6

    move v8, v10

    :cond_6
    move/from16 v17, v8

    if-eqz v17, :cond_7

    if-eqz v1, :cond_7

    const/high16 v7, 0x50000

    move/from16 v18, v7

    goto :goto_4

    :cond_7
    if-eqz v17, :cond_8

    const/high16 v7, 0x40000

    move/from16 v18, v7

    goto :goto_4

    :cond_8
    if-eqz v1, :cond_a

    invoke-static/range {p0 .. p0}, Landroid/app/admin/PasswordMetrics;->maxLengthSequence([B)I

    move-result v7

    if-le v7, v9, :cond_9

    const/high16 v7, 0x20000

    goto :goto_3

    :cond_9
    const/high16 v7, 0x30000

    :goto_3
    move/from16 v18, v7

    goto :goto_4

    :cond_a
    const/4 v7, 0x0

    move/from16 v18, v7

    :goto_4
    new-instance v19, Landroid/app/admin/PasswordMetrics;

    move-object/from16 v7, v19

    move/from16 v8, v18

    move v9, v15

    move v10, v2

    move v11, v5

    move v12, v3

    move v13, v4

    move/from16 v14, v16

    move/from16 v20, v15

    move v15, v6

    invoke-direct/range {v7 .. v15}, Landroid/app/admin/PasswordMetrics;-><init>(IIIIIIII)V

    return-object v19
.end method

.method public static getActualRequiredQuality(IZZ)I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/high16 v0, 0x60000

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const/high16 v0, 0x50000

    return v0

    :cond_1
    if-eqz p2, :cond_2

    const/high16 v0, 0x40000

    return v0

    :cond_2
    if-eqz p1, :cond_3

    const/high16 v0, 0x20000

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public static getMinimumMetrics(IIIZZ)Landroid/app/admin/PasswordMetrics;
    .locals 2

    nop

    invoke-static {p2, p3, p4}, Landroid/app/admin/PasswordMetrics;->getActualRequiredQuality(IZZ)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p0, v0}, Landroid/app/admin/PasswordMetrics;->getTargetQualityMetrics(II)Landroid/app/admin/PasswordMetrics;

    move-result-object v1

    return-object v1
.end method

.method public static getTargetQualityMetrics(II)Landroid/app/admin/PasswordMetrics;
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    nop

    invoke-static {p0}, Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;->access$000(I)Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;->access$100(Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;)[Landroid/app/admin/PasswordMetrics;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    iget v6, v5, Landroid/app/admin/PasswordMetrics;->quality:I

    if-ne p1, v6, :cond_0

    return-object v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;->access$100(Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;)[Landroid/app/admin/PasswordMetrics;

    move-result-object v1

    aget-object v1, v1, v3

    return-object v1
.end method

.method private static maxDiffCategory(I)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v0, 0xa

    return v0

    :cond_1
    return v0
.end method

.method public static maxLengthSequence([B)I
    .locals 12

    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    aget-byte v0, p0, v1

    int-to-char v0, v0

    invoke-static {v0}, Landroid/app/admin/PasswordMetrics;->categoryChar(C)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_0
    array-length v7, p0

    if-ge v6, v7, :cond_4

    aget-byte v7, p0, v6

    int-to-char v7, v7

    invoke-static {v7}, Landroid/app/admin/PasswordMetrics;->categoryChar(C)I

    move-result v8

    sub-int v9, v7, v0

    if-ne v8, v1, :cond_3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static {v1}, Landroid/app/admin/PasswordMetrics;->maxDiffCategory(I)I

    move-result v11

    if-le v10, v11, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    if-eq v9, v2, :cond_2

    sub-int v10, v6, v5

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v5, v6, -0x1

    :cond_2
    move v2, v9

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    sub-int v10, v6, v5

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v5, v6

    const/4 v3, 0x0

    move v1, v8

    :goto_2
    move v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    array-length v6, p0

    sub-int/2addr v6, v5

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    return v4
.end method

.method public static sanitizeComplexityLevel(I)I
    .locals 1

    invoke-static {p0}, Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;->access$000(I)Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;->access$200(Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;)I

    move-result v0

    return v0
.end method

.method private varargs satisfiesBucket([Landroid/app/admin/PasswordMetrics;)Z
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    iget v4, p0, Landroid/app/admin/PasswordMetrics;->quality:I

    iget v5, v3, Landroid/app/admin/PasswordMetrics;->quality:I

    if-ne v4, v5, :cond_1

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    iget v2, v3, Landroid/app/admin/PasswordMetrics;->length:I

    if-lt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public determineComplexity()I
    .locals 6

    invoke-static {}, Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;->access$400()[Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;->access$100(Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;)[Landroid/app/admin/PasswordMetrics;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/app/admin/PasswordMetrics;->satisfiesBucket([Landroid/app/admin/PasswordMetrics;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;->access$200(Landroid/app/admin/PasswordMetrics$PasswordComplexityBucket;)I

    move-result v0

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/app/admin/PasswordMetrics;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/app/admin/PasswordMetrics;

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->quality:I

    iget v3, v0, Landroid/app/admin/PasswordMetrics;->quality:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->length:I

    iget v3, v0, Landroid/app/admin/PasswordMetrics;->length:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    iget v3, v0, Landroid/app/admin/PasswordMetrics;->letters:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iget v3, v0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iget v3, v0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    iget v3, v0, Landroid/app/admin/PasswordMetrics;->numeric:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    iget v3, v0, Landroid/app/admin/PasswordMetrics;->symbols:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    iget v3, v0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isDefault()Z
    .locals 1

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->quality:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->quality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
