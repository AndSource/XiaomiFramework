.class public final Landroid/view/textclassifier/ModelFileManager;
.super Ljava/lang/Object;
.source "ModelFileManager.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/ModelFileManager$ModelFile;,
        Landroid/view/textclassifier/ModelFileManager$ModelFileSupplierImpl;
    }
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mModelFileSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/util/List<",
            "Landroid/view/textclassifier/ModelFileManager$ModelFile;",
            ">;>;"
        }
    .end annotation
.end field

.field private mModelFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/textclassifier/ModelFileManager$ModelFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/util/List<",
            "Landroid/view/textclassifier/ModelFileManager$ModelFile;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/ModelFileManager;->mLock:Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Supplier;

    iput-object v0, p0, Landroid/view/textclassifier/ModelFileManager;->mModelFileSupplier:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public findBestModelFile(Landroid/os/LocaleList;)Landroid/view/textclassifier/ModelFileManager$ModelFile;
    .locals 6

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    :goto_1
    nop

    invoke-static {v0}, Ljava/util/Locale$LanguageRange;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/textclassifier/ModelFileManager;->listModelFiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/textclassifier/ModelFileManager$ModelFile;

    invoke-virtual {v4, v1}, Landroid/view/textclassifier/ModelFileManager$ModelFile;->isAnyLanguageSupported(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v2}, Landroid/view/textclassifier/ModelFileManager$ModelFile;->isPreferredTo(Landroid/view/textclassifier/ModelFileManager$ModelFile;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v2, v4

    :cond_2
    goto :goto_2

    :cond_3
    return-object v2
.end method

.method public listModelFiles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/textclassifier/ModelFileManager$ModelFile;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/textclassifier/ModelFileManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/textclassifier/ModelFileManager;->mModelFiles:Ljava/util/List;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/view/textclassifier/ModelFileManager;->mModelFileSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/view/textclassifier/ModelFileManager;->mModelFiles:Ljava/util/List;

    :cond_0
    iget-object v1, p0, Landroid/view/textclassifier/ModelFileManager;->mModelFiles:Ljava/util/List;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
