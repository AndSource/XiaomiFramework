.class public Landroid/provider/MediaStore$ThumbnailConstants;
.super Ljava/lang/Object;
.source "MediaStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThumbnailConstants"
.end annotation


# static fields
.field public static final FULL_SCREEN_KIND:I = 0x2

.field public static final FULL_SCREEN_SIZE:Landroid/graphics/Point;

.field public static final MICRO_KIND:I = 0x3

.field public static final MICRO_SIZE:Landroid/graphics/Point;

.field public static final MINI_KIND:I = 0x1

.field public static final MINI_SIZE:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0x200

    const/16 v2, 0x180

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    sput-object v0, Landroid/provider/MediaStore$ThumbnailConstants;->MINI_SIZE:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0x400

    const/16 v2, 0x312

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    sput-object v0, Landroid/provider/MediaStore$ThumbnailConstants;->FULL_SCREEN_SIZE:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0x60

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    sput-object v0, Landroid/provider/MediaStore$ThumbnailConstants;->MICRO_SIZE:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
