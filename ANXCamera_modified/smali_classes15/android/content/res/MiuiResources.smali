.class public final Landroid/content/res/MiuiResources;
.super Landroid/content/res/Resources;
.source "MiuiResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    }
.end annotation


# instance fields
.field private mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

.field private mPackage:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/res/Resources;-><init>()V

    invoke-direct {p0}, Landroid/content/res/MiuiResources;->updateMiuiImpl()V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Landroid/content/res/MiuiResources;->updateMiuiImpl()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/res/Resources;-><init>(Ljava/lang/ClassLoader;)V

    invoke-direct {p0}, Landroid/content/res/MiuiResources;->updateMiuiImpl()V

    return-void
.end method

.method public static isPreloadedCacheEmpty()Z
    .locals 1

    invoke-static {}, Landroid/content/res/MiuiResources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getPreloadedDrawables()Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateMiuiImpl()V
    .locals 3

    invoke-virtual {p0}, Landroid/content/res/MiuiResources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/content/res/MiuiResourcesImpl;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/content/res/MiuiResourcesImpl;

    iput-object v1, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    iget-object v1, p0, Landroid/content/res/MiuiResources;->mPackage:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    invoke-virtual {v2, p0, v1}, Landroid/content/res/MiuiResourcesImpl;->init(Landroid/content/res/MiuiResources;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getIntArray(I)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/res/MiuiResourcesImpl;->getIntArray(I)[I

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/res/MiuiResourcesImpl;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/res/MiuiResourcesImpl;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/MiuiResourcesImpl;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/res/MiuiResourcesImpl;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method getThemeString(I)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/res/MiuiResourcesImpl;->getThemeString(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroid/content/res/MiuiResources;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/content/res/MiuiResourcesImpl;->init(Landroid/content/res/MiuiResources;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method isPreloadOverlayed(I)Z
    .locals 2

    iget-object v0, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/res/MiuiResourcesImpl;->isPreloadOverlayed(I)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->isPreloadOverlayed(I)Z

    move-result v0

    return v0
.end method

.method loadOverlayDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2}, Landroid/content/res/MiuiResourcesImpl;->loadOverlayDrawable(Landroid/content/res/MiuiResources;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadOverlayDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method loadOverlayTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;
    .locals 1

    iget-object v0, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/res/MiuiResourcesImpl;->loadOverlayTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->loadOverlayTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method loadOverlayValue(Landroid/util/TypedValue;I)V
    .locals 1

    iget-object v0, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/MiuiResourcesImpl;->loadOverlayValue(Landroid/util/TypedValue;I)V

    :cond_0
    return-void
.end method

.method public setImpl(Landroid/content/res/ResourcesImpl;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    invoke-direct {p0}, Landroid/content/res/MiuiResources;->updateMiuiImpl()V

    return-void
.end method
