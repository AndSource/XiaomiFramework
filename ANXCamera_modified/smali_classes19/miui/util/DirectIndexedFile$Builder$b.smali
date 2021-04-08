.class Lmiui/util/DirectIndexedFile$Builder$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DirectIndexedFile$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private hU:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmiui/util/DirectIndexedFile$Builder$c;",
            ">;"
        }
    .end annotation
.end field

.field private iU:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lmiui/util/DirectIndexedFile$Builder$c;",
            ">;>;"
        }
    .end annotation
.end field

.field private jU:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/util/DirectIndexedFile$Builder$a;",
            ">;"
        }
    .end annotation
.end field

.field private kU:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

.field private lU:[Lmiui/util/DirectIndexedFile$e;

.field private mDefaultValue:Lmiui/util/DirectIndexedFile$Builder$c;


# direct methods
.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$b;->hU:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$b;->jU:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$b;->iU:Ljava/util/ArrayList;

    new-array p1, p1, [Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Builder$b;->kU:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    return-void
.end method

.method synthetic constructor <init>(ILmiui/util/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/util/DirectIndexedFile$Builder$b;-><init>(I)V

    return-void
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$Builder$b;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Builder$b;->jU:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$Builder$b;Lmiui/util/DirectIndexedFile$Builder$c;)Lmiui/util/DirectIndexedFile$Builder$c;
    .locals 0

    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Builder$b;->mDefaultValue:Lmiui/util/DirectIndexedFile$Builder$c;

    return-object p1
.end method

.method static synthetic a(Lmiui/util/DirectIndexedFile$Builder$b;[Lmiui/util/DirectIndexedFile$e;)[Lmiui/util/DirectIndexedFile$e;
    .locals 0

    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Builder$b;->lU:[Lmiui/util/DirectIndexedFile$e;

    return-object p1
.end method

.method static synthetic b(Lmiui/util/DirectIndexedFile$Builder$b;)[Lmiui/util/DirectIndexedFile$DataItemDescriptor;
    .locals 0

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Builder$b;->kU:[Lmiui/util/DirectIndexedFile$DataItemDescriptor;

    return-object p0
.end method

.method static synthetic c(Lmiui/util/DirectIndexedFile$Builder$b;)Lmiui/util/DirectIndexedFile$Builder$c;
    .locals 0

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Builder$b;->mDefaultValue:Lmiui/util/DirectIndexedFile$Builder$c;

    return-object p0
.end method

.method static synthetic d(Lmiui/util/DirectIndexedFile$Builder$b;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Builder$b;->iU:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic e(Lmiui/util/DirectIndexedFile$Builder$b;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Builder$b;->hU:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic f(Lmiui/util/DirectIndexedFile$Builder$b;)[Lmiui/util/DirectIndexedFile$e;
    .locals 0

    iget-object p0, p0, Lmiui/util/DirectIndexedFile$Builder$b;->lU:[Lmiui/util/DirectIndexedFile$e;

    return-object p0
.end method
