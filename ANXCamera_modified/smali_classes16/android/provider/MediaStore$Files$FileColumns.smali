.class public interface abstract Landroid/provider/MediaStore$Files$FileColumns;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/MediaStore$MediaColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore$Files;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FileColumns"
.end annotation


# static fields
.field public static final FORMAT:Ljava/lang/String; = "format"
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final IS_DOWNLOAD:Ljava/lang/String; = "is_download"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final MEDIA_TYPE:Ljava/lang/String; = "media_type"
    .annotation runtime Landroid/provider/Column;
        value = 0x1
    .end annotation
.end field

.field public static final MEDIA_TYPE_AUDIO:I = 0x2

.field public static final MEDIA_TYPE_IMAGE:I = 0x1

.field public static final MEDIA_TYPE_NONE:I = 0x0

.field public static final MEDIA_TYPE_PLAYLIST:I = 0x4

.field public static final MEDIA_TYPE_VIDEO:I = 0x3

.field public static final MIME_TYPE:Ljava/lang/String; = "mime_type"
    .annotation runtime Landroid/provider/Column;
        value = 0x3
    .end annotation
.end field

.field public static final PARENT:Ljava/lang/String; = "parent"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final STORAGE_ID:Ljava/lang/String; = "storage_id"
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TITLE:Ljava/lang/String; = "title"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field
