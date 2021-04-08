.class Lmiui/util/TypefaceUtils$Holder;
.super Ljava/lang/Object;
.source "TypefaceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/TypefaceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/TypefaceUtils$Holder$FontCacheItem;
    }
.end annotation


# static fields
.field private static final DEFAULT_FONT_NAMES:[Ljava/lang/String;

.field private static final DEFAULT_NAME_MAP:[Ljava/lang/String;

.field private static final FONT_CACHE:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lmiui/util/TypefaceUtils$Holder$FontCacheItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final LARGE_RULES:[[I

.field private static final MITYPE_MONO_NAMES:[Ljava/lang/String;

.field private static final MITYPE_MONO_VAR_FONT:Landroid/graphics/Typeface;

.field private static final MITYPE_NAMES:[Ljava/lang/String;

.field private static final MITYPE_VAR_FONT:Landroid/graphics/Typeface;

.field private static final MITYPE_WGHT:[I

.field private static final MIUI_NAMES:[Ljava/lang/String;

.field private static final MIUI_NAME_ARRAY:[Ljava/lang/String;

.field private static final MIUI_TYPEFACES:[Landroid/graphics/Typeface;

.field private static final MIUI_VAR_FONT:Landroid/graphics/Typeface;

.field private static final MIUI_VF_NAME:[[Ljava/lang/String;

.field private static final MIUI_WGHT:[I

.field private static final MIUI_WGHT_DARKMODE:[I

.field private static final NORAML_RULES:[[I

.field private static final SIZE_GRADE_COUNT:I = 0x3

.field private static final SMALL_RULES:[[I

.field private static final SYS_FONT_CACHE:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final SYS_FONT_FILES:[Ljava/lang/String;

.field private static final SYS_FONT_ITALIC_CACHE:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final SYS_FONT_ITALIC_FILES:[Ljava/lang/String;

.field private static final SYS_FONT_WEIGHT:[I

.field private static final THEME_MIUIEX_FONT_CACHE:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final THEME_MIUIEX_FONT_FILES:[Ljava/lang/String;

.field private static final THEME_MIUIEX_FONT_NAMES:[Ljava/lang/String;

.field private static final THEME_MIUIEX_FONT_WEIGHT:[I

.field private static final THEME_MIUI_FONT_CACHE:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final THEME_MIUI_FONT_FILES:[Ljava/lang/String;

.field private static final THEME_MIUI_FONT_NAMES:[Ljava/lang/String;

.field private static final THEME_MIUI_FONT_WEIGHT:[I

.field private static final VF_NAME_ARRAY:[Ljava/lang/String;

.field private static final WEIGHT_KEYS:[I

.field private static sDisableScaleUdpate:Z

.field static sFontScale:I

.field static sIsUsingMiuiFonts:Ljava/lang/Boolean;

.field static sIsUsingThemeFont:Ljava/lang/Boolean;

.field static sUiMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->SYS_FONT_CACHE:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->SYS_FONT_ITALIC_CACHE:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->THEME_MIUI_FONT_CACHE:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->THEME_MIUIEX_FONT_CACHE:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->FONT_CACHE:Landroid/util/SparseArray;

    const-string v1, "sans-serif"

    const-string v2, "sans-serif-thin"

    const-string v3, "sans-serif-light"

    const-string v4, "sans-serif-medium"

    const-string v5, "sans-serif-black"

    const-string v6, "sans-serif-regular"

    const-string v7, "arial"

    const-string v8, "helvetica"

    const-string v9, "tahoma"

    const-string v10, "verdana"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->DEFAULT_FONT_NAMES:[Ljava/lang/String;

    const-string v1, "Roboto-Regular.ttf"

    const-string v2, "Roboto-Thin.ttf"

    const-string v3, "Roboto-Light.ttf"

    const-string v4, "Roboto-Medium.ttf"

    const-string v5, "Roboto-Black.ttf"

    const-string v6, "Roboto-Bold.ttf"

    const-string v7, "Roboto-Regular.ttf"

    const-string v8, "Roboto-Regular.ttf"

    const-string v9, "Roboto-Regular.ttf"

    const-string v10, "Roboto-Regular.ttf"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->SYS_FONT_FILES:[Ljava/lang/String;

    const-string v1, "Roboto-Italic.ttf"

    const-string v2, "Roboto-ThinItalic.ttf"

    const-string v3, "Roboto-LightItalic.ttf"

    const-string v4, "Roboto-MediumItalic.ttf"

    const-string v5, "Roboto-BlackItalic.ttf"

    const-string v6, "Roboto-BoldItalic.ttf"

    const-string v7, "Roboto-Italic.ttf"

    const-string v8, "Roboto-Italic.ttf"

    const-string v9, "Roboto-Italic.ttf"

    const-string v10, "Roboto-Italic.ttf"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->SYS_FONT_ITALIC_FILES:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lmiui/util/TypefaceUtils$Holder;->SYS_FONT_WEIGHT:[I

    const-string v1, "miui"

    const-string v2, "miui-bold"

    const-string v3, "miui-regular"

    filled-new-array {v2, v1, v3}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lmiui/util/TypefaceUtils$Holder;->THEME_MIUI_FONT_NAMES:[Ljava/lang/String;

    const-string v2, "Miui-Regular.ttf"

    const-string v3, "Miui-Bold.ttf"

    filled-new-array {v3, v2, v2}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lmiui/util/TypefaceUtils$Holder;->THEME_MIUI_FONT_FILES:[Ljava/lang/String;

    const/4 v2, 0x3

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    sput-object v3, Lmiui/util/TypefaceUtils$Holder;->THEME_MIUI_FONT_WEIGHT:[I

    const-string v3, "miuiex"

    const-string v4, "miuiex-regular"

    const-string v5, "miuiex-bold"

    const-string v6, "miuiex-light"

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lmiui/util/TypefaceUtils$Holder;->THEME_MIUIEX_FONT_NAMES:[Ljava/lang/String;

    const-string v3, "MiuiEx-Regular.ttf"

    const-string v4, "MiuiEx-Bold.ttf"

    const-string v5, "MiuiEx-Light.ttf"

    filled-new-array {v3, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lmiui/util/TypefaceUtils$Holder;->THEME_MIUIEX_FONT_FILES:[Ljava/lang/String;

    const/4 v3, 0x4

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    sput-object v4, Lmiui/util/TypefaceUtils$Holder;->THEME_MIUIEX_FONT_WEIGHT:[I

    invoke-static {}, Lmiui/util/TypefaceUtils;->access$000()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz v4, :cond_3

    const-string v8, "thin"

    const-string v9, "thin"

    const-string v10, "light"

    const-string v11, "light"

    const-string v12, "medium"

    const-string v13, "medium"

    const-string v14, "black"

    const-string v15, "heavy"

    filled-new-array/range {v8 .. v15}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmiui/util/TypefaceUtils$Holder;->DEFAULT_NAME_MAP:[Ljava/lang/String;

    const-string v8, "thin"

    const-string v9, "extralight"

    const-string v10, "light"

    const-string v11, "normal"

    const-string v12, "regular"

    const-string v13, "medium"

    const-string v14, "demibold"

    const-string v15, "semibold"

    const-string v16, "bold"

    const-string v17, "heavy"

    filled-new-array/range {v8 .. v17}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmiui/util/TypefaceUtils$Holder;->VF_NAME_ARRAY:[Ljava/lang/String;

    sget-object v4, Lmiui/util/TypefaceUtils$Holder;->VF_NAME_ARRAY:[Ljava/lang/String;

    array-length v4, v4

    filled-new-array {v4, v5}, [I

    move-result-object v4

    const-class v8, Ljava/lang/String;

    invoke-static {v8, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Ljava/lang/String;

    sput-object v4, Lmiui/util/TypefaceUtils$Holder;->MIUI_VF_NAME:[[Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    sget-object v8, Lmiui/util/TypefaceUtils$Holder;->VF_NAME_ARRAY:[Ljava/lang/String;

    array-length v8, v8

    if-ge v4, v8, :cond_0

    sget-object v8, Lmiui/util/TypefaceUtils$Holder;->MIUI_VF_NAME:[[Ljava/lang/String;

    new-array v9, v5, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mipro-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lmiui/util/TypefaceUtils$Holder;->VF_NAME_ARRAY:[Ljava/lang/String;

    aget-object v11, v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    aput-object v9, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v8, "thin"

    const-string v9, "null"

    const-string v10, "light"

    const-string v11, "null"

    const-string v12, "regular"

    const-string v13, "bold"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmiui/util/TypefaceUtils$Holder;->MIUI_NAME_ARRAY:[Ljava/lang/String;

    new-array v4, v0, [I

    fill-array-data v4, :array_3

    sput-object v4, Lmiui/util/TypefaceUtils$Holder;->WEIGHT_KEYS:[I

    new-array v4, v0, [I

    fill-array-data v4, :array_4

    sput-object v4, Lmiui/util/TypefaceUtils$Holder;->MIUI_WGHT:[I

    new-array v4, v0, [I

    fill-array-data v4, :array_5

    sput-object v4, Lmiui/util/TypefaceUtils$Holder;->MIUI_WGHT_DARKMODE:[I

    new-array v4, v0, [I

    fill-array-data v4, :array_6

    sput-object v4, Lmiui/util/TypefaceUtils$Holder;->MITYPE_WGHT:[I

    const/4 v4, 0x0

    :goto_1
    sget-object v8, Lmiui/util/TypefaceUtils$Holder;->MIUI_WGHT:[I

    array-length v9, v8

    if-ge v4, v9, :cond_1

    sget-object v9, Lmiui/util/TypefaceUtils$Holder;->FONT_CACHE:Landroid/util/SparseArray;

    aget v8, v8, v4

    new-instance v10, Lmiui/util/TypefaceUtils$Holder$FontCacheItem;

    invoke-direct {v10}, Lmiui/util/TypefaceUtils$Holder$FontCacheItem;-><init>()V

    invoke-virtual {v9, v8, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_2
    sget-object v8, Lmiui/util/TypefaceUtils$Holder;->MITYPE_WGHT:[I

    array-length v9, v8

    if-ge v4, v9, :cond_2

    sget-object v9, Lmiui/util/TypefaceUtils$Holder;->FONT_CACHE:Landroid/util/SparseArray;

    aget v8, v8, v4

    new-instance v10, Lmiui/util/TypefaceUtils$Holder$FontCacheItem;

    invoke-direct {v10}, Lmiui/util/TypefaceUtils$Holder$FontCacheItem;-><init>()V

    invoke-virtual {v9, v8, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    const-string v4, "mipro"

    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmiui/util/TypefaceUtils$Holder;->MIUI_NAMES:[Ljava/lang/String;

    const-string v1, "mitype"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmiui/util/TypefaceUtils$Holder;->MITYPE_NAMES:[Ljava/lang/String;

    const-string v1, "mitype-mono"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmiui/util/TypefaceUtils$Holder;->MITYPE_MONO_NAMES:[Ljava/lang/String;

    new-array v1, v0, [[I

    new-array v8, v7, [I

    fill-array-data v8, :array_7

    aput-object v8, v1, v6

    new-array v8, v7, [I

    fill-array-data v8, :array_8

    aput-object v8, v1, v5

    new-array v8, v7, [I

    fill-array-data v8, :array_9

    aput-object v8, v1, v7

    new-array v8, v7, [I

    fill-array-data v8, :array_a

    aput-object v8, v1, v2

    new-array v8, v7, [I

    fill-array-data v8, :array_b

    aput-object v8, v1, v3

    new-array v8, v7, [I

    fill-array-data v8, :array_c

    const/4 v9, 0x5

    aput-object v8, v1, v9

    new-array v8, v7, [I

    fill-array-data v8, :array_d

    const/4 v10, 0x6

    aput-object v8, v1, v10

    new-array v8, v7, [I

    fill-array-data v8, :array_e

    const/4 v11, 0x7

    aput-object v8, v1, v11

    new-array v8, v7, [I

    fill-array-data v8, :array_f

    const/16 v12, 0x8

    aput-object v8, v1, v12

    new-array v8, v7, [I

    fill-array-data v8, :array_10

    const/16 v13, 0x9

    aput-object v8, v1, v13

    sput-object v1, Lmiui/util/TypefaceUtils$Holder;->SMALL_RULES:[[I

    new-array v1, v0, [[I

    new-array v8, v7, [I

    fill-array-data v8, :array_11

    aput-object v8, v1, v6

    new-array v8, v7, [I

    fill-array-data v8, :array_12

    aput-object v8, v1, v5

    new-array v8, v7, [I

    fill-array-data v8, :array_13

    aput-object v8, v1, v7

    new-array v8, v7, [I

    fill-array-data v8, :array_14

    aput-object v8, v1, v2

    new-array v8, v7, [I

    fill-array-data v8, :array_15

    aput-object v8, v1, v3

    new-array v8, v7, [I

    fill-array-data v8, :array_16

    aput-object v8, v1, v9

    new-array v8, v7, [I

    fill-array-data v8, :array_17

    aput-object v8, v1, v10

    new-array v8, v7, [I

    fill-array-data v8, :array_18

    aput-object v8, v1, v11

    new-array v8, v7, [I

    fill-array-data v8, :array_19

    aput-object v8, v1, v12

    new-array v8, v7, [I

    fill-array-data v8, :array_1a

    aput-object v8, v1, v13

    sput-object v1, Lmiui/util/TypefaceUtils$Holder;->NORAML_RULES:[[I

    new-array v0, v0, [[I

    new-array v1, v7, [I

    fill-array-data v1, :array_1b

    aput-object v1, v0, v6

    new-array v1, v7, [I

    fill-array-data v1, :array_1c

    aput-object v1, v0, v5

    new-array v1, v7, [I

    fill-array-data v1, :array_1d

    aput-object v1, v0, v7

    new-array v1, v7, [I

    fill-array-data v1, :array_1e

    aput-object v1, v0, v2

    new-array v1, v7, [I

    fill-array-data v1, :array_1f

    aput-object v1, v0, v3

    new-array v1, v7, [I

    fill-array-data v1, :array_20

    aput-object v1, v0, v9

    new-array v1, v7, [I

    fill-array-data v1, :array_21

    aput-object v1, v0, v10

    new-array v1, v7, [I

    fill-array-data v1, :array_22

    aput-object v1, v0, v11

    new-array v1, v7, [I

    fill-array-data v1, :array_23

    aput-object v1, v0, v12

    new-array v1, v7, [I

    fill-array-data v1, :array_24

    aput-object v1, v0, v13

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->LARGE_RULES:[[I

    new-array v0, v6, [Landroid/graphics/Typeface;

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_TYPEFACES:[Landroid/graphics/Typeface;

    sput-boolean v5, Lmiui/util/TypefaceUtils$Holder;->sDisableScaleUdpate:Z

    invoke-static {v4, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_VAR_FONT:Landroid/graphics/Typeface;

    const-string v0, "mitype"

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->MITYPE_VAR_FONT:Landroid/graphics/Typeface;

    const-string v0, "mitype-mono"

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->MITYPE_MONO_VAR_FONT:Landroid/graphics/Typeface;

    sput-boolean v6, Lmiui/util/TypefaceUtils$Holder;->sDisableScaleUdpate:Z

    goto :goto_3

    :cond_3
    new-array v0, v6, [I

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->MITYPE_WGHT:[I

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_WGHT_DARKMODE:[I

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_WGHT:[I

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->WEIGHT_KEYS:[I

    new-array v0, v6, [Ljava/lang/String;

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->MITYPE_MONO_NAMES:[Ljava/lang/String;

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->MITYPE_NAMES:[Ljava/lang/String;

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_NAMES:[Ljava/lang/String;

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_NAME_ARRAY:[Ljava/lang/String;

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->VF_NAME_ARRAY:[Ljava/lang/String;

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->DEFAULT_NAME_MAP:[Ljava/lang/String;

    filled-new-array {v6, v6}, [I

    move-result-object v0

    const-class v4, Ljava/lang/String;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_VF_NAME:[[Ljava/lang/String;

    filled-new-array {v6, v6}, [I

    move-result-object v0

    const-class v4, I

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->LARGE_RULES:[[I

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->NORAML_RULES:[[I

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->SMALL_RULES:[[I

    const/4 v0, 0x0

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->MITYPE_MONO_VAR_FONT:Landroid/graphics/Typeface;

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->MITYPE_VAR_FONT:Landroid/graphics/Typeface;

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_VAR_FONT:Landroid/graphics/Typeface;

    new-instance v0, Ljava/io/File;

    const-string v4, "system/fonts/Miui-Regular.ttf"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    new-array v0, v3, [Landroid/graphics/Typeface;

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_TYPEFACES:[Landroid/graphics/Typeface;

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_TYPEFACES:[Landroid/graphics/Typeface;

    invoke-static {v1, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    aput-object v3, v0, v6

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_TYPEFACES:[Landroid/graphics/Typeface;

    invoke-static {v1, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    aput-object v3, v0, v5

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_TYPEFACES:[Landroid/graphics/Typeface;

    invoke-static {v1, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    aput-object v3, v0, v7

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_TYPEFACES:[Landroid/graphics/Typeface;

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_3

    :cond_4
    new-array v0, v6, [Landroid/graphics/Typeface;

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_TYPEFACES:[Landroid/graphics/Typeface;

    :goto_3
    const/4 v0, -0x1

    sput v0, Lmiui/util/TypefaceUtils$Holder;->sFontScale:I

    return-void

    nop

    :array_0
    .array-data 4
        0x190
        0x64
        0x12c
        0x1f4
        0x384
        0x2bc
        0x190
        0x190
        0x190
        0x190
    .end array-data

    :array_1
    .array-data 4
        0x2bc
        0x190
        0x190
    .end array-data

    :array_2
    .array-data 4
        0x190
        0x190
        0x2bc
        0x12c
    .end array-data

    :array_3
    .array-data 4
        0x64
        0xc8
        0x12c
        0x15e
        0x190
        0x1f4
        0x226
        0x258
        0x2bc
        0x384
    .end array-data

    :array_4
    .array-data 4
        0x96
        0xc8
        0xfa
        0x131
        0x154
        0x190
        0x1e0
        0x21c
        0x276
        0x2bc
    .end array-data

    :array_5
    .array-data 4
        0x96
        0xaf
        0xe1
        0x11d
        0x140
        0x168
        0x1b8
        0x1ea
        0x244
        0x28a
    .end array-data

    :array_6
    .array-data 4
        0xa
        0x14
        0x1e
        0x28
        0x32
        0x3c
        0x46
        0x50
        0x5a
        0x64
    .end array-data

    :array_7
    .array-data 4
        0x64
        0x1f4
    .end array-data

    :array_8
    .array-data 4
        0xc8
        0x1f4
    .end array-data

    :array_9
    .array-data 4
        0x12c
        0x1f4
    .end array-data

    :array_a
    .array-data 4
        0x15e
        0x226
    .end array-data

    :array_b
    .array-data 4
        0x15e
        0x226
    .end array-data

    :array_c
    .array-data 4
        0x190
        0x258
    .end array-data

    :array_d
    .array-data 4
        0x1f4
        0x2bc
    .end array-data

    :array_e
    .array-data 4
        0x226
        0x2bc
    .end array-data

    :array_f
    .array-data 4
        0x258
        0x2bc
    .end array-data

    :array_10
    .array-data 4
        0x2bc
        0x384
    .end array-data

    :array_11
    .array-data 4
        0x64
        0x1f4
    .end array-data

    :array_12
    .array-data 4
        0x64
        0x1f4
    .end array-data

    :array_13
    .array-data 4
        0xc8
        0x226
    .end array-data

    :array_14
    .array-data 4
        0x12c
        0x226
    .end array-data

    :array_15
    .array-data 4
        0x12c
        0x258
    .end array-data

    :array_16
    .array-data 4
        0x15e
        0x2bc
    .end array-data

    :array_17
    .array-data 4
        0x190
        0x2bc
    .end array-data

    :array_18
    .array-data 4
        0x1f4
        0x384
    .end array-data

    :array_19
    .array-data 4
        0x226
        0x384
    .end array-data

    :array_1a
    .array-data 4
        0x258
        0x384
    .end array-data

    :array_1b
    .array-data 4
        0x64
        0x12c
    .end array-data

    :array_1c
    .array-data 4
        0x64
        0x15e
    .end array-data

    :array_1d
    .array-data 4
        0xc8
        0x190
    .end array-data

    :array_1e
    .array-data 4
        0xc8
        0x1f4
    .end array-data

    :array_1f
    .array-data 4
        0x12c
        0x226
    .end array-data

    :array_20
    .array-data 4
        0x12c
        0x258
    .end array-data

    :array_21
    .array-data 4
        0x15e
        0x2bc
    .end array-data

    :array_22
    .array-data 4
        0x190
        0x384
    .end array-data

    :array_23
    .array-data 4
        0x1f4
        0x384
    .end array-data

    :array_24
    .array-data 4
        0x226
        0x384
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000()[I
    .locals 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->THEME_MIUI_FONT_WEIGHT:[I

    return-object v0
.end method

.method static synthetic access$1100()Landroid/util/SparseArray;
    .locals 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->THEME_MIUI_FONT_CACHE:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1200()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->THEME_MIUIEX_FONT_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->THEME_MIUIEX_FONT_FILES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400()[I
    .locals 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->THEME_MIUIEX_FONT_WEIGHT:[I

    return-object v0
.end method

.method static synthetic access$1500()Landroid/util/SparseArray;
    .locals 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->THEME_MIUIEX_FONT_CACHE:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1600()Landroid/graphics/Typeface;
    .locals 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_VAR_FONT:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$1700()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800()Z
    .locals 1

    sget-boolean v0, Lmiui/util/TypefaceUtils$Holder;->sDisableScaleUdpate:Z

    return v0
.end method

.method static synthetic access$1900()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->DEFAULT_NAME_MAP:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Landroid/util/SparseArray;
    .locals 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->SYS_FONT_CACHE:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2000()[Landroid/graphics/Typeface;
    .locals 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_TYPEFACES:[Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$2100()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->VF_NAME_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200()[[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_VF_NAME:[[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300()Landroid/graphics/Typeface;
    .locals 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->MITYPE_MONO_VAR_FONT:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$2400()Landroid/graphics/Typeface;
    .locals 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->MITYPE_VAR_FONT:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$2500()[I
    .locals 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->WEIGHT_KEYS:[I

    return-object v0
.end method

.method static synthetic access$2600()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_NAME_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700()[[I
    .locals 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->NORAML_RULES:[[I

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->DEFAULT_FONT_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->SYS_FONT_FILES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()[I
    .locals 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->SYS_FONT_WEIGHT:[I

    return-object v0
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->SYS_FONT_ITALIC_FILES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Landroid/util/SparseArray;
    .locals 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->SYS_FONT_ITALIC_CACHE:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$800()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->THEME_MIUI_FONT_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->THEME_MIUI_FONT_FILES:[Ljava/lang/String;

    return-object v0
.end method

.method static cacheFont(Landroid/graphics/Typeface;III)V
    .locals 2

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->FONT_CACHE:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/TypefaceUtils$Holder$FontCacheItem;

    if-nez v0, :cond_0

    new-instance v1, Lmiui/util/TypefaceUtils$Holder$FontCacheItem;

    invoke-direct {v1}, Lmiui/util/TypefaceUtils$Holder$FontCacheItem;-><init>()V

    move-object v0, v1

    sget-object v1, Lmiui/util/TypefaceUtils$Holder;->FONT_CACHE:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    iget v1, v0, Lmiui/util/TypefaceUtils$Holder$FontCacheItem;->scale:I

    if-eq v1, p2, :cond_1

    iput p2, v0, Lmiui/util/TypefaceUtils$Holder$FontCacheItem;->scale:I

    invoke-virtual {v0}, Lmiui/util/TypefaceUtils$Holder$FontCacheItem;->clear()V

    :cond_1
    invoke-virtual {v0, p0, p3}, Lmiui/util/TypefaceUtils$Holder$FontCacheItem;->setFont(Landroid/graphics/Typeface;I)V

    return-void
.end method

.method static getCachedFont(III)Landroid/graphics/Typeface;
    .locals 2

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->FONT_CACHE:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/TypefaceUtils$Holder$FontCacheItem;

    if-eqz v0, :cond_0

    iget v1, v0, Lmiui/util/TypefaceUtils$Holder$FontCacheItem;->scale:I

    if-ne v1, p1, :cond_0

    invoke-virtual {v0, p2}, Lmiui/util/TypefaceUtils$Holder$FontCacheItem;->getFont(I)Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method static getRules(I)[[I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->SMALL_RULES:[[I

    return-object v0

    :cond_0
    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->LARGE_RULES:[[I

    return-object v0

    :cond_1
    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->NORAML_RULES:[[I

    return-object v0
.end method

.method static getTextSizeGrade(F)I
    .locals 1

    const/high16 v0, 0x41a00000    # 20.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x41400000    # 12.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static getWeightIndex(I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lmiui/util/TypefaceUtils$Holder;->WEIGHT_KEYS:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget v1, v1, v0

    if-ne v1, p0, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method static getWght(IZ)I
    .locals 3

    invoke-static {p1}, Lmiui/util/TypefaceUtils$Holder;->getWghtArray(Z)[I

    move-result-object v0

    invoke-static {p0}, Lmiui/util/TypefaceUtils$Holder;->getWeightIndex(I)I

    move-result v1

    if-ltz v1, :cond_0

    aget v2, v0, v1

    return v2

    :cond_0
    const/16 v2, 0x190

    invoke-static {v2, p1}, Lmiui/util/TypefaceUtils$Holder;->getWght(IZ)I

    move-result v2

    return v2
.end method

.method private static getWghtArray(Z)[I
    .locals 2

    if-eqz p0, :cond_0

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->MITYPE_WGHT:[I

    return-object v0

    :cond_0
    sget v0, Lmiui/util/TypefaceUtils$Holder;->sUiMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_WGHT_DARKMODE:[I

    return-object v0

    :cond_1
    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_WGHT:[I

    return-object v0
.end method

.method static isUsingMiuiFonts()Z
    .locals 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->sIsUsingMiuiFonts:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {}, Lmiui/util/TypefaceUtils;->access$100()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method
