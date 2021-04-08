.class Lmiui/util/DirectIndexedFile$Builder$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DirectIndexedFile$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lmiui/util/DirectIndexedFile$Builder$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic j:Lmiui/util/DirectIndexedFile$Builder;

.field private mIndex:I

.field private mU:[Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lmiui/util/DirectIndexedFile$Builder;I[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Builder$c;->j:Lmiui/util/DirectIndexedFile$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lmiui/util/DirectIndexedFile$Builder$c;->mIndex:I

    iput-object p3, p0, Lmiui/util/DirectIndexedFile$Builder$c;->mU:[Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lmiui/util/DirectIndexedFile$Builder;I[Ljava/lang/Object;Lmiui/util/d;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmiui/util/DirectIndexedFile$Builder$c;-><init>(Lmiui/util/DirectIndexedFile$Builder;I[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$Builder$c;)I
    .locals 0

    iget p0, p0, Lmiui/util/DirectIndexedFile$Builder$c;->mIndex:I

    return p0
.end method

.method static synthetic b(Lmiui/util/DirectIndexedFile$Builder$c;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Builder$c;->mU:[Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public c(Lmiui/util/DirectIndexedFile$Builder$c;)I
    .locals 0

    iget p0, p0, Lmiui/util/DirectIndexedFile$Builder$c;->mIndex:I

    iget p1, p1, Lmiui/util/DirectIndexedFile$Builder$c;->mIndex:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lmiui/util/DirectIndexedFile$Builder$c;

    invoke-virtual {p0, p1}, Lmiui/util/DirectIndexedFile$Builder$c;->c(Lmiui/util/DirectIndexedFile$Builder$c;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v2, p1, Lmiui/util/DirectIndexedFile$Builder$c;

    if-eqz v2, :cond_1

    iget p0, p0, Lmiui/util/DirectIndexedFile$Builder$c;->mIndex:I

    check-cast p1, Lmiui/util/DirectIndexedFile$Builder$c;

    iget p1, p1, Lmiui/util/DirectIndexedFile$Builder$c;->mIndex:I

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lmiui/util/DirectIndexedFile$Builder$c;->mIndex:I

    return p0
.end method
