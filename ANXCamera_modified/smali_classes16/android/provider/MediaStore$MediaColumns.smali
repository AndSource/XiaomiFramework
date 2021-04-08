.class public interface abstract Landroid/provider/MediaStore$MediaColumns;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaColumns"
.end annotation


# static fields
.field public static final BUCKET_DISPLAY_NAME:Ljava/lang/String; = "bucket_display_name"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final BUCKET_ID:Ljava/lang/String; = "bucket_id"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final DATA:Ljava/lang/String; = "_data"
    .annotation runtime Landroid/provider/Column;
        value = 0x3
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATE_ADDED:Ljava/lang/String; = "date_added"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final DATE_EXPIRES:Ljava/lang/String; = "date_expires"
    .annotation runtime Landroid/provider/Column;
        value = 0x1
    .end annotation
.end field

.field public static final DATE_MODIFIED:Ljava/lang/String; = "date_modified"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final DATE_TAKEN:Ljava/lang/String; = "datetaken"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final DISPLAY_NAME:Ljava/lang/String; = "_display_name"
    .annotation runtime Landroid/provider/Column;
        value = 0x3
    .end annotation
.end field

.field public static final DOCUMENT_ID:Ljava/lang/String; = "document_id"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final DURATION:Ljava/lang/String; = "duration"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final GROUP_ID:Ljava/lang/String; = "group_id"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HASH:Ljava/lang/String; = "_hash"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x4
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HEIGHT:Ljava/lang/String; = "height"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final INSTANCE_ID:Ljava/lang/String; = "instance_id"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final IS_DRM:Ljava/lang/String; = "is_drm"
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation runtime Landroid/provider/Column;
        value = 0x1
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IS_PENDING:Ljava/lang/String; = "is_pending"
    .annotation runtime Landroid/provider/Column;
        value = 0x1
    .end annotation
.end field

.field public static final IS_TRASHED:Ljava/lang/String; = "is_trashed"
    .annotation runtime Landroid/provider/Column;
        value = 0x1
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEDIA_SCANNER_NEW_OBJECT_ID:Ljava/lang/String; = "media_scanner_new_object_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MIME_TYPE:Ljava/lang/String; = "mime_type"
    .annotation runtime Landroid/provider/Column;
        value = 0x3
    .end annotation
.end field

.field public static final ORIENTATION:Ljava/lang/String; = "orientation"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final ORIGINAL_DOCUMENT_ID:Ljava/lang/String; = "original_document_id"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final OWNER_PACKAGE_NAME:Ljava/lang/String; = "owner_package_name"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final PRIMARY_DIRECTORY:Ljava/lang/String; = "primary_directory"
    .annotation runtime Landroid/provider/Column;
        value = 0x3
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RELATIVE_PATH:Ljava/lang/String; = "relative_path"
    .annotation runtime Landroid/provider/Column;
        value = 0x3
    .end annotation
.end field

.field public static final SECONDARY_DIRECTORY:Ljava/lang/String; = "secondary_directory"
    .annotation runtime Landroid/provider/Column;
        value = 0x3
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIZE:Ljava/lang/String; = "_size"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final TITLE:Ljava/lang/String; = "title"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final VOLUME_NAME:Ljava/lang/String; = "volume_name"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final WIDTH:Ljava/lang/String; = "width"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field
