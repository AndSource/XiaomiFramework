.class public Lmiui/util/TypefaceHelper;
.super Ljava/lang/Object;
.source "TypefaceHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TypefaceHelper"

.field private static sDefaultStyles:Ljava/lang/reflect/Field;

.field private static sSetDefault:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lmiui/util/TypefaceHelper;->getSetDefaultMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiui/util/TypefaceHelper;->sSetDefault:Ljava/lang/reflect/Method;

    invoke-static {}, Lmiui/util/TypefaceHelper;->getDefaultWithStyle()Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lmiui/util/TypefaceHelper;->sDefaultStyles:Ljava/lang/reflect/Field;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createVarFont(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/fonts/FontVariationAxis;

    new-instance v1, Landroid/graphics/fonts/FontVariationAxis;

    int-to-float v2, p1

    const-string v3, "wght"

    invoke-direct {v1, v3, v2}, Landroid/graphics/fonts/FontVariationAxis;-><init>(Ljava/lang/String;F)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/graphics/Typeface;->createFromTypefaceWithVariation(Landroid/graphics/Typeface;Ljava/util/List;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultWithStyle()Ljava/lang/reflect/Field;
    .locals 3

    :try_start_0
    const-class v0, Landroid/graphics/Typeface;

    const-string v1, "sDefaults"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "TypefaceHelper"

    const-string v2, "TypefaceHelper.getDefaultWithStyle failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private static getSetDefaultMethod()Ljava/lang/reflect/Method;
    .locals 6

    :try_start_0
    const-class v0, Landroid/graphics/Typeface;

    const-string v1, "setDefault"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/graphics/Typeface;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "TypefaceHelper"

    const-string v2, "TypefaceHelper.getSetDefaultMethod failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public static updateDefaultFont(Landroid/graphics/Typeface;)V
    .locals 5

    sget-object v0, Lmiui/util/TypefaceHelper;->sSetDefault:Ljava/lang/reflect/Method;

    const-string v1, "TypefaceHelper"

    if-nez v0, :cond_0

    const-string v0, "TypefaceHelper.updateDefaultFont, sSetDefault is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "TypefaceHelper.updateDefaultFont failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static updateDefaultWithStyle(Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V
    .locals 5

    sget-object v0, Lmiui/util/TypefaceHelper;->sDefaultStyles:Ljava/lang/reflect/Field;

    const-string v1, "TypefaceHelper"

    if-nez v0, :cond_0

    const-string v0, "TypefaceHelper.updateDefaultWithStyle, sDefaultStyles is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x4

    :try_start_0
    new-array v3, v3, [Landroid/graphics/Typeface;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "TypefaceHelper.updateDefaultWithStyle failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
