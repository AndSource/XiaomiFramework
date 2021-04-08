.class public Lmiui/maml/ScreenElementRootFactory;
.super Ljava/lang/Object;
.source "ScreenElementRootFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ScreenElementRootFactory$Parameter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lmiui/maml/ScreenElementRootFactory$Parameter;)Lmiui/maml/ScreenElementRoot;
    .locals 10

    invoke-static {p0}, Lmiui/maml/ScreenElementRootFactory$Parameter;->access$000(Lmiui/maml/ScreenElementRootFactory$Parameter;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lmiui/maml/ScreenElementRootFactory$Parameter;->access$100(Lmiui/maml/ScreenElementRootFactory$Parameter;)Lmiui/maml/ResourceLoader;

    move-result-object v1

    invoke-static {p0}, Lmiui/maml/ScreenElementRootFactory$Parameter;->access$200(Lmiui/maml/ScreenElementRootFactory$Parameter;)Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_0

    if-eqz v2, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lmiui/maml/util/ZipResourceLoader;

    invoke-direct {v3, v2}, Lmiui/maml/util/ZipResourceLoader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Lmiui/maml/util/ZipResourceLoader;->setLocal(Ljava/util/Locale;)Lmiui/maml/ResourceLoader;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    const/4 v3, 0x0

    return-object v3

    :cond_1
    new-instance v9, Lmiui/maml/LifecycleResourceManager;

    const-wide/32 v5, 0x36ee80

    const-wide/32 v7, 0x57e40

    move-object v3, v9

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Lmiui/maml/LifecycleResourceManager;-><init>(Lmiui/maml/ResourceLoader;JJ)V

    new-instance v4, Lmiui/maml/ScreenContext;

    invoke-direct {v4, v0, v3}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceManager;)V

    new-instance v5, Lmiui/maml/ScreenElementRoot;

    invoke-direct {v5, v4}, Lmiui/maml/ScreenElementRoot;-><init>(Lmiui/maml/ScreenContext;)V

    return-object v5

    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
.end method
