.class public final synthetic Lcom/android/internal/infra/-$$Lambda$hAi6iX1ESDxtGWb1kxE0l5KZG8Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/infra/-$$Lambda$hAi6iX1ESDxtGWb1kxE0l5KZG8Q;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/infra/-$$Lambda$hAi6iX1ESDxtGWb1kxE0l5KZG8Q;

    invoke-direct {v0}, Lcom/android/internal/infra/-$$Lambda$hAi6iX1ESDxtGWb1kxE0l5KZG8Q;-><init>()V

    sput-object v0, Lcom/android/internal/infra/-$$Lambda$hAi6iX1ESDxtGWb1kxE0l5KZG8Q;->INSTANCE:Lcom/android/internal/infra/-$$Lambda$hAi6iX1ESDxtGWb1kxE0l5KZG8Q;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/internal/infra/AbstractRemoteService;

    invoke-virtual {p1}, Lcom/android/internal/infra/AbstractRemoteService;->handleUnbind()V

    return-void
.end method
