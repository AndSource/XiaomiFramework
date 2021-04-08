.class Lmiui/util/DirectIndexedFile$Reader$IndexData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DirectIndexedFile$Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexData"
.end annotation


# instance fields
.field private JU:[[Ljava/lang/Object;

.field private KU:I

.field private kU:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

.field private lU:[Lmiui/util/DirectIndexedFile$e;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/util/d;)V
    .locals 0

    invoke-direct {p0}, Lmiui/util/DirectIndexedFile$Reader$IndexData;-><init>()V

    return-void
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$Reader$IndexData;I)I
    .locals 0

    iput p1, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->KU:I

    return p1
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    .locals 0

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->kU:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    return-object p0
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$Reader$IndexData;[Lmiui/util/DirectIndexedFile$DataItemDescriptor;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    .locals 0

    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->kU:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    return-object p1
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$Reader$IndexData;[Lmiui/util/DirectIndexedFile$e;)[Lmiui/util/DirectIndexedFile$e;
    .locals 0

    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->lU:[Lmiui/util/DirectIndexedFile$e;

    return-object p1
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$Reader$IndexData;[[Ljava/lang/Object;)[[Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->JU:[[Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lmiui/util/DirectIndexedFile$Reader$IndexData;I)I
    .locals 1

    iget v0, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->KU:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->KU:I

    return v0
.end method

.method static synthetic b(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->JU:[[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic c(Lmiui/util/DirectIndexedFile$Reader$IndexData;)[Lmiui/util/DirectIndexedFile$e;
    .locals 0

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->lU:[Lmiui/util/DirectIndexedFile$e;

    return-object p0
.end method

.method static synthetic d(Lmiui/util/DirectIndexedFile$Reader$IndexData;)I
    .locals 0

    iget p0, p0, Lmiui/util/DirectIndexedFile$Reader$IndexData;->KU:I

    return p0
.end method
