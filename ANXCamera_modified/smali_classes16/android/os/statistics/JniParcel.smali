.class final Landroid/os/statistics/JniParcel;
.super Ljava/lang/Object;
.source "JniParcel.java"


# instance fields
.field private final numbers:[J

.field private numbersCount:I

.field private final objects:[Ljava/lang/Object;

.field private objectsCount:I

.field private readPosOfNumbers:I

.field private readPosOfObjects:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [J

    iput-object v0, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    iput v0, p0, Landroid/os/statistics/JniParcel;->readPosOfNumbers:I

    new-array v1, p2, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    iput v0, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    iput v0, p0, Landroid/os/statistics/JniParcel;->readPosOfObjects:I

    return-void
.end method

.method private writeLong1(J)V
    .locals 2

    iget v0, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v1, v0

    iget v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    return-void
.end method

.method private writeLong10(JJJJJJJJJJ)V
    .locals 4

    move-object v0, p0

    iget v1, v0, Landroid/os/statistics/JniParcel;->numbersCount:I

    iget-object v2, v0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v2, v1

    add-int/lit8 v3, v1, 0x1

    aput-wide p3, v2, v3

    add-int/lit8 v3, v1, 0x2

    aput-wide p5, v2, v3

    add-int/lit8 v3, v1, 0x3

    aput-wide p7, v2, v3

    add-int/lit8 v3, v1, 0x4

    aput-wide p9, v2, v3

    add-int/lit8 v3, v1, 0x5

    aput-wide p11, v2, v3

    add-int/lit8 v3, v1, 0x6

    aput-wide p13, v2, v3

    add-int/lit8 v3, v1, 0x7

    aput-wide p15, v2, v3

    add-int/lit8 v3, v1, 0x8

    aput-wide p17, v2, v3

    add-int/lit8 v3, v1, 0x9

    aput-wide p19, v2, v3

    iget v2, v0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v2, v2, 0xa

    iput v2, v0, Landroid/os/statistics/JniParcel;->numbersCount:I

    return-void
.end method

.method private writeLong11(JJJJJJJJJJJ)V
    .locals 4

    move-object v0, p0

    iget v1, v0, Landroid/os/statistics/JniParcel;->numbersCount:I

    iget-object v2, v0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v2, v1

    add-int/lit8 v3, v1, 0x1

    aput-wide p3, v2, v3

    add-int/lit8 v3, v1, 0x2

    aput-wide p5, v2, v3

    add-int/lit8 v3, v1, 0x3

    aput-wide p7, v2, v3

    add-int/lit8 v3, v1, 0x4

    aput-wide p9, v2, v3

    add-int/lit8 v3, v1, 0x5

    aput-wide p11, v2, v3

    add-int/lit8 v3, v1, 0x6

    aput-wide p13, v2, v3

    add-int/lit8 v3, v1, 0x7

    aput-wide p15, v2, v3

    add-int/lit8 v3, v1, 0x8

    aput-wide p17, v2, v3

    add-int/lit8 v3, v1, 0x9

    aput-wide p19, v2, v3

    add-int/lit8 v3, v1, 0xa

    aput-wide p21, v2, v3

    iget v2, v0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v2, v2, 0xb

    iput v2, v0, Landroid/os/statistics/JniParcel;->numbersCount:I

    return-void
.end method

.method private writeLong12(JJJJJJJJJJJJ)V
    .locals 4

    move-object v0, p0

    iget v1, v0, Landroid/os/statistics/JniParcel;->numbersCount:I

    iget-object v2, v0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v2, v1

    add-int/lit8 v3, v1, 0x1

    aput-wide p3, v2, v3

    add-int/lit8 v3, v1, 0x2

    aput-wide p5, v2, v3

    add-int/lit8 v3, v1, 0x3

    aput-wide p7, v2, v3

    add-int/lit8 v3, v1, 0x4

    aput-wide p9, v2, v3

    add-int/lit8 v3, v1, 0x5

    aput-wide p11, v2, v3

    add-int/lit8 v3, v1, 0x6

    aput-wide p13, v2, v3

    add-int/lit8 v3, v1, 0x7

    aput-wide p15, v2, v3

    add-int/lit8 v3, v1, 0x8

    aput-wide p17, v2, v3

    add-int/lit8 v3, v1, 0x9

    aput-wide p19, v2, v3

    add-int/lit8 v3, v1, 0xa

    aput-wide p21, v2, v3

    add-int/lit8 v3, v1, 0xb

    aput-wide p23, v2, v3

    iget v2, v0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v2, v2, 0xc

    iput v2, v0, Landroid/os/statistics/JniParcel;->numbersCount:I

    return-void
.end method

.method private writeLong2(JJ)V
    .locals 3

    iget v0, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v1, v0

    add-int/lit8 v2, v0, 0x1

    aput-wide p3, v1, v2

    iget v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    return-void
.end method

.method private writeLong3(JJJ)V
    .locals 3

    iget v0, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v1, v0

    add-int/lit8 v2, v0, 0x1

    aput-wide p3, v1, v2

    add-int/lit8 v2, v0, 0x2

    aput-wide p5, v1, v2

    iget v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    return-void
.end method

.method private writeLong4(JJJJ)V
    .locals 3

    iget v0, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v1, v0

    add-int/lit8 v2, v0, 0x1

    aput-wide p3, v1, v2

    add-int/lit8 v2, v0, 0x2

    aput-wide p5, v1, v2

    add-int/lit8 v2, v0, 0x3

    aput-wide p7, v1, v2

    iget v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    return-void
.end method

.method private writeLong5(JJJJJ)V
    .locals 3

    iget v0, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v1, v0

    add-int/lit8 v2, v0, 0x1

    aput-wide p3, v1, v2

    add-int/lit8 v2, v0, 0x2

    aput-wide p5, v1, v2

    add-int/lit8 v2, v0, 0x3

    aput-wide p7, v1, v2

    add-int/lit8 v2, v0, 0x4

    aput-wide p9, v1, v2

    iget v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v1, v1, 0x5

    iput v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    return-void
.end method

.method private writeLong6(JJJJJJ)V
    .locals 3

    iget v0, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v1, v0

    add-int/lit8 v2, v0, 0x1

    aput-wide p3, v1, v2

    add-int/lit8 v2, v0, 0x2

    aput-wide p5, v1, v2

    add-int/lit8 v2, v0, 0x3

    aput-wide p7, v1, v2

    add-int/lit8 v2, v0, 0x4

    aput-wide p9, v1, v2

    add-int/lit8 v2, v0, 0x5

    aput-wide p11, v1, v2

    iget v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v1, v1, 0x6

    iput v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    return-void
.end method

.method private writeLong7(JJJJJJJ)V
    .locals 4

    move-object v0, p0

    iget v1, v0, Landroid/os/statistics/JniParcel;->numbersCount:I

    iget-object v2, v0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v2, v1

    add-int/lit8 v3, v1, 0x1

    aput-wide p3, v2, v3

    add-int/lit8 v3, v1, 0x2

    aput-wide p5, v2, v3

    add-int/lit8 v3, v1, 0x3

    aput-wide p7, v2, v3

    add-int/lit8 v3, v1, 0x4

    aput-wide p9, v2, v3

    add-int/lit8 v3, v1, 0x5

    aput-wide p11, v2, v3

    add-int/lit8 v3, v1, 0x6

    aput-wide p13, v2, v3

    iget v2, v0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v2, v2, 0x7

    iput v2, v0, Landroid/os/statistics/JniParcel;->numbersCount:I

    return-void
.end method

.method private writeLong8(JJJJJJJJ)V
    .locals 4

    move-object v0, p0

    iget v1, v0, Landroid/os/statistics/JniParcel;->numbersCount:I

    iget-object v2, v0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v2, v1

    add-int/lit8 v3, v1, 0x1

    aput-wide p3, v2, v3

    add-int/lit8 v3, v1, 0x2

    aput-wide p5, v2, v3

    add-int/lit8 v3, v1, 0x3

    aput-wide p7, v2, v3

    add-int/lit8 v3, v1, 0x4

    aput-wide p9, v2, v3

    add-int/lit8 v3, v1, 0x5

    aput-wide p11, v2, v3

    add-int/lit8 v3, v1, 0x6

    aput-wide p13, v2, v3

    add-int/lit8 v3, v1, 0x7

    aput-wide p15, v2, v3

    iget v2, v0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v2, v2, 0x8

    iput v2, v0, Landroid/os/statistics/JniParcel;->numbersCount:I

    return-void
.end method

.method private writeLong9(JJJJJJJJJ)V
    .locals 4

    move-object v0, p0

    iget v1, v0, Landroid/os/statistics/JniParcel;->numbersCount:I

    iget-object v2, v0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v2, v1

    add-int/lit8 v3, v1, 0x1

    aput-wide p3, v2, v3

    add-int/lit8 v3, v1, 0x2

    aput-wide p5, v2, v3

    add-int/lit8 v3, v1, 0x3

    aput-wide p7, v2, v3

    add-int/lit8 v3, v1, 0x4

    aput-wide p9, v2, v3

    add-int/lit8 v3, v1, 0x5

    aput-wide p11, v2, v3

    add-int/lit8 v3, v1, 0x6

    aput-wide p13, v2, v3

    add-int/lit8 v3, v1, 0x7

    aput-wide p15, v2, v3

    add-int/lit8 v3, v1, 0x8

    aput-wide p17, v2, v3

    iget v2, v0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v2, v2, 0x9

    iput v2, v0, Landroid/os/statistics/JniParcel;->numbersCount:I

    return-void
.end method

.method private writeObject1(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aput-object p1, v1, v0

    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    return-void
.end method

.method private writeObject2(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aput-object p1, v1, v0

    add-int/lit8 v2, v0, 0x1

    aput-object p2, v1, v2

    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    return-void
.end method

.method private writeObject3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aput-object p1, v1, v0

    add-int/lit8 v2, v0, 0x1

    aput-object p2, v1, v2

    add-int/lit8 v2, v0, 0x2

    aput-object p3, v1, v2

    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    return-void
.end method

.method private writeObject4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aput-object p1, v1, v0

    add-int/lit8 v2, v0, 0x1

    aput-object p2, v1, v2

    add-int/lit8 v2, v0, 0x2

    aput-object p3, v1, v2

    add-int/lit8 v2, v0, 0x3

    aput-object p4, v1, v2

    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    return-void
.end method

.method private writeObject5(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aput-object p1, v1, v0

    add-int/lit8 v2, v0, 0x1

    aput-object p2, v1, v2

    add-int/lit8 v2, v0, 0x2

    aput-object p3, v1, v2

    add-int/lit8 v2, v0, 0x3

    aput-object p4, v1, v2

    add-int/lit8 v2, v0, 0x4

    aput-object p5, v1, v2

    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v1, 0x5

    iput v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    return-void
.end method

.method private writeObject6(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aput-object p1, v1, v0

    add-int/lit8 v2, v0, 0x1

    aput-object p2, v1, v2

    add-int/lit8 v2, v0, 0x2

    aput-object p3, v1, v2

    add-int/lit8 v2, v0, 0x3

    aput-object p4, v1, v2

    add-int/lit8 v2, v0, 0x4

    aput-object p5, v1, v2

    add-int/lit8 v2, v0, 0x5

    aput-object p6, v1, v2

    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v1, 0x6

    iput v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    return-void
.end method

.method private writeObject7(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aput-object p1, v1, v0

    add-int/lit8 v2, v0, 0x1

    aput-object p2, v1, v2

    add-int/lit8 v2, v0, 0x2

    aput-object p3, v1, v2

    add-int/lit8 v2, v0, 0x3

    aput-object p4, v1, v2

    add-int/lit8 v2, v0, 0x4

    aput-object p5, v1, v2

    add-int/lit8 v2, v0, 0x5

    aput-object p6, v1, v2

    add-int/lit8 v2, v0, 0x6

    aput-object p7, v1, v2

    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v1, 0x7

    iput v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    return-void
.end method

.method private writeObject8(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aput-object p1, v1, v0

    add-int/lit8 v2, v0, 0x1

    aput-object p2, v1, v2

    add-int/lit8 v2, v0, 0x2

    aput-object p3, v1, v2

    add-int/lit8 v2, v0, 0x3

    aput-object p4, v1, v2

    add-int/lit8 v2, v0, 0x4

    aput-object p5, v1, v2

    add-int/lit8 v2, v0, 0x5

    aput-object p6, v1, v2

    add-int/lit8 v2, v0, 0x6

    aput-object p7, v1, v2

    add-int/lit8 v2, v0, 0x7

    aput-object p8, v1, v2

    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v1, 0x8

    iput v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    return-void
.end method

.method private writeObject9(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aput-object p1, v1, v0

    add-int/lit8 v2, v0, 0x1

    aput-object p2, v1, v2

    add-int/lit8 v2, v0, 0x2

    aput-object p3, v1, v2

    add-int/lit8 v2, v0, 0x3

    aput-object p4, v1, v2

    add-int/lit8 v2, v0, 0x4

    aput-object p5, v1, v2

    add-int/lit8 v2, v0, 0x5

    aput-object p6, v1, v2

    add-int/lit8 v2, v0, 0x6

    aput-object p7, v1, v2

    add-int/lit8 v2, v0, 0x7

    aput-object p8, v1, v2

    add-int/lit8 v2, v0, 0x8

    aput-object p9, v1, v2

    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v1, 0x9

    iput v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    return-void
.end method


# virtual methods
.method public final readInt()I
    .locals 3

    iget v0, p0, Landroid/os/statistics/JniParcel;->readPosOfNumbers:I

    iget v1, p0, Landroid/os/statistics/JniParcel;->readPosOfNumbers:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/statistics/JniParcel;->readPosOfNumbers:I

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    aget-wide v1, v1, v0

    long-to-int v1, v1

    return v1
.end method

.method public final readLong()J
    .locals 3

    iget v0, p0, Landroid/os/statistics/JniParcel;->readPosOfNumbers:I

    iget v1, p0, Landroid/os/statistics/JniParcel;->readPosOfNumbers:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/statistics/JniParcel;->readPosOfNumbers:I

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    aget-wide v1, v1, v0

    return-wide v1
.end method

.method public final readObject()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Landroid/os/statistics/JniParcel;->readPosOfObjects:I

    iget v1, p0, Landroid/os/statistics/JniParcel;->readPosOfObjects:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/statistics/JniParcel;->readPosOfObjects:I

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public final readString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Landroid/os/statistics/JniParcel;->readPosOfObjects:I

    iget v1, p0, Landroid/os/statistics/JniParcel;->readPosOfObjects:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/statistics/JniParcel;->readPosOfObjects:I

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    return-object v2
.end method

.method public final reset()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    iput v0, p0, Landroid/os/statistics/JniParcel;->readPosOfNumbers:I

    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    iput v0, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    iput v0, p0, Landroid/os/statistics/JniParcel;->readPosOfObjects:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
