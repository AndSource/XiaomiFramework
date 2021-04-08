.class public interface abstract Landroid/provider/MediaStore$Images$ImageColumns;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/MediaStore$MediaColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore$Images;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageColumns"
.end annotation


# static fields
.field public static final BUCKET_DISPLAY_NAME:Ljava/lang/String; = "bucket_display_name"

.field public static final BUCKET_ID:Ljava/lang/String; = "bucket_id"

.field public static final DATE_TAKEN:Ljava/lang/String; = "datetaken"

.field public static final DESCRIPTION:Ljava/lang/String; = "description"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final GROUP_ID:Ljava/lang/String; = "group_id"

.field public static final IS_PRIVATE:Ljava/lang/String; = "isprivate"
    .annotation runtime Landroid/provider/Column;
        value = 0x1
    .end annotation
.end field

.field public static final LATITUDE:Ljava/lang/String; = "latitude"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x2
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LONGITUDE:Ljava/lang/String; = "longitude"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x2
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MINI_THUMB_MAGIC:Ljava/lang/String; = "mini_thumb_magic"
    .annotation runtime Landroid/provider/Column;
        value = 0x1
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final PICASA_ID:Ljava/lang/String; = "picasa_id"
    .annotation runtime Landroid/provider/Column;
        value = 0x3
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field
