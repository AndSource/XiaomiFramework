.class public abstract Lcom/google/android/gms/common/images/zaa;
.super Ljava/lang/Object;


# instance fields
.field final zamv:Lcom/google/android/gms/common/images/zab;

.field private zamw:I

.field protected zamx:I

.field private zamy:Z

.field private zamz:Z

.field private zana:Z

.field private zanb:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/images/zaa;->zamw:I

    iput v0, p0, Lcom/google/android/gms/common/images/zaa;->zamx:I

    iput-boolean v0, p0, Lcom/google/android/gms/common/images/zaa;->zamy:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/common/images/zaa;->zamz:Z

    iput-boolean v0, p0, Lcom/google/android/gms/common/images/zaa;->zana:Z

    iput-boolean v1, p0, Lcom/google/android/gms/common/images/zaa;->zanb:Z

    new-instance v0, Lcom/google/android/gms/common/images/zab;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/images/zab;-><init>(Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/zaa;->zamv:Lcom/google/android/gms/common/images/zab;

    iput p2, p0, Lcom/google/android/gms/common/images/zaa;->zamx:I

    return-void
.end method


# virtual methods
.method final zaa(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V
    .locals 1

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Asserts;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, v0, p3, p1, p2}, Lcom/google/android/gms/common/images/zaa;->zaa(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void
.end method

.method final zaa(Landroid/content/Context;Lcom/google/android/gms/internal/base/zak;)V
    .locals 1

    iget-boolean p1, p0, Lcom/google/android/gms/common/images/zaa;->zanb:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/google/android/gms/common/images/zaa;->zaa(Landroid/graphics/drawable/Drawable;ZZZ)V

    :cond_0
    return-void
.end method

.method final zaa(Landroid/content/Context;Lcom/google/android/gms/internal/base/zak;Z)V
    .locals 0

    nop

    iget p2, p0, Lcom/google/android/gms/common/images/zaa;->zamx:I

    if-eqz p2, :cond_0

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p3, p2, p2}, Lcom/google/android/gms/common/images/zaa;->zaa(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void
.end method

.method protected abstract zaa(Landroid/graphics/drawable/Drawable;ZZZ)V
.end method

.method protected final zaa(ZZ)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/images/zaa;->zamz:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
