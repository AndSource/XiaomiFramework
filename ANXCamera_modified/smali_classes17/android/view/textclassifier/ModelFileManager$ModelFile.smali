.class public final Landroid/view/textclassifier/ModelFileManager$ModelFile;
.super Ljava/lang/Object;
.source "ModelFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/ModelFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModelFile"
.end annotation


# static fields
.field public static final LANGUAGE_INDEPENDENT:Ljava/lang/String; = "*"


# instance fields
.field private final mFile:Ljava/io/File;

.field private final mLanguageIndependent:Z

.field private final mSupportedLocales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportedLocalesStr:Ljava/lang/String;

.field private final mVersion:I


# direct methods
.method public constructor <init>(Ljava/io/File;ILjava/util/List;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Landroid/view/textclassifier/ModelFileManager$ModelFile;->mFile:Ljava/io/File;

    iput p2, p0, Landroid/view/textclassifier/ModelFileManager$ModelFile;->mVersion:I

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/view/textclassifier/ModelFileManager$ModelFile;->mSupportedLocales:Ljava/util/List;

    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textclassifier/ModelFileManager$ModelFile;->mSupportedLocalesStr:Ljava/lang/String;

    iput-boolean p5, p0, Landroid/view/textclassifier/ModelFileManager$ModelFile;->mLanguageIndependent:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Landroid/view/textclassifier/ModelFileManager$ModelFile;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/view/textclassifier/ModelFileManager$ModelFile;

    invoke-virtual {p0}, Landroid/view/textclassifier/ModelFileManager$ModelFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/textclassifier/ModelFileManager$ModelFile;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/ModelFileManager$ModelFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/ModelFileManager$ModelFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedLocales()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/textclassifier/ModelFileManager$ModelFile;->mSupportedLocales:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedLocalesStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/ModelFileManager$ModelFile;->mSupportedLocalesStr:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Landroid/view/textclassifier/ModelFileManager$ModelFile;->mVersion:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/textclassifier/ModelFileManager$ModelFile;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAnyLanguageSupported(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Landroid/view/textclassifier/ModelFileManager$ModelFile;->mLanguageIndependent:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/textclassifier/ModelFileManager$ModelFile;->mSupportedLocales:Ljava/util/List;

    invoke-static {p1, v0}, Ljava/util/Locale;->lookup(Ljava/util/List;Ljava/util/Collection;)Ljava/util/Locale;

    move-result-object v0

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

.method public isPreferredTo(Landroid/view/textclassifier/ModelFileManager$ModelFile;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p0, Landroid/view/textclassifier/ModelFileManager$ModelFile;->mLanguageIndependent:Z

    if-nez v1, :cond_1

    iget-boolean v1, p1, Landroid/view/textclassifier/ModelFileManager$ModelFile;->mLanguageIndependent:Z

    if-eqz v1, :cond_1

    return v0

    :cond_1
    iget-boolean v1, p0, Landroid/view/textclassifier/ModelFileManager$ModelFile;->mLanguageIndependent:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Landroid/view/textclassifier/ModelFileManager$ModelFile;->mLanguageIndependent:Z

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroid/view/textclassifier/ModelFileManager$ModelFile;->mVersion:I

    invoke-virtual {p1}, Landroid/view/textclassifier/ModelFileManager$ModelFile;->getVersion()I

    move-result v3

    if-le v1, v3, :cond_3

    return v0

    :cond_3
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/view/textclassifier/ModelFileManager$ModelFile;->mSupportedLocales:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/textclassifier/ModelFileManager$ModelFile;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/view/textclassifier/ModelFileManager$ModelFile;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Landroid/view/textclassifier/ModelFileManager$ModelFile;->mVersion:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "ModelFile { path=%s name=%s version=%d locales=%s }"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
