.class Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;
.super Ljava/lang/Object;
.source "MusicControlScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/MusicControlScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlbumInfo"
.end annotation


# instance fields
.field album:Ljava/lang/String;

.field artist:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/elements/MusicControlScreenElement$1;)V
    .locals 0

    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;-><init>()V

    return-void
.end method


# virtual methods
.method update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    move-object p1, v0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, p2

    :goto_1
    move-object p2, v0

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, p3

    :goto_2
    move-object p3, v0

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;->title:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;->artist:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;->album:Ljava/lang/String;

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v0, 0x1

    :goto_4
    if-eqz v0, :cond_5

    iput-object p1, p0, Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;->title:Ljava/lang/String;

    iput-object p2, p0, Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;->artist:Ljava/lang/String;

    iput-object p3, p0, Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;->album:Ljava/lang/String;

    :cond_5
    return v0
.end method
