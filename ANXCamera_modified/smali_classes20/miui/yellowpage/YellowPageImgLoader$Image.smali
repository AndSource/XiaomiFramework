.class public Lmiui/yellowpage/YellowPageImgLoader$Image;
.super Ljava/lang/Object;
.source "YellowPageImgLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/yellowpage/YellowPageImgLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Image"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;,
        Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;
    }
.end annotation


# instance fields
.field private mFormat:Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

.field private mImageProcesser:Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;

.field protected mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/yellowpage/YellowPageImgLoader$Image;->mUrl:Ljava/lang/String;

    sget-object v0, Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;->JPG:Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

    iput-object v0, p0, Lmiui/yellowpage/YellowPageImgLoader$Image;->mFormat:Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/yellowpage/YellowPageImgLoader$Image;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lmiui/yellowpage/YellowPageImgLoader$Image;->mFormat:Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Lmiui/yellowpage/YellowPageImgLoader$Image;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lmiui/yellowpage/YellowPageImgLoader$Image;

    iget-object v1, v0, Lmiui/yellowpage/YellowPageImgLoader$Image;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lmiui/yellowpage/YellowPageImgLoader$Image;->mUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getFormat()Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;
    .locals 1

    iget-object v0, p0, Lmiui/yellowpage/YellowPageImgLoader$Image;->mFormat:Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/yellowpage/YellowPageImgLoader$Image;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Lmiui/util/HashUtils;->getSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/yellowpage/YellowPageImgLoader$Image;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lmiui/yellowpage/YellowPageImgLoader$Image;->mUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lmiui/yellowpage/YellowPageImgLoader$Image;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public proccessImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lmiui/yellowpage/YellowPageImgLoader$Image;->mImageProcesser:Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;->processImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p1
.end method

.method public setImageProcessor(Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;)V
    .locals 0

    iput-object p1, p0, Lmiui/yellowpage/YellowPageImgLoader$Image;->mImageProcesser:Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;

    return-void
.end method
