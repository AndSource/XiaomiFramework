.class Lmiui/util/DirectIndexedFile$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field IU:I

.field mMaxIndex:I

.field mOffset:J


# direct methods
.method private constructor <init>(IIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiui/util/DirectIndexedFile$e;->IU:I

    iput p2, p0, Lmiui/util/DirectIndexedFile$e;->mMaxIndex:I

    iput-wide p3, p0, Lmiui/util/DirectIndexedFile$e;->mOffset:J

    return-void
.end method

.method synthetic constructor <init>(IIJLmiui/util/d;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/util/DirectIndexedFile$e;-><init>(IIJ)V

    return-void
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$e;Ljava/io/DataOutput;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$e;->b(Ljava/io/DataOutput;)I

    move-result p0

    return p0
.end method

.method private b(Ljava/io/DataOutput;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget v0, p0, Lmiui/util/DirectIndexedFile$e;->IU:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, Lmiui/util/DirectIndexedFile$e;->mMaxIndex:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-wide v0, p0, Lmiui/util/DirectIndexedFile$e;->mOffset:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    :cond_0
    const/16 p0, 0x10

    return p0
.end method

.method static synthetic d(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$e;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lmiui/util/DirectIndexedFile$e;->e(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$e;

    move-result-object p0

    return-object p0
.end method

.method private static e(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$e;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    new-instance p0, Lmiui/util/DirectIndexedFile$e;

    invoke-direct {p0, v0, v1, v2, v3}, Lmiui/util/DirectIndexedFile$e;-><init>(IIJ)V

    return-object p0
.end method
