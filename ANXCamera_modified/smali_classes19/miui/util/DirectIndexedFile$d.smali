.class Lmiui/util/DirectIndexedFile$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# static fields
.field private static final EU:[B

.field private static final FU:I = 0x2


# instance fields
.field private BU:[Lmiui/util/DirectIndexedFile$c;

.field private DU:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/util/DirectIndexedFile$d;->EU:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x46t
        0x20t
    .end array-data
.end method

.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [Lmiui/util/DirectIndexedFile$c;

    iput-object p1, p0, Lmiui/util/DirectIndexedFile$d;->BU:[Lmiui/util/DirectIndexedFile$c;

    iput p2, p0, Lmiui/util/DirectIndexedFile$d;->DU:I

    return-void
.end method

.method synthetic constructor <init>(IILmiui/util/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiui/util/DirectIndexedFile$d;-><init>(II)V

    return-void
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$d;)I
    .locals 0

    iget p0, p0, Lmiui/util/DirectIndexedFile$d;->DU:I

    return p0
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$d;Ljava/io/DataOutput;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$d;->b(Ljava/io/DataOutput;)I

    move-result p0

    return p0
.end method

.method private b(Ljava/io/DataOutput;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lmiui/util/DirectIndexedFile$d;->EU:[B

    array-length v1, v0

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x4

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$d;->BU:[Lmiui/util/DirectIndexedFile$c;

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, Lmiui/util/DirectIndexedFile$d;->DU:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_0
    iget-object p0, p0, Lmiui/util/DirectIndexedFile$d;->BU:[Lmiui/util/DirectIndexedFile$c;

    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-static {v3, p1}, Lmiui/util/DirectIndexedFile$c;->a(Lmiui/util/DirectIndexedFile$c;Ljava/io/DataOutput;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method static synthetic b(Lmiui/util/DirectIndexedFile$d;)[Lmiui/util/DirectIndexedFile$c;
    .locals 0

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$d;->BU:[Lmiui/util/DirectIndexedFile$c;

    return-object p0
.end method

.method static synthetic c(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$d;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lmiui/util/DirectIndexedFile$d;->e(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$d;

    move-result-object p0

    return-object p0
.end method

.method private static e(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$d;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lmiui/util/DirectIndexedFile$d;->EU:[B

    array-length v0, v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v2, Lmiui/util/DirectIndexedFile$d;->EU:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    new-instance v3, Lmiui/util/DirectIndexedFile$d;

    invoke-direct {v3, v0, v2}, Lmiui/util/DirectIndexedFile$d;-><init>(II)V

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, v3, Lmiui/util/DirectIndexedFile$d;->BU:[Lmiui/util/DirectIndexedFile$c;

    invoke-static {p0}, Lmiui/util/DirectIndexedFile$c;->b(Ljava/io/DataInput;)Lmiui/util/DirectIndexedFile$c;

    move-result-object v4

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v3

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "File version unmatched, please upgrade your reader"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "File tag unmatched, file may be corrupt"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
