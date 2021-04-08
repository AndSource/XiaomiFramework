.class public interface abstract Landroid/provider/MediaStore$Audio$PlaylistsColumns;
.super Ljava/lang/Object;
.source "MediaStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlaylistsColumns"
.end annotation


# static fields
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

.field public static final DATE_MODIFIED:Ljava/lang/String; = "date_modified"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final NAME:Ljava/lang/String; = "name"
    .annotation runtime Landroid/provider/Column;
        value = 0x3
    .end annotation
.end field
