.class public Lmiui/content/res/IconCustomizerUtils;
.super Ljava/lang/Object;
.source "IconCustomizerUtils.java"


# static fields
.field public static final ICON_LAYER_MAX_NUM:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdaptiveIconFromPackage(Landroid/content/Context;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lmiui/theme/IconCustomizerUtils;->getAdaptiveIconFromPackage(Landroid/content/Context;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static setIconShapeOverlayEnable(Z)V
    .locals 0

    invoke-static {p0}, Lmiui/theme/IconCustomizerUtils;->setIconShapeOverlayEnable(Z)V

    return-void
.end method

.method public static transformToAdaptiveIcon([Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-static {p0}, Lmiui/theme/IconCustomizerUtils;->transformToAdaptiveIcon([Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
