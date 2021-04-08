.class public Lcom/android/internal/inputmethod/SubtypeLocaleUtils;
.super Ljava/lang/Object;
.source "SubtypeLocaleUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x3

    const-string v2, "_"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v3, v4, :cond_1

    aget-object v3, v2, v5

    const-string/jumbo v6, "tl"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "fil"

    aput-object v3, v2, v5

    :cond_1
    array-length v3, v2

    if-ne v3, v4, :cond_2

    new-instance v0, Ljava/util/Locale;

    aget-object v1, v2, v5

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_2
    array-length v3, v2

    const/4 v6, 0x2

    if-ne v3, v6, :cond_3

    new-instance v0, Ljava/util/Locale;

    aget-object v1, v2, v5

    aget-object v3, v2, v4

    invoke-direct {v0, v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    array-length v3, v2

    if-ne v3, v0, :cond_4

    new-instance v0, Ljava/util/Locale;

    aget-object v1, v2, v5

    aget-object v3, v2, v4

    aget-object v4, v2, v6

    invoke-direct {v0, v1, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_4
    return-object v1
.end method
