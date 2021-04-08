.class public Landroid/text/Emoji;
.super Ljava/lang/Object;
.source "Emoji.java"


# static fields
.field public static CANCEL_TAG:I

.field public static COMBINING_ENCLOSING_KEYCAP:I

.field public static VARIATION_SELECTOR_16:I

.field public static ZERO_WIDTH_JOINER:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20e3

    sput v0, Landroid/text/Emoji;->COMBINING_ENCLOSING_KEYCAP:I

    const/16 v0, 0x200d

    sput v0, Landroid/text/Emoji;->ZERO_WIDTH_JOINER:I

    const v0, 0xfe0f

    sput v0, Landroid/text/Emoji;->VARIATION_SELECTOR_16:I

    const v0, 0xe007f

    sput v0, Landroid/text/Emoji;->CANCEL_TAG:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEmoji(I)Z
    .locals 1

    invoke-static {p0}, Landroid/text/Emoji;->isNewEmoji(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x39

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isEmojiModifier(I)Z
    .locals 1

    const/16 v0, 0x3b

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method public static isEmojiModifierBase(I)Z
    .locals 2

    const/4 v0, 0x1

    const v1, 0x1f91d

    if-eq p0, v1, :cond_4

    const v1, 0x1f93c

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x1f9b5

    if-gt v1, p0, :cond_1

    const v1, 0x1f9b6

    if-le p0, v1, :cond_2

    :cond_1
    const v1, 0x1f9b8

    if-gt v1, p0, :cond_3

    const v1, 0x1f9b9

    if-gt p0, v1, :cond_3

    :cond_2
    return v0

    :cond_3
    const/16 v0, 0x3c

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    return v0

    :cond_4
    :goto_0
    return v0
.end method

.method public static isKeycapBase(I)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x23

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2a

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

.method public static isNewEmoji(I)Z
    .locals 3

    const/4 v0, 0x0

    const v1, 0x1f6d5

    if-lt p0, v1, :cond_d

    const v2, 0x1fa95

    if-le p0, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eq p0, v1, :cond_b

    const v1, 0x1f6fa

    if-eq p0, v1, :cond_b

    const v1, 0x1f93f

    if-eq p0, v1, :cond_b

    const v1, 0x1f971

    if-eq p0, v1, :cond_b

    const v1, 0x1f97b

    if-eq p0, v1, :cond_b

    const v1, 0x1f7e0

    if-gt v1, p0, :cond_1

    const v1, 0x1f7eb

    if-le p0, v1, :cond_b

    :cond_1
    const v1, 0x1f90d

    if-gt v1, p0, :cond_2

    const v1, 0x1f90f

    if-le p0, v1, :cond_b

    :cond_2
    const v1, 0x1f9a5

    if-gt v1, p0, :cond_3

    const v1, 0x1f9aa

    if-le p0, v1, :cond_b

    :cond_3
    const v1, 0x1f9ae

    if-gt v1, p0, :cond_4

    const v1, 0x1f9af

    if-le p0, v1, :cond_b

    :cond_4
    const v1, 0x1f9ba

    if-gt v1, p0, :cond_5

    const v1, 0x1f9bf

    if-le p0, v1, :cond_b

    :cond_5
    const v1, 0x1f9c3

    if-gt v1, p0, :cond_6

    const v1, 0x1f9ca

    if-le p0, v1, :cond_b

    :cond_6
    const v1, 0x1f9cd

    if-gt v1, p0, :cond_7

    const v1, 0x1f9cf

    if-le p0, v1, :cond_b

    :cond_7
    const v1, 0x1fa70

    if-gt v1, p0, :cond_8

    const v1, 0x1fa73

    if-le p0, v1, :cond_b

    :cond_8
    const v1, 0x1fa78

    if-gt v1, p0, :cond_9

    const v1, 0x1fa7a

    if-le p0, v1, :cond_b

    :cond_9
    const v1, 0x1fa80

    if-gt v1, p0, :cond_a

    const v1, 0x1fa82

    if-le p0, v1, :cond_b

    :cond_a
    const v1, 0x1fa90

    if-gt v1, p0, :cond_c

    if-gt p0, v2, :cond_c

    :cond_b
    const/4 v0, 0x1

    :cond_c
    return v0

    :cond_d
    :goto_0
    return v0
.end method

.method public static isRegionalIndicatorSymbol(I)Z
    .locals 1

    const v0, 0x1f1e6

    if-gt v0, p0, :cond_0

    const v0, 0x1f1ff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTagSpecChar(I)Z
    .locals 1

    const v0, 0xe0020

    if-gt v0, p0, :cond_0

    const v0, 0xe007e

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
