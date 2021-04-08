.class public final synthetic Lcom/android/internal/os/-$$Lambda$ZygoteServer$NJVbduCrCzDq0RHpPga7lyCk4eE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/os/-$$Lambda$ZygoteServer$NJVbduCrCzDq0RHpPga7lyCk4eE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/os/-$$Lambda$ZygoteServer$NJVbduCrCzDq0RHpPga7lyCk4eE;

    invoke-direct {v0}, Lcom/android/internal/os/-$$Lambda$ZygoteServer$NJVbduCrCzDq0RHpPga7lyCk4eE;-><init>()V

    sput-object v0, Lcom/android/internal/os/-$$Lambda$ZygoteServer$NJVbduCrCzDq0RHpPga7lyCk4eE;->INSTANCE:Lcom/android/internal/os/-$$Lambda$ZygoteServer$NJVbduCrCzDq0RHpPga7lyCk4eE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/io/FileDescriptor;

    invoke-static {p1}, Lcom/android/internal/os/ZygoteServer;->lambda$runSelectLoop$0(Ljava/io/FileDescriptor;)I

    move-result p1

    return p1
.end method
