.class public Landroid/view/inputmethod/InputMethodSystemProperty;
.super Ljava/lang/Object;
.source "InputMethodSystemProperty.java"


# static fields
.field public static final MULTI_CLIENT_IME_ENABLED:Z

.field public static final PER_PROFILE_IME_ENABLED:Z

.field private static final PROP_DEBUG_MULTI_CLIENT_IME:Ljava/lang/String; = "persist.debug.multi_client_ime"

.field private static final PROP_DEBUG_PER_PROFILE_IME:Ljava/lang/String; = "persist.debug.per_profile_ime"

.field private static final PROP_PROD_MULTI_CLIENT_IME:Ljava/lang/String; = "ro.sys.multi_client_ime"

.field public static final sMultiClientImeComponentName:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/view/inputmethod/InputMethodSystemProperty;->getMultiClientImeComponentName()Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Landroid/view/inputmethod/InputMethodSystemProperty;->sMultiClientImeComponentName:Landroid/content/ComponentName;

    sget-object v0, Landroid/view/inputmethod/InputMethodSystemProperty;->sMultiClientImeComponentName:Landroid/content/ComponentName;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/view/inputmethod/InputMethodSystemProperty;->MULTI_CLIENT_IME_ENABLED:Z

    sget-boolean v0, Landroid/view/inputmethod/InputMethodSystemProperty;->MULTI_CLIENT_IME_ENABLED:Z

    if-eqz v0, :cond_1

    sput-boolean v1, Landroid/view/inputmethod/InputMethodSystemProperty;->PER_PROFILE_IME_ENABLED:Z

    goto :goto_1

    :cond_1
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "persist.debug.per_profile_ime"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/inputmethod/InputMethodSystemProperty;->PER_PROFILE_IME_ENABLED:Z

    goto :goto_1

    :cond_2
    sput-boolean v1, Landroid/view/inputmethod/InputMethodSystemProperty;->PER_PROFILE_IME_ENABLED:Z

    :goto_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMultiClientImeComponentName()Landroid/content/ComponentName;
    .locals 2

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v1, ""

    if-eqz v0, :cond_0

    nop

    const-string/jumbo v0, "persist.debug.multi_client_ime"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    nop

    const-string/jumbo v0, "ro.sys.multi_client_ime"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method
