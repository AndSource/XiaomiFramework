.class public Lmiui/media/RecorderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/media/RecorderFactory$AudioFormat;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRecorder(I)Lmiui/media/Recorder;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    new-instance p0, Lmiui/media/a;

    invoke-direct {p0}, Lmiui/media/a;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p0, Lmiui/media/i;

    invoke-direct {p0}, Lmiui/media/i;-><init>()V

    goto :goto_0

    :cond_1
    new-instance p0, Lmiui/media/e;

    invoke-direct {p0}, Lmiui/media/e;-><init>()V

    goto :goto_0

    :cond_2
    new-instance p0, Lmiui/media/b;

    invoke-direct {p0}, Lmiui/media/b;-><init>()V

    goto :goto_0

    :cond_3
    new-instance p0, Lmiui/media/g;

    invoke-direct {p0}, Lmiui/media/g;-><init>()V

    goto :goto_0

    :cond_4
    new-instance p0, Lmiui/media/a;

    invoke-direct {p0}, Lmiui/media/a;-><init>()V

    :goto_0
    return-object p0
.end method
