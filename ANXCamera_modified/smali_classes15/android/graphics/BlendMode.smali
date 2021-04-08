.class public final enum Landroid/graphics/BlendMode;
.super Ljava/lang/Enum;
.source "BlendMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/BlendMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/BlendMode;

.field private static final BLEND_MODES:[Landroid/graphics/BlendMode;

.field public static final enum CLEAR:Landroid/graphics/BlendMode;

.field public static final enum COLOR:Landroid/graphics/BlendMode;

.field public static final enum COLOR_BURN:Landroid/graphics/BlendMode;

.field public static final enum COLOR_DODGE:Landroid/graphics/BlendMode;

.field public static final enum DARKEN:Landroid/graphics/BlendMode;

.field public static final enum DIFFERENCE:Landroid/graphics/BlendMode;

.field public static final enum DST:Landroid/graphics/BlendMode;

.field public static final enum DST_ATOP:Landroid/graphics/BlendMode;

.field public static final enum DST_IN:Landroid/graphics/BlendMode;

.field public static final enum DST_OUT:Landroid/graphics/BlendMode;

.field public static final enum DST_OVER:Landroid/graphics/BlendMode;

.field public static final enum EXCLUSION:Landroid/graphics/BlendMode;

.field public static final enum HARD_LIGHT:Landroid/graphics/BlendMode;

.field public static final enum HUE:Landroid/graphics/BlendMode;

.field public static final enum LIGHTEN:Landroid/graphics/BlendMode;

.field public static final enum LUMINOSITY:Landroid/graphics/BlendMode;

.field public static final enum MODULATE:Landroid/graphics/BlendMode;

.field public static final enum MULTIPLY:Landroid/graphics/BlendMode;

.field public static final enum OVERLAY:Landroid/graphics/BlendMode;

.field public static final enum PLUS:Landroid/graphics/BlendMode;

.field public static final enum SATURATION:Landroid/graphics/BlendMode;

.field public static final enum SCREEN:Landroid/graphics/BlendMode;

.field public static final enum SOFT_LIGHT:Landroid/graphics/BlendMode;

.field public static final enum SRC:Landroid/graphics/BlendMode;

.field public static final enum SRC_ATOP:Landroid/graphics/BlendMode;

.field public static final enum SRC_IN:Landroid/graphics/BlendMode;

.field public static final enum SRC_OUT:Landroid/graphics/BlendMode;

.field public static final enum SRC_OVER:Landroid/graphics/BlendMode;

.field public static final enum XOR:Landroid/graphics/BlendMode;


# instance fields
.field private final mXfermode:Landroid/graphics/Xfermode;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Landroid/graphics/BlendMode;

    const/4 v1, 0x0

    const-string v2, "CLEAR"

    invoke-direct {v0, v2, v1, v1}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    new-instance v0, Landroid/graphics/BlendMode;

    const/4 v2, 0x1

    const-string v3, "SRC"

    invoke-direct {v0, v3, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->SRC:Landroid/graphics/BlendMode;

    new-instance v0, Landroid/graphics/BlendMode;

    const/4 v3, 0x2

    const-string v4, "DST"

    invoke-direct {v0, v4, v3, v3}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->DST:Landroid/graphics/BlendMode;

    new-instance v0, Landroid/graphics/BlendMode;

    const/4 v4, 0x3

    const-string v5, "SRC_OVER"

    invoke-direct {v0, v5, v4, v4}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    new-instance v0, Landroid/graphics/BlendMode;

    const/4 v5, 0x4

    const-string v6, "DST_OVER"

    invoke-direct {v0, v6, v5, v5}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->DST_OVER:Landroid/graphics/BlendMode;

    new-instance v0, Landroid/graphics/BlendMode;

    const/4 v6, 0x5

    const-string v7, "SRC_IN"

    invoke-direct {v0, v7, v6, v6}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    new-instance v0, Landroid/graphics/BlendMode;

    const/4 v7, 0x6

    const-string v8, "DST_IN"

    invoke-direct {v0, v8, v7, v7}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->DST_IN:Landroid/graphics/BlendMode;

    new-instance v0, Landroid/graphics/BlendMode;

    const/4 v8, 0x7

    const-string v9, "SRC_OUT"

    invoke-direct {v0, v9, v8, v8}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->SRC_OUT:Landroid/graphics/BlendMode;

    new-instance v0, Landroid/graphics/BlendMode;

    const/16 v9, 0x8

    const-string v10, "DST_OUT"

    invoke-direct {v0, v10, v9, v9}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->DST_OUT:Landroid/graphics/BlendMode;

    new-instance v0, Landroid/graphics/BlendMode;

    const/16 v10, 0x9

    const-string v11, "SRC_ATOP"

    invoke-direct {v0, v11, v10, v10}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    new-instance v0, Landroid/graphics/BlendMode;

    const/16 v11, 0xa

    const-string v12, "DST_ATOP"

    invoke-direct {v0, v12, v11, v11}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->DST_ATOP:Landroid/graphics/BlendMode;

    new-instance v0, Landroid/graphics/BlendMode;

    const/16 v12, 0xb

    const-string v13, "XOR"

    invoke-direct {v0, v13, v12, v12}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->XOR:Landroid/graphics/BlendMode;

    new-instance v0, Landroid/graphics/BlendMode;

    const/16 v13, 0xc

    const-string v14, "PLUS"

    invoke-direct {v0, v14, v13, v13}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->PLUS:Landroid/graphics/BlendMode;

    new-instance v0, Landroid/graphics/BlendMode;

    const/16 v14, 0xd

    const-string v15, "MODULATE"

    invoke-direct {v0, v15, v14, v14}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->MODULATE:Landroid/graphics/BlendMode;

    new-instance v0, Landroid/graphics/BlendMode;

    const/16 v15, 0xe

    const-string v14, "SCREEN"

    invoke-direct {v0, v14, v15, v15}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->SCREEN:Landroid/graphics/BlendMode;

    new-instance v0, Landroid/graphics/BlendMode;

    const-string v14, "OVERLAY"

    const/16 v15, 0xf

    const/16 v13, 0xf

    invoke-direct {v0, v14, v15, v13}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->OVERLAY:Landroid/graphics/BlendMode;

    new-instance v0, Landroid/graphics/BlendMode;

    const-string v13, "DARKEN"

    const/16 v14, 0x10

    const/16 v15, 0x10

    invoke-direct {v0, v13, v14, v15}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->DARKEN:Landroid/graphics/BlendMode;

    new-instance v0, Landroid/graphics/BlendMode;

    const-string v13, "LIGHTEN"

    const/16 v14, 0x11

    const/16 v15, 0x11

    invoke-direct {v0, v13, v14, v15}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->LIGHTEN:Landroid/graphics/BlendMode;

    new-instance v0, Landroid/graphics/BlendMode;

    const-string v13, "COLOR_DODGE"

    const/16 v14, 0x12

    const/16 v15, 0x12

    invoke-direct {v0, v13, v14, v15}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->COLOR_DODGE:Landroid/graphics/BlendMode;

    new-instance v0, Landroid/graphics/BlendMode;

    const-string v13, "COLOR_BURN"

    const/16 v14, 0x13

    const/16 v15, 0x13

    invoke-direct {v0, v13, v14, v15}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->COLOR_BURN:Landroid/graphics/BlendMode;

    new-instance v0, Landroid/graphics/BlendMode;

    const-string v13, "HARD_LIGHT"

    const/16 v14, 0x14

    const/16 v15, 0x14

    invoke-direct {v0, v13, v14, v15}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->HARD_LIGHT:Landroid/graphics/BlendMode;

    new-instance v0, Landroid/graphics/BlendMode;

    const-string v13, "SOFT_LIGHT"

    const/16 v14, 0x15

    const/16 v15, 0x15

    invoke-direct {v0, v13, v14, v15}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->SOFT_LIGHT:Landroid/graphics/BlendMode;

    new-instance v0, Landroid/graphics/BlendMode;

    const-string v13, "DIFFERENCE"

    const/16 v14, 0x16

    const/16 v15, 0x16

    invoke-direct {v0, v13, v14, v15}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->DIFFERENCE:Landroid/graphics/BlendMode;

    new-instance v0, Landroid/graphics/BlendMode;

    const-string v13, "EXCLUSION"

    const/16 v14, 0x17

    const/16 v15, 0x17

    invoke-direct {v0, v13, v14, v15}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->EXCLUSION:Landroid/graphics/BlendMode;

    new-instance v0, Landroid/graphics/BlendMode;

    const-string v13, "MULTIPLY"

    const/16 v14, 0x18

    const/16 v15, 0x18

    invoke-direct {v0, v13, v14, v15}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->MULTIPLY:Landroid/graphics/BlendMode;

    new-instance v0, Landroid/graphics/BlendMode;

    const-string v13, "HUE"

    const/16 v14, 0x19

    const/16 v15, 0x19

    invoke-direct {v0, v13, v14, v15}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->HUE:Landroid/graphics/BlendMode;

    new-instance v0, Landroid/graphics/BlendMode;

    const-string v13, "SATURATION"

    const/16 v14, 0x1a

    const/16 v15, 0x1a

    invoke-direct {v0, v13, v14, v15}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->SATURATION:Landroid/graphics/BlendMode;

    new-instance v0, Landroid/graphics/BlendMode;

    const-string v13, "COLOR"

    const/16 v14, 0x1b

    const/16 v15, 0x1b

    invoke-direct {v0, v13, v14, v15}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->COLOR:Landroid/graphics/BlendMode;

    new-instance v0, Landroid/graphics/BlendMode;

    const-string v13, "LUMINOSITY"

    const/16 v14, 0x1c

    const/16 v15, 0x1c

    invoke-direct {v0, v13, v14, v15}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->LUMINOSITY:Landroid/graphics/BlendMode;

    const/16 v0, 0x1d

    new-array v0, v0, [Landroid/graphics/BlendMode;

    sget-object v13, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    aput-object v13, v0, v1

    sget-object v1, Landroid/graphics/BlendMode;->SRC:Landroid/graphics/BlendMode;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/BlendMode;->DST:Landroid/graphics/BlendMode;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    aput-object v1, v0, v4

    sget-object v1, Landroid/graphics/BlendMode;->DST_OVER:Landroid/graphics/BlendMode;

    aput-object v1, v0, v5

    sget-object v1, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    aput-object v1, v0, v6

    sget-object v1, Landroid/graphics/BlendMode;->DST_IN:Landroid/graphics/BlendMode;

    aput-object v1, v0, v7

    sget-object v1, Landroid/graphics/BlendMode;->SRC_OUT:Landroid/graphics/BlendMode;

    aput-object v1, v0, v8

    sget-object v1, Landroid/graphics/BlendMode;->DST_OUT:Landroid/graphics/BlendMode;

    aput-object v1, v0, v9

    sget-object v1, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    aput-object v1, v0, v10

    sget-object v1, Landroid/graphics/BlendMode;->DST_ATOP:Landroid/graphics/BlendMode;

    aput-object v1, v0, v11

    sget-object v1, Landroid/graphics/BlendMode;->XOR:Landroid/graphics/BlendMode;

    aput-object v1, v0, v12

    sget-object v1, Landroid/graphics/BlendMode;->PLUS:Landroid/graphics/BlendMode;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/BlendMode;->MODULATE:Landroid/graphics/BlendMode;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/BlendMode;->SCREEN:Landroid/graphics/BlendMode;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/BlendMode;->OVERLAY:Landroid/graphics/BlendMode;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/BlendMode;->DARKEN:Landroid/graphics/BlendMode;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/BlendMode;->LIGHTEN:Landroid/graphics/BlendMode;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/BlendMode;->COLOR_DODGE:Landroid/graphics/BlendMode;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/BlendMode;->COLOR_BURN:Landroid/graphics/BlendMode;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/BlendMode;->HARD_LIGHT:Landroid/graphics/BlendMode;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/BlendMode;->SOFT_LIGHT:Landroid/graphics/BlendMode;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/BlendMode;->DIFFERENCE:Landroid/graphics/BlendMode;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/BlendMode;->EXCLUSION:Landroid/graphics/BlendMode;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/BlendMode;->MULTIPLY:Landroid/graphics/BlendMode;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/BlendMode;->HUE:Landroid/graphics/BlendMode;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/BlendMode;->SATURATION:Landroid/graphics/BlendMode;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/BlendMode;->COLOR:Landroid/graphics/BlendMode;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/BlendMode;->LUMINOSITY:Landroid/graphics/BlendMode;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sput-object v0, Landroid/graphics/BlendMode;->$VALUES:[Landroid/graphics/BlendMode;

    invoke-static {}, Landroid/graphics/BlendMode;->values()[Landroid/graphics/BlendMode;

    move-result-object v0

    sput-object v0, Landroid/graphics/BlendMode;->BLEND_MODES:[Landroid/graphics/BlendMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance p1, Landroid/graphics/Xfermode;

    invoke-direct {p1}, Landroid/graphics/Xfermode;-><init>()V

    iput-object p1, p0, Landroid/graphics/BlendMode;->mXfermode:Landroid/graphics/Xfermode;

    iget-object p1, p0, Landroid/graphics/BlendMode;->mXfermode:Landroid/graphics/Xfermode;

    iput p3, p1, Landroid/graphics/Xfermode;->porterDuffMode:I

    return-void
.end method

.method public static blendModeToPorterDuffMode(Landroid/graphics/BlendMode;)Landroid/graphics/PorterDuff$Mode;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget-object v1, Landroid/graphics/BlendMode$1;->$SwitchMap$android$graphics$BlendMode:[I

    invoke-virtual {p0}, Landroid/graphics/BlendMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->OVERLAY:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_2
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_3
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_4
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_5
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_6
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_7
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_8
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_9
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_a
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_b
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_c
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_d
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_e
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_f
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_10
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_11
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :cond_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static fromValue(I)Landroid/graphics/BlendMode;
    .locals 5

    sget-object v0, Landroid/graphics/BlendMode;->BLEND_MODES:[Landroid/graphics/BlendMode;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Landroid/graphics/BlendMode;->mXfermode:Landroid/graphics/Xfermode;

    iget v4, v4, Landroid/graphics/Xfermode;->porterDuffMode:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static toValue(Landroid/graphics/BlendMode;)I
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Xfermode;->porterDuffMode:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/BlendMode;
    .locals 1

    const-class v0, Landroid/graphics/BlendMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public static values()[Landroid/graphics/BlendMode;
    .locals 1

    sget-object v0, Landroid/graphics/BlendMode;->$VALUES:[Landroid/graphics/BlendMode;

    invoke-virtual {v0}, [Landroid/graphics/BlendMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/BlendMode;

    return-object v0
.end method


# virtual methods
.method public getXfermode()Landroid/graphics/Xfermode;
    .locals 1

    iget-object v0, p0, Landroid/graphics/BlendMode;->mXfermode:Landroid/graphics/Xfermode;

    return-object v0
.end method
