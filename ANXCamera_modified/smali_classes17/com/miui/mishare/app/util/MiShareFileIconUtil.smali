.class public Lcom/miui/mishare/app/util/MiShareFileIconUtil;
.super Ljava/lang/Object;
.source "MiShareFileIconUtil.java"


# static fields
.field private static sFileExtToIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->sFileExtToIcons:Ljava/util/HashMap;

    const-string/jumbo v0, "txt"

    const-string/jumbo v1, "text"

    const-string v2, "html"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x110700c6

    invoke-static {v0, v1}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->addItem([Ljava/lang/String;I)V

    const-string/jumbo v0, "pdf"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x110700bc

    invoke-static {v0, v1}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->addItem([Ljava/lang/String;I)V

    const-string v0, "doc"

    const-string v1, "docx"

    const-string/jumbo v2, "rtf"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x110700c8

    invoke-static {v0, v1}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->addItem([Ljava/lang/String;I)V

    const-string/jumbo v0, "xlsx"

    const-string/jumbo v1, "xls"

    const-string v2, "csv"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x110700b6

    invoke-static {v0, v1}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->addItem([Ljava/lang/String;I)V

    const-string/jumbo v0, "ppt"

    const-string/jumbo v1, "pptx"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x110700bd

    invoke-static {v0, v1}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->addItem([Ljava/lang/String;I)V

    const-string/jumbo v0, "wps"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x110700c9

    invoke-static {v0, v1}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->addItem([Ljava/lang/String;I)V

    const-string/jumbo v0, "rar"

    const-string/jumbo v1, "zip"

    const-string v2, "7z"

    const-string/jumbo v3, "tar"

    const-string v4, "gz"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x110700ca

    invoke-static {v0, v1}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->addItem([Ljava/lang/String;I)V

    const-string/jumbo v2, "mp3"

    const-string/jumbo v3, "wma"

    const-string v4, "aac"

    const-string v5, "flac"

    const-string v6, "ape"

    const-string v7, "m4a"

    const-string/jumbo v8, "wav"

    const-string v9, "amr"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x11070076

    invoke-static {v0, v1}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->addItem([Ljava/lang/String;I)V

    const-string v2, "avi"

    const-string/jumbo v3, "wmv"

    const-string/jumbo v4, "mov"

    const-string/jumbo v5, "mkv"

    const-string/jumbo v6, "ts"

    const-string/jumbo v7, "mp4"

    const-string/jumbo v8, "rmvb"

    const-string/jumbo v9, "webm"

    const-string v10, "flv"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x110700c7

    invoke-static {v0, v1}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->addItem([Ljava/lang/String;I)V

    const-string v2, "jpg"

    const-string v3, "jpeg"

    const-string/jumbo v4, "png"

    const-string v5, "bmp"

    const-string/jumbo v6, "tif"

    const-string/jumbo v7, "raw"

    const-string v8, "gif"

    const-string/jumbo v9, "webp"

    const-string/jumbo v10, "wbmp"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x110700b9

    invoke-static {v0, v1}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->addItem([Ljava/lang/String;I)V

    const-string v0, "apk"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x11070075

    invoke-static {v0, v1}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->addItem([Ljava/lang/String;I)V

    const-string v0, "exe"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x110700b7

    invoke-static {v0, v1}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->addItem([Ljava/lang/String;I)V

    const-string/jumbo v0, "ps"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x110700c0

    invoke-static {v0, v1}, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->addItem([Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addItem([Ljava/lang/String;I)V
    .locals 6

    if-eqz p0, :cond_1

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->sFileExtToIcons:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getFileIconResId(Ljava/lang/String;)I
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x110700b8

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/miui/mishare/app/util/MiShareFileIconUtil;->sFileExtToIcons:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method
