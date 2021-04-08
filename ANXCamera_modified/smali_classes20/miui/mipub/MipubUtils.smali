.class public Lmiui/mipub/MipubUtils;
.super Ljava/lang/Object;
.source "MipubUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MipubUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasFollowedMipubs(Landroid/content/ContentResolver;)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    nop

    const/4 v0, 0x0

    const-string v1, "has_followed_mipub"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method

.method public static setHasFollowedMipubs(Landroid/content/ContentResolver;Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    nop

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "has_followed_mipub"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
