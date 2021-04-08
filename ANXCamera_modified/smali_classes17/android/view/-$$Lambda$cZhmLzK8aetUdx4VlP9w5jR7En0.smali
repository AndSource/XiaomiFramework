.class public final synthetic Landroid/view/-$$Lambda$cZhmLzK8aetUdx4VlP9w5jR7En0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Landroid/view/-$$Lambda$cZhmLzK8aetUdx4VlP9w5jR7En0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/-$$Lambda$cZhmLzK8aetUdx4VlP9w5jR7En0;

    invoke-direct {v0}, Landroid/view/-$$Lambda$cZhmLzK8aetUdx4VlP9w5jR7En0;-><init>()V

    sput-object v0, Landroid/view/-$$Lambda$cZhmLzK8aetUdx4VlP9w5jR7En0;->INSTANCE:Landroid/view/-$$Lambda$cZhmLzK8aetUdx4VlP9w5jR7En0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/view/InsetsSource;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v0, p1}, Landroid/view/InsetsSource;-><init>(I)V

    return-object v0
.end method
