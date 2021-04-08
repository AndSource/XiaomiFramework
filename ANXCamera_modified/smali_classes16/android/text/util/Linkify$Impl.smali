.class Landroid/text/util/Linkify$Impl;
.super Ljava/lang/Object;
.source "Linkify.java"

# interfaces
.implements Lcom/miui/internal/variable/api/v29/Android_Text_Util_Linkify$Interface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/util/Linkify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/text/util/Linkify$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/util/Linkify$Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public addLinks(Landroid/text/util/Linkify;Landroid/text/Spannable;I)Z
    .locals 1

    invoke-static {p2, p3}, Landroid/text/util/Linkify;->originalAddLinks(Landroid/text/Spannable;I)Z

    move-result v0

    return v0
.end method

.method public gatherLinks(Landroid/text/util/Linkify;Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 0

    invoke-static/range {p2 .. p7}, Landroid/text/util/Linkify;->originalGatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    return-void
.end method
