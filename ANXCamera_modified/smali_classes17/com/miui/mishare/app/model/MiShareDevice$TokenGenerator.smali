.class Lcom/miui/mishare/app/model/MiShareDevice$TokenGenerator;
.super Ljava/lang/Object;
.source "MiShareDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/mishare/app/model/MiShareDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TokenGenerator"
.end annotation


# static fields
.field private static final RANDOM:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/miui/mishare/app/model/MiShareDevice$TokenGenerator;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    invoke-static {}, Lcom/miui/mishare/app/model/MiShareDevice$TokenGenerator;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100()Ljava/util/Random;
    .locals 1

    sget-object v0, Lcom/miui/mishare/app/model/MiShareDevice$TokenGenerator;->RANDOM:Ljava/util/Random;

    return-object v0
.end method

.method private static get()J
    .locals 2

    sget-object v0, Lcom/miui/mishare/app/model/MiShareDevice$TokenGenerator;->RANDOM:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method
