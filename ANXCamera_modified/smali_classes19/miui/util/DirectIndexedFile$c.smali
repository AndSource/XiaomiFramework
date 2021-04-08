.class Lmiui/util/DirectIndexedFile$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private yU:J

.field private zU:J


# direct methods
.method private constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lmiui/util/DirectIndexedFile$c;->yU:J

    iput-wide p3, p0, Lmiui/util/DirectIndexedFile$c;->zU:J

    return-void
.end method

.method synthetic constructor <init>(JJLmiui/util/d;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/util/DirectIndexedFile$c;-><init>(JJ)V

    return-void
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$c;Ljava/io/DataOutput;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$c;->b(Ljava/io/DataOutput;)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$c;)J
    .locals 2

    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$c;->yU:J

    return-wide v0
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$c;J)J
    .locals 0

    iput-wide p1, p0, Lmiui/util/DirectIndexedFile$c;->yU:J

    return-wide p1
.end method

.method private b(Ljava/io/DataOutput;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$c;->yU:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$c;->zU:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    :cond_0
    const/16 p0, 0x10

    return p0
.end method

.method static synthetic b(Lmiui/util/DirectIndexedFile$c;)J
    .locals 2

    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$c;->zU:J

    return-wide v0
.end method

.method static synthetic b(Lmiui/util/DirectIndexedFile$c;J)J
    .locals 0

    iput-wide p1, p0, Lmiui/util/DirectIndexedFile$c;->zU:J

    return-wide p1
.end method

.method static synthetic b(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$c;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lmiui/util/DirectIndexedFile$c;->e(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$c;

    move-result-object p0

    return-object p0
.end method

.method private static e(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    new-instance p0, Lmiui/util/DirectIndexedFile$c;

    invoke-direct {p0, v0, v1, v2, v3}, Lmiui/util/DirectIndexedFile$c;-><init>(JJ)V

    return-object p0
.end method
